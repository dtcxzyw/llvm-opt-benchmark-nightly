Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-inf?download=true
inline.NumInlined: 1388
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.INF_MAPNODE = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/SPASS/rules-inf.c\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\0A In inf_GeneralResolution: Unification failed.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\0A In inf_UnitResolution: Unification failed.\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\0A In inf_BoundedDepthUnitResolution: Unification failed.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22IOFC\22 has invalid value.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22IORE\22 has invalid value.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22ISRE\22 has invalid value.\0A\00", align 1
@cont_LEFTCONTEXT = external local_unnamed_addr global ptr, align 8
@memory_OFFSET = external local_unnamed_addr global i32, align 4
@memory_BIGBLOCKS = external local_unnamed_addr global ptr, align 8
@memory_MARKSIZE = external local_unnamed_addr global i32, align 4
@memory_FREEDBYTES = external local_unnamed_addr global i64, align 8
@memory_MAXMEM = external local_unnamed_addr global i64, align 8
@memory_ARRAY = external local_unnamed_addr global [0 x ptr], align 8
@memory_ALIGN = external local_unnamed_addr constant i32, align 4
@cont_BINDINGS = external local_unnamed_addr global i32, align 4
@cont_LASTBINDING = external local_unnamed_addr global ptr, align 8
@cont_CURRENTBINDING = external local_unnamed_addr global ptr, align 8
@cont_STACKPOINTER = external local_unnamed_addr global i32, align 4
@cont_INDEXVARSCANNER = external local_unnamed_addr global i32, align 4
@fol_EQUALITY = external local_unnamed_addr global i32, align 4
@fol_NOT = external local_unnamed_addr global i32, align 4
@symbol_TYPEMASK = external local_unnamed_addr constant i32, align 4
@stack_POINTER = external local_unnamed_addr global i32, align 4
@stack_STACK = external local_unnamed_addr global [10000 x ptr], align 16
@cont_RIGHTCONTEXT = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@clause_CLAUSECOUNTER = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"\0A In inf_HyperResolvents: Unification failed.\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\0A In inf_BuildHyperResolvent: Map entry not found.\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\0A In inf_BackwardHyperResolution: Unification failed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_EqualityResolution(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 68         ; 5 uses
  %.val69 = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %.val69, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %0) #14
  %.not58 = icmp eq i32 %i.c, 0
  br i1 %.not58, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val71 = load i32, ptr %i.d, align 8           ; 4 uses
  %.val72 = load i32, ptr %i.b, align 4           ; 2 uses
  %i.e = add i32 %.val71, -1
  %i.f = add i32 %i.e, %.val72
  %.not5997 = icmp sgt i32 %.val71, %i.f
  br i1 %.not5997, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 48
  %.not63 = icmp ne i32 %1, 0                     ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.j = sext i32 %.val71 to i64
  %i.k = add i32 %.val72, %.val71
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph103, %bb.s
  %indvars.iv105 = phi i64 [ %i.j, %.lr.ph103 ], [ %indvars.iv.next106, %bb.s ] ; 5 uses
  %.05598 = phi ptr [ null, %.lr.ph103 ], [ %.3, %bb.s ] ; 6 uses
  %.val74 = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds [8 x i8], ptr %.val74, i64 %indvars.iv105
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %.val76 = load ptr, ptr %i.n, align 8           ; 4 uses
  %.val5.val.i.i = load i32, ptr %.val76, align 8 ; 2 uses
  %i.o = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.o    ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %clause_LiteralIsEquality.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.val76, i64 16
  %.val6.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.q, align 8
  %.val1.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralIsEquality.exit

clause_LiteralIsEquality.exit:                    ; preds = %bb.d, %bb.e
  %.val1.i = phi i32 [ %.val1.pre.i, %bb.e ], [ %.val5.val.i.i, %bb.d ]
  %i.r = load i32, ptr @fol_EQUALITY, align 4
  %.not93 = icmp eq i32 %.val1.i, %i.r
  br i1 %.not93, label %bb.f, label %bb.s

bb.f:                                             ; preds = %clause_LiteralIsEquality.exit
  %.val78 = load i32, ptr %i.m, align 8           ; 2 uses
  %i.s = and i32 %.val78, 4
  %.not61 = icmp eq i32 %i.s, 0
  br i1 %.not61, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val79 = load i32, ptr %i.h, align 8
  %i.t = and i32 %.val79, 2
  %.not62 = icmp eq i32 %i.t, 0
  br i1 %.not62, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %.val78, 1
  %.not64 = icmp eq i32 %i.u, 0
  %or.cond92 = and i1 %.not63, %.not64
  br i1 %or.cond92, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  br i1 %.not.i.i, label %bb.j, label %clause_GetLiteralAtom.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.val76, i64 16
  %.val6.i.i89 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val6.i.i89, i64 8
  %.val6.val.i.i90 = load ptr, ptr %i.w, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %.val6.val.i.i90, %bb.j ], [ %.val76, %bb.i ]
  call void @cont_Check() #14
  %i.x = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.y = getelementptr i8, ptr %.0.i.i, i64 16
  %.val75 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.z = getelementptr i8, ptr %.val75, i64 8
  %.val75.val = load ptr, ptr %i.z, align 8
  %.val82.val = load ptr, ptr %.val75, align 8
  %i.aa = getelementptr i8, ptr %.val82.val, i64 8
  %.val82.val.val = load ptr, ptr %i.aa, align 8
  %i.ab = call i32 @unify_UnifyCom(ptr noundef %i.x, ptr noundef %.val75.val, ptr noundef %.val82.val.val) #14
  %.not65 = icmp eq i32 %i.ab, 0
  br i1 %.not65, label %bb.r, label %bb.k

bb.k:                                             ; preds = %clause_GetLiteralAtom.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.ac, ptr noundef nonnull %i.a) #14
  %.val77 = load i32, ptr %i.m, align 8
  %i.ad = and i32 %.val77, 4
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond = and i1 %.not63, %i.ae
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = trunc nsw i64 %indvars.iv105 to i32
  %i.ah = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef -1, ptr noundef %i.af, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  %.not66 = icmp eq i32 %i.ah, 0
  br i1 %.not66, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val3.i = load i32, ptr %i.d, align 8
  %.val.i = load i32, ptr %i.b, align 4
  %.val4.i = load i32, ptr %i.i, align 8
  %i.ai = add i32 %.val3.i, -1
  %i.aj = add i32 %i.ai, %.val.i
  %i.ak = add i32 %i.aj, %.val4.i
  %i.al = call ptr @clause_CreateBody(i32 noundef %i.ak) #14 ; 8 uses
  %.val70 = load i32, ptr %i.d, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i32 %.val70, ptr %i.am, align 8
  %.val = load i32, ptr %i.b, align 4
  %i.an = add nsw i32 %.val, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  store i32 %i.an, ptr %i.ao, align 4
  %.val83 = load i32, ptr %i.i, align 8           ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i32 %.val83, ptr %i.ap, align 8
  %.val3.i.i = load i32, ptr %i.d, align 8        ; 2 uses
  %.val.i.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.aq = add i32 %.val3.i.i, -1
  %i.ar = add i32 %i.aq, %.val.i.i
  %i.as = add i32 %i.ar, %.val83
  %.not6794 = icmp slt i32 %i.as, 0
  br i1 %.not6794, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.al, i64 56
  %i.au = and i64 %indvars.iv105, 4294967295
  %i.av = add i32 %.val83, %.val.i.i
  %i.aw = add i32 %i.av, %.val3.i.i
  %wide.trip.count = zext i32 %i.aw to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.096 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.p ]  ; 3 uses
  %.not68 = icmp eq i64 %indvars.iv, %i.au
  br i1 %.not68, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.a, align 8
  %.val84 = load ptr, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val84, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %.val1.i91 = load ptr, ptr %i.ba, align 8
  %i.bb = call ptr @term_Copy(ptr noundef %.val1.i91) #14
  %i.bc = call ptr @subst_Apply(ptr noundef %i.ax, ptr noundef %i.bb) #14
  %i.bd = call ptr @clause_LiteralCreate(ptr noundef %i.bc, ptr noundef %i.al) #14
  %.val85 = load ptr, ptr %i.at, align 8
  %i.be = sext i32 %.096 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val85, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = add nsw i32 %.096, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.1 = phi i32 [ %i.bg, %bb.o ], [ %.096, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %.pre-phi = trunc i64 %indvars.iv105 to i32
  call fastcc void @clause_SetDataFromFather(ptr noundef %i.al, ptr noundef nonnull %0, i32 noundef %.pre-phi, ptr noundef %2, ptr noundef %3)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 76
  store i32 3, ptr %i.bh, align 4
  %i.bi = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.al, ptr %i.bj, align 8
  store ptr %.05598, ptr %i.bi, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %.156 = phi ptr [ %i.bi, %._crit_edge ], [ %.05598, %bb.l ]
  %i.bk = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.bk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %clause_GetLiteralAtom.exit
  %.2 = phi ptr [ %.156, %bb.q ], [ %.05598, %clause_GetLiteralAtom.exit ]
  %i.bl = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bl, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bm = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.bl, %.lr.ph.preheader.i ] ; 3 uses
  %i.bn = phi i32 [ %i.bs, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bm, ptr @cont_CURRENTBINDING, align 8
  %i.bo = getelementptr i8, ptr %i.bm, i64 24
  %.val.i.i.i = load ptr, ptr %i.bo, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  %i.bq = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr null, ptr %i.br, align 8
  %i.bs = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bs, ptr @cont_BINDINGS, align 4
  %i.bt = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.r
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %clause_LiteralIsEquality.exit, %bb.g, %cont_Reset.exit
  %.3 = phi ptr [ %.2, %cont_Reset.exit ], [ %.05598, %bb.g ], [ %.05598, %bb.h ], [ %.05598, %clause_LiteralIsEquality.exit ] ; 2 uses
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next106 to i32
  %exitcond108.not = icmp eq i32 %i.k, %lftr.wideiv
  br i1 %exitcond108.not, label %.loopexit, label %bb.d, !llvm.loop !14

.loopexit:                                        ; preds = %bb.s, %bb.c, %bb.a, %bb.b
  %.057 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.3, %bb.s ]
  ret ptr %.057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @clause_HasSolvedConstraint(ptr noundef) local_unnamed_addr #2

declare void @cont_Check() local_unnamed_addr #2

declare i32 @unify_UnifyCom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @subst_ExtractUnifierCom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_LitMax(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val54 = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %.val54, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.val57 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val57, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not43 = icmp ne i32 %4, 0                     ; 2 uses
  %i.f = and i32 %.val57, 2
  %.not44 = icmp eq i32 %i.f, 0
  %or.cond66 = and i1 %.not43, %.not44
  br i1 %or.cond66, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 68
  %.val = load i32, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val58 = load i32, ptr %i.h, align 8
  %i.i = add i32 %.val58, %.val                   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %.not65 = icmp eq ptr %3, null
  %or.cond67 = or i1 %.not65, %i.j
  br i1 %or.cond67, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3.i.i = load i32, ptr %i.k, align 8
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %.val3.i.i                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 24
  %.val1.i = load ptr, ptr %i.n, align 8
  %i.o = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.p = tail call ptr @subst_Apply(ptr noundef nonnull %3, ptr noundef %i.o) #14 ; 4 uses
  %.val50 = load i32, ptr %i.k, align 8           ; 2 uses
  %.not4669 = icmp sgt i32 %.val50, %i.m
  br i1 %.not4669, label %.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.q = sext i32 %.val50 to i64
  %i.r = sext i32 %i.m to i64
  %sext = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %i.s = icmp eq i64 %indvars.iv, %i.b
  %i.t = icmp eq i64 %indvars.iv, %sext
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.val53 = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %.val53, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.val56 = load i32, ptr %i.v, align 8
  %i.w = and i32 %.val56, 1
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %.val1.i63 = load ptr, ptr %i.x, align 8
  %i.y = tail call ptr @term_Copy(ptr noundef %.val1.i63) #14
  %i.z = tail call ptr @subst_Apply(ptr noundef nonnull %3, ptr noundef %i.y) #14 ; 3 uses
  %.val52 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val52, i64 %i.b
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val62 = load i32, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val52, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val61 = load i32, ptr %i.af, align 8
  %i.ag = tail call i32 @ord_LiteralCompare(ptr noundef %i.p, i32 noundef %.val62, ptr noundef %i.z, i32 noundef %.val61, i32 noundef 1, ptr noundef %5, ptr noundef %6) #14 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ag, 2
  %or.cond64 = and i1 %.not43, %i.ai
  %or.cond68 = or i1 %i.ah, %or.cond64
  br i1 %or.cond68, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @term_Delete(ptr noundef %i.p) #14
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  tail call void @term_Delete(ptr noundef %i.z) #14
end_hunk_0
begin_hunk_1_@clause_SetDataFromFather:bb.a
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.ae, ptr @memory_BIGBLOCKS, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not20.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ab, align 8
  store ptr %i.ag, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = load i32, ptr @memory_MARKSIZE, align 4
  %i.ai = add i32 %.1.i.i.i.i.i, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %i.al = load i64, ptr @memory_FREEDBYTES, align 8
  %i.am = add i64 %i.ak, %i.al
  store i64 %i.am, ptr @memory_FREEDBYTES, align 8
  %i.an = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = add nuw i64 %i.an, %i.ak
  store i64 %i.ap, ptr @memory_MAXMEM, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.q, i64 -16
  tail call void @free(ptr noundef nonnull %i.aq) #14
  br label %memory_Free.exit.i.i

bb.n:                                             ; preds = %bb.e
  %i.ar = zext nneg i32 %i.r to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr @memory_FREEDBYTES, align 8
  %i.az = load ptr, ptr %i.at, align 8
  store ptr %i.az, ptr %i.q, align 8
  %i.ba = load ptr, ptr %i.as, align 8
  store ptr %i.q, ptr %i.ba, align 8
  br label %memory_Free.exit.i.i

memory_Free.exit.i.i:                             ; preds = %bb.n, %bb.m, %bb.d
  %.not21.i.i = icmp eq i32 %i.m, 0
  br i1 %.not21.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %memory_Free.exit.i.i
  %i.bb = shl i32 %i.m, 3
  %i.bc = tail call ptr @memory_Malloc(i32 noundef %i.bb) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %memory_Free.exit.i.i
  %storemerge.i.i = phi ptr [ %i.bc, %bb.o ], [ null, %memory_Free.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.p, align 8
  store i32 %i.m, ptr %i.n, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.not23.i.i = icmp eq i32 %i.m, 0
  br i1 %.not23.i.i, label %clause_SetSplitDataFromFather.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.m to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.be = icmp ult i32 %i.m, 4
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967292
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.i
  store i64 %i.bg, ptr %i.bi, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bd, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  store i64 %i.bk, ptr %i.bm, align 8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.1
  store i64 %i.bo, ptr %i.bq, align 8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bd, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.2
  store i64 %i.bs, ptr %i.bu, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %clause_SetSplitDataFromFather.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !15

clause_SetSplitDataFromFather.exit.loopexit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_SetSplitDataFromFather.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_SetSplitDataFromFather.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %clause_SetSplitDataFromFather.exit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bd, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.i.epil
  store i64 %i.bw, ptr %i.by, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %clause_SetSplitDataFromFather.exit, label %bb.s, !llvm.loop !16

clause_SetSplitDataFromFather.exit:               ; preds = %clause_SetSplitDataFromFather.exit.loopexit.unr-lcssa, %bb.s, %bb.q
  %i.bz = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.bz, align 8
  %i.ca = add i32 %.val, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ca, ptr %i.cb, align 8
  %.val10 = load i32, ptr %1, align 8
  %i.cc = sext i32 %.val10 to i64
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cd, ptr %i.ch, align 8
  store ptr %i.cf, ptr %i.cg, align 8
  store ptr %i.cg, ptr %i.ce, align 8
  %i.ci = sext i32 %2 to i64
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cj, ptr %i.cn, align 8
  store ptr %i.cl, ptr %i.cm, align 8
  store ptr %i.cm, ptr %i.ck, align 8
  ret void
}

declare void @subst_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_EqualityFactoring(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val130 = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %.val130, 0
  br i1 %.not, label %.loopexit175, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val125 = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val125, 2
  %.not97 = icmp eq i32 %i.d, 0
  br i1 %.not97, label %bb.c, label %.loopexit175

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %0) #14
  %.not98 = icmp eq i32 %i.e, 0
  br i1 %.not98, label %.loopexit175, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3.i.i = load i32, ptr %i.f, align 8        ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %.val.i.i = load i32, ptr %i.g, align 4         ; 3 uses
  %.val4.i.i = load i32, ptr %i.b, align 8        ; 2 uses
  %i.h = add i32 %.val.i.i, %.val3.i.i            ; 2 uses
  %i.i = add i32 %i.h, -1
  %i.j = add i32 %i.i, %.val4.i.i                 ; 3 uses
  %.not99184 = icmp sgt i32 %i.h, %i.j
  br i1 %.not99184, label %.loopexit175, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.l = sext i32 %i.j to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = sext i32 %.val.i.i to i64
  %i.o = add nsw i64 %i.m, %i.n
  %3 = add i32 %.val4.i.i, %.val3.i.i
  %i.p = add i32 %3, %.val.i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph188, %.loopexit
  %indvars.iv191 = phi i64 [ %i.o, %.lr.ph188 ], [ %indvars.iv.next192, %.loopexit ] ; 7 uses
  %.094185 = phi ptr [ null, %.lr.ph188 ], [ %.12, %.loopexit ] ; 5 uses
  %.val118 = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds [8 x i8], ptr %.val118, i64 %indvars.iv191
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.val126 = load i32, ptr %i.r, align 8
  %i.s = and i32 %.val126, 1
  %.not100 = icmp eq i32 %i.s, 0
  br i1 %.not100, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 24
  %.val124 = load ptr, ptr %i.t, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val124, align 8 ; 2 uses
  %i.u = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.u
  br i1 %.not.i.i, label %clause_LiteralIsEquality.exit, label %clause_LiteralIsEquality.exit.thread

clause_LiteralIsEquality.exit:                    ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.val124, i64 16
  %.val6.i.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.w, align 8    ; 2 uses
  %.val1.pre.i = load i32, ptr %.val6.val.i.i, align 8
  %i.x = load i32, ptr @fol_EQUALITY, align 4
  %.not172 = icmp eq i32 %.val1.pre.i, %i.x
  br i1 %.not172, label %clause_LiteralAtom.exit, label %.loopexit

clause_LiteralIsEquality.exit.thread:             ; preds = %bb.f
  %i.y = load i32, ptr @fol_EQUALITY, align 4
  %.not171 = icmp eq i32 %.val5.val.i.i, %i.y
  br i1 %.not171, label %clause_LiteralAtom.exit, label %.loopexit

clause_LiteralAtom.exit:                          ; preds = %clause_LiteralIsEquality.exit, %clause_LiteralIsEquality.exit.thread
  %.0.i = phi ptr [ %.val124, %clause_LiteralIsEquality.exit.thread ], [ %.val6.val.i.i, %clause_LiteralIsEquality.exit ]
  %i.z = getelementptr i8, ptr %.0.i, i64 16
  %.val120 = load ptr, ptr %i.z, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %.val120, i64 8
  %.val120.val = load ptr, ptr %i.aa, align 8     ; 8 uses
  %.val128.val = load ptr, ptr %.val120, align 8
  %i.ab = getelementptr i8, ptr %.val128.val, i64 8
  %.val128.val.val = load ptr, ptr %i.ab, align 8 ; 8 uses
  %.val = load i32, ptr %i.f, align 8             ; 2 uses
  %.val114 = load i32, ptr %i.g, align 4          ; 2 uses
  %i.ac = add nsw i32 %.val114, %.val
  %.not102176 = icmp sgt i32 %i.ac, %i.j
  br i1 %.not102176, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %clause_LiteralAtom.exit
  %i.ad = getelementptr i8, ptr %i.r, i64 8
  %i.ae = sext i32 %.val to i64
  %i.af = sext i32 %.val114 to i64
  %i.ag = add nsw i64 %i.ae, %i.af
  %i.ah = trunc nsw i64 %indvars.iv191 to i32     ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv191 to i32     ; 2 uses
  %i.aj = trunc nsw i64 %indvars.iv191 to i32     ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv191 to i32     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 8 uses
  %.1177 = phi ptr [ %.094185, %.lr.ph ], [ %.11, %bb.z ] ; 6 uses
  %i.al = icmp eq i64 %indvars.iv, %indvars.iv191
  br i1 %i.al, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val117 = load ptr, ptr %i.k, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %.val117, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val123 = load ptr, ptr %i.ao, align 8         ; 3 uses
  %.val5.val.i.i131 = load i32, ptr %.val123, align 8 ; 2 uses
  %i.ap = load i32, ptr @fol_NOT, align 4
  %.not.i.i132 = icmp eq i32 %.val5.val.i.i131, %i.ap
  br i1 %.not.i.i132, label %clause_LiteralIsEquality.exit137, label %clause_LiteralIsEquality.exit137.thread

clause_LiteralIsEquality.exit137:                 ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %.val123, i64 16
  %.val6.i.i134 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val6.i.i134, i64 8
  %.val6.val.i.i135 = load ptr, ptr %i.ar, align 8 ; 2 uses
  %.val1.pre.i136 = load i32, ptr %.val6.val.i.i135, align 8
  %i.as = load i32, ptr @fol_EQUALITY, align 4
  %.not174 = icmp eq i32 %.val1.pre.i136, %i.as
  br i1 %.not174, label %clause_LiteralAtom.exit143, label %bb.z

clause_LiteralIsEquality.exit137.thread:          ; preds = %bb.h
  %i.at = load i32, ptr @fol_EQUALITY, align 4
  %.not173 = icmp eq i32 %.val5.val.i.i131, %i.at
  br i1 %.not173, label %clause_LiteralAtom.exit143, label %bb.z

clause_LiteralAtom.exit143:                       ; preds = %clause_LiteralIsEquality.exit137, %clause_LiteralIsEquality.exit137.thread
  %.0.i140 = phi ptr [ %.val123, %clause_LiteralIsEquality.exit137.thread ], [ %.val6.val.i.i135, %clause_LiteralIsEquality.exit137 ]
  %i.au = getelementptr i8, ptr %.0.i140, i64 16
  %.val119 = load ptr, ptr %i.au, align 8         ; 2 uses
  %i.av = getelementptr i8, ptr %.val119, i64 8
  %.val119.val = load ptr, ptr %i.av, align 8     ; 4 uses
  %.val127.val = load ptr, ptr %.val119, align 8
  %i.aw = getelementptr i8, ptr %.val127.val, i64 8
  %.val127.val.val = load ptr, ptr %i.aw, align 8 ; 4 uses
  call void @cont_Check() #14
  %i.ax = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ay = call i32 @unify_UnifyCom(ptr noundef %i.ax, ptr noundef %.val120.val, ptr noundef %.val119.val) #14
  %.not105 = icmp eq i32 %i.ay, 0
  br i1 %.not105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %clause_LiteralAtom.exit143
  %i.az = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.az, ptr noundef nonnull %i.a) #14
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = call fastcc i32 @inf_EqualityFactoringApplicable(ptr noundef nonnull %0, i32 noundef %i.ah, ptr noundef %.val120.val, ptr noundef %.val128.val.val, ptr noundef %i.ba, ptr noundef %1, ptr noundef %2)
  %.not106 = icmp eq i32 %i.bb, 0
  br i1 %.not106, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = trunc nsw i64 %indvars.iv to i32
  %i.be = call fastcc ptr @inf_ApplyEqualityFactoring(ptr noundef nonnull %0, ptr noundef %.val128.val.val, ptr noundef %.val127.val.val, i32 noundef %i.ah, i32 noundef %i.bd, ptr noundef %i.bc, ptr noundef %1, ptr noundef %2)
  %i.bf = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %i.bg, align 8
  store ptr %.1177, ptr %i.bf, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi ptr [ %i.bf, %bb.j ], [ %.1177, %bb.i ]
  %i.bh = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.bh) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %clause_LiteralAtom.exit143
  %.3 = phi ptr [ %.2, %bb.k ], [ %.1177, %clause_LiteralAtom.exit143 ] ; 3 uses
  %i.bi = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bi, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bj = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bi, %.lr.ph.preheader.i ] ; 3 uses
  %i.bk = phi i32 [ %i.bp, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bj, ptr @cont_CURRENTBINDING, align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  %i.bn = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr null, ptr %i.bo, align 8
  %i.bp = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bp, ptr @cont_BINDINGS, align 4
  %i.bq = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i144 = icmp eq ptr %i.bq, null
  br i1 %.not.i144, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.l
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  call void @cont_Check() #14
  %i.br = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bs = call i32 @unify_UnifyCom(ptr noundef %i.br, ptr noundef %.val120.val, ptr noundef %.val127.val.val) #14
  %.not107 = icmp eq i32 %i.bs, 0
  br i1 %.not107, label %bb.p, label %bb.m

bb.m:                                             ; preds = %cont_Reset.exit
  %i.bt = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.bt, ptr noundef nonnull %i.a) #14
  %i.bu = load ptr, ptr %i.a, align 8
  %i.bv = call fastcc i32 @inf_EqualityFactoringApplicable(ptr noundef nonnull %0, i32 noundef %i.ai, ptr noundef %.val120.val, ptr noundef %.val128.val.val, ptr noundef %i.bu, ptr noundef %1, ptr noundef %2)
  %.not108 = icmp eq i32 %i.bv, 0
  br i1 %.not108, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = trunc nsw i64 %indvars.iv to i32
  %i.by = call fastcc ptr @inf_ApplyEqualityFactoring(ptr noundef nonnull %0, ptr noundef %.val128.val.val, ptr noundef %.val119.val, i32 noundef %i.ai, i32 noundef %i.bx, ptr noundef %i.bw, ptr noundef %1, ptr noundef %2)
  %i.bz = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8
  store ptr %.3, ptr %i.bz, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.4 = phi ptr [ %i.bz, %bb.n ], [ %.3, %bb.m ]
  %i.cb = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.cb) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %cont_Reset.exit
  %.5 = phi ptr [ %.4, %bb.o ], [ %.3, %cont_Reset.exit ] ; 4 uses
  %i.cc = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i145 = icmp eq ptr %i.cc, null
  br i1 %.not1.i145, label %cont_Reset.exit151, label %.lr.ph.preheader.i146
end_hunk_1
begin_hunk_2_@inf_EqualityFactoring:bb.a
bb.u:                                             ; preds = %bb.t, %bb.q
  %.7 = phi ptr [ %.6, %bb.t ], [ %.5, %bb.q ]    ; 3 uses
  %i.cw = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i152 = icmp eq ptr %i.cw, null
  br i1 %.not1.i152, label %cont_Reset.exit158, label %.lr.ph.preheader.i153

.lr.ph.preheader.i153:                            ; preds = %bb.u
  %cont_BINDINGS.promoted.i154 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155, %.lr.ph.preheader.i153
  %i.cx = phi ptr [ %i.de, %.lr.ph.i155 ], [ %i.cw, %.lr.ph.preheader.i153 ] ; 3 uses
  %i.cy = phi i32 [ %i.dd, %.lr.ph.i155 ], [ %cont_BINDINGS.promoted.i154, %.lr.ph.preheader.i153 ]
  store ptr %i.cx, ptr @cont_CURRENTBINDING, align 8
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %.val.i.i.i156 = load ptr, ptr %i.cz, align 8
  store ptr %.val.i.i.i156, ptr @cont_LASTBINDING, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.da, i8 0, i64 20, i1 false)
  %i.db = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr null, ptr %i.dc, align 8
  %i.dd = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.dd, ptr @cont_BINDINGS, align 4
  %i.de = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i157 = icmp eq ptr %i.de, null
  br i1 %.not.i157, label %cont_Reset.exit158, label %.lr.ph.i155, !llvm.loop !0

cont_Reset.exit158:                               ; preds = %.lr.ph.i155, %bb.u
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  call void @cont_Check() #14
  %i.df = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.dg = call i32 @unify_UnifyCom(ptr noundef %i.df, ptr noundef %.val128.val.val, ptr noundef %.val127.val.val) #14
  %.not112 = icmp eq i32 %i.dg, 0
  br i1 %.not112, label %bb.y, label %bb.v

bb.v:                                             ; preds = %cont_Reset.exit158
  %i.dh = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.dh, ptr noundef nonnull %i.a) #14
  %i.di = load ptr, ptr %i.a, align 8
  %i.dj = call fastcc i32 @inf_EqualityFactoringApplicable(ptr noundef nonnull %0, i32 noundef %i.ak, ptr noundef %.val128.val.val, ptr noundef %.val120.val, ptr noundef %i.di, ptr noundef %1, ptr noundef %2)
  %.not113 = icmp eq i32 %i.dj, 0
  br i1 %.not113, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %i.a, align 8
  %i.dl = trunc nsw i64 %indvars.iv to i32
  %i.dm = call fastcc ptr @inf_ApplyEqualityFactoring(ptr noundef nonnull %0, ptr noundef %.val120.val, ptr noundef %.val119.val, i32 noundef %i.ak, i32 noundef %i.dl, ptr noundef %i.dk, ptr noundef %1, ptr noundef %2)
  %i.dn = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dm, ptr %i.do, align 8
  store ptr %.7, ptr %i.dn, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.8 = phi ptr [ %i.dn, %bb.w ], [ %.7, %bb.v ]
  %i.dp = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.dp) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %cont_Reset.exit158
  %.9 = phi ptr [ %.8, %bb.x ], [ %.7, %cont_Reset.exit158 ]
  %i.dq = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i159 = icmp eq ptr %i.dq, null
  br i1 %.not1.i159, label %cont_Reset.exit165, label %.lr.ph.preheader.i160

.lr.ph.preheader.i160:                            ; preds = %bb.y
  %cont_BINDINGS.promoted.i161 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162, %.lr.ph.preheader.i160
  %i.dr = phi ptr [ %i.dy, %.lr.ph.i162 ], [ %i.dq, %.lr.ph.preheader.i160 ] ; 3 uses
  %i.ds = phi i32 [ %i.dx, %.lr.ph.i162 ], [ %cont_BINDINGS.promoted.i161, %.lr.ph.preheader.i160 ]
  store ptr %i.dr, ptr @cont_CURRENTBINDING, align 8
  %i.dt = getelementptr i8, ptr %i.dr, i64 24
  %.val.i.i.i163 = load ptr, ptr %i.dt, align 8
  store ptr %.val.i.i.i163, ptr @cont_LASTBINDING, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.du, i8 0, i64 20, i1 false)
  %i.dv = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr null, ptr %i.dw, align 8
  %i.dx = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dx, ptr @cont_BINDINGS, align 4
  %i.dy = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i164 = icmp eq ptr %i.dy, null
  br i1 %.not.i164, label %cont_Reset.exit165, label %.lr.ph.i162, !llvm.loop !0

cont_Reset.exit165:                               ; preds = %.lr.ph.i162, %bb.y
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  br label %bb.z

bb.z:                                             ; preds = %clause_LiteralIsEquality.exit137.thread, %cont_Reset.exit151, %cont_Reset.exit165, %bb.g, %clause_LiteralIsEquality.exit137
  %.11 = phi ptr [ %.1177, %bb.g ], [ %.1177, %clause_LiteralIsEquality.exit137 ], [ %.5, %cont_Reset.exit151 ], [ %.9, %cont_Reset.exit165 ], [ %.1177, %clause_LiteralIsEquality.exit137.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not102.not = icmp slt i64 %indvars.iv, %i.l
  br i1 %.not102.not, label %bb.g, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.z, %clause_LiteralAtom.exit, %clause_LiteralIsEquality.exit.thread, %bb.e, %clause_LiteralIsEquality.exit
  %.12 = phi ptr [ %.094185, %bb.e ], [ %.094185, %clause_LiteralIsEquality.exit ], [ %.094185, %clause_LiteralIsEquality.exit.thread ], [ %.094185, %clause_LiteralAtom.exit ], [ %.11, %bb.z ] ; 2 uses
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32
  %exitcond.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit175, label %bb.e, !llvm.loop !19

.loopexit175:                                     ; preds = %.loopexit, %bb.d, %bb.a, %bb.b, %bb.c
  %.095 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ %.12, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.095
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_EqualityFactoringApplicable(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483648, 2147483647) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val23 = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %.val23, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @term_Copy(ptr noundef %2) #14
  %i.g = tail call ptr @subst_Apply(ptr noundef %4, ptr noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @term_Copy(ptr noundef %3) #14
  %i.i = tail call ptr @subst_Apply(ptr noundef %4, ptr noundef %i.h) #14 ; 2 uses
  %i.j = tail call i32 @ord_Compare(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %5, ptr noundef %6) #14
  %.off = add i32 %i.j, -1
  %switch = icmp ult i32 %.off, 2
  tail call void @term_Delete(ptr noundef %i.g) #14
  tail call void @term_Delete(ptr noundef %i.i) #14
  br i1 %switch, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %1, i32 noundef -1, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef %6)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_ApplyEqualityFactoring(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3, i32 noundef range(i32 -2147483648, 2147483647) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val3.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %.val.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val.i, %.val3.i
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i
  %i.f = tail call ptr @clause_CreateBody(i32 noundef %i.e) #14 ; 15 uses
  %.val73 = load i32, ptr %i.a, align 8           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %.val73, ptr %i.g, align 8
  %.val63 = load i32, ptr %i.b, align 4           ; 3 uses
  %i.h = add i32 %.val73, -1
  %i.i = add i32 %i.h, %.val63
  %i.j = add nsw i32 %.val63, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.j, ptr %i.k, align 4
  %.val3.i.i = load i32, ptr %i.a, align 8
  %.val.i.i = load i32, ptr %i.b, align 4
  %.val4.i.i = load i32, ptr %i.d, align 8
  %i.l = add i32 %.val4.i.i, -1                   ; 2 uses
  %i.m = add i32 %i.l, %.val3.i.i
  %i.n = add i32 %i.m, %.val.i.i                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 %i.l, ptr %i.o, align 8
  %.not.not76 = icmp sgt i32 %.val73, 0
  br i1 %.not.not76, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 56
  %i.q = getelementptr i8, ptr %i.f, i64 56
  %wide.trip.count = zext nneg i32 %.val73 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %.057.lcssa = phi i32 [ 0, %bb.a ], [ %.val73, %bb.b ] ; 4 uses
  %.not5978 = icmp sgt i32 %.057.lcssa, %i.i
  br i1 %.not5978, label %.preheader.._crit_edge_crit_edge, label %.lr.ph80

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = zext nneg i32 %.057.lcssa to i64
  br label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader
  %i.r = getelementptr i8, ptr %0, i64 56
  %i.s = getelementptr i8, ptr %i.f, i64 56
  %i.t = zext nneg i32 %.057.lcssa to i64
  %i.u = add i32 %.val63, %.val73                 ; 2 uses
  %wide.trip.count93 = zext i32 %i.u to i64       ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val67 = load ptr, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val67, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val1.i = load ptr, ptr %i.x, align 8
  %i.y = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.z = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.y) #14
  %i.aa = tail call ptr @clause_LiteralCreate(ptr noundef %i.z, ptr noundef nonnull %i.f) #14
  %.val71 = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val71, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ab, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !20

bb.c:                                             ; preds = %.lr.ph80, %bb.c
  %indvars.iv90 = phi i64 [ %i.t, %.lr.ph80 ], [ %indvars.iv.next91, %bb.c ] ; 3 uses
  %.val66 = load ptr, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val66, i64 %indvars.iv90
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %.val1.i74 = load ptr, ptr %i.ae, align 8
  %i.af = tail call ptr @term_Copy(ptr noundef %.val1.i74) #14
  %i.ag = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.af) #14
  %i.ah = tail call ptr @clause_LiteralCreate(ptr noundef %i.ag, ptr noundef nonnull %i.f) #14
  %.val70 = load ptr, ptr %i.s, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val70, i64 %indvars.iv90
  store ptr %i.ah, ptr %i.ai, align 8
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge, label %bb.c, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.c, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count93, %bb.c ] ; 2 uses
  %.158.lcssa = phi i32 [ %.057.lcssa, %.preheader.._crit_edge_crit_edge ], [ %i.u, %bb.c ]
  %i.aj = load i32, ptr @fol_EQUALITY, align 4
  %i.ak = tail call ptr @term_Copy(ptr noundef %1) #14
  %i.al = tail call ptr @term_Copy(ptr noundef %2) #14
  %i.am = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.an, align 8
  store ptr null, ptr %i.am, align 8
  %i.ao = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ak, ptr %i.ap, align 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.aq = tail call ptr @term_Create(i32 noundef %i.aj, ptr noundef nonnull %i.ao) #14
  %i.ar = load i32, ptr @fol_NOT, align 4
  %i.as = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.aq) #14
  %i.at = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8
  store ptr null, ptr %i.at, align 8
  %i.av = tail call ptr @term_Create(i32 noundef %i.ar, ptr noundef nonnull %i.at) #14
  %i.aw = tail call ptr @clause_LiteralCreate(ptr noundef %i.av, ptr noundef nonnull %i.f) #14
  %i.ax = getelementptr i8, ptr %i.f, i64 56      ; 2 uses
  %.val69 = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val69, i64 %.pre-phi
  store ptr %i.aw, ptr %i.ay, align 8
  %.not6082 = icmp sgt i32 %.158.lcssa, %i.n
  br i1 %.not6082, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %0, i64 56
  %i.ba = zext i32 %3 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph86, %bb.f
  %indvars.iv95 = phi i64 [ %.pre-phi, %.lr.ph86 ], [ %indvars.iv.next96, %bb.f ] ; 5 uses
  %.084 = phi i32 [ 1, %.lr.ph86 ], [ %.1, %bb.f ] ; 2 uses
  %i.bb = icmp eq i64 %indvars.iv95, %i.ba
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = zext nneg i32 %.084 to i64
  %.val65 = load ptr, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val65, i64 %indvars.iv95
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %.val1.i75 = load ptr, ptr %i.bf, align 8
  %i.bg = tail call ptr @term_Copy(ptr noundef %.val1.i75) #14
  %i.bh = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.bg) #14
  %i.bi = tail call ptr @clause_LiteralCreate(ptr noundef %i.bh, ptr noundef nonnull %i.f) #14
  %.val68 = load ptr, ptr %i.ax, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val68, i64 %indvars.iv95
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bc
  store ptr %i.bi, ptr %i.bk, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %.084, %bb.e ], [ 0, %bb.d ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %i.bl = trunc nuw i64 %indvars.iv95 to i32
  %.not60.not = icmp sgt i32 %i.n, %i.bl
  br i1 %.not60.not, label %bb.d, label %._crit_edge87, !llvm.loop !22

._crit_edge87:                                    ; preds = %bb.f, %._crit_edge
  %.val72 = load i32, ptr %0, align 8
  %i.bm = sext i32 %.val72 to i64
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bn, ptr %i.br, align 8
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr %i.bq, ptr %i.bo, align 8
  %i.bs = sext i32 %4 to i64
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bt, ptr %i.bx, align 8
  store ptr %i.bv, ptr %i.bw, align 8
  store ptr %i.bw, ptr %i.bu, align 8
  tail call fastcc void @clause_SetDataFromFather(ptr noundef nonnull %i.f, ptr noundef nonnull %0, i32 noundef %3, ptr noundef %6, ptr noundef %7)
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 4, ptr %i.by, align 4
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_GenSuperpositionRight(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val74 = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val74, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.bs

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val79 = load i32, ptr %i.e, align 8
  %.not105 = icmp eq i32 %.val79, 0
  br i1 %.not105, label %bb.bs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %0) #14
  %.not56 = icmp eq i32 %i.f, 0
  br i1 %.not56, label %bb.bs, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @clause_Copy(ptr noundef nonnull %0) #14 ; 13 uses
  %i.h = getelementptr i8, ptr %i.g, i64 64       ; 3 uses
  %.val3.i.i = load i32, ptr %i.h, align 8        ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 68       ; 2 uses
  %.val.i.i = load i32, ptr %i.i, align 4         ; 3 uses
  %i.j = getelementptr i8, ptr %i.g, i64 72       ; 2 uses
  %.val4.i.i = load i32, ptr %i.j, align 8        ; 2 uses
  %i.k = add i32 %.val.i.i, %.val3.i.i            ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.l, %.val4.i.i
  %.not57116 = icmp sgt i32 %i.k, %i.m
  br i1 %.not57116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.g, i64 56       ; 6 uses
  %.not58 = icmp eq i32 %3, 0                     ; 4 uses
  %.not61 = icmp eq i32 %4, 0                     ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = getelementptr i8, ptr %0, i64 68
  %.not62 = icmp eq i32 %2, 0                     ; 3 uses
  %i.q = getelementptr i8, ptr %i.g, i64 48       ; 2 uses
  %i.r = sext i32 %.val3.i.i to i64
  %i.s = sext i32 %.val.i.i to i64
  %i.t = add nsw i64 %i.r, %i.s
  %7 = add i32 %.val4.i.i, %.val3.i.i
  %i.u = add i32 %7, %.val.i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %list_Nconc.exit98
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %list_Nconc.exit98 ] ; 11 uses
  %.051117 = phi ptr [ null, %.lr.ph ], [ %.2, %list_Nconc.exit98 ] ; 6 uses
  %.val66 = load ptr, ptr %i.n, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %.val66, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val67 = load ptr, ptr %i.x, align 8           ; 2 uses
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val72 = load i32, ptr %i.w, align 8
  %i.y = and i32 %.val72, 2
  %.not59 = icmp eq i32 %i.y, 0
  br i1 %.not59, label %list_Nconc.exit98, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val71 = load i32, ptr %.val67, align 8
  %i.z = load i32, ptr @fol_EQUALITY, align 4
  %.not106 = icmp eq i32 %.val71, %i.z
  br i1 %.not106, label %bb.h, label %list_Nconc.exit87

bb.h:                                             ; preds = %bb.g
  br i1 %.not61, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i = load i32, ptr %i.o, align 8
  %.val.i = load i32, ptr %i.p, align 4
  %i.aa = add nsw i32 %.val.i, %.val3.i
  %.val4.i = load i32, ptr %i.e, align 8
  %i.ab = add nsw i32 %i.aa, %.val4.i
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %list_Nconc.exit87

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr i8, ptr %.val67, i64 16   ; 2 uses
  %.val70 = load ptr, ptr %i.ad, align 8          ; 2 uses
  %i.ae = getelementptr i8, ptr %.val70, i64 8
  %.val70.val = load ptr, ptr %i.ae, align 8
  %.val77.val = load ptr, ptr %.val70, align 8
  %i.af = getelementptr i8, ptr %.val77.val, i64 8
  %.val77.val.val = load ptr, ptr %i.af, align 8
  %i.ag = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ah = call fastcc ptr @inf_GenLitSPRight(ptr noundef nonnull %i.g, ptr noundef %.val70.val, ptr noundef %.val77.val.val, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %list_Nconc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not16.i = icmp eq ptr %.051117, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.l, label %.preheader.i, !llvm.loop !2

bb.l:                                             ; preds = %.preheader.i
  store ptr %.051117, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.ah, %bb.l ], [ %.051117, %bb.j ], [ %i.ah, %bb.k ] ; 4 uses
  br i1 %.not62, label %.split, label %bb.m

bb.m:                                             ; preds = %list_Nconc.exit
  %i.ai = getelementptr i8, ptr %i.w, i64 8
  %.val78 = load i32, ptr %i.ai, align 8
  %.not63 = icmp eq i32 %.val78, 0
  br i1 %.not63, label %.split, label %list_Nconc.exit87

.split:                                           ; preds = %bb.m, %list_Nconc.exit
  %.sink = phi i32 [ 0, %list_Nconc.exit ], [ %2, %bb.m ]
  %.val75 = load ptr, ptr %i.ad, align 8          ; 2 uses
  %.val75.val = load ptr, ptr %.val75, align 8
  %i.aj = getelementptr i8, ptr %.val75.val, i64 8
  %.val75.val.val = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val75, i64 8
  %.val68.val = load ptr, ptr %i.ak, align 8
  %i.al = call fastcc ptr @inf_GenLitSPRight(ptr noundef nonnull %i.g, ptr noundef %.val75.val.val, ptr noundef %.val68.val, i32 noundef %i.ag, ptr noundef %1, i32 noundef %.sink, i32 noundef %3, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i80 = icmp eq ptr %i.al, null
  br i1 %.not.i80, label %list_Nconc.exit87, label %bb.n

bb.n:                                             ; preds = %.split
  %.not16.i81 = icmp eq ptr %.0.i, null
  br i1 %.not16.i81, label %list_Nconc.exit87, label %.preheader.i82

.preheader.i82:                                   ; preds = %bb.n, %.preheader.i82
  %.012.i83 = phi ptr [ %.012.val15.i84, %.preheader.i82 ], [ %i.al, %bb.n ] ; 2 uses
  %.012.val15.i84 = load ptr, ptr %.012.i83, align 8 ; 2 uses
  %.not17.i85 = icmp eq ptr %.012.val15.i84, null
  br i1 %.not17.i85, label %bb.o, label %.preheader.i82, !llvm.loop !2

bb.o:                                             ; preds = %.preheader.i82
  store ptr %.0.i, ptr %.012.i83, align 8
  br label %list_Nconc.exit87

list_Nconc.exit87:                                ; preds = %bb.o, %bb.n, %.split, %bb.m, %bb.i, %bb.g
  %.1 = phi ptr [ %.0.i, %bb.m ], [ %.051117, %bb.g ], [ %.051117, %bb.i ], [ %i.al, %bb.o ], [ %.0.i, %.split ], [ %i.al, %bb.n ] ; 5 uses
  %.val73 = load i32, ptr %i.q, align 8
  %i.am = and i32 %.val73, 32
  %.not64 = icmp eq i32 %i.am, 0
  br i1 %.not64, label %bb.p, label %list_Nconc.exit98

bb.p:                                             ; preds = %list_Nconc.exit87
  %.val38.i = load ptr, ptr %i.n, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.val38.i, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val39.i = load ptr, ptr %i.ap, align 8        ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val39.i, align 8 ; 2 uses
  %i.aq = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.aq
  br i1 %.not.i.i, label %bb.q, label %clause_LiteralAtom.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %.val39.i, i64 16
  %.val6.i.i = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.as, align 8   ; 2 uses
  %.val40.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.q, %bb.p
  %.val40.i = phi i32 [ %.val40.pre.i, %bb.q ], [ %.val5.val.i.i, %bb.p ]
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.q ], [ %.val39.i, %bb.p ] ; 2 uses
  %i.at = load i32, ptr @fol_EQUALITY, align 4
  %.not.i88 = icmp eq i32 %.val40.i, %i.at
  br i1 %.not.i88, label %list_Nconc.exit.i, label %bb.u

list_Nconc.exit.i:                                ; preds = %clause_LiteralAtom.exit.i
  %i.au = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.av = call fastcc ptr @inf_GenSPRightEqToGiven(ptr noundef nonnull %i.g, i32 noundef range(i32 -2147483648, 2147483647) %i.au, i32 noundef 1, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 4 uses
  br i1 %.not58, label %.split.i, label %bb.r

bb.r:                                             ; preds = %list_Nconc.exit.i
  %.val.i90 = load ptr, ptr %i.n, align 8
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val.i90, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val41.i = load i32, ptr %i.ay, align 8
  %.not37.i = icmp eq i32 %.val41.i, 0
  br i1 %.not37.i, label %.split.i, label %inf_GenSPRightToGiven.exit

.split.i:                                         ; preds = %bb.r, %list_Nconc.exit.i
  %i.az = call fastcc ptr @inf_GenSPRightEqToGiven(ptr noundef nonnull %i.g, i32 noundef range(i32 -2147483648, 2147483647) %i.au, i32 noundef 0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i44.i = icmp eq ptr %i.az, null
  br i1 %.not.i44.i, label %inf_GenSPRightToGiven.exit, label %bb.s

bb.s:                                             ; preds = %.split.i
  %.not16.i.i = icmp eq ptr %i.av, null
  br i1 %.not16.i.i, label %inf_GenSPRightToGiven.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.az, %bb.s ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.t, label %.preheader.i.i, !llvm.loop !2

bb.t:                                             ; preds = %.preheader.i.i
  store ptr %i.av, ptr %.012.i.i, align 8
  br label %inf_GenSPRightToGiven.exit.thread

bb.u:                                             ; preds = %clause_LiteralAtom.exit.i
  %i.ba = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.i.i, i64 16
  %.val108.i.i = load ptr, ptr %i.bb, align 8
  call void @sharing_PushListOnStack(ptr noundef %.val108.i.i) #14
  %i.bc = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not216.i.i = icmp eq i32 %i.bc, %i.ba
  br i1 %.not216.i.i, label %list_Nconc.exit98, label %.lr.ph219.i.i.preheader

.lr.ph219.i.i.preheader:                          ; preds = %bb.u
  %i.bd = trunc nsw i64 %indvars.iv to i32
  br label %.lr.ph219.i.i

.lr.ph219.i.i:                                    ; preds = %.lr.ph219.i.i.preheader, %.loopexit194.i.i
  %i.be = phi i32 [ %i.ie, %.loopexit194.i.i ], [ %i.bc, %.lr.ph219.i.i.preheader ]
  %.073217.i.i = phi ptr [ %.8.i.i, %.loopexit194.i.i ], [ null, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr @stack_POINTER, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8            ; 5 uses
  %.val104.i.i = load i32, ptr %i.bi, align 8
  %i.bj = icmp slt i32 %.val104.i.i, 1
  br i1 %i.bj, label %bb.v, label %.loopexit194.i.i

bb.v:                                             ; preds = %.lr.ph219.i.i
  %i.bk = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val103.i.i = load ptr, ptr %1, align 8
  %i.bl = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.bm = call ptr @st_GetUnifier(ptr noundef %i.bk, ptr noundef %.val103.i.i, ptr noundef %i.bl, ptr noundef nonnull %i.bi) #14 ; 2 uses
  %.not188210.i.i = icmp eq ptr %i.bm, null
  br i1 %.not188210.i.i, label %.loopexit194.i.i, label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.v, %._crit_edge.i.i
  %.072212.i.i = phi ptr [ %.val.i117.i.i, %._crit_edge.i.i ], [ %i.bm, %bb.v ] ; 4 uses
end_hunk_2
begin_hunk_3_@inf_GenLitSPRight:bb.a
  %.val.i.i = load ptr, ptr %i.cg, align 8        ; 2 uses
  %.val19.val.i.i = load ptr, ptr %.val.i.i, align 8
  %.0.in.i.i = getelementptr i8, ptr %.val19.val.i.i, i64 8
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8
  %.015.in.i.i = getelementptr i8, ptr %.val.i.i, i64 8
  %.015.i.i = load ptr, ptr %.015.in.i.i, align 8
  %i.ch = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.015.i.i, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.ce)
  %.not17.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not17.i.i, label %inf_AllTermsRplac.exit.thread, label %inf_AllTermsRplac.exit.thread163

inf_AllTermsRplac.exit.thread163:                 ; preds = %bb.v
  %i.ci = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.0.i.i, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.ce) ; 0 uses
  br label %.split

bb.w:                                             ; preds = %bb.u
  %i.cj = getelementptr i8, ptr %.0.i, i64 16     ; 2 uses
  %.val110 = load ptr, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %.val110, i64 8
  %.val110.val = load ptr, ptr %i.ck, align 8
  %i.cl = call ptr @term_Copy(ptr noundef %.val110.val) #14
  %i.cm = call ptr @subst_Apply(ptr noundef %i.ce, ptr noundef %i.cl) #14 ; 2 uses
  %i.cn = load ptr, ptr %i.b, align 8
  %.val115 = load ptr, ptr %i.cj, align 8
  %.val115.val = load ptr, ptr %.val115, align 8
  %i.co = getelementptr i8, ptr %.val115.val, i64 8
  %.val115.val.val = load ptr, ptr %i.co, align 8
  %i.cp = call ptr @term_Copy(ptr noundef %.val115.val.val) #14
  %i.cq = call ptr @subst_Apply(ptr noundef %i.cn, ptr noundef %i.cp) #14 ; 2 uses
  %i.cr = call i32 @ord_Compare(ptr noundef %i.cm, ptr noundef %i.cq, ptr noundef %7, ptr noundef %8) #14
  %i.cs = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.ct = call ptr @term_Copy(ptr noundef nonnull %.0.i) #14 ; 9 uses
  switch i32 %i.cr, label %bb.ad [
    i32 1, label %bb.x
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val.i.i132 = load ptr, ptr %i.cu, align 8     ; 2 uses
  %.val19.val.i.i133 = load ptr, ptr %.val.i.i132, align 8
  %.0.in.i.i134 = getelementptr i8, ptr %.val.i.i132, i64 8
  %.0.i.i135 = load ptr, ptr %.0.in.i.i134, align 8
  %.015.in.i.i136 = getelementptr i8, ptr %.val19.val.i.i133, i64 8
  %.015.i.i137 = load ptr, ptr %.015.in.i.i136, align 8
  %i.cv = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.015.i.i137, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.cs)
  %.not17.i.i138 = icmp eq i32 %i.cv, 0
  br i1 %.not17.i.i138, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.0.i.i135, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.cs) ; 0 uses
  br label %inf_AllTermsRightRplac.exit

bb.z:                                             ; preds = %bb.x
  call void @term_Delete(ptr noundef nonnull %i.ct) #14
  br label %inf_AllTermsRightRplac.exit

bb.aa:                                            ; preds = %bb.w
  %i.cx = getelementptr i8, ptr %i.ct, i64 16
  %.val.i.i140 = load ptr, ptr %i.cx, align 8     ; 2 uses
  %.val19.val.i.i141 = load ptr, ptr %.val.i.i140, align 8
  %.0.in.i.i142 = getelementptr i8, ptr %.val19.val.i.i141, i64 8
  %.0.i.i143 = load ptr, ptr %.0.in.i.i142, align 8
  %.015.in.i.i144 = getelementptr i8, ptr %.val.i.i140, i64 8
  %.015.i.i145 = load ptr, ptr %.015.in.i.i144, align 8
  %i.cy = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.015.i.i145, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.cs)
  %.not17.i.i146 = icmp eq i32 %i.cy, 0
  br i1 %.not17.i.i146, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %.0.i.i143, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.cs) ; 0 uses
  br label %inf_AllTermsRightRplac.exit

bb.ac:                                            ; preds = %bb.aa
  call void @term_Delete(ptr noundef nonnull %i.ct) #14
  br label %inf_AllTermsRightRplac.exit

bb.ad:                                            ; preds = %bb.w
  %i.da = call fastcc i32 @inf_NAllTermsRplac(ptr noundef %i.ct, ptr noundef nonnull %.089.val, ptr noundef %i.bm, ptr noundef %i.cs)
  %.not.i149 = icmp eq i32 %i.da, 0
  br i1 %.not.i149, label %bb.ae, label %inf_AllTermsRightRplac.exit

bb.ae:                                            ; preds = %bb.ad
  call void @term_Delete(ptr noundef %i.ct) #14
  br label %inf_AllTermsRightRplac.exit

inf_AllTermsRightRplac.exit:                      ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  %.0 = phi ptr [ null, %bb.ac ], [ null, %bb.z ], [ %i.ct, %bb.y ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.ad ], [ null, %bb.ae ]
  call void @term_Delete(ptr noundef %i.cm) #14
  call void @term_Delete(ptr noundef %i.cq) #14
  br label %inf_AllTermsRplac.exit

inf_AllTermsRplac.exit.thread:                    ; preds = %bb.v, %bb.t
  %.sink = phi ptr [ %i.cb, %bb.t ], [ %i.cf, %bb.v ]
  call void @term_Delete(ptr noundef %.sink) #14
  br i1 %i.bv, label %bb.ag, label %.thread190

inf_AllTermsRplac.exit:                           ; preds = %bb.t, %inf_AllTermsRightRplac.exit
  %.1 = phi ptr [ %.0, %inf_AllTermsRightRplac.exit ], [ %i.cb, %bb.t ] ; 2 uses
  %.not107 = icmp eq ptr %.1, null
  br i1 %.not107, label %bb.af, label %.split

.split:                                           ; preds = %inf_AllTermsRplac.exit.thread163, %inf_AllTermsRplac.exit
  %.1166 = phi ptr [ %i.cf, %inf_AllTermsRplac.exit.thread163 ], [ %.1, %inf_AllTermsRplac.exit ]
  %i.db = load ptr, ptr %i.a, align 8
  %i.dc = load ptr, ptr %i.b, align 8
  %i.dd = call fastcc ptr @inf_ApplyGenSuperposition(ptr noundef %0, i32 noundef %3, ptr noundef %i.db, ptr noundef nonnull %.val4.i, i32 noundef %i.z, ptr noundef %i.dc, ptr noundef nonnull %.1166, i32 noundef 1, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  %i.de = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  store ptr %.191177, ptr %i.de, align 8
  br i1 %i.bv, label %bb.ag, label %.thread190

bb.af:                                            ; preds = %inf_AllTermsRplac.exit
  br i1 %i.bv, label %bb.ag, label %.thread190

.thread190:                                       ; preds = %bb.q, %inf_AllTermsRplac.exit.thread, %.split, %bb.af
  %.2168 = phi ptr [ %i.de, %.split ], [ %.191177, %bb.af ], [ %.191177, %inf_AllTermsRplac.exit.thread ], [ %.191177, %bb.q ]
  %.087160167 = phi ptr [ %.087159, %.split ], [ %.087159, %bb.af ], [ %.087159, %inf_AllTermsRplac.exit.thread ], [ %i.bs, %bb.q ]
  call void @term_Delete(ptr noundef %.087160167) #14
  br label %bb.ag

bb.ag:                                            ; preds = %inf_AllTermsRplac.exit.thread, %.split, %.thread190, %bb.af
  %.2169 = phi ptr [ %i.de, %.split ], [ %.2168, %.thread190 ], [ %.191177, %bb.af ], [ %.191177, %inf_AllTermsRplac.exit.thread ]
  call void @term_Delete(ptr noundef %i.bm) #14
  br label %inf_LiteralsMax.exit.thread

inf_LiteralsMax.exit.thread:                      ; preds = %bb.n, %bb.l, %bb.ag
  %.3 = phi ptr [ %.2169, %bb.ag ], [ %.191177, %bb.l ], [ %.191177, %bb.n ]
  %i.dg = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.dg) #14
  %i.dh = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.dh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ah

bb.ah:                                            ; preds = %inf_LiteralsMax.exit.thread, %bb.i, %bb.h, %bb.g, %clause_LiteralGetIndex.exit
  %.4 = phi ptr [ %.191177, %clause_LiteralGetIndex.exit ], [ %.191177, %bb.h ], [ %.3, %inf_LiteralsMax.exit.thread ], [ %.191177, %bb.i ], [ %.191177, %bb.g ] ; 2 uses
  %.val.i152 = load ptr, ptr %.088178, align 8    ; 2 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dn = add i64 %i.dm, %i.dl
  store i64 %i.dn, ptr @memory_FREEDBYTES, align 8
  %i.do = load ptr, ptr %i.di, align 8
  store ptr %i.do, ptr %.088178, align 8
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.088178, ptr %i.dp, align 8
  %.not171 = icmp eq ptr %.val.i152, null
  br i1 %.not171, label %.loopexit, label %.lr.ph, !llvm.loop !28

.loopexit:                                        ; preds = %bb.ah, %symbol_IsPredicate.exit.thread, %symbol_IsPredicate.exit, %bb.b
  %.5 = phi ptr [ %.090180, %bb.b ], [ %.090180, %symbol_IsPredicate.exit ], [ %.090180, %symbol_IsPredicate.exit.thread ], [ %.4, %bb.ah ] ; 2 uses
  %.val.i153 = load ptr, ptr %.089181, align 8    ; 2 uses
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dv = add i64 %i.du, %i.dt
  store i64 %i.dv, ptr @memory_FREEDBYTES, align 8
  %i.dw = load ptr, ptr %i.dq, align 8
  store ptr %i.dw, ptr %.089181, align 8
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.089181, ptr %i.dx, align 8
  %.not = icmp eq ptr %.val.i153, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.090.lcssa = phi ptr [ null, %bb.a ], [ %.5, %.loopexit ]
  ret ptr %.090.lcssa
}

declare void @clause_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_MergingParamodulation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val54 = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val54, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val56 = load i32, ptr %i.c, align 8
  %.not81 = icmp eq i32 %.val56, 0
  br i1 %.not81, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %0) #14
  %.not44 = icmp eq i32 %i.d, 0
  br i1 %.not44, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @clause_Copy(ptr noundef nonnull %0) #14 ; 9 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %.val3.i.i = load i32, ptr %i.f, align 8        ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 68
  %.val.i.i = load i32, ptr %i.g, align 4         ; 3 uses
  %i.h = getelementptr i8, ptr %i.e, i64 72
  %.val4.i.i = load i32, ptr %i.h, align 8        ; 2 uses
  %i.i = add i32 %.val.i.i, %.val3.i.i            ; 2 uses
  %i.j = add i32 %i.i, -1
  %i.k = add i32 %i.j, %.val4.i.i
  %.not4583 = icmp sgt i32 %i.i, %i.k
  br i1 %.not4583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.e, i64 56
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = sext i32 %.val.i.i to i64
  %i.o = add nsw i64 %i.m, %i.n
  %4 = add i32 %.val4.i.i, %.val3.i.i
  %i.p = add i32 %4, %.val.i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %list_Nconc.exit80
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %list_Nconc.exit80 ] ; 3 uses
  %.04184 = phi ptr [ null, %.lr.ph ], [ %.1, %list_Nconc.exit80 ] ; 5 uses
  %.val50 = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds [8 x i8], ptr %.val50, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.val53 = load i32, ptr %i.r, align 8
  %i.s = and i32 %.val53, 2
  %.not46 = icmp eq i32 %i.s, 0
  br i1 %.not46, label %list_Nconc.exit80, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 24
  %.val51 = load ptr, ptr %i.t, align 8
  %.val52 = load i32, ptr %.val51, align 8
  %i.u = load i32, ptr @fol_EQUALITY, align 4
  %.not82 = icmp eq i32 %.val52, %i.u
  br i1 %.not82, label %bb.g, label %list_Nconc.exit80

bb.g:                                             ; preds = %bb.f
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  %i.w = tail call fastcc ptr @inf_LitMParamod(ptr noundef nonnull %i.e, i32 noundef %i.v, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %list_Nconc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not16.i = icmp eq ptr %.04184, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.w, %bb.h ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.i, label %.preheader.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i
  store ptr %.04184, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.w, %bb.i ], [ %.04184, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.x = tail call fastcc ptr @inf_MParamodLitToGiven(ptr noundef nonnull %i.e, i32 noundef %i.v, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i57 = icmp eq ptr %i.x, null
  br i1 %.not.i57, label %list_Nconc.exit64, label %bb.j

bb.j:                                             ; preds = %list_Nconc.exit
  %.not16.i58 = icmp eq ptr %.0.i, null
  br i1 %.not16.i58, label %list_Nconc.exit64, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.j, %.preheader.i59
  %.012.i60 = phi ptr [ %.012.val15.i61, %.preheader.i59 ], [ %i.x, %bb.j ] ; 2 uses
  %.012.val15.i61 = load ptr, ptr %.012.i60, align 8 ; 2 uses
  %.not17.i62 = icmp eq ptr %.012.val15.i61, null
  br i1 %.not17.i62, label %bb.k, label %.preheader.i59, !llvm.loop !2

bb.k:                                             ; preds = %.preheader.i59
  store ptr %.0.i, ptr %.012.i60, align 8
  br label %list_Nconc.exit64

list_Nconc.exit64:                                ; preds = %list_Nconc.exit, %bb.j, %bb.k
  %.0.i63 = phi ptr [ %i.x, %bb.k ], [ %.0.i, %list_Nconc.exit ], [ %i.x, %bb.j ] ; 4 uses
  %i.y = getelementptr i8, ptr %i.r, i64 8
  %.val55 = load i32, ptr %i.y, align 8
  %.not48 = icmp eq i32 %.val55, 0
  br i1 %.not48, label %bb.l, label %list_Nconc.exit80

bb.l:                                             ; preds = %list_Nconc.exit64
  %i.z = tail call fastcc ptr @inf_LitMParamod(ptr noundef nonnull %i.e, i32 noundef %i.v, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i65 = icmp eq ptr %i.z, null
  br i1 %.not.i65, label %list_Nconc.exit72, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not16.i66 = icmp eq ptr %.0.i63, null
  br i1 %.not16.i66, label %list_Nconc.exit72, label %.preheader.i67

.preheader.i67:                                   ; preds = %bb.m, %.preheader.i67
  %.012.i68 = phi ptr [ %.012.val15.i69, %.preheader.i67 ], [ %i.z, %bb.m ] ; 2 uses
  %.012.val15.i69 = load ptr, ptr %.012.i68, align 8 ; 2 uses
  %.not17.i70 = icmp eq ptr %.012.val15.i69, null
  br i1 %.not17.i70, label %bb.n, label %.preheader.i67, !llvm.loop !2

bb.n:                                             ; preds = %.preheader.i67
  store ptr %.0.i63, ptr %.012.i68, align 8
  br label %list_Nconc.exit72

list_Nconc.exit72:                                ; preds = %bb.l, %bb.m, %bb.n
  %.0.i71 = phi ptr [ %i.z, %bb.n ], [ %.0.i63, %bb.l ], [ %i.z, %bb.m ] ; 3 uses
  %i.aa = tail call fastcc ptr @inf_MParamodLitToGiven(ptr noundef nonnull %i.e, i32 noundef %i.v, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i73 = icmp eq ptr %i.aa, null
  br i1 %.not.i73, label %list_Nconc.exit80, label %bb.o

bb.o:                                             ; preds = %list_Nconc.exit72
  %.not16.i74 = icmp eq ptr %.0.i71, null
  br i1 %.not16.i74, label %list_Nconc.exit80, label %.preheader.i75

.preheader.i75:                                   ; preds = %bb.o, %.preheader.i75
  %.012.i76 = phi ptr [ %.012.val15.i77, %.preheader.i75 ], [ %i.aa, %bb.o ] ; 2 uses
  %.012.val15.i77 = load ptr, ptr %.012.i76, align 8 ; 2 uses
  %.not17.i78 = icmp eq ptr %.012.val15.i77, null
  br i1 %.not17.i78, label %bb.p, label %.preheader.i75, !llvm.loop !2

bb.p:                                             ; preds = %.preheader.i75
  store ptr %.0.i71, ptr %.012.i76, align 8
  br label %list_Nconc.exit80

list_Nconc.exit80:                                ; preds = %bb.p, %bb.o, %list_Nconc.exit72, %list_Nconc.exit64, %bb.f, %bb.e
  %.1 = phi ptr [ %.0.i63, %list_Nconc.exit64 ], [ %.04184, %bb.e ], [ %.04184, %bb.f ], [ %i.aa, %bb.p ], [ %.0.i71, %list_Nconc.exit72 ], [ %i.aa, %bb.o ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !30

._crit_edge:                                      ; preds = %list_Nconc.exit80, %bb.d
  %.041.lcssa = phi ptr [ null, %bb.d ], [ %.1, %list_Nconc.exit80 ]
  tail call void @clause_Delete(ptr noundef nonnull %i.e) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  %.042 = phi ptr [ %.041.lcssa, %._crit_edge ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_LitMParamod(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.b, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val100 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val100, i64 16
  %.val102 = load ptr, ptr %i.g, align 8          ; 2 uses
  %i.h = getelementptr i8, ptr %.val102, i64 8
  %.val102.val = load ptr, ptr %i.h, align 8      ; 2 uses
  %.val108.val = load ptr, ptr %.val102, align 8
  %i.i = getelementptr i8, ptr %.val108.val, i64 8
  %.val108.val.val = load ptr, ptr %i.i, align 8  ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %.not, ptr %.val102.val, ptr %.val108.val.val ; 4 uses
  %spec.select98 = select i1 %.not, ptr %.val108.val.val, ptr %.val102.val ; 2 uses
  %i.j = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val112 = load ptr, ptr %3, align 8
  %i.k = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.l = tail call ptr @st_GetUnifier(ptr noundef %i.j, ptr noundef %.val112, ptr noundef %i.k, ptr noundef %spec.select) #14 ; 2 uses
  %.not139152 = icmp eq ptr %i.l, null
  br i1 %.not139152, label %._crit_edge, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.a
  %i.m = load i32, ptr @symbol_TYPEMASK, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph155, %.loopexit
  %.083154 = phi ptr [ %i.l, %.lr.ph155 ], [ %.val.i132, %.loopexit ] ; 4 uses
  %.084153 = phi ptr [ null, %.lr.ph155 ], [ %.6, %.loopexit ] ; 4 uses
  %i.n = getelementptr i8, ptr %.083154, i64 8
  %.083.val = load ptr, ptr %i.n, align 8         ; 7 uses
  %.val113 = load i32, ptr %.083.val, align 8     ; 3 uses
  %i.o = icmp slt i32 %.val113, 1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp sgt i32 %.val113, -1
  br i1 %.not.i.i, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %bb.c
  %i.p = sub nsw i32 0, %.val113
  %i.q = and i32 %i.m, %i.p
  %.not140 = icmp eq i32 %i.q, 2
  br i1 %.not140, label %.loopexit, label %term_IsAtom.exit.thread

term_IsAtom.exit.thread:                          ; preds = %bb.c, %term_IsAtom.exit
  %i.r = call ptr @sharing_GetDataList(ptr noundef nonnull %.083.val, ptr noundef nonnull %3) #14 ; 2 uses
  %.not141149 = icmp eq ptr %i.r, null
  br i1 %.not141149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %term_IsAtom.exit.thread, %bb.p
  %.082151 = phi ptr [ %.val.i131, %bb.p ], [ %i.r, %term_IsAtom.exit.thread ] ; 4 uses
  %.1150 = phi ptr [ %.5, %bb.p ], [ %.084153, %term_IsAtom.exit.thread ] ; 14 uses
  %i.s = getelementptr i8, ptr %.082151, i64 8
  %.082.val = load ptr, ptr %i.s, align 8         ; 5 uses
  %i.t = getelementptr i8, ptr %.082.val, i64 16
  %.val114 = load ptr, ptr %i.t, align 8          ; 7 uses
  %i.u = getelementptr i8, ptr %.082.val, i64 24
  %.val103 = load ptr, ptr %i.u, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val103, align 8  ; 2 uses
  %i.v = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp ne i32 %.val5.val.i, %i.v        ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %.val103, i64 16
  %.val6.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.x, align 8
  br label %clause_LiteralAtom.exit
end_hunk_3
begin_hunk_4_@inf_GeneralResolution:bb.a
  store i64 %i.gk, ptr @memory_FREEDBYTES, align 8
  %i.gl = load ptr, ptr %i.gf, align 8
  store ptr %i.gl, ptr %.077268, align 8
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.077268, ptr %i.gm, align 8
  %.not244 = icmp eq ptr %.val.i160, null
  br i1 %.not244, label %._crit_edge, label %.lr.ph269, !llvm.loop !38

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.not90208.lcssa = phi i1 [ %.not90209, %bb.o ], [ %.not90204, %.loopexit ]
  %.2.lcssa = phi ptr [ %.1, %bb.o ], [ %.6, %.loopexit ] ; 3 uses
  br i1 %.not94, label %bb.ay, label %.loopexit252

bb.ay:                                            ; preds = %._crit_edge
  %.val118 = load i32, ptr %.0.i, align 8
  %i.gn = load i32, ptr @fol_EQUALITY, align 4
  %.not245 = icmp eq i32 %.val118, %i.gn
  br i1 %.not245, label %bb.az, label %.loopexit252

bb.az:                                            ; preds = %bb.ay
  %.val.i161 = load ptr, ptr %i.ap, align 8       ; 2 uses
  %i.go = getelementptr i8, ptr %.val.i161, i64 8 ; 2 uses
  %.val.val.i = load ptr, ptr %i.go, align 8
  %.val6.val.i162 = load ptr, ptr %.val.i161, align 8
  %i.gp = getelementptr i8, ptr %.val6.val.i162, i64 8
  %.val6.val.val.i = load ptr, ptr %i.gp, align 8
  store ptr %.val6.val.val.i, ptr %i.go, align 8
  %.val7.i = load ptr, ptr %i.ap, align 8
  %.val5.i163 = load ptr, ptr %.val7.i, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val5.i163, i64 8
  store ptr %.val.val.i, ptr %i.gq, align 8
  br label %bb.o

.loopexit252:                                     ; preds = %bb.ay, %._crit_edge, %clause_LiteralIsFromAntecedent.exit, %bb.h, %bb.j, %bb.l
  %.7 = phi ptr [ %.080273, %bb.h ], [ %.080273, %clause_LiteralIsFromAntecedent.exit ], [ %.080273, %bb.j ], [ %.080273, %bb.l ], [ %.2.lcssa, %._crit_edge ], [ %.2.lcssa, %bb.ay ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond284.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond284.not, label %._crit_edge278, label %bb.f, !llvm.loop !39

._crit_edge278:                                   ; preds = %.loopexit252, %bb.e
  %.080.lcssa = phi ptr [ null, %bb.e ], [ %.7, %.loopexit252 ]
  call void @clause_Delete(ptr noundef %i.d) #14
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %._crit_edge278
  %.081 = phi ptr [ %.080.lcssa, %._crit_edge278 ], [ null, %bb.a ]
  ret ptr %.081
}

declare ptr @st_GetUnifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sharing_NAtomDataList(ptr noundef) local_unnamed_addr #2

declare void @clause_RenameVarsBiggerThan(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unify_UnifyNoOC(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @misc_ErrorReport(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_DumpCore() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.a) #16 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 @fflush(ptr noundef %i.f)  ; 0 uses
  tail call void @abort() #17
  unreachable
}

declare void @subst_ExtractUnifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_ApplyGenRes(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val158 = load ptr, ptr %i.a, align 8          ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val157 = load ptr, ptr %i.b, align 8          ; 5 uses
  %i.c = getelementptr i8, ptr %.val158, i64 64   ; 3 uses
  %.val3.i.i = load i32, ptr %i.c, align 8        ; 4 uses
  %i.d = getelementptr i8, ptr %.val158, i64 68   ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 4         ; 2 uses
  %i.e = getelementptr i8, ptr %.val158, i64 72   ; 2 uses
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = getelementptr i8, ptr %.val158, i64 56   ; 4 uses
  %.val.i = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, %1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %clause_LiteralGetIndex.exit, label %bb.b, !llvm.loop !3

clause_LiteralGetIndex.exit:                      ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val157, i64 64   ; 3 uses
  %.val3.i.i159 = load i32, ptr %i.i, align 8     ; 5 uses
  %i.j = getelementptr i8, ptr %.val157, i64 68   ; 3 uses
  %.val.i.i160 = load i32, ptr %i.j, align 4      ; 3 uses
  %i.k = getelementptr i8, ptr %.val157, i64 72   ; 3 uses
  %.val4.i.i161 = load i32, ptr %i.k, align 8     ; 2 uses
  %i.l = getelementptr i8, ptr %.val157, i64 56   ; 4 uses
  %.val.i163 = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %clause_LiteralGetIndex.exit
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i166, %bb.c ], [ 0, %clause_LiteralGetIndex.exit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val.i163, i64 %indvars.iv.i164
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i165 = icmp eq ptr %i.n, %0
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i164, 1
  br i1 %.not.i165, label %clause_LiteralGetIndex.exit167, label %bb.c, !llvm.loop !3

clause_LiteralGetIndex.exit167:                   ; preds = %bb.c
  %i.o = add i32 %.val3.i.i, -1                   ; 3 uses
  %i.p = add i32 %i.o, %.val.i.i                  ; 3 uses
  %i.q = add i32 %i.p, %.val4.i.i                 ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.s = add i32 %.val3.i.i159, -1                ; 2 uses
  %i.t = add i32 %i.s, %.val.i.i160               ; 2 uses
  %i.u = add i32 %i.t, %.val4.i.i161              ; 2 uses
  %.not = icmp sge i32 %i.o, %i.r                 ; 2 uses
  %..neg214 = sext i1 %.not to i32                ; 2 uses
  %not..not = xor i1 %.not, true
  %.128.neg213 = sext i1 %not..not to i32         ; 2 uses
  %i.v = add i32 %.val3.i.i, -2
  %i.w = add i32 %i.v, %.val.i.i
  %i.x = add i32 %i.w, %.val4.i.i
  %i.y = add i32 %i.x, %.val3.i.i159
  %i.z = add i32 %i.y, %.val.i.i160
  %i.aa = add i32 %i.z, %.val4.i.i161
  %i.ab = tail call ptr @clause_CreateBody(i32 noundef %i.aa) #14 ; 18 uses
  %.val135 = load i32, ptr %i.i, align 8
  %.val134 = load i32, ptr %i.c, align 8
  %i.ac = add i32 %.val135, %..neg214
  %i.ad = add i32 %i.ac, %.val134
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i32 %i.ad, ptr %i.ae, align 8
  %.val131 = load i32, ptr %i.j, align 4
  %.val130 = load i32, ptr %i.d, align 4
  %i.af = add i32 %.val131, %.128.neg213
  %i.ag = add i32 %i.af, %.val130
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  store i32 %i.ag, ptr %i.ah, align 4
  %.val142 = load i32, ptr %i.k, align 8
  %i.ai = add nsw i32 %.val142, -1
  %.val141 = load i32, ptr %i.e, align 8
  %i.aj = add nsw i32 %i.ai, %.val141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i32 %i.aj, ptr %i.ak, align 8
  %.not119178 = icmp slt i32 %i.s, 0
  br i1 %.not119178, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %clause_LiteralGetIndex.exit167
  %i.al = getelementptr i8, ptr %i.ab, i64 56
  %wide.trip.count = zext i32 %.val3.i.i159 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.val148 = load ptr, ptr %i.l, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val148, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val1.i = load ptr, ptr %i.ao, align 8
  %i.ap = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.aq = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.ap) #14
  %i.ar = tail call ptr @clause_LiteralCreate(ptr noundef %i.aq, ptr noundef nonnull %i.ab) #14
  %.val154 = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val154, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %clause_LiteralGetIndex.exit167
  %.0113.lcssa = phi i32 [ 0, %clause_LiteralGetIndex.exit167 ], [ %.val3.i.i159, %bb.d ] ; 3 uses
  %.val133 = load i32, ptr %i.c, align 8
  %i.at = add i32 %.val133, %..neg214             ; 2 uses
  %.not120180 = icmp sgt i32 %.0113.lcssa, %i.t
  br i1 %.not120180, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %i.ab, i64 56
  %i.av = sext i32 %.0113.lcssa to i64
  %i.aw = sext i32 %i.at to i64
  %i.ax = add i32 %.val.i.i160, %.val3.i.i159     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph183, %bb.e
  %indvars.iv219 = phi i64 [ %i.av, %.lr.ph183 ], [ %indvars.iv.next220, %bb.e ] ; 3 uses
  %.val147 = load ptr, ptr %i.l, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val147, i64 %indvars.iv219
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %.val1.i173 = load ptr, ptr %i.ba, align 8
  %i.bb = tail call ptr @term_Copy(ptr noundef %.val1.i173) #14
  %i.bc = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.bb) #14
  %i.bd = tail call ptr @clause_LiteralCreate(ptr noundef %i.bc, ptr noundef nonnull %i.ab) #14
  %.val153 = load ptr, ptr %i.au, align 8
  %i.be = getelementptr [8 x i8], ptr %.val153, i64 %indvars.iv219
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.aw
  store ptr %i.bd, ptr %i.bf, align 8
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next220 to i32
  %exitcond222.not = icmp eq i32 %i.ax, %lftr.wideiv
  br i1 %exitcond222.not, label %._crit_edge184, label %bb.e, !llvm.loop !41

._crit_edge184:                                   ; preds = %bb.e, %._crit_edge
  %.1114.lcssa = phi i32 [ %.0113.lcssa, %._crit_edge ], [ %i.ax, %bb.e ] ; 2 uses
  %.not121186 = icmp sgt i32 %.1114.lcssa, %i.u
  br i1 %.not121186, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %._crit_edge184
  %i.bg = add i32 %i.at, %.128.neg213
  %.val129 = load i32, ptr %i.d, align 4
  %i.bh = add i32 %i.bg, %.val129
  %i.bi = getelementptr i8, ptr %i.ab, i64 56
  %i.bj = zext i32 %.1114.lcssa to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph190, %bb.i
  %indvars.iv223 = phi i64 [ %i.bj, %.lr.ph190 ], [ %indvars.iv.next224, %bb.i ] ; 5 uses
  %.0112188 = phi i32 [ %i.bh, %.lr.ph190 ], [ %.1, %bb.i ] ; 3 uses
  %.not127 = icmp eq i64 %indvars.iv223, %indvars.iv.i164
  br i1 %.not127, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc nuw i64 %indvars.iv223 to i32     ; 2 uses
  %i.bl = add nsw i32 %.0112188, %i.bk
  %.val146 = load ptr, ptr %i.l, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val146, i64 %indvars.iv223
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val1.i174 = load ptr, ptr %i.bo, align 8
  %i.bp = tail call ptr @term_Copy(ptr noundef %.val1.i174) #14
  %i.bq = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.bp) #14
  %i.br = tail call ptr @clause_LiteralCreate(ptr noundef %i.bq, ptr noundef %i.ab) #14
  %.val152 = load ptr, ptr %i.bi, align 8
  %i.bs = sext i32 %i.bl to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val152, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bu = add nsw i32 %.0112188, -1
  %.pre237 = trunc nuw i64 %indvars.iv223 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.pre-phi238 = phi i32 [ %i.bk, %bb.g ], [ %.pre237, %bb.h ]
  %.1 = phi i32 [ %.0112188, %bb.g ], [ %i.bu, %bb.h ]
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %.not121.not = icmp slt i32 %.pre-phi238, %i.u
  br i1 %.not121.not, label %bb.f, label %._crit_edge191, !llvm.loop !42

._crit_edge191:                                   ; preds = %bb.i, %._crit_edge184
  %.val132 = load i32, ptr %i.i, align 8          ; 2 uses
  %.not122192 = icmp slt i32 %i.o, 0
  br i1 %.not122192, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %._crit_edge191
  %i.bv = getelementptr i8, ptr %i.ab, i64 56
  %wide.trip.count229 = zext i32 %.val3.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph196, %bb.m
  %indvars.iv226 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next227, %bb.m ] ; 4 uses
  %.2194 = phi i32 [ %.val132, %.lr.ph196 ], [ %.3, %bb.m ] ; 3 uses
  %.not126 = icmp eq i64 %indvars.iv226, %indvars.iv.i
  br i1 %.not126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = trunc nuw nsw i64 %indvars.iv226 to i32
  %i.bx = add nsw i32 %.2194, %i.bw
  %.val145 = load ptr, ptr %i.f, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val145, i64 %indvars.iv226
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  %.val1.i175 = load ptr, ptr %i.ca, align 8
  %i.cb = tail call ptr @term_Copy(ptr noundef %.val1.i175) #14
  %i.cc = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.cb) #14
  %i.cd = tail call ptr @clause_LiteralCreate(ptr noundef %i.cc, ptr noundef %i.ab) #14
  %.val151 = load ptr, ptr %i.bv, align 8
  %i.ce = sext i32 %i.bx to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %.val151, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cg = add nsw i32 %.2194, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.3 = phi i32 [ %.2194, %bb.k ], [ %i.cg, %bb.l ] ; 2 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %._crit_edge197, label %bb.j, !llvm.loop !43

._crit_edge197:                                   ; preds = %bb.m, %._crit_edge191
  %.3116.lcssa = phi i32 [ 0, %._crit_edge191 ], [ %.val3.i.i, %bb.m ] ; 3 uses
  %.2.lcssa = phi i32 [ %.val132, %._crit_edge191 ], [ %.3, %bb.m ]
  %.val = load i32, ptr %i.j, align 4
  %i.ch = add nsw i32 %.val, %.2.lcssa            ; 2 uses
  %.not123200 = icmp sgt i32 %.3116.lcssa, %i.p
  br i1 %.not123200, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %._crit_edge197
  %i.ci = getelementptr i8, ptr %i.ab, i64 56
  %i.cj = zext i32 %.3116.lcssa to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph204, %bb.q
  %indvars.iv231 = phi i64 [ %i.cj, %.lr.ph204 ], [ %indvars.iv.next232, %bb.q ] ; 5 uses
  %.4202 = phi i32 [ %i.ch, %.lr.ph204 ], [ %.5, %bb.q ] ; 3 uses
  %.not125 = icmp eq i64 %indvars.iv231, %indvars.iv.i
  br i1 %.not125, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = trunc nuw i64 %indvars.iv231 to i32     ; 2 uses
  %i.cl = add nsw i32 %.4202, %i.ck
  %.val144 = load ptr, ptr %i.f, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val144, i64 %indvars.iv231
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 24
  %.val1.i176 = load ptr, ptr %i.co, align 8
  %i.cp = tail call ptr @term_Copy(ptr noundef %.val1.i176) #14
  %i.cq = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.cp) #14
  %i.cr = tail call ptr @clause_LiteralCreate(ptr noundef %i.cq, ptr noundef %i.ab) #14
  %.val150 = load ptr, ptr %i.ci, align 8
  %i.cs = sext i32 %i.cl to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val150, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cu = add nsw i32 %.4202, -1
  %.pre = trunc nuw i64 %indvars.iv231 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pre-phi = phi i32 [ %i.ck, %bb.o ], [ %.pre, %bb.p ]
  %.5 = phi i32 [ %.4202, %bb.o ], [ %i.cu, %bb.p ] ; 2 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %.not123.not = icmp slt i32 %.pre-phi, %i.p
  br i1 %.not123.not, label %bb.n, label %._crit_edge205.loopexit, !llvm.loop !44

._crit_edge205.loopexit:                          ; preds = %bb.q
  %i.cv = trunc nuw i64 %indvars.iv.next232 to i32
  br label %._crit_edge205

._crit_edge205:                                   ; preds = %._crit_edge205.loopexit, %._crit_edge197
  %.4117.lcssa = phi i32 [ %.3116.lcssa, %._crit_edge197 ], [ %i.cv, %._crit_edge205.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.ch, %._crit_edge197 ], [ %.5, %._crit_edge205.loopexit ]
  %.not124208 = icmp sgt i32 %.4117.lcssa, %i.q
  br i1 %.not124208, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %._crit_edge205
  %.val140 = load i32, ptr %i.k, align 8
  %i.cw = add i32 %.4.lcssa, -1
  %i.cx = add i32 %i.cw, %.val140
  %i.cy = getelementptr i8, ptr %i.ab, i64 56
  %i.cz = sext i32 %.4117.lcssa to i64
  %i.da = sext i32 %i.cx to i64
  %i.db = sext i32 %i.q to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph211, %bb.r
  %indvars.iv234 = phi i64 [ %i.cz, %.lr.ph211 ], [ %indvars.iv.next235, %bb.r ] ; 4 uses
  %.val143 = load ptr, ptr %i.f, align 8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val143, i64 %indvars.iv234
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 24
  %.val1.i177 = load ptr, ptr %i.de, align 8
  %i.df = tail call ptr @term_Copy(ptr noundef %.val1.i177) #14
  %i.dg = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.df) #14
  %i.dh = tail call ptr @clause_LiteralCreate(ptr noundef %i.dg, ptr noundef %i.ab) #14
  %.val149 = load ptr, ptr %i.cy, align 8
  %i.di = getelementptr [8 x i8], ptr %.val149, i64 %indvars.iv234
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.da
  store ptr %i.dh, ptr %i.dj, align 8
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1
  %.not124.not = icmp slt i64 %indvars.iv234, %i.db
  br i1 %.not124.not, label %bb.r, label %._crit_edge212, !llvm.loop !45

._crit_edge212:                                   ; preds = %bb.r, %._crit_edge205
  %i.dk = trunc nuw nsw i64 %indvars.iv.i164 to i32
end_hunk_4
begin_hunk_5_@inf_UnitResolution:bb.a
  br i1 %narrow.i.not, label %clause_LiteralsAreComplementary.exit.thread119, label %bb.r

bb.r:                                             ; preds = %clause_LiteralIsFromAntecedent.exit, %bb.o
  %.val90 = load i32, ptr %.0.val, align 8
  %i.bd = and i32 %.val90, 4
  %.not79 = icmp eq i32 %i.bd, 0
  br i1 %.not79, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr i8, ptr %.val98, i64 48
  %.val92 = load i32, ptr %i.be, align 8
  %i.bf = and i32 %.val92, 2
  %.not80 = icmp eq i32 %i.bf, 0
  br i1 %.not80, label %bb.t, label %clause_LiteralsAreComplementary.exit.thread119

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bg = getelementptr i8, ptr %.val98, i64 52
  %.val100 = load i32, ptr %i.bg, align 4
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.d, i32 noundef %.val100) #14
  call void @cont_Check() #14
  %i.bh = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bi = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.bj = call i32 @unify_UnifyNoOC(ptr noundef %i.bh, ptr noundef %.0.i, ptr noundef %i.bi, ptr noundef nonnull %.059.val) #14
  %.not81 = icmp eq i32 %i.bj, 0
  br i1 %.not81, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr @stdout, align 8
  %i.bl = call i32 @fflush(ptr noundef %i.bk)     ; 0 uses
  %i.bm = load ptr, ptr @stderr, align 8
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2525) #15 ; 0 uses
  call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.4) #14
  %i.bo = load ptr, ptr @stderr, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 132, i64 1, ptr %i.bo) #16 ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.bp) #16 ; 0 uses
  %i.bq = load ptr, ptr @stderr, align 8
  %i.br = call i32 @fflush(ptr noundef %i.bq)     ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8
  %i.bt = call i32 @fflush(ptr noundef %i.bs)     ; 0 uses
  %i.bu = load ptr, ptr @stderr, align 8
  %i.bv = call i32 @fflush(ptr noundef %i.bu)     ; 0 uses
  call void @abort() #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bx = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef %i.bx, ptr noundef nonnull %i.b) #14
  %i.by = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i110 = icmp eq ptr %i.by, null
  br i1 %.not1.i110, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bz = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.by, %.lr.ph.preheader.i ] ; 3 uses
  %i.ca = phi i32 [ %i.cf, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bz, ptr @cont_CURRENTBINDING, align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 24
  %.val.i.i.i = load ptr, ptr %i.cb, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cc, i8 0, i64 20, i1 false)
  %i.cd = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr null, ptr %i.ce, align 8
  %i.cf = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cf, ptr @cont_BINDINGS, align 4
  %i.cg = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i111 = icmp eq ptr %i.cg, null
  br i1 %.not.i111, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.v
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %.val86 = load ptr, ptr %i.ap, align 8
  %.val86.val = load i32, ptr %.val86, align 8
  %i.ch = load i32, ptr @fol_NOT, align 4
  %.not127 = icmp eq i32 %.val86.val, %i.ch
  br i1 %.not127, label %bb.w, label %bb.x

bb.w:                                             ; preds = %cont_Reset.exit
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = load ptr, ptr %i.b, align 8
  %i.ck = call fastcc ptr @inf_ApplyGenRes(ptr noundef nonnull %i.s, ptr noundef nonnull %.0.val, ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef %3, ptr noundef %4)
  br label %bb.y

bb.x:                                             ; preds = %cont_Reset.exit
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = load ptr, ptr %i.a, align 8
  %i.cn = call fastcc ptr @inf_ApplyGenRes(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.s, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %3, ptr noundef %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink151 = phi ptr [ %i.cn, %bb.x ], [ %i.ck, %bb.w ]
  %i.co = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %.sink151, ptr %i.cp, align 8
  store ptr %.3133, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.cq) #14
  %i.cr = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.cr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %clause_LiteralsAreComplementary.exit.thread119

clause_LiteralsAreComplementary.exit.thread119:   ; preds = %bb.n, %bb.m, %bb.k, %clause_LiteralsAreComplementary.exit.thread117, %clause_LiteralIsFromAntecedent.exit, %bb.s, %bb.y
  %.5 = phi ptr [ %i.co, %bb.y ], [ %.3133, %bb.s ], [ %.3133, %clause_LiteralIsFromAntecedent.exit ], [ %.3133, %clause_LiteralsAreComplementary.exit.thread117 ], [ %.3133, %bb.m ], [ %.3133, %bb.k ], [ %.3133, %bb.n ] ; 2 uses
  %.0.val95 = load ptr, ptr %.0134, align 8       ; 2 uses
  %.not124 = icmp eq ptr %.0.val95, null
  br i1 %.not124, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %clause_LiteralsAreComplementary.exit.thread119, %bb.j, %.lr.ph138
  %.6 = phi ptr [ %.2136, %.lr.ph138 ], [ %.2136, %bb.j ], [ %.5, %clause_LiteralsAreComplementary.exit.thread119 ] ; 2 uses
  %.val.i112 = load ptr, ptr %.059137, align 8    ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr @memory_FREEDBYTES, align 8
  %i.cy = load ptr, ptr %i.cs, align 8
  store ptr %i.cy, ptr %.059137, align 8
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.059137, ptr %i.cz, align 8
  %.not122 = icmp eq ptr %.val.i112, null
  br i1 %.not122, label %._crit_edge, label %.lr.ph138, !llvm.loop !47

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %.2.lcssa = phi ptr [ %.1, %bb.i ], [ %.6, %.loopexit ] ; 3 uses
  br i1 %.not71, label %bb.z, label %.loopexit128

bb.z:                                             ; preds = %._crit_edge
  %.val88 = load i32, ptr %.0.i, align 8
  %i.da = load i32, ptr @fol_EQUALITY, align 4
  %.not123 = icmp eq i32 %.val88, %i.da
  br i1 %.not123, label %bb.aa, label %.loopexit128

bb.aa:                                            ; preds = %bb.z
  %.val.i113 = load ptr, ptr %i.aa, align 8       ; 2 uses
  %i.db = getelementptr i8, ptr %.val.i113, i64 8 ; 2 uses
  %.val.val.i = load ptr, ptr %i.db, align 8
  %.val6.val.i114 = load ptr, ptr %.val.i113, align 8
  %i.dc = getelementptr i8, ptr %.val6.val.i114, i64 8
  %.val6.val.val.i = load ptr, ptr %i.dc, align 8
  store ptr %.val6.val.val.i, ptr %i.db, align 8
  %.val7.i = load ptr, ptr %i.aa, align 8
  %.val5.i115 = load ptr, ptr %.val7.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.val5.i115, i64 8
  store ptr %.val.val.i, ptr %i.dd, align 8
  br label %bb.i

.loopexit128:                                     ; preds = %bb.z, %._crit_edge, %bb.e, %bb.g
  %.7 = phi ptr [ %.062141, %bb.e ], [ %.062141, %bb.g ], [ %.2.lcssa, %._crit_edge ], [ %.2.lcssa, %bb.z ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge145, label %bb.c, !llvm.loop !48

._crit_edge145:                                   ; preds = %.loopexit128, %bb.b
  %.062.lcssa = phi ptr [ null, %bb.b ], [ %.7, %.loopexit128 ]
  call void @clause_Delete(ptr noundef %i.d) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %._crit_edge145
  %.063 = phi ptr [ %.062.lcssa, %._crit_edge145 ], [ null, %bb.a ]
  ret ptr %.063
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BoundedDepthUnitResolution(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = tail call ptr @clause_Copy(ptr noundef %0) #14 ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 64       ; 2 uses
  %.val3.i.i = load i32, ptr %i.d, align 8        ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 68       ; 2 uses
  %.val.i.i = load i32, ptr %i.e, align 4         ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 72       ; 2 uses
  %.val4.i.i = load i32, ptr %i.f, align 8        ; 2 uses
  %i.g = add i32 %.val3.i.i, -1
  %i.h = add i32 %i.g, %.val.i.i
  %i.i = add i32 %i.h, %.val4.i.i
  %i.j = tail call i32 @clause_ComputeTermDepth(ptr noundef %i.c) #14
  %.not111 = icmp slt i32 %i.i, 0
  br i1 %.not111, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 56
  %i.l = getelementptr i8, ptr %i.c, i64 48
  %.not66 = icmp eq i32 %2, 0
  %i.m = add i32 %.val4.i.i, %.val.i.i
  %i.n = add i32 %i.m, %.val3.i.i
  %wide.trip.count = zext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.057112 = phi ptr [ null, %.lr.ph115 ], [ %.2.lcssa, %bb.x ]
  %.val = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %.val71 = load ptr, ptr %i.q, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val71, align 8
  %i.r = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.r
  br i1 %.not.i, label %bb.c, label %clause_LiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.val71, i64 16
  %.val6.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.t, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.val6.val.i, %bb.c ], [ %.val71, %bb.b ] ; 4 uses
  %i.u = getelementptr i8, ptr %.0.i, i64 16      ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %clause_LiteralAtom.exit
  %.1 = phi ptr [ %.057112, %clause_LiteralAtom.exit ], [ %.2.lcssa, %bb.w ] ; 2 uses
  %.not59 = phi i1 [ true, %clause_LiteralAtom.exit ], [ false, %bb.w ]
  %i.v = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val77 = load ptr, ptr %1, align 8
  %i.w = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.x = call ptr @st_GetUnifier(ptr noundef %i.v, ptr noundef %.val77, ptr noundef %i.w, ptr noundef %.0.i) #14 ; 2 uses
  %.not96106 = icmp eq ptr %i.x, null
  br i1 %.not96106, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.d, %.loopexit
  %.055108 = phi ptr [ %.val.i88, %.loopexit ], [ %i.x, %bb.d ] ; 4 uses
  %.2107 = phi ptr [ %.6, %.loopexit ], [ %.1, %bb.d ] ; 3 uses
  %i.y = getelementptr i8, ptr %.055108, i64 8
  %.055.val = load ptr, ptr %i.y, align 8         ; 3 uses
  %.val78 = load i32, ptr %.055.val, align 8
  %i.z = icmp slt i32 %.val78, 1
  br i1 %i.z, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph109
  %i.aa = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.055.val) #14 ; 2 uses
  %.not98103 = icmp eq ptr %i.aa, null
  br i1 %.not98103, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.pre119 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_LiteralsAreComplementary.exit.thread94
  %i.ab = phi i32 [ %i.cj, %clause_LiteralsAreComplementary.exit.thread94 ], [ %.pre119, %.lr.ph.preheader ] ; 7 uses
  %.053105 = phi ptr [ %.053.val76, %clause_LiteralsAreComplementary.exit.thread94 ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.3104 = phi ptr [ %.5, %clause_LiteralsAreComplementary.exit.thread94 ], [ %.2107, %.lr.ph.preheader ] ; 7 uses
  %i.ac = getelementptr i8, ptr %.053105, i64 8
  %.053.val = load ptr, ptr %i.ac, align 8        ; 4 uses
  %i.ad = getelementptr i8, ptr %.053.val, i64 16
  %.val79 = load ptr, ptr %i.ad, align 8          ; 7 uses
  %i.ae = getelementptr i8, ptr %.053.val, i64 24 ; 2 uses
  %.val81 = load ptr, ptr %i.ae, align 8
  %.val81.val = load i32, ptr %.val81, align 8
  %.not.i82.not = icmp eq i32 %.val81.val, %i.ab
  %.val.pre.i = load ptr, ptr %i.q, align 8
  %.val.val.pre.i = load i32, ptr %.val.pre.i, align 8
  %.not1.i = icmp eq i32 %.val.val.pre.i, %i.ab   ; 2 uses
  br i1 %.not.i82.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  br i1 %.not1.i, label %clause_LiteralsAreComplementary.exit.thread94, label %clause_LiteralsAreComplementary.exit.thread92

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not1.i, label %clause_LiteralsAreComplementary.exit.thread92, label %clause_LiteralsAreComplementary.exit.thread94

clause_LiteralsAreComplementary.exit.thread92:    ; preds = %bb.g, %bb.f
  %.val3.i = load i32, ptr %i.d, align 8
  %.val.i = load i32, ptr %i.e, align 4
  %i.af = add nsw i32 %.val.i, %.val3.i
  %.val4.i = load i32, ptr %i.f, align 8
  %i.ag = add nsw i32 %i.af, %.val4.i
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %clause_LiteralsAreComplementary.exit.thread92
  %i.ai = getelementptr i8, ptr %.val79, i64 64
  %.val3.i83 = load i32, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val79, i64 68
  %.val.i84 = load i32, ptr %i.aj, align 4
  %i.ak = add nsw i32 %.val.i84, %.val3.i83
  %i.al = getelementptr i8, ptr %.val79, i64 72
  %.val4.i85 = load i32, ptr %i.al, align 8
  %i.am = add nsw i32 %i.ak, %.val4.i85
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.i, label %clause_LiteralsAreComplementary.exit.thread94

bb.i:                                             ; preds = %bb.h, %clause_LiteralsAreComplementary.exit.thread92
  %.val75 = load i32, ptr %i.l, align 8
  %i.ao = and i32 %.val75, 8
  %.not64 = icmp eq i32 %i.ao, 0
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.val79, i64 48
  %.val74 = load i32, ptr %i.ap, align 8
  %i.aq = and i32 %.val74, 8
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %clause_LiteralsAreComplementary.exit.thread94, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %.val79, i64 48
  %.val73 = load i32, ptr %i.ar, align 8
  %i.as = and i32 %.val73, 8
  %.not67 = icmp eq i32 %i.as, 0
  br i1 %.not67, label %clause_LiteralsAreComplementary.exit.thread94, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.at = call i32 @clause_ComputeTermDepth(ptr noundef %.val79) #14
  %i.au = call i32 @misc_Max(i32 noundef %i.j, i32 noundef %i.at) #14
  %i.av = getelementptr i8, ptr %.val79, i64 52
  %.val80 = load i32, ptr %i.av, align 4
  call void @clause_RenameVarsBiggerThan(ptr noundef nonnull %i.c, i32 noundef %.val80) #14
  call void @cont_Check() #14
  %i.aw = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ax = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ay = call i32 @unify_UnifyNoOC(ptr noundef %i.aw, ptr noundef %.0.i, ptr noundef %i.ax, ptr noundef nonnull %.055.val) #14
  %.not68 = icmp eq i32 %i.ay, 0
  br i1 %.not68, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr @stdout, align 8
  %i.ba = call i32 @fflush(ptr noundef %i.az)     ; 0 uses
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2645) #15 ; 0 uses
  call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.5) #14
  %i.bd = load ptr, ptr @stderr, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 132, i64 1, ptr %i.bd) #16 ; 0 uses
  %i.be = load ptr, ptr @stderr, align 8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.be) #16 ; 0 uses
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = call i32 @fflush(ptr noundef %i.bf)     ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8
  %i.bi = call i32 @fflush(ptr noundef %i.bh)     ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8
  %i.bk = call i32 @fflush(ptr noundef %i.bj)     ; 0 uses
  call void @abort() #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bm = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.bl, ptr noundef nonnull %i.a, ptr noundef %i.bm, ptr noundef nonnull %i.b) #14
  %i.bn = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i86 = icmp eq ptr %i.bn, null
  br i1 %.not1.i86, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bo = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bn, %.lr.ph.preheader.i ] ; 3 uses
  %i.bp = phi i32 [ %i.bu, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bo, ptr @cont_CURRENTBINDING, align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 24
  %.val.i.i.i = load ptr, ptr %i.bq, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, i8 0, i64 20, i1 false)
  %i.bs = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr null, ptr %i.bt, align 8
  %i.bu = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bu, ptr @cont_BINDINGS, align 4
  %i.bv = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i87 = icmp eq ptr %i.bv, null
  br i1 %.not.i87, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.o
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %.val70 = load ptr, ptr %i.ae, align 8
  %.val70.val = load i32, ptr %.val70, align 8
  %i.bw = load i32, ptr @fol_NOT, align 4
  %.not99 = icmp eq i32 %.val70.val, %i.bw
  br i1 %.not99, label %bb.p, label %bb.q

bb.p:                                             ; preds = %cont_Reset.exit
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = load ptr, ptr %i.b, align 8
  %i.bz = call fastcc ptr @inf_ApplyGenRes(ptr noundef nonnull %i.p, ptr noundef nonnull %.053.val, ptr noundef %i.bx, ptr noundef %i.by, ptr noundef %3, ptr noundef %4)
  br label %bb.r

bb.q:                                             ; preds = %cont_Reset.exit
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = call fastcc ptr @inf_ApplyGenRes(ptr noundef nonnull %.053.val, ptr noundef nonnull %i.p, ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef %3, ptr noundef %4)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.bz, %bb.p ], [ %i.cc, %bb.q ] ; 3 uses
  %i.cd = call i32 @clause_ComputeTermDepth(ptr noundef %.0) #14
  %i.ce = icmp ugt i32 %i.cd, %i.au
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @clause_Delete(ptr noundef %.0) #14
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cf = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.0, ptr %i.cg, align 8
  store ptr %.3104, ptr %i.cf, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi ptr [ %.3104, %bb.s ], [ %i.cf, %bb.t ]
  %i.ch = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.ch) #14
  %i.ci = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.ci) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %clause_LiteralsAreComplementary.exit.thread94

clause_LiteralsAreComplementary.exit.thread94:    ; preds = %bb.g, %bb.f, %bb.h, %bb.j, %bb.l, %bb.u
  %i.cj = phi i32 [ %.pre, %bb.u ], [ %i.ab, %bb.l ], [ %i.ab, %bb.j ], [ %i.ab, %bb.h ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ]
  %.5 = phi ptr [ %.4, %bb.u ], [ %.3104, %bb.l ], [ %.3104, %bb.j ], [ %.3104, %bb.h ], [ %.3104, %bb.f ], [ %.3104, %bb.g ] ; 2 uses
  %.053.val76 = load ptr, ptr %.053105, align 8   ; 2 uses
  %.not98 = icmp eq ptr %.053.val76, null
  br i1 %.not98, label %.loopexit, label %.lr.ph, !llvm.loop !49

.loopexit:                                        ; preds = %clause_LiteralsAreComplementary.exit.thread94, %bb.e, %.lr.ph109
  %.6 = phi ptr [ %.2107, %.lr.ph109 ], [ %.2107, %bb.e ], [ %.5, %clause_LiteralsAreComplementary.exit.thread94 ] ; 2 uses
  %.val.i88 = load ptr, ptr %.055108, align 8     ; 2 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cp = add i64 %i.co, %i.cn
  store i64 %i.cp, ptr @memory_FREEDBYTES, align 8
  %i.cq = load ptr, ptr %i.ck, align 8
  store ptr %i.cq, ptr %.055108, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.055108, ptr %i.cr, align 8
  %.not96 = icmp eq ptr %.val.i88, null
  br i1 %.not96, label %._crit_edge, label %.lr.ph109, !llvm.loop !50

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.2.lcssa = phi ptr [ %.1, %bb.d ], [ %.6, %.loopexit ] ; 3 uses
  br i1 %.not59, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge
  %.val72 = load i32, ptr %.0.i, align 8
  %i.cs = load i32, ptr @fol_EQUALITY, align 4
  %.not97 = icmp eq i32 %.val72, %i.cs
  br i1 %.not97, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val.i89 = load ptr, ptr %i.u, align 8         ; 2 uses
  %i.ct = getelementptr i8, ptr %.val.i89, i64 8  ; 2 uses
  %.val.val.i = load ptr, ptr %i.ct, align 8
  %.val6.val.i90 = load ptr, ptr %.val.i89, align 8
  %i.cu = getelementptr i8, ptr %.val6.val.i90, i64 8
  %.val6.val.val.i = load ptr, ptr %i.cu, align 8
  store ptr %.val6.val.val.i, ptr %i.ct, align 8
  %.val7.i = load ptr, ptr %i.u, align 8
  %.val5.i = load ptr, ptr %.val7.i, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  store ptr %.val.val.i, ptr %i.cv, align 8
  br label %bb.d

bb.x:                                             ; preds = %._crit_edge, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge116, label %bb.b, !llvm.loop !51

._crit_edge116:                                   ; preds = %bb.x, %bb.a
  %.057.lcssa = phi ptr [ null, %bb.a ], [ %.2.lcssa, %bb.x ]
  call void @clause_Delete(ptr noundef %i.c) #14
  ret ptr %.057.lcssa
}

declare i32 @clause_ComputeTermDepth(ptr noundef) local_unnamed_addr #2

declare i32 @misc_Max(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_GeneralFactoring(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = tail call i32 @clause_HasSolvedConstraint(ptr noundef %0) #14
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val3.i.i = load i32, ptr %i.f, align 8        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %.val.i.i = load i32, ptr %i.g, align 4         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.h, align 8        ; 2 uses
  %i.i = add i32 %.val.i.i, %.val3.i.i            ; 3 uses
  %i.j = add i32 %i.i, -1
  %i.k = add i32 %i.j, %.val4.i.i                 ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val202 = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val202, 2
  %.not133 = icmp ne i32 %i.m, 0
  %.not134283 = icmp sgt i32 %i.i, %i.k
  %or.cond336 = select i1 %.not133, i1 true, i1 %.not134283
  br i1 %or.cond336, label %.loopexit276, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.not135 = icmp eq i32 %1, 0                    ; 4 uses
  %.not137 = icmp eq i32 %3, 0
  %i.o = sext i32 %i.k to i64
  %i.p = sext i32 %i.i to i64
  %6 = add i32 %.val4.i.i, %.val3.i.i
  %i.q = add i32 %6, %.val.i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph287, %.loopexit275
  %indvars.iv304 = phi i64 [ %i.p, %.lr.ph287 ], [ %indvars.iv.next305, %.loopexit275 ] ; 8 uses
  %.0128284 = phi ptr [ null, %.lr.ph287 ], [ %.7, %.loopexit275 ] ; 4 uses
  %.val183 = load ptr, ptr %i.n, align 8
  %i.r = getelementptr inbounds [8 x i8], ptr %.val183, i64 %indvars.iv304
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not135, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val206 = load i32, ptr %i.s, align 8
  %i.t = and i32 %.val206, 1
  %.not136 = icmp eq i32 %i.t, 0
  br i1 %.not136, label %.loopexit275, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr i8, ptr %i.s, i64 24
  %.val196 = load ptr, ptr %i.u, align 8          ; 4 uses
  %.val5.val.i.i = load i32, ptr %.val196, align 8 ; 3 uses
  %i.v = load i32, ptr @fol_NOT, align 4          ; 2 uses
  br i1 %.not137, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.v
  br i1 %.not.i.i, label %bb.g, label %clause_LiteralIsEquality.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.val196, i64 16
  %.val6.i.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.x, align 8
  %.val1.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralIsEquality.exit

clause_LiteralIsEquality.exit:                    ; preds = %bb.f, %bb.g
  %.val1.i = phi i32 [ %.val1.pre.i, %bb.g ], [ %.val5.val.i.i, %bb.f ]
  %i.y = load i32, ptr @fol_EQUALITY, align 4
  %.not268 = icmp eq i32 %.val1.i, %i.y
  br i1 %.not268, label %.loopexit275, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %clause_LiteralIsEquality.exit
  %.not.i = icmp eq i32 %.val5.val.i.i, %i.v
  br i1 %.not.i, label %bb.h, label %clause_LiteralAtom.exit

bb.h:                                             ; preds = %._crit_edge
  %i.z = getelementptr i8, ptr %.val196, i64 16
  %.val6.i = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.aa, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %._crit_edge, %bb.h
  %.0.i = phi ptr [ %.val6.val.i, %bb.h ], [ %.val196, %._crit_edge ] ; 4 uses
  %.val = load i32, ptr %i.f, align 8             ; 2 uses
  %.val173 = load i32, ptr %i.g, align 4          ; 2 uses
  %i.ab = add nsw i32 %.val173, %.val
  %.not139277 = icmp sgt i32 %i.ab, %i.k
  br i1 %.not139277, label %.loopexit275, label %.lr.ph

.lr.ph:                                           ; preds = %clause_LiteralAtom.exit
  %i.ac = getelementptr i8, ptr %.0.i, i64 16     ; 2 uses
  %i.ad = sext i32 %.val to i64
  %i.ae = sext i32 %.val173 to i64
  %i.af = add nsw i64 %i.ad, %i.ae
  %i.ag = trunc nsw i64 %indvars.iv304 to i32     ; 2 uses
  %.pre328 = trunc nsw i64 %indvars.iv304 to i32
  %i.ah = trunc nsw i64 %indvars.iv304 to i32     ; 2 uses
  %.pre324 = trunc nsw i64 %indvars.iv304 to i32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 9 uses
  %.1129278 = phi ptr [ %.0128284, %.lr.ph ], [ %.6, %bb.ab ] ; 7 uses
  %i.ai = icmp eq i64 %indvars.iv, %indvars.iv304
  br i1 %i.ai, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val182 = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val182, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 24
  %.val191 = load ptr, ptr %i.al, align 8         ; 3 uses
  %.val5.val.i215 = load i32, ptr %.val191, align 8
  %i.am = load i32, ptr @fol_NOT, align 4
  %.not.i216 = icmp eq i32 %.val5.val.i215, %i.am
  br i1 %.not.i216, label %bb.k, label %clause_LiteralAtom.exit220

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %.val191, i64 16
  %.val6.i218 = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val6.i218, i64 8
  %.val6.val.i219 = load ptr, ptr %i.ao, align 8
  br label %clause_LiteralAtom.exit220

clause_LiteralAtom.exit220:                       ; preds = %bb.j, %bb.k
  %.0.i217 = phi ptr [ %.val6.val.i219, %bb.k ], [ %.val191, %bb.j ] ; 3 uses
  %i.ap = icmp sgt i64 %indvars.iv, %indvars.iv304
  br i1 %i.ap, label %bb.n, label %bb.l

bb.l:                                             ; preds = %clause_LiteralAtom.exit220
  br i1 %.not135, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val205 = load i32, ptr %i.ak, align 8
  %i.aq = and i32 %.val205, 1
  %.not141 = icmp eq i32 %i.aq, 0
  br i1 %.not141, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m, %clause_LiteralAtom.exit220
  %.val213 = load i32, ptr %.0.i, align 8
  %.val214 = load i32, ptr %.0.i217, align 8
  %.not269 = icmp eq i32 %.val213, %.val214
  br i1 %.not269, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  call void @cont_Check() #14
  %i.ar = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.as = call i32 @unify_UnifyCom(ptr noundef %i.ar, ptr noundef nonnull %.0.i, ptr noundef nonnull %.0.i217) #14
  %.not143 = icmp eq i32 %i.as, 0
  br i1 %.not143, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.at = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.at, ptr noundef nonnull %i.a) #14
  br i1 %.not135, label %._crit_edge321, label %bb.q

._crit_edge321:                                   ; preds = %bb.p
  %.pre326 = trunc nsw i64 %indvars.iv to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aw = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.av, ptr noundef %i.au, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %.not144 = icmp eq i32 %i.aw, 0
  br i1 %.not144, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge321, %bb.q
  %.pre-phi329 = phi i32 [ %.pre328, %._crit_edge321 ], [ %i.ag, %bb.q ]
  %.pre-phi327 = phi i32 [ %.pre326, %._crit_edge321 ], [ %i.av, %bb.q ]
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = call fastcc ptr @inf_ApplyGeneralFactoring(ptr noundef nonnull %0, i32 noundef %.pre-phi329, i32 noundef %.pre-phi327, ptr noundef %i.ax, ptr noundef %4, ptr noundef %5)
  %i.az = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.ba, align 8
  store ptr %.1129278, ptr %i.az, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2 = phi ptr [ %i.az, %bb.r ], [ %.1129278, %bb.q ]
  %i.bb = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.bb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.3 = phi ptr [ %.2, %bb.s ], [ %.1129278, %bb.o ] ; 5 uses
  %i.bc = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bc, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bd = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.bc, %.lr.ph.preheader.i ] ; 3 uses
  %i.be = phi i32 [ %i.bj, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bd, ptr @cont_CURRENTBINDING, align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 24
  %.val.i.i.i = load ptr, ptr %i.bf, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bh = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr null, ptr %i.bi, align 8
  %i.bj = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bj, ptr @cont_BINDINGS, align 4
  %i.bk = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i221 = icmp eq ptr %i.bk, null
  br i1 %.not.i221, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.t
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %.val194 = load i32, ptr %.0.i, align 8
  %i.bl = load i32, ptr @fol_EQUALITY, align 4
  %.not270 = icmp eq i32 %.val194, %i.bl
  br i1 %.not270, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %cont_Reset.exit
  %i.bm = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val210 = load ptr, ptr %i.ac, align 8
  %.val210.val = load ptr, ptr %.val210, align 8
  %i.bn = getelementptr i8, ptr %.val210.val, i64 8
  %.val210.val.val = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.0.i217, i64 16  ; 2 uses
  %.val187 = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.val187, i64 8
  %.val187.val = load ptr, ptr %i.bp, align 8
  %i.bq = call i32 @unify_UnifyCom(ptr noundef %i.bm, ptr noundef %.val210.val.val, ptr noundef %.val187.val) #14
  %.not146 = icmp eq i32 %i.bq, 0
  br i1 %.not146, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val186 = load ptr, ptr %i.ac, align 8
  %i.bs = getelementptr i8, ptr %.val186, i64 8
  %.val186.val = load ptr, ptr %i.bs, align 8
  %.val209 = load ptr, ptr %i.bo, align 8
  %.val209.val = load ptr, ptr %.val209, align 8
  %i.bt = getelementptr i8, ptr %.val209.val, i64 8
  %.val209.val.val = load ptr, ptr %i.bt, align 8
  %i.bu = call i32 @unify_UnifyCom(ptr noundef %i.br, ptr noundef %.val186.val, ptr noundef %.val209.val.val) #14
  %.not147 = icmp eq i32 %i.bu, 0
  br i1 %.not147, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bv = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.bv, ptr noundef nonnull %i.b) #14
  br i1 %.not135, label %._crit_edge322, label %bb.x

._crit_edge322:                                   ; preds = %bb.w
  %.pre323 = trunc nsw i64 %indvars.iv to i32
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.by = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %i.bx, ptr noundef %i.bw, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %.not148 = icmp eq i32 %i.by, 0
  br i1 %.not148, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge322, %bb.x
  %.pre-phi325 = phi i32 [ %.pre324, %._crit_edge322 ], [ %i.ah, %bb.x ]
  %.pre-phi = phi i32 [ %.pre323, %._crit_edge322 ], [ %i.bx, %bb.x ]
  %i.bz = load ptr, ptr %i.b, align 8
  %i.ca = call fastcc ptr @inf_ApplyGeneralFactoring(ptr noundef nonnull %0, i32 noundef %.pre-phi325, i32 noundef %.pre-phi, ptr noundef %i.bz, ptr noundef %4, ptr noundef %5)
  %i.cb = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ca, ptr %i.cc, align 8
  store ptr %.3, ptr %i.cb, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4 = phi ptr [ %i.cb, %bb.y ], [ %.3, %bb.x ]
  %i.cd = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.cd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v, %bb.u, %cont_Reset.exit
  %.5 = phi ptr [ %.4, %bb.z ], [ %.3, %bb.v ], [ %.3, %bb.u ], [ %.3, %cont_Reset.exit ]
  %i.ce = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i222 = icmp eq ptr %i.ce, null
  br i1 %.not1.i222, label %cont_Reset.exit228, label %.lr.ph.preheader.i223

.lr.ph.preheader.i223:                            ; preds = %bb.aa
  %cont_BINDINGS.promoted.i224 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225, %.lr.ph.preheader.i223
  %i.cf = phi ptr [ %i.cm, %.lr.ph.i225 ], [ %i.ce, %.lr.ph.preheader.i223 ] ; 3 uses
  %i.cg = phi i32 [ %i.cl, %.lr.ph.i225 ], [ %cont_BINDINGS.promoted.i224, %.lr.ph.preheader.i223 ]
  store ptr %i.cf, ptr @cont_CURRENTBINDING, align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 24
  %.val.i.i.i226 = load ptr, ptr %i.ch, align 8
  store ptr %.val.i.i.i226, ptr @cont_LASTBINDING, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ci, i8 0, i64 20, i1 false)
  %i.cj = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr null, ptr %i.ck, align 8
  %i.cl = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.cl, ptr @cont_BINDINGS, align 4
  %i.cm = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i227 = icmp eq ptr %i.cm, null
  br i1 %.not.i227, label %cont_Reset.exit228, label %.lr.ph.i225, !llvm.loop !0

cont_Reset.exit228:                               ; preds = %.lr.ph.i225, %bb.aa
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %cont_Reset.exit228, %bb.n, %bb.m, %bb.l
  %.6 = phi ptr [ %.5, %cont_Reset.exit228 ], [ %.1129278, %bb.n ], [ %.1129278, %bb.m ], [ %.1129278, %bb.l ], [ %.1129278, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not139.not = icmp slt i64 %indvars.iv, %i.o
  br i1 %.not139.not, label %bb.i, label %.loopexit275, !llvm.loop !52

.loopexit275:                                     ; preds = %bb.ab, %clause_LiteralAtom.exit, %bb.d, %clause_LiteralIsEquality.exit
  %.7 = phi ptr [ %.0128284, %bb.d ], [ %.0128284, %clause_LiteralIsEquality.exit ], [ %.0128284, %clause_LiteralAtom.exit ], [ %.6, %bb.ab ] ; 2 uses
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next305 to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit276, label %bb.c, !llvm.loop !53

.loopexit276:                                     ; preds = %.loopexit275, %bb.b
  %.8 = phi ptr [ null, %bb.b ], [ %.7, %.loopexit275 ] ; 3 uses
  %.not149 = icmp eq i32 %2, 0
  br i1 %.not149, label %.loopexit274, label %bb.ac

bb.ac:                                            ; preds = %.loopexit276
  %.val176 = load i32, ptr %i.f, align 8          ; 4 uses
  %.val177 = load i32, ptr %i.g, align 4          ; 2 uses
  %i.cn = add i32 %.val176, -1
  %i.co = add i32 %i.cn, %.val177                 ; 2 uses
  %.not150297 = icmp sgt i32 %.val176, %i.co
  br i1 %.not150297, label %.loopexit274, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.ac
  %i.cp = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.not151 = icmp eq i32 %3, 0
  %.not155 = icmp ne i32 %1, 0                    ; 4 uses
  %i.cq = add i32 %.val177, %.val176              ; 2 uses
  %i.cr = sext i32 %.val176 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph301, %.loopexit
  %indvars.iv312 = phi i64 [ %i.cr, %.lr.ph301 ], [ %indvars.iv.next313, %.loopexit ] ; 8 uses
  %.9298 = phi ptr [ %.8, %.lr.ph301 ], [ %.16, %.loopexit ] ; 5 uses
  %.val181 = load ptr, ptr %i.cp, align 8
  %i.cs = getelementptr inbounds [8 x i8], ptr %.val181, i64 %indvars.iv312
  %i.ct = load ptr, ptr %i.cs, align 8            ; 6 uses
  br i1 %.not151, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr i8, ptr %i.ct, i64 24
  %.val195 = load ptr, ptr %i.cu, align 8         ; 2 uses
  %.val5.val.i.i229 = load i32, ptr %.val195, align 8 ; 2 uses
  %i.cv = load i32, ptr @fol_NOT, align 4
  %.not.i.i230 = icmp eq i32 %.val5.val.i.i229, %i.cv
  br i1 %.not.i.i230, label %bb.af, label %clause_LiteralIsEquality.exit235

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr i8, ptr %.val195, i64 16
  %.val6.i.i232 = load ptr, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %.val6.i.i232, i64 8
  %.val6.val.i.i233 = load ptr, ptr %i.cx, align 8
  %.val1.pre.i234 = load i32, ptr %.val6.val.i.i233, align 8
  br label %clause_LiteralIsEquality.exit235

clause_LiteralIsEquality.exit235:                 ; preds = %bb.ae, %bb.af
  %.val1.i231 = phi i32 [ %.val1.pre.i234, %bb.af ], [ %.val5.val.i.i229, %bb.ae ]
  %i.cy = load i32, ptr @fol_EQUALITY, align 4
  %.not271 = icmp eq i32 %.val1.i231, %i.cy
  br i1 %.not271, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %clause_LiteralIsEquality.exit235, %bb.ad
  %.val200 = load i32, ptr %i.ct, align 8         ; 2 uses
  %i.cz = and i32 %.val200, 4
  %.not153 = icmp eq i32 %i.cz, 0
  br i1 %.not153, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.val201 = load i32, ptr %i.l, align 8
  %i.da = and i32 %.val201, 2
  %.not154 = icmp eq i32 %i.da, 0
  br i1 %.not154, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.db = and i32 %.val200, 1
  %.not156 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %.not155, %.not156
  br i1 %or.cond, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.dc = getelementptr i8, ptr %i.ct, i64 24
  %.val190 = load ptr, ptr %i.dc, align 8         ; 3 uses
  %.val5.val.i236 = load i32, ptr %.val190, align 8
  %i.dd = load i32, ptr @fol_NOT, align 4
  %.not.i237 = icmp eq i32 %.val5.val.i236, %i.dd
  br i1 %.not.i237, label %bb.ak, label %clause_LiteralAtom.exit241

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr i8, ptr %.val190, i64 16
  %.val6.i239 = load ptr, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %.val6.i239, i64 8
  %.val6.val.i240 = load ptr, ptr %i.df, align 8
  br label %clause_LiteralAtom.exit241

clause_LiteralAtom.exit241:                       ; preds = %bb.aj, %bb.ak
  %.0.i238 = phi ptr [ %.val6.val.i240, %bb.ak ], [ %.val190, %bb.aj ] ; 4 uses
  %.val178 = load i32, ptr %i.f, align 8          ; 2 uses
  %.not157289 = icmp sgt i32 %.val178, %i.co
  br i1 %.not157289, label %.loopexit, label %.lr.ph295

.lr.ph295:                                        ; preds = %clause_LiteralAtom.exit241
  %i.dg = getelementptr i8, ptr %.0.i238, i64 16  ; 2 uses
  %i.dh = sext i32 %.val178 to i64
  %i.di = trunc nsw i64 %indvars.iv312 to i32
  %i.dj = trunc nsw i64 %indvars.iv312 to i32
  %i.dk = trunc nsw i64 %indvars.iv312 to i32
  %i.dl = trunc nsw i64 %indvars.iv312 to i32
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph295, %bb.bi
  %indvars.iv307 = phi i64 [ %i.dh, %.lr.ph295 ], [ %indvars.iv.next308, %bb.bi ] ; 8 uses
  %.10290 = phi ptr [ %.9298, %.lr.ph295 ], [ %.15, %bb.bi ] ; 7 uses
  %i.dm = icmp eq i64 %indvars.iv307, %indvars.iv312
  br i1 %i.dm, label %bb.bi, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val180 = load ptr, ptr %i.cp, align 8
  %i.dn = getelementptr inbounds [8 x i8], ptr %.val180, i64 %indvars.iv307
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  %.val189 = load ptr, ptr %i.dp, align 8         ; 5 uses
  %.val5.val.i242 = load i32, ptr %.val189, align 8
  %i.dq = load i32, ptr @fol_NOT, align 4
  %.not.i243 = icmp eq i32 %.val5.val.i242, %i.dq ; 2 uses
  br i1 %.not.i243, label %bb.an, label %clause_LiteralAtom.exit247

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr i8, ptr %.val189, i64 16
  %.val6.i245 = load ptr, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %.val6.i245, i64 8
  %.val6.val.i246 = load ptr, ptr %i.ds, align 8
  br label %clause_LiteralAtom.exit247

clause_LiteralAtom.exit247:                       ; preds = %bb.am, %bb.an
  %.0.i244 = phi ptr [ %.val6.val.i246, %bb.an ], [ %.val189, %bb.am ]
  %i.dt = icmp sgt i64 %indvars.iv307, %indvars.iv312
  br i1 %i.dt, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %clause_LiteralAtom.exit247
  %.val199 = load i32, ptr %i.ct, align 8
  %i.du = and i32 %.val199, 4
  %.not159 = icmp eq i32 %i.du, 0
  br i1 %.not159, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not155, label %bb.aq, label %bb.bi

bb.aq:                                            ; preds = %bb.ap
  %.val203 = load i32, ptr %i.do, align 8
  %i.dv = and i32 %.val203, 1
  %.not161 = icmp eq i32 %i.dv, 0
  br i1 %.not161, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %clause_LiteralAtom.exit247
  %.val211 = load i32, ptr %.0.i238, align 8
  %.val212 = load i32, ptr %.0.i244, align 8
  %.not272 = icmp eq i32 %.val211, %.val212
  br i1 %.not272, label %bb.as, label %bb.bi

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i243, label %bb.at, label %clause_LiteralAtom.exit253

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr i8, ptr %.val189, i64 16
  %.val6.i251 = load ptr, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %.val6.i251, i64 8
  %.val6.val.i252 = load ptr, ptr %i.dx, align 8
  br label %clause_LiteralAtom.exit253

clause_LiteralAtom.exit253:                       ; preds = %bb.as, %bb.at
  %.0.i250 = phi ptr [ %.val6.val.i252, %bb.at ], [ %.val189, %bb.as ] ; 2 uses
  call void @cont_Check() #14
  %i.dy = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.dz = call i32 @unify_UnifyCom(ptr noundef %i.dy, ptr noundef nonnull %.0.i238, ptr noundef %.0.i250) #14
  %.not163 = icmp eq i32 %i.dz, 0
  br i1 %.not163, label %bb.az, label %bb.au

bb.au:                                            ; preds = %clause_LiteralAtom.exit253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ea = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.ea, ptr noundef nonnull %i.c) #14
  br i1 %.not155, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.val198 = load i32, ptr %i.ct, align 8
  %i.eb = and i32 %.val198, 4
  %.not165 = icmp eq i32 %i.eb, 0
  br i1 %.not165, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ec = load ptr, ptr %i.c, align 8
  %i.ed = trunc nsw i64 %indvars.iv307 to i32
  %i.ee = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %i.ed, ptr noundef %i.ec, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %.not166 = icmp eq i32 %i.ee, 0
  br i1 %.not166, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.ef = load ptr, ptr %i.c, align 8
  %i.eg = trunc nsw i64 %indvars.iv307 to i32
  %i.eh = call fastcc ptr @inf_ApplyGeneralFactoring(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %i.eg, ptr noundef %i.ef, ptr noundef %4, ptr noundef %5)
  %i.ei = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ej, align 8
  store ptr %.10290, ptr %i.ei, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.11 = phi ptr [ %i.ei, %bb.ax ], [ %.10290, %bb.aw ]
  %i.ek = load ptr, ptr %i.c, align 8
  call void @subst_Delete(ptr noundef %i.ek) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %clause_LiteralAtom.exit253
  %.12 = phi ptr [ %.11, %bb.ay ], [ %.10290, %clause_LiteralAtom.exit253 ] ; 5 uses
  %i.el = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i254 = icmp eq ptr %i.el, null
  br i1 %.not1.i254, label %cont_Reset.exit260, label %.lr.ph.preheader.i255

.lr.ph.preheader.i255:                            ; preds = %bb.az
  %cont_BINDINGS.promoted.i256 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %.lr.ph.i257, %.lr.ph.preheader.i255
  %i.em = phi ptr [ %i.et, %.lr.ph.i257 ], [ %i.el, %.lr.ph.preheader.i255 ] ; 3 uses
  %i.en = phi i32 [ %i.es, %.lr.ph.i257 ], [ %cont_BINDINGS.promoted.i256, %.lr.ph.preheader.i255 ]
  store ptr %i.em, ptr @cont_CURRENTBINDING, align 8
  %i.eo = getelementptr i8, ptr %i.em, i64 24
end_hunk_5
begin_hunk_6_@inf_GeneralFactoring:bb.a
  %i.fa = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val184 = load ptr, ptr %i.dg, align 8
  %i.fb = getelementptr i8, ptr %.val184, i64 8
  %.val184.val = load ptr, ptr %i.fb, align 8
  %.val207 = load ptr, ptr %i.ex, align 8
  %.val207.val = load ptr, ptr %.val207, align 8
  %i.fc = getelementptr i8, ptr %.val207.val, i64 8
  %.val207.val.val = load ptr, ptr %i.fc, align 8
  %i.fd = call i32 @unify_UnifyCom(ptr noundef %i.fa, ptr noundef %.val184.val, ptr noundef %.val207.val.val) #14
  %.not169 = icmp eq i32 %i.fd, 0
  br i1 %.not169, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.fe = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.fe, ptr noundef nonnull %i.d) #14
  br i1 %.not155, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.val197 = load i32, ptr %i.ct, align 8
  %i.ff = and i32 %.val197, 4
  %.not171 = icmp eq i32 %i.ff, 0
  br i1 %.not171, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fg = load ptr, ptr %i.d, align 8
  %i.fh = trunc nsw i64 %indvars.iv307 to i32
  %i.fi = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.dk, i32 noundef %i.fh, ptr noundef %i.fg, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %.not172 = icmp eq i32 %i.fi, 0
  br i1 %.not172, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fj = load ptr, ptr %i.d, align 8
  %i.fk = trunc nsw i64 %indvars.iv307 to i32
  %i.fl = call fastcc ptr @inf_ApplyGeneralFactoring(ptr noundef nonnull %0, i32 noundef %i.dl, i32 noundef %i.fk, ptr noundef %i.fj, ptr noundef %4, ptr noundef %5)
  %i.fm = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fl, ptr %i.fn, align 8
  store ptr %.12, ptr %i.fm, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.13 = phi ptr [ %i.fm, %bb.bf ], [ %.12, %bb.be ]
  %i.fo = load ptr, ptr %i.d, align 8
  call void @subst_Delete(ptr noundef %i.fo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %bb.ba, %cont_Reset.exit260
  %.14 = phi ptr [ %.13, %bb.bg ], [ %.12, %bb.bb ], [ %.12, %bb.ba ], [ %.12, %cont_Reset.exit260 ]
  %i.fp = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i261 = icmp eq ptr %i.fp, null
  br i1 %.not1.i261, label %cont_Reset.exit267, label %.lr.ph.preheader.i262

.lr.ph.preheader.i262:                            ; preds = %bb.bh
  %cont_BINDINGS.promoted.i263 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264, %.lr.ph.preheader.i262
  %i.fq = phi ptr [ %i.fx, %.lr.ph.i264 ], [ %i.fp, %.lr.ph.preheader.i262 ] ; 3 uses
  %i.fr = phi i32 [ %i.fw, %.lr.ph.i264 ], [ %cont_BINDINGS.promoted.i263, %.lr.ph.preheader.i262 ]
  store ptr %i.fq, ptr @cont_CURRENTBINDING, align 8
  %i.fs = getelementptr i8, ptr %i.fq, i64 24
  %.val.i.i.i265 = load ptr, ptr %i.fs, align 8
  store ptr %.val.i.i.i265, ptr @cont_LASTBINDING, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ft, i8 0, i64 20, i1 false)
  %i.fu = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr null, ptr %i.fv, align 8
  %i.fw = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fw, ptr @cont_BINDINGS, align 4
  %i.fx = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i266 = icmp eq ptr %i.fx, null
  br i1 %.not.i266, label %cont_Reset.exit267, label %.lr.ph.i264, !llvm.loop !0

cont_Reset.exit267:                               ; preds = %.lr.ph.i264, %bb.bh
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.al, %cont_Reset.exit267, %bb.ar, %bb.aq, %bb.ap
  %.15 = phi ptr [ %.14, %cont_Reset.exit267 ], [ %.10290, %bb.ar ], [ %.10290, %bb.aq ], [ %.10290, %bb.ap ], [ %.10290, %bb.al ] ; 2 uses
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %lftr.wideiv310 = trunc i64 %indvars.iv.next308 to i32
  %exitcond311.not = icmp eq i32 %i.cq, %lftr.wideiv310
  br i1 %exitcond311.not, label %.loopexit, label %bb.al, !llvm.loop !54

.loopexit:                                        ; preds = %bb.bi, %clause_LiteralAtom.exit241, %bb.ai, %clause_LiteralIsEquality.exit235, %bb.ah
  %.16 = phi ptr [ %.9298, %clause_LiteralIsEquality.exit235 ], [ %.9298, %bb.ah ], [ %.9298, %bb.ai ], [ %.9298, %clause_LiteralAtom.exit241 ], [ %.15, %bb.bi ] ; 2 uses
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, 1 ; 2 uses
  %lftr.wideiv315 = trunc i64 %indvars.iv.next313 to i32
  %exitcond316.not = icmp eq i32 %i.cq, %lftr.wideiv315
  br i1 %exitcond316.not, label %.loopexit274, label %bb.ad, !llvm.loop !55

.loopexit274:                                     ; preds = %.loopexit, %bb.ac, %.loopexit276
  %.17 = phi ptr [ %.8, %.loopexit276 ], [ %.8, %bb.ac ], [ %.16, %.loopexit ]
  call void @cont_Check() #14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %.loopexit274
  %.0130 = phi ptr [ %.17, %.loopexit274 ], [ null, %bb.a ]
  ret ptr %.0130
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @inf_ApplyGeneralFactoring(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @clause_Copy(ptr noundef %0) #14 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.b, align 8
  tail call void @clause_SubstApply(ptr noundef %3, ptr noundef %i.a) #14
  tail call void @clause_DeleteLiteral(ptr noundef %i.a, i32 noundef %1, ptr noundef %4, ptr noundef %5) #14
  %i.c = getelementptr i8, ptr %i.a, i64 32       ; 4 uses
  %.val23 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not6.i = icmp eq ptr %.val23, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.val23, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @memory_FREEDBYTES, align 8
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr @memory_FREEDBYTES, align 8
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %.07.i, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.k, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !6

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %i.l = getelementptr i8, ptr %i.a, i64 40       ; 3 uses
  %.val24 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.not6.i25 = icmp eq ptr %.val24, null
  br i1 %.not6.i25, label %list_Delete.exit30, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %list_Delete.exit, %.lr.ph.i26
  %.07.i27 = phi ptr [ %.0.val.i28, %.lr.ph.i26 ], [ %.val24, %list_Delete.exit ] ; 3 uses
  %.0.val.i28 = load ptr, ptr %.07.i27, align 8   ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr @memory_FREEDBYTES, align 8
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr @memory_FREEDBYTES, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %i.s, ptr %.07.i27, align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i27, ptr %i.t, align 8
  %.not.i29 = icmp eq ptr %.0.val.i28, null
  br i1 %.not.i29, label %list_Delete.exit30, label %.lr.ph.i26, !llvm.loop !6

list_Delete.exit30:                               ; preds = %.lr.ph.i26, %list_Delete.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call fastcc void @clause_SetDataFromFather(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 14, ptr %i.u, align 4
  %.val = load i32, ptr %0, align 8
  %i.v = sext i32 %.val to i64
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.z, align 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.y, ptr %i.c, align 8
  %i.aa = sext i32 %1 to i64
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.l, align 8
  %i.ad = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr %i.ad, ptr %i.l, align 8
  %i.af = load i32, ptr @clause_CLAUSECOUNTER, align 4 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @clause_CLAUSECOUNTER, align 4
  store i32 %i.af, ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_GenSuperpositionLeft(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = tail call i32 @clause_HasSolvedConstraint(ptr noundef %0) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @clause_Copy(ptr noundef %0) #14 ; 14 uses
  %i.e = getelementptr i8, ptr %i.d, i64 64       ; 4 uses
  %.val3.i.i = load i32, ptr %i.e, align 8        ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 68       ; 3 uses
  %.val.i.i = load i32, ptr %i.f, align 4         ; 4 uses
  %i.g = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %.val4.i.i = load i32, ptr %i.g, align 8        ; 3 uses
  %i.h = add i32 %.val.i.i, %.val3.i.i            ; 4 uses
  %i.i = getelementptr i8, ptr %i.d, i64 48       ; 4 uses
  %.val101 = load i32, ptr %i.i, align 8          ; 3 uses
  %i.j = and i32 %.val101, 2
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %bb.c, label %.loopexit136

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.h, -1
  %i.l = add i32 %i.k, %.val4.i.i
  %.not72 = icmp ne i32 %4, 0
  %i.m = add nsw i32 %i.h, %.val4.i.i
  %i.n = icmp ne i32 %i.m, 1
  %or.cond205.not212 = select i1 %.not72, i1 %i.n, i1 false
  %.not73144 = icmp sgt i32 %i.h, %i.l
  %or.cond206 = select i1 %or.cond205.not212, i1 true, i1 %.not73144
  br i1 %or.cond206, label %.loopexit136, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.d, i64 56
  %.not75 = icmp eq i32 %3, 0
  %.not77 = icmp eq i32 %2, 0
  %i.p = sext i32 %i.h to i64
  %7 = add i32 %.val4.i.i, %.val3.i.i
  %i.q = add i32 %7, %.val.i.i
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %list_Nconc.exit115
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %list_Nconc.exit115 ] ; 4 uses
  %.062145 = phi ptr [ null, %.lr.ph ], [ %.163, %list_Nconc.exit115 ] ; 5 uses
  %.val90 = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds [8 x i8], ptr %.val90, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %.val91 = load ptr, ptr %i.t, align 8           ; 3 uses
  %.val96 = load i32, ptr %.val91, align 8
  %i.u = load i32, ptr @fol_EQUALITY, align 4
  %.not133 = icmp eq i32 %.val96, %i.u
  br i1 %.not133, label %bb.e, label %list_Nconc.exit115

bb.e:                                             ; preds = %bb.d
  br i1 %.not75, label %.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val98 = load i32, ptr %i.s, align 8
  %i.v = and i32 %.val98, 2
  %.not76 = icmp eq i32 %i.v, 0
  br i1 %.not76, label %list_Nconc.exit115, label %.split

.split:                                           ; preds = %bb.f, %bb.e
  %.sink207 = phi i32 [ 0, %bb.e ], [ %3, %bb.f ]
  %i.w = getelementptr i8, ptr %.val91, i64 16
  %.val94 = load ptr, ptr %i.w, align 8           ; 2 uses
  %i.x = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.x, align 8
  %.val105.val = load ptr, ptr %.val94, align 8
  %i.y = getelementptr i8, ptr %.val105.val, i64 8
  %.val105.val.val = load ptr, ptr %i.y, align 8
  %i.z = trunc nsw i64 %indvars.iv to i32
  %i.aa = tail call fastcc ptr @inf_GenLitSPLeft(ptr noundef nonnull %i.d, ptr noundef %.val94.val, ptr noundef %.val105.val.val, i32 noundef %i.z, ptr noundef %1, i32 noundef %2, i32 noundef %.sink207, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %list_Nconc.exit, label %bb.g

bb.g:                                             ; preds = %.split
  %.not16.i = icmp eq ptr %.062145, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.h, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %.preheader.i
  store ptr %.062145, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %.split, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.aa, %bb.h ], [ %.062145, %.split ], [ %i.aa, %bb.g ] ; 4 uses
  br i1 %.not77, label %.split66, label %bb.i

bb.i:                                             ; preds = %list_Nconc.exit
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val107 = load i32, ptr %i.ab, align 8
  %.not78 = icmp eq i32 %.val107, 0
  br i1 %.not78, label %.split66, label %list_Nconc.exit115

.split66:                                         ; preds = %bb.i, %list_Nconc.exit
  %.sink209 = phi i32 [ 0, %list_Nconc.exit ], [ %2, %bb.i ]
  %i.ac = getelementptr i8, ptr %.val91, i64 16
  %.val103 = load ptr, ptr %i.ac, align 8         ; 2 uses
  %.val103.val = load ptr, ptr %.val103, align 8
  %i.ad = getelementptr i8, ptr %.val103.val, i64 8
  %.val103.val.val = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %.val103, i64 8
  %.val92.val = load ptr, ptr %i.ae, align 8
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = tail call fastcc ptr @inf_GenLitSPLeft(ptr noundef nonnull %i.d, ptr noundef %.val103.val.val, ptr noundef %.val92.val, i32 noundef %i.af, ptr noundef %1, i32 noundef %.sink209, i32 noundef %3, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i108 = icmp eq ptr %i.ag, null
  br i1 %.not.i108, label %list_Nconc.exit115, label %bb.j

bb.j:                                             ; preds = %.split66
  %.not16.i109 = icmp eq ptr %.0.i, null
  br i1 %.not16.i109, label %list_Nconc.exit115, label %.preheader.i110

.preheader.i110:                                  ; preds = %bb.j, %.preheader.i110
  %.012.i111 = phi ptr [ %.012.val15.i112, %.preheader.i110 ], [ %i.ag, %bb.j ] ; 2 uses
  %.012.val15.i112 = load ptr, ptr %.012.i111, align 8 ; 2 uses
  %.not17.i113 = icmp eq ptr %.012.val15.i112, null
  br i1 %.not17.i113, label %bb.k, label %.preheader.i110, !llvm.loop !2

bb.k:                                             ; preds = %.preheader.i110
  store ptr %.0.i, ptr %.012.i111, align 8
  br label %list_Nconc.exit115

list_Nconc.exit115:                               ; preds = %bb.k, %bb.j, %.split66, %bb.d, %bb.f, %bb.i
  %.163 = phi ptr [ %.0.i, %bb.i ], [ %.062145, %bb.d ], [ %.062145, %bb.f ], [ %i.ag, %bb.k ], [ %.0.i, %.split66 ], [ %i.ag, %bb.j ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit136.loopexit, label %bb.d, !llvm.loop !56

.loopexit136.loopexit:                            ; preds = %list_Nconc.exit115
  %.val86.pre = load i32, ptr %i.e, align 8
  %.val87.pre = load i32, ptr %i.f, align 4
  %.val100.pre = load i32, ptr %i.i, align 8
  br label %.loopexit136

.loopexit136:                                     ; preds = %bb.c, %.loopexit136.loopexit, %bb.b
  %.val100 = phi i32 [ %.val101, %bb.b ], [ %.val101, %bb.c ], [ %.val100.pre, %.loopexit136.loopexit ]
  %.val87 = phi i32 [ %.val.i.i, %bb.b ], [ %.val.i.i, %bb.c ], [ %.val87.pre, %.loopexit136.loopexit ] ; 2 uses
  %.val86 = phi i32 [ %.val3.i.i, %bb.b ], [ %.val3.i.i, %bb.c ], [ %.val86.pre, %.loopexit136.loopexit ] ; 4 uses
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.163, %.loopexit136.loopexit ] ; 2 uses
  %i.ah = add i32 %.val86, -1
  %i.ai = add i32 %i.ah, %.val87
  %i.aj = and i32 %.val100, 32
  %.not79 = icmp ne i32 %i.aj, 0
  %.not80148 = icmp sgt i32 %.val86, %i.ai
  %or.cond155 = select i1 %.not79, i1 true, i1 %.not80148
  br i1 %or.cond155, label %.loopexit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.loopexit136
  %i.ak = getelementptr i8, ptr %i.d, i64 56      ; 5 uses
  %.not83 = icmp ne i32 %3, 0                     ; 4 uses
  %.not85.i.i = icmp eq i32 %2, 0                 ; 2 uses
  %.not89.i.i = icmp eq i32 %4, 0
  %i.al = sext i32 %.val86 to i64
  %i.am = add i32 %.val87, %.val86
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph153, %list_Nconc.exit126
  %indvars.iv166 = phi i64 [ %i.al, %.lr.ph153 ], [ %indvars.iv.next167, %list_Nconc.exit126 ] ; 9 uses
  %.3149 = phi ptr [ %.2, %.lr.ph153 ], [ %.4, %list_Nconc.exit126 ] ; 6 uses
  %.val89 = load ptr, ptr %i.ak, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.val89, i64 %indvars.iv166
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.val97 = load i32, ptr %i.ao, align 8          ; 2 uses
  %i.ap = and i32 %.val97, 4
  %.not81 = icmp eq i32 %i.ap, 0
  br i1 %.not81, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.val99 = load i32, ptr %i.i, align 8
  %i.aq = and i32 %.val99, 2
  %.not82 = icmp eq i32 %i.aq, 0
  br i1 %.not82, label %bb.n, label %list_Nconc.exit126

bb.n:                                             ; preds = %bb.m
  %i.ar = and i32 %.val97, 1
  %.not84 = icmp eq i32 %i.ar, 0
  %or.cond = and i1 %.not83, %.not84
  br i1 %or.cond, label %list_Nconc.exit126, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.as = getelementptr i8, ptr %i.ao, i64 24
  %.val39.i = load ptr, ptr %i.as, align 8        ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val39.i, align 8 ; 2 uses
  %i.at = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.at
  br i1 %.not.i.i, label %bb.p, label %clause_LiteralAtom.exit.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr i8, ptr %.val39.i, i64 16
  %.val6.i.i = load ptr, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.av, align 8   ; 2 uses
  %.val40.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.p, %bb.o
  %.val40.i = phi i32 [ %.val40.pre.i, %bb.p ], [ %.val5.val.i.i, %bb.o ]
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.p ], [ %.val39.i, %bb.o ] ; 2 uses
  %i.aw = load i32, ptr @fol_EQUALITY, align 4
  %.not.i116 = icmp eq i32 %.val40.i, %i.aw
  br i1 %.not.i116, label %list_Nconc.exit.i, label %bb.t

list_Nconc.exit.i:                                ; preds = %clause_LiteralAtom.exit.i
  %i.ax = trunc nsw i64 %indvars.iv166 to i32     ; 2 uses
  %i.ay = call fastcc ptr @inf_GenSPLeftEqToGiven(ptr noundef nonnull %i.d, i32 noundef range(i32 -2147483648, 2147483647) %i.ax, i32 noundef 1, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 4 uses
  br i1 %.not83, label %bb.q, label %.split.i

bb.q:                                             ; preds = %list_Nconc.exit.i
  %.val.i118 = load ptr, ptr %i.ak, align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %.val.i118, i64 %indvars.iv166
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val41.i = load i32, ptr %i.bb, align 8
  %.not37.i = icmp eq i32 %.val41.i, 0
  br i1 %.not37.i, label %.split.i, label %inf_GenSPLeftToGiven.exit

.split.i:                                         ; preds = %bb.q, %list_Nconc.exit.i
  %i.bc = call fastcc ptr @inf_GenSPLeftEqToGiven(ptr noundef nonnull %i.d, i32 noundef range(i32 -2147483648, 2147483647) %i.ax, i32 noundef 0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 4 uses
  %.not.i44.i = icmp eq ptr %i.bc, null
  br i1 %.not.i44.i, label %inf_GenSPLeftToGiven.exit, label %bb.r

bb.r:                                             ; preds = %.split.i
  %.not16.i.i = icmp eq ptr %i.ay, null
  br i1 %.not16.i.i, label %inf_GenSPLeftToGiven.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.bc, %bb.r ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.s, label %.preheader.i.i, !llvm.loop !2

end_hunk_6
begin_hunk_7_@inf_DerivableClauses:bb.a
  br i1 %.not17.i359, label %bb.bt, label %.preheader.i356, !llvm.loop !2

bb.bt:                                            ; preds = %.preheader.i356
  store ptr %.17, ptr %.012.i357, align 8
  br label %list_Nconc.exit361

list_Nconc.exit361:                               ; preds = %bb.bt, %bb.bs, %bb.br, %list_Nconc.exit353
  %.18 = phi ptr [ %.17, %list_Nconc.exit353 ], [ %i.cb, %bb.bt ], [ %.17, %bb.br ], [ %i.cb, %bb.bs ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val180, i64 312
  %i.cd = load i32, ptr %i.cc, align 4
  %.not178 = icmp eq i32 %i.cd, 0
  br i1 %.not178, label %list_Nconc.exit, label %bb.bu

bb.bu:                                            ; preds = %list_Nconc.exit361
  %.012.i362 = load ptr, ptr %0, align 8          ; 2 uses
  %.not13.i = icmp eq ptr %.012.i362, null
  br i1 %.not13.i, label %list_Nconc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bu, %list_Nconc.exit.i
  %.015.i = phi ptr [ %.0.i370, %list_Nconc.exit.i ], [ %.012.i362, %bb.bu ] ; 2 uses
  %.01014.i = phi ptr [ %.0.i.i369, %list_Nconc.exit.i ], [ null, %bb.bu ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.015.i, i64 8
  %.0.val.i = load ptr, ptr %i.ce, align 8
  %i.cf = tail call ptr @def_ApplyDefToClauseOnce(ptr noundef %.0.val.i, ptr noundef %1, ptr noundef %.val180, ptr noundef %.val181) #14 ; 4 uses
  %.not.i.i363 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i363, label %list_Nconc.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i
  %.not16.i.i364 = icmp eq ptr %.01014.i, null
  br i1 %.not16.i.i364, label %list_Nconc.exit.i, label %.preheader.i.i365

.preheader.i.i365:                                ; preds = %bb.bv, %.preheader.i.i365
  %.012.i.i366 = phi ptr [ %.012.val15.i.i367, %.preheader.i.i365 ], [ %i.cf, %bb.bv ] ; 2 uses
  %.012.val15.i.i367 = load ptr, ptr %.012.i.i366, align 8 ; 2 uses
  %.not17.i.i368 = icmp eq ptr %.012.val15.i.i367, null
  br i1 %.not17.i.i368, label %bb.bw, label %.preheader.i.i365, !llvm.loop !2

bb.bw:                                            ; preds = %.preheader.i.i365
  store ptr %.01014.i, ptr %.012.i.i366, align 8
  br label %list_Nconc.exit.i

list_Nconc.exit.i:                                ; preds = %bb.bw, %bb.bv, %.lr.ph.i
  %.0.i.i369 = phi ptr [ %i.cf, %bb.bw ], [ %.01014.i, %.lr.ph.i ], [ %i.cf, %bb.bv ] ; 5 uses
  %.0.i370 = load ptr, ptr %.015.i, align 8       ; 2 uses
  %.not.i371 = icmp eq ptr %.0.i370, null
  br i1 %.not.i371, label %inf_ApplyDefinition.exit, label %.lr.ph.i, !llvm.loop !7

inf_ApplyDefinition.exit:                         ; preds = %list_Nconc.exit.i
  %.not.i372 = icmp eq ptr %.0.i.i369, null
  br i1 %.not.i372, label %list_Nconc.exit, label %bb.bx

bb.bx:                                            ; preds = %inf_ApplyDefinition.exit
  %.not16.i373 = icmp eq ptr %.18, null
  br i1 %.not16.i373, label %list_Nconc.exit, label %.preheader.i374

.preheader.i374:                                  ; preds = %bb.bx, %.preheader.i374
  %.012.i375 = phi ptr [ %.012.val15.i376, %.preheader.i374 ], [ %.0.i.i369, %bb.bx ] ; 2 uses
  %.012.val15.i376 = load ptr, ptr %.012.i375, align 8 ; 2 uses
  %.not17.i377 = icmp eq ptr %.012.val15.i376, null
  br i1 %.not17.i377, label %bb.by, label %.preheader.i374, !llvm.loop !2

bb.by:                                            ; preds = %.preheader.i374
  store ptr %.18, ptr %.012.i375, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.g, %bb.e, %bb.bu, %bb.by, %bb.bx, %inf_ApplyDefinition.exit, %list_Nconc.exit361, %bb.d, %bb.f
  %.19 = phi ptr [ %.0.i.i369, %bb.bx ], [ %.18, %list_Nconc.exit361 ], [ null, %bb.f ], [ null, %bb.d ], [ %i.l, %bb.g ], [ %.18, %bb.bu ], [ %i.i, %bb.e ], [ %.0.i.i369, %bb.by ], [ %.18, %inf_ApplyDefinition.exit ]
  ret ptr %.19
}

declare i32 @clause_HasTermSortConstraintLits(ptr noundef) local_unnamed_addr #2

declare ptr @inf_ForwardSortResolution(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @inf_ForwardEmptySort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @inf_BackwardEmptySort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @inf_BackwardSortResolution(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @misc_UserErrorReport(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_Error() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

declare ptr @inf_URResolution(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ord_LiteralCompare(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @term_Delete(ptr noundef) #2

declare void @clause_OrientEqualities(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clause_Normalize(ptr noundef) local_unnamed_addr #2

declare void @clause_SetMaxLitFlags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clause_UpdateMaxVar(ptr noundef) local_unnamed_addr #2

declare i32 @clause_ComputeWeight(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ord_Compare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @term_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sharing_GetDataList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_ApplyGenSuperposition(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 64         ; 3 uses
  %.val3.i.i = load i32, ptr %i.a, align 8        ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 68         ; 3 uses
  %.val.i.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 72         ; 2 uses
  %.val4.i.i = load i32, ptr %i.c, align 8
  %i.d = add i32 %.val3.i.i, -1                   ; 2 uses
  %i.e = add i32 %i.d, %.val.i.i                  ; 2 uses
  %i.f = add i32 %i.e, %.val4.i.i                 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val3.i.i159 = load i32, ptr %i.g, align 8     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 68         ; 4 uses
  %.val.i.i160 = load i32, ptr %i.h, align 4      ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val4.i.i161 = load i32, ptr %i.i, align 8     ; 2 uses
  %i.j = add i32 %.val3.i.i159, -1                ; 2 uses
  %i.k = add i32 %i.j, %.val.i.i160               ; 2 uses
  %i.l = add i32 %i.k, %.val4.i.i161              ; 2 uses
  %i.m = add i32 %i.f, %.val3.i.i159
  %i.n = add i32 %i.m, %.val.i.i160
  %i.o = add i32 %i.n, %.val4.i.i161
  %i.p = tail call ptr @clause_CreateBody(i32 noundef %i.o) #14 ; 19 uses
  %.val136 = load i32, ptr %i.g, align 8
  %.val135 = load i32, ptr %i.a, align 8
  %i.q = add nsw i32 %.val135, %.val136
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i32 %i.q, ptr %i.r, align 8
  %.val132 = load i32, ptr %i.h, align 4
  %.val131 = load i32, ptr %i.b, align 4
  %i.s = add nsw i32 %.val131, %.val132
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  store i32 %i.s, ptr %i.t, align 4
  %.val142 = load i32, ptr %i.i, align 8
  %i.u = add nsw i32 %.val142, -1
  %.val141 = load i32, ptr %i.c, align 8
  %i.v = add nsw i32 %i.u, %.val141
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 %i.v, ptr %i.w, align 8
  %.not173 = icmp slt i32 %i.j, 0
  br i1 %.not173, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 56
  %i.y = getelementptr i8, ptr %i.p, i64 56
  %wide.trip.count = zext i32 %.val3.i.i159 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val148 = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val148, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val1.i = load ptr, ptr %i.ab, align 8
  %i.ac = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.ad = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.ac) #14
  %i.ae = tail call ptr @clause_LiteralCreate(ptr noundef %i.ad, ptr noundef nonnull %i.p) #14
  %.val156 = load ptr, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val156, i64 %indvars.iv
  store ptr %i.ae, ptr %i.af, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0119.lcssa = phi i32 [ 0, %bb.a ], [ %.val3.i.i159, %bb.b ] ; 3 uses
  %.val134 = load i32, ptr %i.a, align 8          ; 2 uses
  %.not121175 = icmp sgt i32 %.0119.lcssa, %i.k
  br i1 %.not121175, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %._crit_edge
  %i.ag = getelementptr i8, ptr %0, i64 56
  %i.ah = getelementptr i8, ptr %i.p, i64 56
  %i.ai = sext i32 %.0119.lcssa to i64
  %i.aj = sext i32 %.val134 to i64
  %i.ak = add i32 %.val.i.i160, %.val3.i.i159     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph178, %bb.c
  %indvars.iv208 = phi i64 [ %i.ai, %.lr.ph178 ], [ %indvars.iv.next209, %bb.c ] ; 3 uses
  %.val147 = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val147, i64 %indvars.iv208
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %.val1.i165 = load ptr, ptr %i.an, align 8
  %i.ao = tail call ptr @term_Copy(ptr noundef %.val1.i165) #14
  %i.ap = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.ao) #14
  %i.aq = tail call ptr @clause_LiteralCreate(ptr noundef %i.ap, ptr noundef nonnull %i.p) #14
  %.val155 = load ptr, ptr %i.ah, align 8
  %i.ar = getelementptr [8 x i8], ptr %.val155, i64 %indvars.iv208
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aj
  store ptr %i.aq, ptr %i.as, align 8
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next209 to i32
  %exitcond211.not = icmp eq i32 %i.ak, %lftr.wideiv
  br i1 %exitcond211.not, label %._crit_edge179, label %bb.c, !llvm.loop !70

._crit_edge179:                                   ; preds = %bb.c, %._crit_edge
  %.1120.lcssa = phi i32 [ %.0119.lcssa, %._crit_edge ], [ %i.ak, %bb.c ] ; 2 uses
  %.not122181 = icmp sgt i32 %.1120.lcssa, %i.l
  br i1 %.not122181, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %._crit_edge179
  %.val130 = load i32, ptr %i.b, align 4
  %i.at = add nsw i32 %.val130, %.val134
  %i.au = getelementptr i8, ptr %0, i64 56
  %i.av = getelementptr i8, ptr %i.p, i64 56
  %i.aw = zext i32 %.1120.lcssa to i64
  %i.ax = zext i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph185, %bb.g
  %indvars.iv212 = phi i64 [ %i.aw, %.lr.ph185 ], [ %indvars.iv.next213, %bb.g ] ; 5 uses
  %.0183 = phi i32 [ %i.at, %.lr.ph185 ], [ %.1, %bb.g ] ; 3 uses
  %.not129 = icmp eq i64 %indvars.iv212, %i.ax
  br i1 %.not129, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = trunc nuw i64 %indvars.iv212 to i32     ; 2 uses
  %i.az = add nsw i32 %.0183, %i.ay
  %.val146 = load ptr, ptr %i.au, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val146, i64 %indvars.iv212
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 24
  %.val1.i166 = load ptr, ptr %i.bc, align 8
  %i.bd = tail call ptr @term_Copy(ptr noundef %.val1.i166) #14
  %i.be = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.bd) #14
  %i.bf = tail call ptr @clause_LiteralCreate(ptr noundef %i.be, ptr noundef %i.p) #14
  %.val154 = load ptr, ptr %i.av, align 8
  %i.bg = sext i32 %i.az to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val154, i64 %i.bg
  store ptr %i.bf, ptr %i.bh, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bi = add nsw i32 %.0183, -1
  %.pre = trunc nuw i64 %indvars.iv212 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pre-phi = phi i32 [ %i.ay, %bb.e ], [ %.pre, %bb.f ]
  %.1 = phi i32 [ %.0183, %bb.e ], [ %i.bi, %bb.f ]
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  %.not122.not = icmp slt i32 %.pre-phi, %i.l
  br i1 %.not122.not, label %bb.d, label %._crit_edge186, !llvm.loop !71

._crit_edge186:                                   ; preds = %bb.g, %._crit_edge179
  %.val133 = load i32, ptr %i.g, align 8          ; 2 uses
  %.not123187 = icmp slt i32 %i.d, 0
  br i1 %.not123187, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %._crit_edge186
  %i.bj = getelementptr i8, ptr %3, i64 56
  %i.bk = getelementptr i8, ptr %i.p, i64 56
  %i.bl = sext i32 %.val133 to i64
  %wide.trip.count218 = zext i32 %.val3.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph190, %bb.h
  %indvars.iv215 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next216, %bb.h ] ; 3 uses
  %.val145 = load ptr, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val145, i64 %indvars.iv215
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val1.i167 = load ptr, ptr %i.bo, align 8
  %i.bp = tail call ptr @term_Copy(ptr noundef %.val1.i167) #14
  %i.bq = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.bp) #14
  %i.br = tail call ptr @clause_LiteralCreate(ptr noundef %i.bq, ptr noundef %i.p) #14
  %.val153 = load ptr, ptr %i.bk, align 8
  %i.bs = getelementptr [8 x i8], ptr %.val153, i64 %indvars.iv215
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bl
  store ptr %i.br, ptr %i.bt, align 8
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge191, label %bb.h, !llvm.loop !72

._crit_edge191:                                   ; preds = %bb.h, %._crit_edge186
  %.3.lcssa = phi i32 [ 0, %._crit_edge186 ], [ %.val3.i.i, %bb.h ] ; 3 uses
  %.val = load i32, ptr %i.h, align 4             ; 2 uses
  %.not124193 = icmp sgt i32 %.3.lcssa, %i.e
  br i1 %.not124193, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %._crit_edge191
  %i.bu = add nsw i32 %.val, %.val133
  %i.bv = getelementptr i8, ptr %3, i64 56
  %i.bw = getelementptr i8, ptr %i.p, i64 56
  %i.bx = sext i32 %.3.lcssa to i64
  %i.by = sext i32 %i.bu to i64
  %sext = sext i32 %4 to i64                      ; 2 uses
  %i.bz = add i32 %.val.i.i, %.val3.i.i           ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph196, %bb.l
  %indvars.iv220 = phi i64 [ %i.bx, %.lr.ph196 ], [ %indvars.iv.next221, %bb.l ] ; 4 uses
  %i.ca = icmp eq i64 %indvars.iv220, %sext
  br i1 %i.ca, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val144 = load ptr, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val144, i64 %indvars.iv220
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %.val1.i168 = load ptr, ptr %i.cd, align 8
  %i.ce = tail call ptr @term_Copy(ptr noundef %.val1.i168) #14
  %i.cf = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.ce) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cg = load i32, ptr @fol_NOT, align 4
  %i.ch = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %6, ptr %i.ci, align 8
  store ptr null, ptr %i.ch, align 8
  %i.cj = tail call ptr @term_Create(i32 noundef %i.cg, ptr noundef nonnull %i.ch) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink235 = phi ptr [ %i.cf, %bb.j ], [ %i.cj, %bb.k ]
  %indvars.iv220.sink = phi i64 [ %indvars.iv220, %bb.j ], [ %sext, %bb.k ]
  %i.ck = tail call ptr @clause_LiteralCreate(ptr noundef %.sink235, ptr noundef %i.p) #14
  %.val152 = load ptr, ptr %i.bw, align 8
  %i.cl = getelementptr [8 x i8], ptr %.val152, i64 %indvars.iv220.sink
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.by
  store ptr %i.ck, ptr %i.cm, align 8
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1 ; 2 uses
  %lftr.wideiv223 = trunc i64 %indvars.iv.next221 to i32
  %exitcond224.not = icmp eq i32 %i.bz, %lftr.wideiv223
  br i1 %exitcond224.not, label %._crit_edge197.loopexit, label %bb.i, !llvm.loop !73

._crit_edge197.loopexit:                          ; preds = %bb.l
  %.val.i170.pre = load i32, ptr %i.h, align 4
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %._crit_edge197.loopexit, %._crit_edge191
  %.val.i170 = phi i32 [ %.val, %._crit_edge191 ], [ %.val.i170.pre, %._crit_edge197.loopexit ]
  %.4.lcssa = phi i32 [ %.3.lcssa, %._crit_edge191 ], [ %i.bz, %._crit_edge197.loopexit ] ; 2 uses
  %.not125199 = icmp sgt i32 %.4.lcssa, %i.f
  br i1 %.not125199, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %._crit_edge197
  %.val3.i169 = load i32, ptr %i.g, align 8
  %i.cn = add i32 %.val3.i169, -1
  %i.co = add i32 %i.cn, %.val.i170
  %.val4.i171 = load i32, ptr %i.i, align 8
  %i.cp = add i32 %i.co, %.val4.i171
  %i.cq = getelementptr i8, ptr %3, i64 56
  %i.cr = getelementptr i8, ptr %i.p, i64 56
  %i.cs = sext i32 %.4.lcssa to i64
  %i.ct = sext i32 %i.cp to i64
  %i.cu = sext i32 %i.f to i64
  %sext227 = sext i32 %4 to i64                   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph202, %bb.o
  %indvars.iv225 = phi i64 [ %i.cs, %.lr.ph202 ], [ %indvars.iv.next226, %bb.o ] ; 5 uses
  %i.cv = icmp eq i64 %indvars.iv225, %sext227
  br i1 %i.cv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val143 = load ptr, ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val143, i64 %indvars.iv225
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 24
  %.val1.i172 = load ptr, ptr %i.cy, align 8
  %i.cz = tail call ptr @term_Copy(ptr noundef %.val1.i172) #14
  %i.da = tail call ptr @subst_Apply(ptr noundef %5, ptr noundef %i.cz) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink238 = phi ptr [ %i.da, %bb.n ], [ %6, %bb.m ]
  %indvars.iv225.sink = phi i64 [ %indvars.iv225, %bb.n ], [ %sext227, %bb.m ]
  %i.db = tail call ptr @clause_LiteralCreate(ptr noundef %.sink238, ptr noundef %i.p) #14
  %.val150 = load ptr, ptr %i.cr, align 8
  %i.dc = getelementptr [8 x i8], ptr %.val150, i64 %indvars.iv225.sink
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.ct
  store ptr %i.db, ptr %i.dd, align 8
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %.not125.not = icmp slt i64 %indvars.iv225, %i.cu
  br i1 %.not125.not, label %bb.m, label %._crit_edge203, !llvm.loop !74

._crit_edge203:                                   ; preds = %bb.o, %._crit_edge197
  %i.de = icmp ne i32 %8, 0                       ; 2 uses
  %i.df = icmp ne i32 %9, 0                       ; 2 uses
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge203
  %.not126 = icmp eq i32 %7, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 76 ; 2 uses
  br i1 %.not126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 8, ptr %i.dg, align 4
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  store i32 9, ptr %i.dg, align 4
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge203
  %.not = xor i1 %i.de, true
  %or.cond3 = or i1 %i.df, %.not
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 76 ; 2 uses
  br i1 %or.cond3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 7, ptr %i.dh, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 6, ptr %i.dh, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.r
  tail call fastcc void @clause_SetDataFromParents(ptr noundef nonnull %i.p, ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %1, ptr noundef %10, ptr noundef %11)
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_NAllTermsRplac(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @term_Equal(ptr noundef %0, ptr noundef %1) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %2, align 8
  store i32 %.val, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val45 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val44 = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @list_CopyWithElement(ptr noundef %.val44, ptr noundef nonnull @term_Copy) #14
  store ptr %i.d, ptr %i.b, align 8
  tail call void @list_DeleteWithElement(ptr noundef %.val45, ptr noundef nonnull @term_Delete) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.val40 = load i32, ptr %0, align 8
  %i.e = icmp slt i32 %.val40, 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val43 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not47 = icmp eq ptr %.val43, null
  br i1 %.not47, label %.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %bb.e
  %i.h = load i32, ptr @stack_POINTER, align 4    ; 5 uses
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr @stack_POINTER, align 4
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.j
  store ptr %.val43, ptr %i.k, align 8
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.critedge
  %i.l = phi i32 [ %i.aa, %.critedge ], [ %i.i, %.lr.ph56.preheader ]
  %.055 = phi i32 [ %.1, %.critedge ], [ 0, %.lr.ph56.preheader ] ; 3 uses
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %.val37 = load ptr, ptr %i.q, align 8           ; 5 uses
  %.val38 = load ptr, ptr %i.p, align 8
  store ptr %.val38, ptr %i.o, align 8
  %i.r = tail call i32 @term_Equal(ptr noundef %.val37, ptr noundef %1) #14
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph56
  %i.s = tail call ptr @term_Copy(ptr noundef %2) #14
  store ptr %i.s, ptr %i.q, align 8
  tail call void @term_Delete(ptr noundef %.val37) #14
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph56
  %i.t = getelementptr i8, ptr %.val37, i64 16
  %.val46 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not49 = icmp eq ptr %.val46, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @stack_POINTER, align 4    ; 2 uses
end_hunk_7
begin_hunk_8_@inf_GenSPRightEqToGiven:bb.a
  %i.jh = getelementptr i8, ptr %.0.i.i184, i64 16 ; 2 uses
  %.val45.i261 = load ptr, ptr %i.jh, align 8
  %i.ji = getelementptr i8, ptr %.3, i64 16
  %.val44.i262 = load ptr, ptr %i.ji, align 8
  %i.jj = call ptr @list_CopyWithElement(ptr noundef %.val44.i262, ptr noundef nonnull @term_Copy) #14
  store ptr %i.jj, ptr %i.jh, align 8
  call void @list_DeleteWithElement(ptr noundef %.val45.i261, ptr noundef nonnull @term_Delete) #14
  br label %inf_AllTermsLeftRplac.exit

bb.ch:                                            ; preds = %bb.cf
  %.val40.i264 = load i32, ptr %.0.i.i184, align 8
  %i.jk = icmp slt i32 %.val40.i264, 1
  br i1 %i.jk, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jl = call ptr @subst_Apply(ptr noundef %i.fo, ptr noundef nonnull %.0.i.i184) #14 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jm = getelementptr i8, ptr %.0.i.i184, i64 16
  %.val43.i265 = load ptr, ptr %i.jm, align 8     ; 3 uses
  %.not47.i266 = icmp eq ptr %.val43.i265, null
  br i1 %.not47.i266, label %inf_AllTermsLeftRplac.exit, label %.lr.ph56.preheader.i267

.lr.ph56.preheader.i267:                          ; preds = %bb.cj
  %i.jn = load i32, ptr @stack_POINTER, align 4   ; 5 uses
  %i.jo = add i32 %i.jn, 1                        ; 2 uses
  store i32 %i.jo, ptr @stack_POINTER, align 4
  %i.jp = zext i32 %i.jn to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.jp
  store ptr %.val43.i265, ptr %i.jq, align 8
  br label %.lr.ph56.i268

.lr.ph56.i268:                                    ; preds = %.critedge.i278, %.lr.ph56.preheader.i267
  %i.jr = phi ptr [ %i.kk, %.critedge.i278 ], [ %.val43.i265, %.lr.ph56.preheader.i267 ] ; 2 uses
  %i.js = phi i32 [ %i.kg, %.critedge.i278 ], [ %i.jo, %.lr.ph56.preheader.i267 ]
  %i.jt = add i32 %i.js, -1
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jr, i64 8      ; 2 uses
  %.val37.i270 = load ptr, ptr %i.jw, align 8     ; 5 uses
  %.val38.i271 = load ptr, ptr %i.jr, align 8
  store ptr %.val38.i271, ptr %i.jv, align 8
  %i.jx = call i32 @term_Equal(ptr noundef %.val37.i270, ptr noundef nonnull %i.aa) #14
  %.not32.i272 = icmp eq i32 %i.jx, 0
  br i1 %.not32.i272, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph56.i268
  %i.jy = call ptr @term_Copy(ptr noundef %.3) #14
  store ptr %i.jy, ptr %i.jw, align 8
  call void @term_Delete(ptr noundef %.val37.i270) #14
  br label %bb.cp

bb.cl:                                            ; preds = %.lr.ph56.i268
  %i.jz = getelementptr i8, ptr %.val37.i270, i64 16
  %.val46.i281 = load ptr, ptr %i.jz, align 8     ; 2 uses
  %.not49.i282 = icmp eq ptr %.val46.i281, null
  br i1 %.not49.i282, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ka = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr @stack_POINTER, align 4
  %i.kc = zext i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.kc
  store ptr %.val46.i281, ptr %i.kd, align 8
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %.val39.i283 = load i32, ptr %.val37.i270, align 8
  %i.ke = icmp slt i32 %.val39.i283, 1
  br i1 %i.ke, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kf = call ptr @subst_Apply(ptr noundef %i.fo, ptr noundef nonnull %.val37.i270) #14 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck
  %stack_POINTER.promoted.i274 = load i32, ptr @stack_POINTER, align 4 ; 2 uses
  %.not5052.i275 = icmp eq i32 %stack_POINTER.promoted.i274, %i.jn
  br i1 %.not5052.i275, label %inf_AllTermsLeftRplac.exit, label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %bb.cp, %bb.cq
  %i.kg = phi i32 [ %i.kh, %bb.cq ], [ %stack_POINTER.promoted.i274, %bb.cp ] ; 3 uses
  %i.kh = add i32 %i.kg, -1                       ; 4 uses
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %.not51.i277 = icmp eq ptr %i.kk, null
  br i1 %.not51.i277, label %bb.cq, label %.critedge.i278

bb.cq:                                            ; preds = %.lr.ph.i276
  store i32 %i.kh, ptr @stack_POINTER, align 4
  %.not50.i280 = icmp eq i32 %i.kh, %i.jn
  br i1 %.not50.i280, label %inf_AllTermsLeftRplac.exit, label %.lr.ph.i276, !llvm.loop !4

.critedge.i278:                                   ; preds = %.lr.ph.i276
  %.not48.i279 = icmp eq i32 %i.kg, %i.jn
  br i1 %.not48.i279, label %inf_AllTermsLeftRplac.exit, label %.lr.ph56.i268, !llvm.loop !5

inf_NAllTermsRplac.exit310.thread:                ; preds = %bb.bx, %inf_NAllTermsRplac.exit310
  call void @term_Delete(ptr noundef nonnull %i.fp) #14
  br label %inf_AllTermsLeftRplac.exit

inf_AllTermsLeftRplac.exit:                       ; preds = %bb.bs, %.critedge.i, %bb.cp, %.critedge.i278, %bb.bt, %bb.cq, %inf_NAllTermsRplac.exit310.thread, %bb.cg, %bb.cj, %inf_NAllTermsRplac.exit258.thread, %bb.bj, %bb.bm
  %.0 = phi ptr [ %i.fp, %bb.cq ], [ null, %inf_NAllTermsRplac.exit258.thread ], [ %i.fp, %bb.bj ], [ %i.fp, %bb.bm ], [ %i.fp, %bb.bt ], [ %i.fp, %bb.cp ], [ null, %inf_NAllTermsRplac.exit310.thread ], [ %i.fp, %bb.cg ], [ %i.fp, %bb.cj ], [ %i.fp, %.critedge.i278 ], [ %i.fp, %.critedge.i ], [ %i.fp, %bb.bs ]
  %i.kl = load ptr, ptr %i.b, align 8
  %i.km = load ptr, ptr %i.a, align 8
  %i.kn = call fastcc ptr @inf_ApplyGenSuperposition(ptr noundef nonnull %.val4.i, i32 noundef %i.aq, ptr noundef %i.kl, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.km, ptr noundef %.0, i32 noundef 1, i32 noundef %4, i32 noundef %5, ptr noundef %7, ptr noundef %8)
  %i.ko = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kp, align 8
  store ptr %.3121369, ptr %i.ko, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %.split, %inf_AllTermsLeftRplac.exit, %bb.ar
  %.4122 = phi ptr [ %i.ko, %inf_AllTermsLeftRplac.exit ], [ %.3121369, %bb.ar ], [ %.3121369, %.split ] ; 2 uses
  %.4 = phi ptr [ %.3, %inf_AllTermsLeftRplac.exit ], [ %.1, %bb.ar ], [ %.1, %.split ] ; 2 uses
  %.not140 = icmp eq ptr %.0114, null
  br i1 %.not140, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @term_Delete(ptr noundef nonnull %.0114) #14
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.not141 = icmp eq ptr %.4, null
  br i1 %.not141, label %inf_LiteralsMax.exit.thread, label %inf_LiteralsMax.exit.thread.sink.split

inf_LiteralsMax.exit.thread.sink.split.sink.split: ; preds = %bb.aa, %bb.ai
  %.sink = phi ptr [ %i.du, %bb.ai ], [ %i.ck, %bb.aa ]
  %.lcssa445.sink.ph = phi ptr [ %i.ee, %bb.ai ], [ %i.cu, %bb.aa ]
  call void @term_Delete(ptr noundef %.sink) #14
  br label %inf_LiteralsMax.exit.thread.sink.split

inf_LiteralsMax.exit.thread.sink.split:           ; preds = %inf_LiteralsMax.exit.thread.sink.split.sink.split, %bb.ct
  %.lcssa445.sink = phi ptr [ %.4, %bb.ct ], [ %.lcssa445.sink.ph, %inf_LiteralsMax.exit.thread.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.4122, %bb.ct ], [ %.3121369, %inf_LiteralsMax.exit.thread.sink.split.sink.split ]
  call void @term_Delete(ptr noundef %.lcssa445.sink) #14
  br label %inf_LiteralsMax.exit.thread

inf_LiteralsMax.exit.thread:                      ; preds = %inf_LiteralsMax.exit.thread.sink.split, %bb.ae, %bb.ad, %bb.w, %bb.v, %bb.ct
  %.5 = phi ptr [ %.4122, %bb.ct ], [ %.3121369, %bb.w ], [ %.3121369, %bb.ad ], [ %.3121369, %bb.ae ], [ %.3121369, %bb.v ], [ %.5.ph, %inf_LiteralsMax.exit.thread.sink.split ]
  %i.kq = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.kq) #14
  %i.kr = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.kr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.cu

bb.cu:                                            ; preds = %clause_LiteralGetIndex.exit, %bb.k, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %inf_LiteralsMax.exit.thread
  %.6 = phi ptr [ %.3121369, %clause_LiteralGetIndex.exit ], [ %.5, %inf_LiteralsMax.exit.thread ], [ %.3121369, %bb.s ], [ %.3121369, %bb.r ], [ %.3121369, %bb.p ], [ %.3121369, %bb.o ], [ %.3121369, %bb.n ], [ %.3121369, %bb.k ] ; 2 uses
  %.0115.val155 = load ptr, ptr %.0115371, align 8 ; 2 uses
  %.not347 = icmp eq ptr %.0115.val155, null
  br i1 %.not347, label %.loopexit, label %bb.h, !llvm.loop !79

.loopexit:                                        ; preds = %bb.cu, %bb.g, %.lr.ph376
  %.7 = phi ptr [ %.2120374, %.lr.ph376 ], [ %.2120374, %bb.g ], [ %.6, %bb.cu ] ; 2 uses
  %.0116 = load ptr, ptr %.0116375, align 8       ; 2 uses
  %.not345 = icmp eq ptr %.0116, null
  br i1 %.not345, label %._crit_edge, label %.lr.ph376, !llvm.loop !80

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph382
  %.2120.lcssa = phi ptr [ %.1119379, %.lr.ph382 ], [ %.7, %.loopexit ] ; 2 uses
  %.val.i189 = load ptr, ptr %.0117380, align 8   ; 2 uses
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = sext i32 %i.ku to i64
  %i.kw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.kx = add i64 %i.kw, %i.kv
  store i64 %i.kx, ptr @memory_FREEDBYTES, align 8
  %i.ky = load ptr, ptr %i.ks, align 8
  store ptr %i.ky, ptr %.0117380, align 8
  %i.kz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0117380, ptr %i.kz, align 8
  %.not344 = icmp eq ptr %.val.i189, null
  br i1 %.not344, label %.loopexit354, label %.lr.ph382, !llvm.loop !81

.loopexit354:                                     ; preds = %._crit_edge, %bb.f, %bb.e
  %.8 = phi ptr [ %.0118385, %bb.e ], [ %.0118385, %bb.f ], [ %.2120.lcssa, %._crit_edge ] ; 2 uses
  %i.la = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not343 = icmp eq i32 %i.la, %i.k
  br i1 %.not343, label %._crit_edge388, label %bb.e, !llvm.loop !82

._crit_edge388:                                   ; preds = %.loopexit354, %bb.d
  %.0118.lcssa = phi ptr [ null, %bb.d ], [ %.8, %.loopexit354 ]
  ret ptr %.0118.lcssa
}

declare void @sharing_PushListOnStack(ptr noundef) local_unnamed_addr #2

declare i32 @term_HasPointerSubterm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_Lit2MParamod(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %.val3.i.i = load i32, ptr %i.b, align 8        ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %.val.i.i = load i32, ptr %i.c, align 4         ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 72
  %.val4.i.i = load i32, ptr %i.d, align 8        ; 2 uses
  %i.e = add i32 %.val.i.i, %.val3.i.i            ; 2 uses
  %i.f = add i32 %i.e, -1
  %i.g = add i32 %i.f, %.val4.i.i
  %.not184 = icmp sgt i32 %i.e, %i.g
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 56
  %i.i = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.o = sext i32 %.val3.i.i to i64
  %i.p = sext i32 %.val.i.i to i64
  %i.q = add nsw i64 %i.o, %i.p
  %sext = sext i32 %3 to i64
  %12 = add i32 %.val4.i.i, %.val3.i.i
  %i.r = add i32 %12, %.val.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 5 uses
  %.0104185 = phi ptr [ null, %.lr.ph ], [ %.5, %bb.aa ] ; 9 uses
  %.val124 = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds [8 x i8], ptr %.val124, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val125 = load ptr, ptr %i.u, align 8          ; 2 uses
  %i.v = icmp eq i64 %indvars.iv, %sext
  br i1 %i.v, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val127 = load i32, ptr %.val125, align 8
  %i.w = load i32, ptr @fol_EQUALITY, align 4
  %.not183 = icmp eq i32 %.val127, %i.w
  br i1 %.not183, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.x = getelementptr i8, ptr %.val125, i64 16   ; 2 uses
  %.val126 = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val126, i64 8
  %.val126.val = load ptr, ptr %i.y, align 8
  %i.z = call ptr @term_Copy(ptr noundef %.val126.val) #14
  %i.aa = call ptr @subst_Apply(ptr noundef %9, ptr noundef %i.z) #14 ; 3 uses
  %.val128 = load ptr, ptr %i.x, align 8
  %.val128.val = load ptr, ptr %.val128, align 8
  %i.ab = getelementptr i8, ptr %.val128.val, i64 8
  %.val128.val.val = load ptr, ptr %i.ab, align 8
  %i.ac = call ptr @term_Copy(ptr noundef %.val128.val.val) #14
  %i.ad = call ptr @subst_Apply(ptr noundef %9, ptr noundef %i.ac) #14 ; 3 uses
  call void @cont_Check() #14
  %i.ae = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.af = call i32 @unify_UnifyCom(ptr noundef %i.ae, ptr noundef %8, ptr noundef %i.aa) #14
  %.not111 = icmp eq i32 %i.af, 0
  br i1 %.not111, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.ag, ptr noundef nonnull %i.a) #14
  %.val123 = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val123, i64 %i.j
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val130 = load i32, ptr %i.aj, align 8
  %.not112 = icmp eq i32 %.val130, 0
  br i1 %.not112, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = call ptr @term_Copy(ptr noundef %4) #14
  %i.am = call ptr @subst_Apply(ptr noundef %9, ptr noundef %i.al) #14
  %i.an = call ptr @subst_Apply(ptr noundef %i.ak, ptr noundef %i.am) #14 ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = call ptr @term_Copy(ptr noundef %5) #14
  %i.aq = call ptr @subst_Apply(ptr noundef %9, ptr noundef %i.ap) #14
  %i.ar = call ptr @subst_Apply(ptr noundef %i.ao, ptr noundef %i.aq) #14 ; 3 uses
  %i.as = call i32 @ord_Compare(ptr noundef %i.an, ptr noundef %i.ar, ptr noundef %10, ptr noundef %11) #14
  %.off = add i32 %i.as, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %inf_LiteralsMaxWith2Subst.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0101.ph = phi ptr [ %i.an, %bb.f ], [ null, %bb.e ] ; 3 uses
  %.099.ph = phi ptr [ %i.ar, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val25.i = load i32, ptr %i.k, align 8
  %i.au = and i32 %.val25.i, 2
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val22.i = load i32, ptr %i.l, align 8
  %.val23.i = load i32, ptr %i.m, align 4
  %i.av = add i32 %.val22.i, -1
  %i.aw = add i32 %i.av, %.val23.i
  %i.ax = icmp sgt i32 %2, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %i.az = call fastcc i32 @inf_LitMaxWith2Subst(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef %i.at, ptr noundef %9, i32 noundef %i.ay, ptr noundef %10, ptr noundef %11)
  %.not18.i = icmp eq i32 %i.az, 0
  br i1 %.not18.i, label %inf_LiteralsMaxWith2Subst.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val24.i = load i32, ptr %i.n, align 8
  %i.ba = and i32 %.val24.i, 2
  %.not19.i = icmp eq i32 %i.ba, 0
  br i1 %.not19.i, label %bb.j, label %inf_LiteralsMaxWith2Subst.exit

bb.j:                                             ; preds = %bb.i
  %.val.i = load i32, ptr %i.b, align 8
  %.val21.i = load i32, ptr %i.c, align 4
  %i.bb = add i32 %.val.i, -1
  %i.bc = add i32 %i.bb, %.val21.i
  %i.bd = icmp sgt i32 %3, %i.bc
  %i.be = zext i1 %i.bd to i32
  %i.bf = call fastcc i32 @inf_LitMaxWith2Subst(ptr noundef nonnull readonly %1, i32 noundef %3, ptr noundef %i.at, ptr noundef %9, i32 noundef %i.be, ptr noundef %10, ptr noundef %11)
  %.not20.i = icmp eq i32 %i.bf, 0
  br i1 %.not20.i, label %inf_LiteralsMaxWith2Subst.exit.thread, label %inf_LiteralsMaxWith2Subst.exit

inf_LiteralsMaxWith2Subst.exit:                   ; preds = %bb.j, %bb.i
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = call ptr @term_Copy(ptr noundef %i.ad) #14
  %i.bi = call ptr @subst_Apply(ptr noundef %i.bg, ptr noundef %i.bh) #14 ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = trunc nsw i64 %indvars.iv to i32
  %i.bl = call fastcc ptr @inf_ApplyMParamod(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.bk, ptr noundef %8, ptr noundef %7, ptr noundef %6, ptr noundef %5, ptr noundef %i.bi, ptr noundef %9, ptr noundef %i.bj, ptr noundef %10, ptr noundef %11) ; 4 uses
  %.not.i131 = icmp eq ptr %i.bl, null
  br i1 %.not.i131, label %list_Nconc.exit, label %bb.k

bb.k:                                             ; preds = %inf_LiteralsMaxWith2Subst.exit
  %.not16.i = icmp eq ptr %.0104185, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.bl, %bb.k ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.l, label %.preheader.i, !llvm.loop !2

bb.l:                                             ; preds = %.preheader.i
  store ptr %.0104185, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %inf_LiteralsMaxWith2Subst.exit, %bb.k, %bb.l
  %.0.i132 = phi ptr [ %i.bl, %bb.l ], [ %.0104185, %inf_LiteralsMaxWith2Subst.exit ], [ %i.bl, %bb.k ]
  call void @term_Delete(ptr noundef %i.bi) #14
  br label %inf_LiteralsMaxWith2Subst.exit.thread

inf_LiteralsMaxWith2Subst.exit.thread:            ; preds = %bb.f, %bb.j, %bb.h, %list_Nconc.exit
  %.099167 = phi ptr [ %.099.ph, %list_Nconc.exit ], [ %.099.ph, %bb.j ], [ %i.ar, %bb.f ], [ %.099.ph, %bb.h ]
  %.0101165 = phi ptr [ %.0101.ph, %list_Nconc.exit ], [ %.0101.ph, %bb.j ], [ %i.an, %bb.f ], [ %.0101.ph, %bb.h ] ; 2 uses
  %.1105 = phi ptr [ %.0.i132, %list_Nconc.exit ], [ %.0104185, %bb.j ], [ %.0104185, %bb.f ], [ %.0104185, %bb.h ]
  %.not115 = icmp eq ptr %.0101165, null
  br i1 %.not115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %inf_LiteralsMaxWith2Subst.exit.thread
  call void @term_Delete(ptr noundef nonnull %.0101165) #14
  call void @term_Delete(ptr noundef %.099167) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %inf_LiteralsMaxWith2Subst.exit.thread
  %i.bm = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.bm) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d
  %.2 = phi ptr [ %.1105, %bb.n ], [ %.0104185, %bb.d ] ; 7 uses
  %i.bn = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bn, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bo = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bn, %.lr.ph.preheader.i ] ; 3 uses
  %i.bp = phi i32 [ %i.bu, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bo, ptr @cont_CURRENTBINDING, align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 24
  %.val.i.i.i = load ptr, ptr %i.bq, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, i8 0, i64 20, i1 false)
  %i.bs = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr null, ptr %i.bt, align 8
  %i.bu = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bu, ptr @cont_BINDINGS, align 4
  %i.bv = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i133 = icmp eq ptr %i.bv, null
  br i1 %.not.i133, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.o
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.bw = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bx = call i32 @unify_UnifyCom(ptr noundef %i.bw, ptr noundef %8, ptr noundef %i.ad) #14
  %.not116 = icmp eq i32 %i.bx, 0
  br i1 %.not116, label %bb.z, label %bb.p

bb.p:                                             ; preds = %cont_Reset.exit
  %i.by = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.by, ptr noundef nonnull %i.a) #14
  %.val122 = load ptr, ptr %i.i, align 8
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val122, i64 %i.j
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val129 = load i32, ptr %i.cb, align 8
  %.not117 = icmp eq i32 %.val129, 0
  br i1 %.not117, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = call ptr @term_Copy(ptr noundef %4) #14
  %i.ce = call ptr @subst_Apply(ptr noundef %9, ptr noundef %i.cd) #14
  %i.cf = call ptr @subst_Apply(ptr noundef %i.cc, ptr noundef %i.ce) #14 ; 3 uses
end_hunk_8
begin_hunk_9_@inf_Lit2MParamod:bb.a
  %.val23.i143 = load i32, ptr %i.m, align 4
  %i.cn = add i32 %.val22.i142, -1
  %i.co = add i32 %i.cn, %.val23.i143
  %i.cp = icmp sgt i32 %2, %i.co
  %i.cq = zext i1 %i.cp to i32
  %i.cr = call fastcc i32 @inf_LitMaxWith2Subst(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef %i.cl, ptr noundef %9, i32 noundef %i.cq, ptr noundef %10, ptr noundef %11)
  %.not18.i144 = icmp eq i32 %i.cr, 0
  br i1 %.not18.i144, label %inf_LiteralsMaxWith2Subst.exit145.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val24.i136 = load i32, ptr %i.n, align 8
  %i.cs = and i32 %.val24.i136, 2
  %.not19.i137 = icmp eq i32 %i.cs, 0
  br i1 %.not19.i137, label %bb.u, label %inf_LiteralsMaxWith2Subst.exit145

bb.u:                                             ; preds = %bb.t
  %.val.i139 = load i32, ptr %i.b, align 8
  %.val21.i140 = load i32, ptr %i.c, align 4
  %i.ct = add i32 %.val.i139, -1
  %i.cu = add i32 %i.ct, %.val21.i140
  %i.cv = icmp sgt i32 %3, %i.cu
  %i.cw = zext i1 %i.cv to i32
  %i.cx = call fastcc i32 @inf_LitMaxWith2Subst(ptr noundef nonnull readonly %1, i32 noundef %3, ptr noundef %i.cl, ptr noundef %9, i32 noundef %i.cw, ptr noundef %10, ptr noundef %11)
  %.not20.i141 = icmp eq i32 %i.cx, 0
  br i1 %.not20.i141, label %inf_LiteralsMaxWith2Subst.exit145.thread, label %inf_LiteralsMaxWith2Subst.exit145

inf_LiteralsMaxWith2Subst.exit145:                ; preds = %bb.u, %bb.t
  %i.cy = load ptr, ptr %i.a, align 8
  %i.cz = call ptr @term_Copy(ptr noundef %i.aa) #14
  %i.da = call ptr @subst_Apply(ptr noundef %i.cy, ptr noundef %i.cz) #14 ; 2 uses
  %i.db = load ptr, ptr %i.a, align 8
  %i.dc = trunc nsw i64 %indvars.iv to i32
  %i.dd = call fastcc ptr @inf_ApplyMParamod(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, ptr noundef %8, ptr noundef %7, ptr noundef %6, ptr noundef %5, ptr noundef %i.da, ptr noundef %9, ptr noundef %i.db, ptr noundef %10, ptr noundef %11) ; 4 uses
  %.not.i146 = icmp eq ptr %i.dd, null
  br i1 %.not.i146, label %list_Nconc.exit153, label %bb.v

bb.v:                                             ; preds = %inf_LiteralsMaxWith2Subst.exit145
  %.not16.i147 = icmp eq ptr %.2, null
  br i1 %.not16.i147, label %list_Nconc.exit153, label %.preheader.i148

.preheader.i148:                                  ; preds = %bb.v, %.preheader.i148
  %.012.i149 = phi ptr [ %.012.val15.i150, %.preheader.i148 ], [ %i.dd, %bb.v ] ; 2 uses
  %.012.val15.i150 = load ptr, ptr %.012.i149, align 8 ; 2 uses
  %.not17.i151 = icmp eq ptr %.012.val15.i150, null
  br i1 %.not17.i151, label %bb.w, label %.preheader.i148, !llvm.loop !2

bb.w:                                             ; preds = %.preheader.i148
  store ptr %.2, ptr %.012.i149, align 8
  br label %list_Nconc.exit153

list_Nconc.exit153:                               ; preds = %inf_LiteralsMaxWith2Subst.exit145, %bb.v, %bb.w
  %.0.i152 = phi ptr [ %i.dd, %bb.w ], [ %.2, %inf_LiteralsMaxWith2Subst.exit145 ], [ %i.dd, %bb.v ]
  call void @term_Delete(ptr noundef %i.da) #14
  br label %inf_LiteralsMaxWith2Subst.exit145.thread

inf_LiteralsMaxWith2Subst.exit145.thread:         ; preds = %bb.q, %bb.u, %bb.s, %list_Nconc.exit153
  %.1100178 = phi ptr [ %.1100.ph, %list_Nconc.exit153 ], [ %.1100.ph, %bb.u ], [ %i.cj, %bb.q ], [ %.1100.ph, %bb.s ]
  %.1102176 = phi ptr [ %.1102.ph, %list_Nconc.exit153 ], [ %.1102.ph, %bb.u ], [ %i.cf, %bb.q ], [ %.1102.ph, %bb.s ] ; 2 uses
  %.3 = phi ptr [ %.0.i152, %list_Nconc.exit153 ], [ %.2, %bb.u ], [ %.2, %bb.q ], [ %.2, %bb.s ]
  %.not120 = icmp eq ptr %.1102176, null
  br i1 %.not120, label %bb.y, label %bb.x

bb.x:                                             ; preds = %inf_LiteralsMaxWith2Subst.exit145.thread
  call void @term_Delete(ptr noundef nonnull %.1102176) #14
  call void @term_Delete(ptr noundef %.1100178) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %inf_LiteralsMaxWith2Subst.exit145.thread
  %i.de = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.de) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %cont_Reset.exit
  %.4 = phi ptr [ %.3, %bb.y ], [ %.2, %cont_Reset.exit ]
  %i.df = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i154 = icmp eq ptr %i.df, null
  br i1 %.not1.i154, label %cont_Reset.exit160, label %.lr.ph.preheader.i155

.lr.ph.preheader.i155:                            ; preds = %bb.z
  %cont_BINDINGS.promoted.i156 = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157, %.lr.ph.preheader.i155
  %i.dg = phi ptr [ %i.dn, %.lr.ph.i157 ], [ %i.df, %.lr.ph.preheader.i155 ] ; 3 uses
  %i.dh = phi i32 [ %i.dm, %.lr.ph.i157 ], [ %cont_BINDINGS.promoted.i156, %.lr.ph.preheader.i155 ]
  store ptr %i.dg, ptr @cont_CURRENTBINDING, align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 24
  %.val.i.i.i158 = load ptr, ptr %i.di, align 8
  store ptr %.val.i.i.i158, ptr @cont_LASTBINDING, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dj, i8 0, i64 20, i1 false)
  %i.dk = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr null, ptr %i.dl, align 8
  %i.dm = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.dm, ptr @cont_BINDINGS, align 4
  %i.dn = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i159 = icmp eq ptr %i.dn, null
  br i1 %.not.i159, label %cont_Reset.exit160, label %.lr.ph.i157, !llvm.loop !0

cont_Reset.exit160:                               ; preds = %.lr.ph.i157, %bb.z
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  call void @term_Delete(ptr noundef %i.aa) #14
  call void @term_Delete(ptr noundef %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aa

bb.aa:                                            ; preds = %cont_Reset.exit160, %bb.c, %bb.b
  %.5 = phi ptr [ %.4, %cont_Reset.exit160 ], [ %.0104185, %bb.c ], [ %.0104185, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.aa, %bb.a
  %.0104.lcssa = phi ptr [ null, %bb.a ], [ %.5, %bb.aa ]
  ret ptr %.0104.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @inf_ApplyMParamod(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 -2147483648, 2147483647) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %.val3.i.i = load i32, ptr %i.a, align 8        ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %.val.i.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %.val4.i.i = load i32, ptr %i.c, align 8
  %i.d = add i32 %.val3.i.i, -1                   ; 2 uses
  %i.e = add i32 %i.d, %.val.i.i                  ; 2 uses
  %i.f = add i32 %i.e, %.val4.i.i                 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val3.i.i167 = load i32, ptr %i.g, align 8     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %.val.i.i168 = load i32, ptr %i.h, align 4      ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val4.i.i169 = load i32, ptr %i.i, align 8     ; 2 uses
  %i.j = add i32 %.val3.i.i167, -1                ; 2 uses
  %i.k = add i32 %i.j, %.val.i.i168               ; 2 uses
  %i.l = add i32 %i.k, %.val4.i.i169              ; 2 uses
  %i.m = add i32 %i.f, %.val3.i.i167
  %i.n = add i32 %i.m, %.val.i.i168
  %i.o = add i32 %i.n, %.val4.i.i169
  %i.p = tail call ptr @clause_CreateBody(i32 noundef %i.o) #14 ; 20 uses
  %.val144 = load i32, ptr %i.g, align 8
  %.val143 = load i32, ptr %i.a, align 8
  %i.q = add nsw i32 %.val143, %.val144
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i32 %i.q, ptr %i.r, align 8
  %.val140 = load i32, ptr %i.h, align 4
  %.val139 = load i32, ptr %i.b, align 4
  %i.s = add nsw i32 %.val139, %.val140
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  store i32 %i.s, ptr %i.t, align 4
  %.val151 = load i32, ptr %i.i, align 8
  %i.u = add nsw i32 %.val151, -1
  %.val150 = load i32, ptr %i.c, align 8
  %i.v = add nsw i32 %i.u, %.val150
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 %i.v, ptr %i.w, align 8
  %.not178 = icmp slt i32 %i.j, 0
  br i1 %.not178, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 56
  %i.y = getelementptr i8, ptr %i.p, i64 56
  %wide.trip.count = zext i32 %.val3.i.i167 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val157 = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val157, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val1.i = load ptr, ptr %i.ab, align 8
  %i.ac = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.ad = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.ac) #14
  %i.ae = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.ad) #14
  %i.af = tail call ptr @clause_LiteralCreate(ptr noundef %i.ae, ptr noundef nonnull %i.p) #14
  %.val163 = load ptr, ptr %i.y, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv
  store ptr %i.af, ptr %i.ag, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0128.lcssa = phi i32 [ 0, %bb.a ], [ %.val3.i.i167, %bb.b ] ; 3 uses
  %.val142 = load i32, ptr %i.a, align 8          ; 2 uses
  %.not132180 = icmp sgt i32 %.0128.lcssa, %i.k
  br i1 %.not132180, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %._crit_edge
  %i.ah = getelementptr i8, ptr %0, i64 56
  %i.ai = getelementptr i8, ptr %i.p, i64 56
  %i.aj = sext i32 %.0128.lcssa to i64
  %i.ak = sext i32 %.val142 to i64
  %i.al = add i32 %.val.i.i168, %.val3.i.i167     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph183, %bb.c
  %indvars.iv213 = phi i64 [ %i.aj, %.lr.ph183 ], [ %indvars.iv.next214, %bb.c ] ; 3 uses
  %.val156 = load ptr, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val156, i64 %indvars.iv213
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val1.i173 = load ptr, ptr %i.ao, align 8
  %i.ap = tail call ptr @term_Copy(ptr noundef %.val1.i173) #14
  %i.aq = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.ap) #14
  %i.ar = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.aq) #14
  %i.as = tail call ptr @clause_LiteralCreate(ptr noundef %i.ar, ptr noundef nonnull %i.p) #14
  %.val162 = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr [8 x i8], ptr %.val162, i64 %indvars.iv213
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.ak
  store ptr %i.as, ptr %i.au, align 8
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next214 to i32
  %exitcond216.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond216.not, label %._crit_edge184, label %bb.c, !llvm.loop !85

._crit_edge184:                                   ; preds = %bb.c, %._crit_edge
  %.1129.lcssa = phi i32 [ %.0128.lcssa, %._crit_edge ], [ %i.al, %bb.c ] ; 2 uses
  %.not133186 = icmp sgt i32 %.1129.lcssa, %i.l
  br i1 %.not133186, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %._crit_edge184
  %.val138 = load i32, ptr %i.b, align 4
  %i.av = add nsw i32 %.val138, %.val142
  %i.aw = getelementptr i8, ptr %0, i64 56
  %i.ax = getelementptr i8, ptr %i.p, i64 56
  %i.ay = zext i32 %.1129.lcssa to i64
  %i.az = zext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph190, %bb.g
  %indvars.iv217 = phi i64 [ %i.ay, %.lr.ph190 ], [ %indvars.iv.next218, %bb.g ] ; 5 uses
  %.0127188 = phi i32 [ %i.av, %.lr.ph190 ], [ %.1, %bb.g ] ; 3 uses
  %.not137 = icmp eq i64 %indvars.iv217, %i.az
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = trunc nuw i64 %indvars.iv217 to i32     ; 2 uses
  %i.bb = add nsw i32 %.0127188, %i.ba
  %.val155 = load ptr, ptr %i.aw, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val155, i64 %indvars.iv217
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %.val1.i174 = load ptr, ptr %i.be, align 8
  %i.bf = tail call ptr @term_Copy(ptr noundef %.val1.i174) #14
  %i.bg = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.bf) #14
  %i.bh = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.bg) #14
  %i.bi = tail call ptr @clause_LiteralCreate(ptr noundef %i.bh, ptr noundef %i.p) #14
  %.val161 = load ptr, ptr %i.ax, align 8
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.val161, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bl = add nsw i32 %.0127188, -1
  %.pre = trunc nuw i64 %indvars.iv217 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pre-phi = phi i32 [ %i.ba, %bb.e ], [ %.pre, %bb.f ]
  %.1 = phi i32 [ %.0127188, %bb.e ], [ %i.bl, %bb.f ]
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %.not133.not = icmp slt i32 %.pre-phi, %i.l
  br i1 %.not133.not, label %bb.d, label %._crit_edge191, !llvm.loop !86

._crit_edge191:                                   ; preds = %bb.g, %._crit_edge184
  %.val141 = load i32, ptr %i.g, align 8          ; 2 uses
  %.not134192 = icmp slt i32 %i.d, 0
  br i1 %.not134192, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %._crit_edge191
  %i.bm = getelementptr i8, ptr %1, i64 56
  %i.bn = getelementptr i8, ptr %i.p, i64 56
  %i.bo = sext i32 %.val141 to i64
  %wide.trip.count223 = zext i32 %.val3.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph195, %bb.h
  %indvars.iv220 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next221, %bb.h ] ; 3 uses
  %.val154 = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val154, i64 %indvars.iv220
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %.val1.i175 = load ptr, ptr %i.br, align 8
  %i.bs = tail call ptr @term_Copy(ptr noundef %.val1.i175) #14
  %i.bt = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.bs) #14
  %i.bu = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.bt) #14
  %i.bv = tail call ptr @clause_LiteralCreate(ptr noundef %i.bu, ptr noundef %i.p) #14
  %.val160 = load ptr, ptr %i.bn, align 8
  %i.bw = getelementptr [8 x i8], ptr %.val160, i64 %indvars.iv220
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bo
  store ptr %i.bv, ptr %i.bx, align 8
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge196, label %bb.h, !llvm.loop !87

._crit_edge196:                                   ; preds = %bb.h, %._crit_edge191
  %.3.lcssa = phi i32 [ 0, %._crit_edge191 ], [ %.val3.i.i, %bb.h ] ; 3 uses
  %.val = load i32, ptr %i.h, align 4
  %i.by = add nsw i32 %.val, %.val141             ; 2 uses
  %.not135198 = icmp sgt i32 %.3.lcssa, %i.e
  br i1 %.not135198, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %._crit_edge196
  %i.bz = getelementptr i8, ptr %1, i64 56
  %i.ca = getelementptr i8, ptr %i.p, i64 56
  %i.cb = sext i32 %.3.lcssa to i64
  %i.cc = sext i32 %i.by to i64
  %i.cd = add i32 %.val.i.i, %.val3.i.i           ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph201, %bb.i
  %indvars.iv225 = phi i64 [ %i.cb, %.lr.ph201 ], [ %indvars.iv.next226, %bb.i ] ; 3 uses
  %.val153 = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val153, i64 %indvars.iv225
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %.val1.i176 = load ptr, ptr %i.cg, align 8
  %i.ch = tail call ptr @term_Copy(ptr noundef %.val1.i176) #14
  %i.ci = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.ch) #14
  %i.cj = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.ci) #14
  %i.ck = tail call ptr @clause_LiteralCreate(ptr noundef %i.cj, ptr noundef %i.p) #14
  %.val159 = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr [8 x i8], ptr %.val159, i64 %indvars.iv225
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.cc
  store ptr %i.ck, ptr %i.cm, align 8
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %lftr.wideiv228 = trunc i64 %indvars.iv.next226 to i32
  %exitcond229.not = icmp eq i32 %i.cd, %lftr.wideiv228
  br i1 %exitcond229.not, label %._crit_edge202, label %bb.i, !llvm.loop !88

._crit_edge202:                                   ; preds = %bb.i, %._crit_edge196
  %.4.lcssa = phi i32 [ %.3.lcssa, %._crit_edge196 ], [ %i.cd, %bb.i ] ; 2 uses
  %.val149 = load i32, ptr %i.i, align 8
  %i.cn = tail call ptr @term_Copy(ptr noundef %5) #14
  %i.co = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.cn) #14 ; 3 uses
  %.not136204 = icmp sgt i32 %.4.lcssa, %i.f
  br i1 %.not136204, label %._crit_edge202.._crit_edge208_crit_edge, label %.lr.ph207

._crit_edge202.._crit_edge208_crit_edge:          ; preds = %._crit_edge202
  %.pre234 = sext i32 %4 to i64
  br label %._crit_edge208

.lr.ph207:                                        ; preds = %._crit_edge202
  %i.cp = getelementptr i8, ptr %1, i64 56
  %i.cq = icmp eq ptr %6, %7
  %i.cr = add i32 %i.by, -1
  %i.cs = add i32 %i.cr, %.val149
  %i.ct = getelementptr i8, ptr %i.p, i64 56
  %i.cu = sext i32 %.4.lcssa to i64
  %i.cv = sext i32 %i.cs to i64
  %i.cw = sext i32 %i.f to i64
  %sext = sext i32 %4 to i64                      ; 2 uses
  %sext232 = sext i32 %3 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph207, %bb.r
  %indvars.iv230 = phi i64 [ %i.cu, %.lr.ph207 ], [ %indvars.iv.next231, %bb.r ] ; 6 uses
  %i.cx = icmp eq i64 %indvars.iv230, %sext232
  br i1 %i.cx, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = tail call ptr @term_Copy(ptr noundef %8) #14
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cz = tail call ptr @term_Copy(ptr noundef %6) #14 ; 2 uses
  %i.da = tail call i32 @term_ReplaceSubtermBy(ptr noundef %i.cz, ptr noundef %7, ptr noundef %8) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ %i.cy, %bb.l ], [ %i.cz, %bb.m ]
  %i.db = load i32, ptr @fol_EQUALITY, align 4
  %i.dc = tail call ptr @term_Copy(ptr noundef %i.co) #14
  %i.dd = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %.0) #14
  %i.de = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.dd) #14
  %i.df = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dg, align 8
  store ptr null, ptr %i.df, align 8
  %i.dh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dc, ptr %i.di, align 8
  store ptr %i.df, ptr %i.dh, align 8
  %i.dj = tail call ptr @term_Create(i32 noundef %i.db, ptr noundef nonnull %i.dh) #14
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.dk = icmp eq i64 %indvars.iv230, %sext
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dl = load i32, ptr @fol_EQUALITY, align 4
  %i.dm = tail call ptr @term_Copy(ptr noundef %i.co) #14
  %i.dn = tail call ptr @term_Copy(ptr noundef %9) #14
  %i.do = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dn, ptr %i.dp, align 8
  store ptr null, ptr %i.do, align 8
  %i.dq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dm, ptr %i.dr, align 8
  store ptr %i.do, ptr %i.dq, align 8
  %i.ds = tail call ptr @term_Create(i32 noundef %i.dl, ptr noundef nonnull %i.dq) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.val152 = load ptr, ptr %i.cp, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.val152, i64 %indvars.iv230
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 24
  %.val1.i177 = load ptr, ptr %i.dv, align 8
  %i.dw = tail call ptr @term_Copy(ptr noundef %.val1.i177) #14
  %i.dx = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.dw) #14
  %i.dy = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.dx) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.0126 = phi ptr [ %i.dj, %bb.n ], [ %i.ds, %bb.p ], [ %i.dy, %bb.q ]
  %i.dz = tail call ptr @clause_LiteralCreate(ptr noundef %.0126, ptr noundef %i.p) #14
  %.val158 = load ptr, ptr %i.ct, align 8
  %i.ea = getelementptr [8 x i8], ptr %.val158, i64 %indvars.iv230
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.cv
  store ptr %i.dz, ptr %i.eb, align 8
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %.not136.not = icmp slt i64 %indvars.iv230, %i.cw
  br i1 %.not136.not, label %bb.j, label %._crit_edge208, !llvm.loop !89

._crit_edge208:                                   ; preds = %bb.r, %._crit_edge202.._crit_edge208_crit_edge
  %.pre-phi235 = phi i64 [ %.pre234, %._crit_edge202.._crit_edge208_crit_edge ], [ %sext, %bb.r ]
  tail call void @term_Delete(ptr noundef %i.co) #14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i32 5, ptr %i.ec, align 4
  %.val164 = load i32, ptr %1, align 8
  %i.ed = sext i32 %.val164 to i64
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ee, ptr %i.ei, align 8
  store ptr %i.eg, ptr %i.eh, align 8
  store ptr %i.eh, ptr %i.ef, align 8
  %i.ej = inttoptr i64 %.pre-phi235 to ptr
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ej, ptr %i.en, align 8
  store ptr %i.el, ptr %i.em, align 8
  store ptr %i.em, ptr %i.ek, align 8
  tail call fastcc void @clause_SetDataFromParents(ptr noundef %i.p, ptr noundef nonnull %1, i32 noundef %3, ptr noundef %0, i32 noundef %4, ptr noundef %12, ptr noundef %13)
  %i.eo = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.p, ptr %i.ep, align 8
  store ptr null, ptr %i.eo, align 8
  ret ptr %i.eo
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_LitMaxWith2Subst(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val60 = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %.val60, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.val63 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val63, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not48 = icmp ne i32 %4, 0                     ; 2 uses
  %i.f = and i32 %.val63, 2
  %.not49 = icmp eq i32 %i.f, 0
  %or.cond73 = and i1 %.not48, %.not49
  br i1 %or.cond73, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 68
  %.val = load i32, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val64 = load i32, ptr %i.h, align 8
  %i.i = add i32 %.val64, %.val                   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq ptr %3, null
  %.not72 = icmp eq ptr %2, null
  %or.cond74 = and i1 %.not72, %.not71
  br i1 %or.cond74, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3.i.i = load i32, ptr %i.k, align 8
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %.val3.i.i                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 24
  %.val1.i = load ptr, ptr %i.n, align 8
  %i.o = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.p = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.o) #14
  %i.q = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.p) #14 ; 4 uses
  %.val56 = load i32, ptr %i.k, align 8           ; 2 uses
  %.not5276 = icmp sgt i32 %.val56, %i.m
end_hunk_9
begin_hunk_10_@inf_HyperResolvents:bb.a
.lr.ph.i115:                                      ; preds = %.lr.ph.i115, %.lr.ph.preheader.i
  %i.dt = phi ptr [ %i.ea, %.lr.ph.i115 ], [ %i.ds, %.lr.ph.preheader.i ] ; 3 uses
  %i.du = phi i32 [ %i.dz, %.lr.ph.i115 ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.dt, ptr @cont_CURRENTBINDING, align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 24
  %.val.i.i.i116 = load ptr, ptr %i.dv, align 8
  store ptr %.val.i.i.i116, ptr @cont_LASTBINDING, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dw, i8 0, i64 20, i1 false)
  %i.dx = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store ptr null, ptr %i.dy, align 8
  %i.dz = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dz, ptr @cont_BINDINGS, align 4
  %i.ea = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i117 = icmp eq ptr %i.ea, null
  br i1 %.not.i117, label %cont_Reset.exit, label %.lr.ph.i115, !llvm.loop !0

cont_Reset.exit:                                  ; preds = %.lr.ph.i115, %bb.y
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.eb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ec = call ptr @subst_Copy(ptr noundef %1) #14
  %i.ed = call ptr @subst_Compose(ptr noundef %i.eb, ptr noundef %i.ec) #14
  store ptr %i.ed, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.eb) #14
  store ptr %.val84, ptr %9, align 8
  store ptr %i.cy, ptr %i.ah, align 8
  %i.ee = load ptr, ptr %i.b, align 8
  store ptr %i.ee, ptr %i.ai, align 8
  %i.ef = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %9, ptr %i.eg, align 8
  store ptr %.173136, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.a, align 8
  %i.ei = call fastcc ptr @inf_HyperResolvents(ptr noundef %0, ptr noundef %i.eh, ptr noundef %.val.i93, i32 noundef %i.de, ptr noundef nonnull %i.ef, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8) ; 4 uses
  %.not.i118 = icmp eq ptr %i.ei, null
  br i1 %.not.i118, label %list_Nconc.exit, label %bb.z

bb.z:                                             ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.1137, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.ei, %bb.z ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.aa, label %.preheader.i, !llvm.loop !2

bb.aa:                                            ; preds = %.preheader.i
  store ptr %.1137, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.z, %bb.aa
  %.0.i119 = phi ptr [ %i.ei, %bb.aa ], [ %.1137, %cont_Reset.exit ], [ %i.ei, %bb.z ] ; 2 uses
  %i.ej = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.ej) #14
  %i.ek = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.ek) #14
  call void @clause_Delete(ptr noundef nonnull %i.cv) #14
  %.val.i120 = load ptr, ptr %i.ef, align 8       ; 2 uses
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = load i64, ptr @memory_FREEDBYTES, align 8
  %i.eq = add i64 %i.ep, %i.eo
  store i64 %i.eq, ptr @memory_FREEDBYTES, align 8
  %i.er = load ptr, ptr %i.el, align 8
  store ptr %i.er, ptr %i.ef, align 8
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %i.ef, ptr %i.es, align 8
  %.val.i121 = load ptr, ptr %.067138, align 8    ; 2 uses
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ey = add i64 %i.ex, %i.ew
  store i64 %i.ey, ptr @memory_FREEDBYTES, align 8
  %i.ez = load ptr, ptr %i.et, align 8
  store ptr %i.ez, ptr %.067138, align 8
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.067138, ptr %i.fa, align 8
  %.not129 = icmp eq ptr %.val.i121, null
  br i1 %.not129, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %list_Nconc.exit, %bb.g, %inf_GetHyperResolutionPartnerLits.exit
  %.173.lcssa = phi ptr [ %.072, %inf_GetHyperResolutionPartnerLits.exit ], [ %.072, %bb.g ], [ %.val.i120, %list_Nconc.exit ]
  %.1.lcssa = phi ptr [ %.068, %inf_GetHyperResolutionPartnerLits.exit ], [ %.068, %bb.g ], [ %.0.i119, %list_Nconc.exit ] ; 2 uses
  br i1 %.not77, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %._crit_edge
  %.val88 = load i32, ptr %i.ag, align 8
  %i.fb = load i32, ptr @fol_EQUALITY, align 4
  %.not130 = icmp eq i32 %.val88, %i.fb
  br i1 %.not130, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.val.i122 = load ptr, ptr %i.aj, align 8       ; 2 uses
  %i.fc = getelementptr i8, ptr %.val.i122, i64 8 ; 2 uses
  %.val.val.i = load ptr, ptr %i.fc, align 8
  %.val6.val.i123 = load ptr, ptr %.val.i122, align 8
  %i.fd = getelementptr i8, ptr %.val6.val.i123, i64 8
  %.val6.val.val.i = load ptr, ptr %i.fd, align 8
  store ptr %.val6.val.val.i, ptr %i.fc, align 8
  %.val7.i = load ptr, ptr %i.aj, align 8
  %.val5.i = load ptr, ptr %.val7.i, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  store ptr %.val.val.i, ptr %i.fe, align 8
  br label %bb.g

bb.ad:                                            ; preds = %._crit_edge, %bb.ab
  %.not6.i = icmp eq ptr %.val.i93, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.ad, %.lr.ph.i124
  %.07.i125 = phi ptr [ %.0.val.i126, %.lr.ph.i124 ], [ %.val.i93, %bb.ad ] ; 3 uses
  %.0.val.i126 = load ptr, ptr %.07.i125, align 8 ; 2 uses
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fk = add i64 %i.fj, %i.fi
  store i64 %i.fk, ptr @memory_FREEDBYTES, align 8
  %i.fl = load ptr, ptr %i.ff, align 8
  store ptr %i.fl, ptr %.07.i125, align 8
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i125, ptr %i.fm, align 8
  %.not.i127 = icmp eq ptr %.0.val.i126, null
  br i1 %.not.i127, label %list_Delete.exit, label %.lr.ph.i124, !llvm.loop !6

list_Delete.exit:                                 ; preds = %.lr.ph.i124, %bb.ad
  call void @term_Delete(ptr noundef %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %clause_LiteralGetIndex.exit, %.split, %list_Delete.exit
  %.171 = phi ptr [ %.1.lcssa, %list_Delete.exit ], [ %i.o, %.split ], [ null, %clause_LiteralGetIndex.exit ]
  ret ptr %.171
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_BuildHyperResolvent(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val91 = load i32, ptr %i.c, align 8           ; 3 uses
  %.not.not157 = icmp sgt i32 %.val91, 0
  br i1 %.not.not157, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %.val91 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit ] ; 2 uses
  %.0139158 = phi ptr [ null, %.lr.ph ], [ %i.m, %clause_GetLiteralAtom.exit ]
  %.val85 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val85, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val1.i = load ptr, ptr %i.g, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.j, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.k = tail call ptr @term_Copy(ptr noundef %.0.i.i) #14
  %i.l = tail call ptr @subst_Apply(ptr noundef %1, ptr noundef %i.k) #14
  %i.m = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store ptr %.0139158, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %clause_GetLiteralAtom.exit
  %.val3.i.i.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val3.i.i = phi i32 [ %.val91, %bb.a ], [ %.val3.i.i.pre, %._crit_edge.loopexit ] ; 4 uses
  %.0139.lcssa = phi ptr [ null, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %.val.i.i = load i32, ptr %i.o, align 4         ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.p, align 8        ; 2 uses
  %i.q = add i32 %.val.i.i, %.val3.i.i            ; 2 uses
  %i.r = add i32 %i.q, -1
  %i.s = add i32 %i.r, %.val4.i.i
  %.not74160 = icmp sgt i32 %i.q, %i.s
  br i1 %.not74160, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %._crit_edge
  %i.t = getelementptr i8, ptr %0, i64 56
  %i.u = sext i32 %.val3.i.i to i64
  %i.v = sext i32 %.val.i.i to i64
  %i.w = add nsw i64 %i.u, %i.v
  %6 = add i32 %.val4.i.i, %.val3.i.i
  %i.x = add i32 %6, %.val.i.i
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph164, %clause_GetLiteralAtom.exit99
  %indvars.iv197 = phi i64 [ %i.w, %.lr.ph164 ], [ %indvars.iv.next198, %clause_GetLiteralAtom.exit99 ] ; 2 uses
  %.0136161 = phi ptr [ null, %.lr.ph164 ], [ %i.ag, %clause_GetLiteralAtom.exit99 ]
  %.val84 = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds [8 x i8], ptr %.val84, i64 %indvars.iv197
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %.val1.i93 = load ptr, ptr %i.aa, align 8       ; 3 uses
  %.val5.val.i.i94 = load i32, ptr %.val1.i93, align 8
  %i.ab = load i32, ptr @fol_NOT, align 4
  %.not.i.i95 = icmp eq i32 %.val5.val.i.i94, %i.ab
  br i1 %.not.i.i95, label %bb.e, label %clause_GetLiteralAtom.exit99

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.val1.i93, i64 16
  %.val6.i.i97 = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val6.i.i97, i64 8
  %.val6.val.i.i98 = load ptr, ptr %i.ad, align 8
  br label %clause_GetLiteralAtom.exit99

clause_GetLiteralAtom.exit99:                     ; preds = %bb.d, %bb.e
  %.0.i.i96 = phi ptr [ %.val6.val.i.i98, %bb.e ], [ %.val1.i93, %bb.d ]
  %i.ae = tail call ptr @term_Copy(ptr noundef %.0.i.i96) #14
  %i.af = tail call ptr @subst_Apply(ptr noundef %1, ptr noundef %i.ae) #14
  %i.ag = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  store ptr %.0136161, ptr %i.ag, align 8
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next198 to i32
  %exitcond200.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond200.not, label %._crit_edge165.loopexit, label %bb.d, !llvm.loop !100

._crit_edge165.loopexit:                          ; preds = %clause_GetLiteralAtom.exit99
  %.val80.pre = load i32, ptr %i.c, align 8
  %.val81.pre = load i32, ptr %i.o, align 4
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit, %._crit_edge
  %.val81 = phi i32 [ %.val.i.i, %._crit_edge ], [ %.val81.pre, %._crit_edge165.loopexit ] ; 2 uses
  %.val80 = phi i32 [ %.val3.i.i, %._crit_edge ], [ %.val80.pre, %._crit_edge165.loopexit ] ; 4 uses
  %.0136.lcssa = phi ptr [ null, %._crit_edge ], [ %i.ag, %._crit_edge165.loopexit ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8
  %.val88 = load i32, ptr %i.ai, align 8          ; 2 uses
  %i.aj = add i32 %.val80, -1
  %i.ak = add i32 %i.aj, %.val81
  %.not75173 = icmp sgt i32 %.val80, %i.ak
  br i1 %.not75173, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %._crit_edge165
  %i.al = getelementptr i8, ptr %0, i64 56
  %.not167 = icmp eq ptr %2, null
  %i.am = sext i32 %.val80 to i64
  %i.an = add i32 %.val81, %.val80
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph182, %inf_CopyHyperElectron.exit
  %indvars.iv201 = phi i64 [ %i.am, %.lr.ph182 ], [ %indvars.iv.next202, %inf_CopyHyperElectron.exit ] ; 3 uses
  %.067180 = phi i32 [ %.val88, %.lr.ph182 ], [ %i.bf, %inf_CopyHyperElectron.exit ]
  %.071178 = phi ptr [ null, %.lr.ph182 ], [ %i.bx, %inf_CopyHyperElectron.exit ]
  %.072177 = phi ptr [ null, %.lr.ph182 ], [ %i.br, %inf_CopyHyperElectron.exit ]
  %.073176 = phi ptr [ %i.a, %.lr.ph182 ], [ %i.bg, %inf_CopyHyperElectron.exit ]
  %.1137175 = phi ptr [ %.0136.lcssa, %.lr.ph182 ], [ %.4, %inf_CopyHyperElectron.exit ] ; 2 uses
  %.1140174 = phi ptr [ %.0139.lcssa, %.lr.ph182 ], [ %.4143, %inf_CopyHyperElectron.exit ] ; 2 uses
  %.val83 = load ptr, ptr %i.al, align 8
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val83, i64 %indvars.iv201
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  br i1 %.not167, label %._crit_edge171.thread, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.f, %bb.g
  %.070168 = phi ptr [ %.070.val86, %bb.g ], [ %2, %bb.f ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.070168, i64 8
  %.070.val = load ptr, ptr %i.aq, align 8        ; 4 uses
  %i.ar = load ptr, ptr %.070.val, align 8
  %i.as = icmp eq ptr %i.ar, %i.ap
  br i1 %i.as, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph170
  %.070.val86 = load ptr, ptr %.070168, align 8   ; 2 uses
  %.not = icmp eq ptr %.070.val86, null
  br i1 %.not, label %.thread, label %.lr.ph170, !llvm.loop !101

.thread:                                          ; preds = %bb.g
  %.pre = load ptr, ptr %.070.val, align 8
  %i.at = icmp eq ptr %.pre, %i.ap
  br i1 %i.at, label %.thread.thread, label %._crit_edge171.thread

._crit_edge171.thread:                            ; preds = %bb.f, %.thread
  %i.au = load ptr, ptr @stdout, align 8
  %i.av = tail call i32 @fflush(ptr noundef %i.au) ; 0 uses
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3637) #15 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.11) #14
  %i.ay = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 132, i64 1, ptr %i.ay) #16 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.thread:                                   ; preds = %.lr.ph170, %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %.070.val, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 3 uses
  %.val92 = load ptr, ptr %i.bb, align 8          ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.070.val, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %.val92, i64 8
  %.val87 = load i32, ptr %i.be, align 8
  %i.bf = tail call i32 @misc_Max(i32 noundef %.067180, i32 noundef %.val87) #14 ; 2 uses
  %i.bg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val92, ptr %i.bh, align 8
  store ptr %.073176, ptr %i.bg, align 8
  %.val90 = load i32, ptr %0, align 8
  %i.bi = sext i32 %.val90 to i64
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  store ptr %.072177, ptr %i.bk, align 8
  %i.bm = inttoptr i64 %indvars.iv201 to ptr
  %i.bn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %i.bo, align 8
  store ptr %.071178, ptr %i.bn, align 8
  %.val89 = load i32, ptr %.val92, align 8
  %i.bp = sext i32 %.val89 to i64
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8
  store ptr %i.bk, ptr %i.br, align 8
  %.val4.i = load ptr, ptr %i.bb, align 8
  %i.bt = getelementptr i8, ptr %.val4.i, i64 56
  %.val.i = load ptr, ptr %i.bt, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.thread
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.thread.thread ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i = icmp eq ptr %i.bv, %i.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %clause_LiteralGetIndex.exit, label %bb.h, !llvm.loop !3

clause_LiteralGetIndex.exit:                      ; preds = %bb.h
  %i.bw = inttoptr i64 %indvars.iv.i to ptr
  %i.bx = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.by, align 8
  store ptr %i.bn, ptr %i.bx, align 8
  %.val4.i100 = load ptr, ptr %i.bb, align 8
  %i.bz = getelementptr i8, ptr %.val4.i100, i64 56
  %.val.i101 = load ptr, ptr %i.bz, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %clause_LiteralGetIndex.exit
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i104, %bb.i ], [ 0, %clause_LiteralGetIndex.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.i101, i64 %indvars.iv.i102
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i103 = icmp eq ptr %i.cb, %i.ba
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1
  br i1 %.not.i103, label %clause_LiteralGetIndex.exit105, label %bb.i, !llvm.loop !3

clause_LiteralGetIndex.exit105:                   ; preds = %bb.i
  %i.cc = getelementptr i8, ptr %.val92, i64 64
  %.val3.i.i.i = load i32, ptr %i.cc, align 8     ; 2 uses
  %i.cd = getelementptr i8, ptr %.val92, i64 68
  %.val.i.i.i = load i32, ptr %i.cd, align 4
  %i.ce = getelementptr i8, ptr %.val92, i64 72
  %.val4.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = add i32 %.val3.i.i.i, -1                ; 2 uses
  %i.cg = add i32 %.val4.i.i.i, %.val.i.i.i       ; 2 uses
  %i.ch = add i32 %i.cg, %i.cf
  %.not23.i = icmp slt i32 %i.ch, 0
  br i1 %.not23.i, label %inf_CopyHyperElectron.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clause_LiteralGetIndex.exit105
  %i.ci = getelementptr i8, ptr %.val92, i64 56
  %i.cj = sext i32 %i.cf to i64
  %i.ck = add i32 %i.cg, %.val3.i.i.i
  %wide.trip.count.i = zext i32 %i.ck to i64
  br label %bb.j

bb.j:                                             ; preds = %clause_GetLiteralAtom.exit.i.cont, %.lr.ph.i
  %.2141 = phi ptr [ %.1140174, %.lr.ph.i ], [ %.3142, %clause_GetLiteralAtom.exit.i.cont ] ; 3 uses
  %.2138 = phi ptr [ %.1137175, %.lr.ph.i ], [ %.3, %clause_GetLiteralAtom.exit.i.cont ] ; 3 uses
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i108, %clause_GetLiteralAtom.exit.i.cont ] ; 4 uses
  %.not20.i = icmp eq i64 %indvars.iv.i106, %indvars.iv.i102
  br i1 %.not20.i, label %clause_GetLiteralAtom.exit.i.cont, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i107 = load ptr, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val.i107, i64 %indvars.iv.i106
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8       ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val1.i.i, align 8
  %i.co = load i32, ptr @fol_NOT, align 4
end_hunk_10
