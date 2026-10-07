Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-sort?download=true
inline.NumInlined: 797
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fol_NOT = external local_unnamed_addr global i32, align 4
@symbol_TYPEMASK = external local_unnamed_addr constant i32, align 4
@symbol_SIGNATURE = external local_unnamed_addr global ptr, align 8
@symbol_TYPESTATBITS = external local_unnamed_addr constant i32, align 4
@cont_LEFTCONTEXT = external local_unnamed_addr global ptr, align 8
@cont_RIGHTCONTEXT = external local_unnamed_addr global ptr, align 8
@cont_BINDINGS = external local_unnamed_addr global i32, align 4
@cont_LASTBINDING = external local_unnamed_addr global ptr, align 8
@cont_CURRENTBINDING = external local_unnamed_addr global ptr, align 8
@cont_STACKPOINTER = external local_unnamed_addr global i32, align 4
@cont_INDEXVARSCANNER = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/SPASS/rules-sort.c\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\0A In inf_BuildConstraintHyperResolvent: Unification failed.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@clause_CLAUSECOUNTER = external local_unnamed_addr global i32, align 4
@memory_OFFSET = external local_unnamed_addr global i32, align 4
@memory_BIGBLOCKS = external local_unnamed_addr global ptr, align 8
@memory_MARKSIZE = external local_unnamed_addr global i32, align 4
@memory_FREEDBYTES = external local_unnamed_addr global i64, align 8
@memory_MAXMEM = external local_unnamed_addr global i64, align 8
@memory_ARRAY = external local_unnamed_addr global [0 x ptr], align 8
@memory_ALIGN = external local_unnamed_addr constant i32, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"\0AT_k = \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\0AS_k =\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0ASOJU: \00", align 1
@stack_POINTER = external local_unnamed_addr global i32, align 4
@stack_STACK = external local_unnamed_addr global [10000 x ptr], align 16
@cont_STACK = external local_unnamed_addr global [1000 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardSortResolution(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not189 = icmp sgt i32 %i.f, %i.h
  br i1 %.not189, label %._crit_edge194, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4  ; 2 uses
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %.not85 = icmp eq i32 %3, 0
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %6 = add i32 %.val4.i.i, %.val.i.i
  %i.o = add i32 %6, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph193, %clause_LiteralIsSort.exit.thread
  %indvars.iv197 = phi i64 [ %i.n, %.lr.ph193 ], [ %indvars.iv.next198, %clause_LiteralIsSort.exit.thread ] ; 3 uses
  %.0191 = phi ptr [ null, %.lr.ph193 ], [ %.6, %clause_LiteralIsSort.exit.thread ] ; 7 uses
  %.val90 = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %.val90, i64 %indvars.iv197
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val99 = load ptr, ptr %i.r, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val99, align 8   ; 2 uses
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.s
  %.val100 = load i32, ptr %i.q, align 8
  %i.t = and i32 %.val100, 2
  %.not77 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.u = getelementptr i8, ptr %.val99, i64 16
  %.val6.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.v, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i163165 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val99, %clause_LiteralAtom.exit.thread ]
  %.val.i.i111 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i111, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.w = sub nsw i32 0, %.val.i.i111              ; 2 uses
  %i.x = and i32 %i.j, %i.w
  %.not.i112 = icmp eq i32 %i.x, 2
  br i1 %.not.i112, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.y = lshr i32 %i.w, %i.k
  %i.z = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not168 = icmp eq i32 %i.ae, 1
  br i1 %.not168, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.af = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ag = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ah = call ptr @st_GetUnifier(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull %.0.i163165) #12 ; 2 uses
  %.not169183 = icmp eq ptr %i.ah, null
  br i1 %.not169183, label %clause_LiteralIsSort.exit.thread, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %bb.d
  %i.ai = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.q, i64 1
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %term_IsAtom.exit.thread
  %.1185 = phi ptr [ %.5, %term_IsAtom.exit.thread ], [ %.0191, %.lr.ph187.preheader ] ; 5 uses
  %.076184 = phi ptr [ %.val.i158, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph187.preheader ] ; 4 uses
  %i.aj = getelementptr i8, ptr %.076184, i64 8
  %.076.val92 = load ptr, ptr %i.aj, align 8      ; 3 uses
  %.val102 = load i32, ptr %.076.val92, align 8   ; 2 uses
  %.not.i.i113 = icmp sgt i32 %.val102, -1
  br i1 %.not.i.i113, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %.lr.ph187
  %i.ak = sub nsw i32 0, %.val102
  %i.al = and i32 %i.j, %i.ak
  %.not170 = icmp eq i32 %i.al, 2
  br i1 %.not170, label %bb.e, label %term_IsAtom.exit.thread

bb.e:                                             ; preds = %term_IsAtom.exit
  %i.am = getelementptr i8, ptr %.076.val92, i64 16
  %.val95 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.an, align 8
  %.val103 = load i32, ptr %.val95.val, align 8
  %i.ao = icmp slt i32 %.val103, 1
  br i1 %i.ao, label %bb.f, label %term_IsAtom.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.076.val92) #12 ; 2 uses
  %.not171177 = icmp eq ptr %i.ap, null
  br i1 %.not171177, label %term_IsAtom.exit.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.f, %list_Delete.exit157
  %.2179 = phi ptr [ %.4, %list_Delete.exit157 ], [ %.1185, %bb.f ] ; 6 uses
  %.075178 = phi ptr [ %.075.val108, %list_Delete.exit157 ], [ %i.ap, %bb.f ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.075178, i64 8
  %.075.val = load ptr, ptr %i.aq, align 8        ; 4 uses
  %i.ar = getelementptr i8, ptr %.075.val, i64 16
  %.val104 = load ptr, ptr %i.ar, align 8         ; 6 uses
  %i.as = getelementptr i8, ptr %.val104, i64 56  ; 2 uses
  %.val.i = load ptr, ptr %i.as, align 8          ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph181
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph181 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i115 = icmp eq ptr %i.au, %.075.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i115, label %clause_LiteralGetIndex.exit, label %bb.g, !llvm.loop !0

clause_LiteralGetIndex.exit:                      ; preds = %bb.g
  %i.av = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aw = getelementptr i8, ptr %.val104, i64 64
  %.val105 = load i32, ptr %i.aw, align 8         ; 3 uses
  %i.ax = icmp sgt i32 %.val105, %i.av
  br i1 %i.ax, label %bb.h, label %list_Delete.exit157

bb.h:                                             ; preds = %clause_LiteralGetIndex.exit
  %i.ay = getelementptr i8, ptr %.val104, i64 48
  %.val106 = load i32, ptr %i.ay, align 8
  %i.az = and i32 %.val106, 1
  %.not83 = icmp eq i32 %i.az, 0
  br i1 %.not83, label %list_Delete.exit157, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %.075.val, i64 24
  %.val98 = load ptr, ptr %i.ba, align 8          ; 3 uses
  %.val5.val.i116 = load i32, ptr %.val98, align 8
  %i.bb = load i32, ptr @fol_NOT, align 4
  %.not.i117 = icmp eq i32 %.val5.val.i116, %i.bb
  br i1 %.not.i117, label %bb.j, label %clause_LiteralAtom.exit121

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %.val98, i64 16
  %.val6.i119 = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.val6.i119, i64 8
  %.val6.val.i120 = load ptr, ptr %i.bd, align 8
  br label %clause_LiteralAtom.exit121

clause_LiteralAtom.exit121:                       ; preds = %bb.i, %bb.j
  %.0.i118 = phi ptr [ %.val6.val.i120, %bb.j ], [ %.val98, %bb.i ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %clause_LiteralAtom.exit121
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i126, %bb.k ], [ 0, %clause_LiteralAtom.exit121 ] ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i124
  %i.bf = load ptr, ptr %i.be, align 8
  %.not.i125 = icmp eq ptr %i.bf, %.075.val
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i124, 1
  br i1 %.not.i125, label %clause_LiteralGetIndex.exit127, label %bb.k, !llvm.loop !0

clause_LiteralGetIndex.exit127:                   ; preds = %bb.k
  %i.bg = inttoptr i64 %indvars.iv.i124 to ptr
  %i.bh = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  store ptr null, ptr %i.bh, align 8
  %.not84.not172 = icmp sgt i32 %.val105, 0
  br i1 %.not84.not172, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %clause_LiteralGetIndex.exit127
  %i.bj = getelementptr i8, ptr %.0.i118, i64 16
  %wide.trip.count = zext nneg i32 %.val105 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.070175 = phi ptr [ null, %.lr.ph ], [ %.171, %bb.p ] ; 3 uses
  %.072174 = phi ptr [ %i.bh, %.lr.ph ], [ %.173, %bb.p ] ; 3 uses
  %.not87 = icmp eq i64 %indvars.iv, %indvars.iv.i124
  br i1 %.not87, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val89 = load ptr, ptr %i.as, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %.val97 = load ptr, ptr %i.bm, align 8          ; 3 uses
  %.val5.val.i128 = load i32, ptr %.val97, align 8
  %i.bn = load i32, ptr @fol_NOT, align 4
  %.not.i129 = icmp eq i32 %.val5.val.i128, %i.bn
  br i1 %.not.i129, label %bb.n, label %clause_LiteralAtom.exit133

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %.val97, i64 16
  %.val6.i131 = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.val6.i131, i64 8
  %.val6.val.i132 = load ptr, ptr %i.bp, align 8
  br label %clause_LiteralAtom.exit133

clause_LiteralAtom.exit133:                       ; preds = %bb.m, %bb.n
  %.0.i130 = phi ptr [ %.val6.val.i132, %bb.n ], [ %.val97, %bb.m ]
  %i.bq = getelementptr i8, ptr %.0.i130, i64 16
  %.val94 = load ptr, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.br, align 8
end_hunk_0
begin_hunk_1_@inf_ForwardSortResolution:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val52 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add nsw i32 %.val52, -1                  ; 2 uses
  %.not76 = icmp sgt i32 %.val52, 0
  br i1 %.not76, label %.lr.ph, label %list_Delete.exit75

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val55 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = load i32, ptr @fol_NOT, align 4          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %.03777 = phi i32 [ 0, %.lr.ph ], [ %.138, %clause_GetLiteralAtom.exit ] ; 2 uses
  %i.e = zext nneg i32 %.03777 to i64             ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.d
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.j, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.0.i.i, i64 16
  %.val50 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.l, align 8
  %.val51 = load i32, ptr %.val50.val, align 8
  %i.m = icmp sgt i32 %.val51, 0                  ; 3 uses
  %i.n = zext i1 %i.m to i32
  %.138 = add nuw nsw i32 %.03777, %i.n           ; 4 uses
  %.not = icmp slt i32 %.138, %.val52
  %or.cond = and i1 %.not, %i.m
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !32

.critedge:                                        ; preds = %clause_GetLiteralAtom.exit
  br i1 %i.m, label %list_Delete.exit75, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = zext nneg i32 %.138 to i64               ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i56 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i57 = load i32, ptr %.val1.i56, align 8
  %.not.i.i58 = icmp eq i32 %.val5.val.i.i57, %i.d
  br i1 %.not.i.i58, label %bb.e, label %clause_GetLiteralAtom.exit62

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.val1.i56, i64 16
  %.val6.i.i60 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val6.i.i60, i64 8
  %.val6.val.i.i61 = load ptr, ptr %i.t, align 8
  br label %clause_GetLiteralAtom.exit62

clause_GetLiteralAtom.exit62:                     ; preds = %bb.d, %bb.e
  %.0.i.i59 = phi ptr [ %.val6.val.i.i61, %bb.e ], [ %.val1.i56, %bb.d ]
  %i.u = inttoptr i64 %i.o to ptr
  %i.v = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8
  store ptr null, ptr %i.v, align 8
  %.not45.not81 = icmp slt i32 %.138, %i.b
  br i1 %.not45.not81, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %clause_GetLiteralAtom.exit62
  %i.x = getelementptr i8, ptr %.0.i.i59, i64 16
  %wide.trip.count = zext i32 %i.b to i64
  %.pre87 = load i32, ptr @fol_NOT, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph84, %bb.i
  %i.y = phi i32 [ %.pre87, %.lr.ph84 ], [ %i.al, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.e, %.lr.ph84 ], [ %indvars.iv.next, %bb.i ]
  %.03982 = phi ptr [ %i.v, %.lr.ph84 ], [ %.140, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.val53 = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val1.i63 = load ptr, ptr %i.ab, align 8       ; 3 uses
  %.val5.val.i.i64 = load i32, ptr %.val1.i63, align 8
  %.not.i.i65 = icmp eq i32 %.val5.val.i.i64, %i.y
  br i1 %.not.i.i65, label %bb.g, label %clause_GetLiteralAtom.exit69

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %.val1.i63, i64 16
  %.val6.i.i67 = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val6.i.i67, i64 8
  %.val6.val.i.i68 = load ptr, ptr %i.ad, align 8
  br label %clause_GetLiteralAtom.exit69

clause_GetLiteralAtom.exit69:                     ; preds = %bb.f, %bb.g
  %.0.i.i66 = phi ptr [ %.val6.val.i.i68, %bb.g ], [ %.val1.i63, %bb.f ]
  %i.ae = getelementptr i8, ptr %.0.i.i66, i64 16
  %.val49 = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.val49, i64 8
  %.val49.val = load ptr, ptr %i.af, align 8
  %.val = load ptr, ptr %i.x, align 8
  %i.ag = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ag, align 8
  %i.ah = icmp eq ptr %.val49.val, %.val.val
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %clause_GetLiteralAtom.exit69
  %i.ai = inttoptr i64 %indvars.iv.next to ptr
  %i.aj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  store ptr %.03982, ptr %i.aj, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %clause_GetLiteralAtom.exit69, %bb.h
  %i.al = phi i32 [ %.pre, %bb.h ], [ %i.y, %clause_GetLiteralAtom.exit69 ]
  %.140 = phi ptr [ %i.aj, %bb.h ], [ %.03982, %clause_GetLiteralAtom.exit69 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit62
  %.039.lcssa = phi ptr [ %i.v, %clause_GetLiteralAtom.exit62 ], [ %.140, %bb.i ] ; 5 uses
  %i.am = tail call ptr @list_Copy(ptr noundef %.039.lcssa) #12 ; 3 uses
  %.not46 = icmp eq i32 %3, 0
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.an = tail call fastcc i32 @inf_SubsortPrecheck(ptr noundef nonnull %0, ptr noundef %.039.lcssa, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ao = tail call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %0, ptr noundef %.039.lcssa, ptr noundef null, ptr noundef %i.am, ptr noundef null, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.041 = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ] ; 2 uses
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.am, %bb.l ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = load i64, ptr @memory_FREEDBYTES, align 8
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr @memory_FREEDBYTES, align 8
  %i.av = load ptr, ptr %i.ap, align 8
  store ptr %i.av, ptr %.07.i, align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.aw, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !3

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.l
  %.not6.i70 = icmp eq ptr %.039.lcssa, null
  br i1 %.not6.i70, label %list_Delete.exit75, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %list_Delete.exit, %.lr.ph.i71
  %.07.i72 = phi ptr [ %.0.val.i73, %.lr.ph.i71 ], [ %.039.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i73 = load ptr, ptr %.07.i72, align 8   ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr @memory_FREEDBYTES, align 8
  %i.bd = load ptr, ptr %i.ax, align 8
  store ptr %i.bd, ptr %.07.i72, align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i72, ptr %i.be, align 8
  %.not.i74 = icmp eq ptr %.0.val.i73, null
  br i1 %.not.i74, label %list_Delete.exit75, label %.lr.ph.i71, !llvm.loop !3

list_Delete.exit75:                               ; preds = %.lr.ph.i71, %bb.a, %list_Delete.exit, %.critedge
  %.042 = phi ptr [ null, %.critedge ], [ %.041, %list_Delete.exit ], [ null, %bb.a ], [ %.041, %.lr.ph.i71 ]
  ret ptr %.042
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardEmptySort(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not227 = icmp sgt i32 %i.f, %i.h
  br i1 %.not227, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4  ; 2 uses
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %.not103 = icmp eq i32 %3, 0
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %6 = add i32 %.val4.i.i, %.val.i.i
  %i.o = add i32 %6, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph231, %clause_LiteralIsSort.exit.thread
  %indvars.iv239 = phi i64 [ %i.n, %.lr.ph231 ], [ %indvars.iv.next240, %clause_LiteralIsSort.exit.thread ] ; 3 uses
  %.0229 = phi ptr [ null, %.lr.ph231 ], [ %.7, %clause_LiteralIsSort.exit.thread ] ; 7 uses
  %.val109 = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %.val109, i64 %indvars.iv239
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val120 = load ptr, ptr %i.r, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val120, align 8  ; 2 uses
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.s
  %.val121 = load i32, ptr %i.q, align 8
  %i.t = and i32 %.val121, 2
  %.not94 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not94, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not94, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.u = getelementptr i8, ptr %.val120, i64 16
  %.val6.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.v, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i196198 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val120, %clause_LiteralAtom.exit.thread ]
  %.val.i.i134 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i134, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.w = sub nsw i32 0, %.val.i.i134              ; 2 uses
  %i.x = and i32 %i.j, %i.w
  %.not.i135 = icmp eq i32 %i.x, 2
  br i1 %.not.i135, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.y = lshr i32 %i.w, %i.k
  %i.z = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not201 = icmp eq i32 %i.ae, 1
  br i1 %.not201, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.af = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ag = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ah = call ptr @st_GetUnifier(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull %.0.i196198) #12 ; 2 uses
  %.not202221 = icmp eq ptr %i.ah, null
  br i1 %.not202221, label %clause_LiteralIsSort.exit.thread, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.d
  %i.ai = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.q, i64 1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %term_IsAtom.exit.thread
  %.1223 = phi ptr [ %.6, %term_IsAtom.exit.thread ], [ %.0229, %.lr.ph225.preheader ] ; 5 uses
  %.093222 = phi ptr [ %.val.i191, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph225.preheader ] ; 4 uses
  %i.aj = getelementptr i8, ptr %.093222, i64 8
  %.093.val112 = load ptr, ptr %i.aj, align 8     ; 3 uses
  %.val123 = load i32, ptr %.093.val112, align 8  ; 2 uses
  %.not.i.i136 = icmp sgt i32 %.val123, -1
  br i1 %.not.i.i136, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %.lr.ph225
  %i.ak = sub nsw i32 0, %.val123
  %i.al = and i32 %i.j, %i.ak
  %.not203 = icmp eq i32 %i.al, 2
  br i1 %.not203, label %bb.e, label %term_IsAtom.exit.thread

bb.e:                                             ; preds = %term_IsAtom.exit
  %i.am = getelementptr i8, ptr %.093.val112, i64 16
  %.val116 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val116, i64 8
  %.val116.val = load ptr, ptr %i.an, align 8
  %.val124 = load i32, ptr %.val116.val, align 8
  %i.ao = icmp slt i32 %.val124, 1
  br i1 %i.ao, label %term_IsAtom.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.093.val112) #12 ; 2 uses
  %.not204215 = icmp eq ptr %i.ap, null
  br i1 %.not204215, label %term_IsAtom.exit.thread, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.f, %list_Delete.exit190
  %.2217 = phi ptr [ %.5, %list_Delete.exit190 ], [ %.1223, %bb.f ] ; 8 uses
  %.092216 = phi ptr [ %.092.val130, %list_Delete.exit190 ], [ %i.ap, %bb.f ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.092216, i64 8
  %.092.val = load ptr, ptr %i.aq, align 8        ; 4 uses
  %i.ar = getelementptr i8, ptr %.092.val, i64 16 ; 2 uses
  %.val125 = load ptr, ptr %i.ar, align 8         ; 9 uses
  %i.as = getelementptr i8, ptr %.val125, i64 56  ; 3 uses
  %.val.i = load ptr, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph219
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph219 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i138 = icmp eq ptr %i.au, %.092.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i138, label %clause_LiteralGetIndex.exit, label %bb.g, !llvm.loop !0

clause_LiteralGetIndex.exit:                      ; preds = %bb.g
  %i.av = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aw = getelementptr i8, ptr %.val125, i64 64  ; 2 uses
  %.val127 = load i32, ptr %i.aw, align 8
  %i.ax = icmp sgt i32 %.val127, %i.av
  br i1 %i.ax, label %bb.h, label %list_Delete.exit190

bb.h:                                             ; preds = %clause_LiteralGetIndex.exit
  %i.ay = getelementptr i8, ptr %.val125, i64 48
  %.val128 = load i32, ptr %i.ay, align 8
  %i.az = and i32 %.val128, 1
  %.not100 = icmp eq i32 %i.az, 0
  br i1 %.not100, label %list_Delete.exit190, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = call i32 @clause_HasOnlyVarsInConstraint(ptr noundef nonnull %.val125, ptr noundef %4, ptr noundef %5) #12
  %.not101 = icmp eq i32 %i.ba, 0
  br i1 %.not101, label %list_Delete.exit190, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %.092.val, i64 24
  %.val119 = load ptr, ptr %i.bb, align 8         ; 3 uses
  %.val5.val.i139 = load i32, ptr %.val119, align 8
  %i.bc = load i32, ptr @fol_NOT, align 4
  %.not.i140 = icmp eq i32 %.val5.val.i139, %i.bc
  br i1 %.not.i140, label %bb.k, label %clause_LiteralAtom.exit144

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %.val119, i64 16
  %.val6.i142 = load ptr, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %.val6.i142, i64 8
  %.val6.val.i143 = load ptr, ptr %i.be, align 8
  br label %clause_LiteralAtom.exit144

clause_LiteralAtom.exit144:                       ; preds = %bb.j, %bb.k
  %.0.i141 = phi ptr [ %.val6.val.i143, %bb.k ], [ %.val119, %bb.j ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.i141, i64 16  ; 2 uses
  %.val115 = load ptr, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.val115, i64 8
  %.val115.val = load ptr, ptr %i.bg, align 8
  %.val110 = load i32, ptr %.val115.val, align 8
  %.val129 = load i32, ptr %i.aw, align 8         ; 4 uses
  %.val4.i145 = load ptr, ptr %i.ar, align 8
  %i.bh = getelementptr i8, ptr %.val4.i145, i64 56
  %.val.i146 = load ptr, ptr %i.bh, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %clause_LiteralAtom.exit144
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i149, %bb.l ], [ 0, %clause_LiteralAtom.exit144 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val.i146, i64 %indvars.iv.i147
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not.i148 = icmp eq ptr %i.bj, %.092.val
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i147, 1
  br i1 %.not.i148, label %clause_LiteralGetIndex.exit150, label %bb.l, !llvm.loop !0

clause_LiteralGetIndex.exit150:                   ; preds = %bb.l
  %i.bk = add i32 %.val129, -1                    ; 2 uses
  %i.bl = getelementptr i8, ptr %.val125, i64 68
  %.val3.i.i152 = load i32, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %.val125, i64 72
  %.val4.i.i153 = load i32, ptr %i.bm, align 8
  %i.bn = add i32 %.val3.i.i152, %i.bk
  %i.bo = add i32 %i.bn, %.val4.i.i153            ; 2 uses
  %.not234 = icmp sgt i32 %.val129, %i.bo
  br i1 %.not234, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clause_LiteralGetIndex.exit150
  %i.bp = sext i32 %.val129 to i64
  %i.bq = sext i32 %i.bo to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_GetLiteralAtom.exit
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit ] ; 3 uses
  %.val132 = load ptr, ptr %i.as, align 8
  %i.br = getelementptr inbounds [8 x i8], ptr %.val132, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %.val1.i = load ptr, ptr %i.bt, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.bu = load i32, ptr @fol_NOT, align 4
  %.not.i.i154 = icmp eq i32 %.val5.val.i.i, %i.bu
  br i1 %.not.i.i154, label %bb.m, label %clause_GetLiteralAtom.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bv = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.bv, align 8
end_hunk_1
begin_hunk_2_@inf_InternWeakening:bb.a
.lr.ph.i144:                                      ; preds = %clause_GetLiteralAtom.exit.i, %.lr.ph.i144
  %.0298.i = phi ptr [ %.0.i146, %.lr.ph.i144 ], [ %.0295.i, %clause_GetLiteralAtom.exit.i ] ; 2 uses
  %.0138297.i = phi ptr [ %i.ei, %.lr.ph.i144 ], [ null, %clause_GetLiteralAtom.exit.i ]
  %i.ee = getelementptr i8, ptr %.0298.i, i64 8
  %.0.val.i145 = load ptr, ptr %i.ee, align 8
  %i.ef = tail call ptr @term_Copy(ptr noundef %.0.val.i145) #12 ; 3 uses
  %.val218.i = load i32, ptr %.val123, align 8
  tail call void @term_ReplaceVariable(ptr noundef %i.ef, i32 noundef %.val218.i, ptr noundef %.val186.val.i) #12
  %i.eg = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.eh = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.eg, ptr noundef %i.ef) #12
  %i.ei = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ej, align 8
  store ptr %.0138297.i, ptr %i.ei, align 8
  tail call void @term_Delete(ptr noundef %i.ef) #12
  %.0.i146 = load ptr, ptr %.0298.i, align 8      ; 2 uses
  %.not.i147 = icmp eq ptr %.0.i146, null
  br i1 %.not.i147, label %._crit_edge.i148, label %.lr.ph.i144, !llvm.loop !53

._crit_edge.i148:                                 ; preds = %.lr.ph.i144, %clause_GetLiteralAtom.exit.i
  %.0138.lcssa.i = phi ptr [ null, %clause_GetLiteralAtom.exit.i ], [ %i.ei, %.lr.ph.i144 ] ; 2 uses
  %i.ek = getelementptr i8, ptr %.val123, i64 16
  %.1299.i = load ptr, ptr %i.ek, align 8         ; 2 uses
  %.not291300.i = icmp eq ptr %.1299.i, null
  br i1 %.not291300.i, label %._crit_edge305.i, label %.lr.ph304.i

.lr.ph304.i:                                      ; preds = %._crit_edge.i148, %.lr.ph304.i
  %.1302.i = phi ptr [ %.1.i, %.lr.ph304.i ], [ %.1299.i, %._crit_edge.i148 ] ; 2 uses
  %.0143301.i = phi ptr [ %i.ep, %.lr.ph304.i ], [ null, %._crit_edge.i148 ]
  %i.el = getelementptr i8, ptr %.1302.i, i64 8
  %.1.val.i = load ptr, ptr %i.el, align 8
  %i.em = tail call ptr @term_Copy(ptr noundef %.1.val.i) #12 ; 3 uses
  %.val217.i = load i32, ptr %.val123, align 8
  tail call void @term_ReplaceVariable(ptr noundef %i.em, i32 noundef %.val217.i, ptr noundef %.val186.val.i) #12
  %i.en = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.eo = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.en, ptr noundef %i.em) #12
  %i.ep = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eo, ptr %i.eq, align 8
  store ptr %.0143301.i, ptr %i.ep, align 8
  tail call void @term_Delete(ptr noundef %i.em) #12
  %.1.i = load ptr, ptr %.1302.i, align 8         ; 2 uses
  %.not291.i = icmp eq ptr %.1.i, null
  br i1 %.not291.i, label %._crit_edge305.i, label %.lr.ph304.i, !llvm.loop !54

._crit_edge305.i:                                 ; preds = %.lr.ph304.i, %._crit_edge.i148
  %.0143.lcssa.i = phi ptr [ null, %._crit_edge.i148 ], [ %i.ep, %.lr.ph304.i ] ; 2 uses
  %i.er = getelementptr i8, ptr %.val123, i64 24
  %.2307.i = load ptr, ptr %i.er, align 8         ; 2 uses
  %.not292308.i = icmp eq ptr %.2307.i, null
  br i1 %.not292308.i, label %._crit_edge313.i, label %.lr.ph312.i

.lr.ph312.i:                                      ; preds = %._crit_edge305.i, %.lr.ph312.i
  %.2310.i = phi ptr [ %.2.i, %.lr.ph312.i ], [ %.2307.i, %._crit_edge305.i ] ; 2 uses
  %.0162309.i = phi ptr [ %i.ew, %.lr.ph312.i ], [ null, %._crit_edge305.i ]
  %i.es = getelementptr i8, ptr %.2310.i, i64 8
  %.2.val.i = load ptr, ptr %i.es, align 8
  %i.et = tail call ptr @term_Copy(ptr noundef %.2.val.i) #12 ; 3 uses
  %.val216.i = load i32, ptr %.val123, align 8
  tail call void @term_ReplaceVariable(ptr noundef %i.et, i32 noundef %.val216.i, ptr noundef %.val186.val.i) #12
  %i.eu = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ev = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.eu, ptr noundef %i.et) #12
  %i.ew = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ev, ptr %i.ex, align 8
  store ptr %.0162309.i, ptr %i.ew, align 8
  tail call void @term_Delete(ptr noundef %i.et) #12
  %.2.i = load ptr, ptr %.2310.i, align 8         ; 2 uses
  %.not292.i = icmp eq ptr %.2.i, null
  br i1 %.not292.i, label %._crit_edge313.i, label %.lr.ph312.i, !llvm.loop !55

._crit_edge313.i:                                 ; preds = %.lr.ph312.i, %._crit_edge305.i
  %.0162.lcssa.i = phi ptr [ null, %._crit_edge305.i ], [ %i.ew, %.lr.ph312.i ] ; 2 uses
  %i.ey = getelementptr i8, ptr %.val123, i64 32
  %.3315.i = load ptr, ptr %i.ey, align 8         ; 2 uses
  %.not293316.i = icmp eq ptr %.3315.i, null
  br i1 %.not293316.i, label %.preheader.i, label %.lr.ph323.i

.preheader.i:                                     ; preds = %.lr.ph323.i, %._crit_edge313.i
  %.0158.lcssa.i = phi ptr [ null, %._crit_edge313.i ], [ %i.fe, %.lr.ph323.i ] ; 2 uses
  %.0154.lcssa.i = phi ptr [ null, %._crit_edge313.i ], [ %i.fl, %.lr.ph323.i ] ; 2 uses
  %.0147.lcssa.i = phi i32 [ %.val207.i, %._crit_edge313.i ], [ %i.fo, %.lr.ph323.i ] ; 2 uses
  %.0136.lcssa.i = phi ptr [ null, %._crit_edge313.i ], [ %i.fa, %.lr.ph323.i ] ; 2 uses
  %.not294348.i = icmp eq ptr %.1.lcssa, null
  br i1 %.not294348.i, label %._crit_edge358.i, label %.lr.ph357.i

.lr.ph323.i:                                      ; preds = %._crit_edge313.i, %.lr.ph323.i
  %.3321.i = phi ptr [ %.3.i, %.lr.ph323.i ], [ %.3315.i, %._crit_edge313.i ] ; 2 uses
  %.0136320.i = phi ptr [ %i.fa, %.lr.ph323.i ], [ null, %._crit_edge313.i ]
  %.0147319.i = phi i32 [ %i.fo, %.lr.ph323.i ], [ %.val207.i, %._crit_edge313.i ]
  %.0154318.i = phi ptr [ %i.fl, %.lr.ph323.i ], [ null, %._crit_edge313.i ]
  %.0158317.i = phi ptr [ %i.fe, %.lr.ph323.i ], [ null, %._crit_edge313.i ]
  %i.ez = getelementptr i8, ptr %.3321.i, i64 8
  %.3.val.i = load ptr, ptr %i.ez, align 8        ; 5 uses
  %i.fa = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %.3.val.i, ptr %i.fb, align 8
  store ptr %.0136320.i, ptr %i.fa, align 8
  %.val210.i = load i32, ptr %.3.val.i, align 8
  %i.fc = sext i32 %.val210.i to i64
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fd, ptr %i.ff, align 8
  store ptr %.0158317.i, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %.3.val.i, i64 64
  %.val183.i = load i32, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %.3.val.i, i64 68
  %.val184.i = load i32, ptr %i.fh, align 4
  %i.fi = add nsw i32 %.val184.i, %.val183.i
  %i.fj = sext i32 %i.fi to i64
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fk, ptr %i.fm, align 8
  store ptr %.0154318.i, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %.3.val.i, i64 8
  %.val206.i = load i32, ptr %i.fn, align 8
  %i.fo = tail call i32 @misc_Max(i32 noundef %.0147319.i, i32 noundef %.val206.i) #12 ; 2 uses
  %.3.i = load ptr, ptr %.3321.i, align 8         ; 2 uses
  %.not293.i = icmp eq ptr %.3.i, null
  br i1 %.not293.i, label %.preheader.i, label %.lr.ph323.i, !llvm.loop !56

.lr.ph357.i:                                      ; preds = %.preheader.i, %._crit_edge346.i
  %.4356.i = phi ptr [ %.4.val193.i, %._crit_edge346.i ], [ %.1.lcssa, %.preheader.i ] ; 2 uses
  %.1137355.i = phi ptr [ %i.hj, %._crit_edge346.i ], [ %.0136.lcssa.i, %.preheader.i ]
  %.1139354.i = phi ptr [ %.2140.lcssa.i, %._crit_edge346.i ], [ %.0138.lcssa.i, %.preheader.i ] ; 2 uses
  %.1144353.i = phi ptr [ %.2145.lcssa.i, %._crit_edge346.i ], [ %.0143.lcssa.i, %.preheader.i ] ; 2 uses
  %.1148352.i = phi i32 [ %i.ht, %._crit_edge346.i ], [ %.0147.lcssa.i, %.preheader.i ]
  %.1155351.i = phi ptr [ %i.hq, %._crit_edge346.i ], [ %.0154.lcssa.i, %.preheader.i ]
  %.1159350.i = phi ptr [ %i.hn, %._crit_edge346.i ], [ %.0158.lcssa.i, %.preheader.i ]
  %.1163349.i = phi ptr [ %.2164.lcssa.i, %._crit_edge346.i ], [ %.0162.lcssa.i, %.preheader.i ] ; 2 uses
  %i.fp = getelementptr i8, ptr %.4356.i, i64 8
  %.4.val.i = load ptr, ptr %i.fp, align 8        ; 2 uses
  %i.fq = getelementptr i8, ptr %.4.val.i, i64 16
  %.val188.i = load ptr, ptr %i.fq, align 8       ; 7 uses
  %i.fr = getelementptr i8, ptr %.val188.i, i64 56 ; 4 uses
  %.val.i.i149 = load ptr, ptr %i.fr, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph357.i
  %indvars.iv.i.i150 = phi i64 [ %indvars.iv.next.i.i152, %bb.r ], [ 0, %.lr.ph357.i ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i149, i64 %indvars.iv.i.i150
  %i.ft = load ptr, ptr %i.fs, align 8
  %.not.i.i151 = icmp eq ptr %i.ft, %.4.val.i
  %indvars.iv.next.i.i152 = add nuw nsw i64 %indvars.iv.i.i150, 1
  br i1 %.not.i.i151, label %clause_LiteralGetIndex.exit.i153, label %bb.r, !llvm.loop !0

clause_LiteralGetIndex.exit.i153:                 ; preds = %bb.r
  %i.fu = getelementptr i8, ptr %.val188.i, i64 64 ; 3 uses
  %.val192.i = load i32, ptr %i.fu, align 8       ; 3 uses
  %.not176.not328.i = icmp sgt i32 %.val192.i, 0
  br i1 %.not176.not328.i, label %.lr.ph331.preheader.i, label %._crit_edge332.i

.lr.ph331.preheader.i:                            ; preds = %clause_LiteralGetIndex.exit.i153
  %wide.trip.count.i = zext nneg i32 %.val192.i to i64
  br label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %clause_GetLiteralAtom.exit228.i, %.lr.ph331.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph331.preheader.i ], [ %indvars.iv.next.i, %clause_GetLiteralAtom.exit228.i ] ; 2 uses
  %.2140330.i = phi ptr [ %.1139354.i, %.lr.ph331.preheader.i ], [ %i.gd, %clause_GetLiteralAtom.exit228.i ]
  %i.fv = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %.val203.i = load ptr, ptr %i.fr, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val203.i, i64 %indvars.iv.i
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr i8, ptr %i.fx, i64 24
  %.val1.i222.i = load ptr, ptr %i.fy, align 8    ; 3 uses
  %.val5.val.i.i223.i = load i32, ptr %.val1.i222.i, align 8
  %i.fz = load i32, ptr @fol_NOT, align 4
  %.not.i.i224.i = icmp eq i32 %.val5.val.i.i223.i, %i.fz
  br i1 %.not.i.i224.i, label %bb.s, label %clause_GetLiteralAtom.exit228.i

bb.s:                                             ; preds = %.lr.ph331.i
  %i.ga = getelementptr i8, ptr %.val1.i222.i, i64 16
  %.val6.i.i226.i = load ptr, ptr %i.ga, align 8
  %i.gb = getelementptr i8, ptr %.val6.i.i226.i, i64 8
  %.val6.val.i.i227.i = load ptr, ptr %i.gb, align 8
  br label %clause_GetLiteralAtom.exit228.i

clause_GetLiteralAtom.exit228.i:                  ; preds = %bb.s, %.lr.ph331.i
  %.0.i.i225.i = phi ptr [ %.val6.val.i.i227.i, %bb.s ], [ %.val1.i222.i, %.lr.ph331.i ]
  %i.gc = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.fv, ptr noundef %.0.i.i225.i) #12
  %i.gd = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %i.ge, align 8
  store ptr %.2140330.i, ptr %i.gd, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge332.loopexit.i, label %.lr.ph331.i, !llvm.loop !57

._crit_edge332.loopexit.i:                        ; preds = %clause_GetLiteralAtom.exit228.i
  %.val213.pre.i = load i32, ptr %i.fu, align 8
  br label %._crit_edge332.i

._crit_edge332.i:                                 ; preds = %._crit_edge332.loopexit.i, %clause_LiteralGetIndex.exit.i153
  %.val213.i = phi i32 [ %.val192.i, %clause_LiteralGetIndex.exit.i153 ], [ %.val213.pre.i, %._crit_edge332.loopexit.i ] ; 4 uses
  %.2140.lcssa.i = phi ptr [ %.1139354.i, %clause_LiteralGetIndex.exit.i153 ], [ %i.gd, %._crit_edge332.loopexit.i ] ; 2 uses
  %i.gf = getelementptr i8, ptr %.val188.i, i64 68 ; 2 uses
  %.val214.i = load i32, ptr %i.gf, align 4       ; 2 uses
  %i.gg = add i32 %.val214.i, %.val213.i          ; 3 uses
  %i.gh = add i32 %i.gg, -1                       ; 2 uses
  %.not177334.i = icmp sgt i32 %.val213.i, %i.gh
  br i1 %.not177334.i, label %._crit_edge339.i, label %.lr.ph338.preheader.i

.lr.ph338.preheader.i:                            ; preds = %._crit_edge332.i
  %i.gi = sext i32 %.val213.i to i64
  br label %.lr.ph338.i

.lr.ph338.i:                                      ; preds = %clause_GetLiteralAtom.exit235.i, %.lr.ph338.preheader.i
  %indvars.iv406.i = phi i64 [ %i.gi, %.lr.ph338.preheader.i ], [ %indvars.iv.next407.i, %clause_GetLiteralAtom.exit235.i ] ; 2 uses
  %.2145336.i = phi ptr [ %.1144353.i, %.lr.ph338.preheader.i ], [ %i.gr, %clause_GetLiteralAtom.exit235.i ]
  %i.gj = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %.val202.i = load ptr, ptr %i.fr, align 8
  %i.gk = getelementptr inbounds [8 x i8], ptr %.val202.i, i64 %indvars.iv406.i
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  %.val1.i229.i = load ptr, ptr %i.gm, align 8    ; 3 uses
  %.val5.val.i.i230.i = load i32, ptr %.val1.i229.i, align 8
  %i.gn = load i32, ptr @fol_NOT, align 4
  %.not.i.i231.i = icmp eq i32 %.val5.val.i.i230.i, %i.gn
  br i1 %.not.i.i231.i, label %bb.t, label %clause_GetLiteralAtom.exit235.i

bb.t:                                             ; preds = %.lr.ph338.i
  %i.go = getelementptr i8, ptr %.val1.i229.i, i64 16
  %.val6.i.i233.i = load ptr, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %.val6.i.i233.i, i64 8
  %.val6.val.i.i234.i = load ptr, ptr %i.gp, align 8
  br label %clause_GetLiteralAtom.exit235.i

clause_GetLiteralAtom.exit235.i:                  ; preds = %bb.t, %.lr.ph338.i
  %.0.i.i232.i = phi ptr [ %.val6.val.i.i234.i, %bb.t ], [ %.val1.i229.i, %.lr.ph338.i ]
  %i.gq = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.gj, ptr noundef %.0.i.i232.i) #12
  %i.gr = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gq, ptr %i.gs, align 8
  store ptr %.2145336.i, ptr %i.gr, align 8
  %indvars.iv.next407.i = add nsw i64 %indvars.iv406.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next407.i to i32
  %exitcond409.not.i = icmp eq i32 %i.gg, %lftr.wideiv.i
  br i1 %exitcond409.not.i, label %._crit_edge339.loopexit.i, label %.lr.ph338.i, !llvm.loop !58

._crit_edge339.loopexit.i:                        ; preds = %clause_GetLiteralAtom.exit235.i
  %.val.i.i.pre.i = load i32, ptr %i.fu, align 8  ; 2 uses
  %.val3.i.i.pre.i = load i32, ptr %i.gf, align 4 ; 2 uses
  %.pre281 = add i32 %.val.i.i.pre.i, %.val3.i.i.pre.i ; 2 uses
  %.pre279.a = add i32 %.pre281, -1
  br label %._crit_edge339.i

._crit_edge339.i:                                 ; preds = %._crit_edge339.loopexit.i, %._crit_edge332.i
  %.pre-phi284 = phi i32 [ %.pre279.a, %._crit_edge339.loopexit.i ], [ %i.gh, %._crit_edge332.i ]
  %.pre-phi280.a = phi i32 [ %.pre281, %._crit_edge339.loopexit.i ], [ %i.gg, %._crit_edge332.i ] ; 2 uses
  %.val3.i.i.i = phi i32 [ %.val3.i.i.pre.i, %._crit_edge339.loopexit.i ], [ %.val214.i, %._crit_edge332.i ]
  %.val.i.i.i154 = phi i32 [ %.val.i.i.pre.i, %._crit_edge339.loopexit.i ], [ %.val213.i, %._crit_edge332.i ]
  %.2145.lcssa.i = phi ptr [ %i.gr, %._crit_edge339.loopexit.i ], [ %.1144353.i, %._crit_edge332.i ] ; 2 uses
  %i.gt = getelementptr i8, ptr %.val188.i, i64 72
  %.val4.i.i.i = load i32, ptr %i.gt, align 8     ; 2 uses
  %i.gu = add i32 %.pre-phi284, %.val4.i.i.i
  %.not178341.i = icmp sgt i32 %.pre-phi280.a, %i.gu
  br i1 %.not178341.i, label %._crit_edge346.i, label %.lr.ph345.preheader.i

.lr.ph345.preheader.i:                            ; preds = %._crit_edge339.i
  %i.gv = sext i32 %.val.i.i.i154 to i64
  %i.gw = sext i32 %.val3.i.i.i to i64
  %i.gx = add nsw i64 %i.gv, %i.gw
  %7 = add i32 %.pre-phi280.a, %.val4.i.i.i
  br label %.lr.ph345.i

.lr.ph345.i:                                      ; preds = %bb.w, %.lr.ph345.preheader.i
  %indvars.iv410.i = phi i64 [ %i.gx, %.lr.ph345.preheader.i ], [ %indvars.iv.next411.i, %bb.w ] ; 3 uses
  %.2164342.i = phi ptr [ %.1163349.i, %.lr.ph345.preheader.i ], [ %.3165.i, %bb.w ] ; 2 uses
  %i.gy = icmp eq i64 %indvars.iv410.i, %indvars.iv.i.i150
  br i1 %i.gy, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph345.i
  %i.gz = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %.val201.i = load ptr, ptr %i.fr, align 8
  %i.ha = getelementptr inbounds [8 x i8], ptr %.val201.i, i64 %indvars.iv410.i
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 24
  %.val1.i236.i = load ptr, ptr %i.hc, align 8    ; 3 uses
  %.val5.val.i.i237.i = load i32, ptr %.val1.i236.i, align 8
  %i.hd = load i32, ptr @fol_NOT, align 4
  %.not.i.i238.i = icmp eq i32 %.val5.val.i.i237.i, %i.hd
  br i1 %.not.i.i238.i, label %bb.v, label %clause_GetLiteralAtom.exit242.i

bb.v:                                             ; preds = %bb.u
  %i.he = getelementptr i8, ptr %.val1.i236.i, i64 16
  %.val6.i.i240.i = load ptr, ptr %i.he, align 8
  %i.hf = getelementptr i8, ptr %.val6.i.i240.i, i64 8
  %.val6.val.i.i241.i = load ptr, ptr %i.hf, align 8
  br label %clause_GetLiteralAtom.exit242.i

clause_GetLiteralAtom.exit242.i:                  ; preds = %bb.v, %bb.u
  %.0.i.i239.i = phi ptr [ %.val6.val.i.i241.i, %bb.v ], [ %.val1.i236.i, %bb.u ]
  %i.hg = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.gz, ptr noundef %.0.i.i239.i) #12
  %i.hh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hg, ptr %i.hi, align 8
  store ptr %.2164342.i, ptr %i.hh, align 8
  br label %bb.w

bb.w:                                             ; preds = %clause_GetLiteralAtom.exit242.i, %.lr.ph345.i
  %.3165.i = phi ptr [ %i.hh, %clause_GetLiteralAtom.exit242.i ], [ %.2164342.i, %.lr.ph345.i ] ; 2 uses
  %indvars.iv.next411.i = add nsw i64 %indvars.iv410.i, 1 ; 2 uses
  %lftr.wideiv414.i = trunc i64 %indvars.iv.next411.i to i32
  %exitcond415.not.i = icmp eq i32 %7, %lftr.wideiv414.i
  br i1 %exitcond415.not.i, label %._crit_edge346.i, label %.lr.ph345.i, !llvm.loop !59

._crit_edge346.i:                                 ; preds = %bb.w, %._crit_edge339.i
  %.2164.lcssa.i = phi ptr [ %.1163349.i, %._crit_edge339.i ], [ %.3165.i, %bb.w ] ; 2 uses
  %i.hj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %.val188.i, ptr %i.hk, align 8
  store ptr %.1137355.i, ptr %i.hj, align 8
  %.val209.i = load i32, ptr %.val188.i, align 8
  %i.hl = sext i32 %.val209.i to i64
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.hm, ptr %i.ho, align 8
  store ptr %.1159350.i, ptr %i.hn, align 8
  %i.hp = inttoptr i64 %indvars.iv.i.i150 to ptr
  %i.hq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hp, ptr %i.hr, align 8
  store ptr %.1155351.i, ptr %i.hq, align 8
  %i.hs = getelementptr i8, ptr %.val188.i, i64 8
  %.val205.i = load i32, ptr %i.hs, align 8
  %i.ht = tail call i32 @misc_Max(i32 noundef %.1148352.i, i32 noundef %.val205.i) #12 ; 2 uses
  %.4.val193.i = load ptr, ptr %.4356.i, align 8  ; 2 uses
  %.not294.i = icmp eq ptr %.4.val193.i, null
  br i1 %.not294.i, label %._crit_edge358.i, label %.lr.ph357.i, !llvm.loop !60

._crit_edge358.i:                                 ; preds = %._crit_edge346.i, %.preheader.i
  %.1163.lcssa.i = phi ptr [ %.0162.lcssa.i, %.preheader.i ], [ %.2164.lcssa.i, %._crit_edge346.i ] ; 2 uses
  %.1159.lcssa.i = phi ptr [ %.0158.lcssa.i, %.preheader.i ], [ %i.hn, %._crit_edge346.i ] ; 2 uses
  %.1155.lcssa.i = phi ptr [ %.0154.lcssa.i, %.preheader.i ], [ %i.hq, %._crit_edge346.i ] ; 2 uses
  %.1148.lcssa.i = phi i32 [ %.0147.lcssa.i, %.preheader.i ], [ %i.ht, %._crit_edge346.i ]
  %.1144.lcssa.i = phi ptr [ %.0143.lcssa.i, %.preheader.i ], [ %.2145.lcssa.i, %._crit_edge346.i ] ; 2 uses
  %.1139.lcssa.i = phi ptr [ %.0138.lcssa.i, %.preheader.i ], [ %.2140.lcssa.i, %._crit_edge346.i ] ; 2 uses
  %.1137.lcssa.i = phi ptr [ %.0136.lcssa.i, %.preheader.i ], [ %i.hj, %._crit_edge346.i ]
  %.val191.i = load i32, ptr %i.ba, align 8       ; 3 uses
  %.not171.not366.i = icmp sgt i32 %.val191.i, 0
  br i1 %.not171.not366.i, label %.lr.ph372.i, label %._crit_edge373.i

.lr.ph372.i:                                      ; preds = %._crit_edge358.i
  %wide.trip.count419.i = zext nneg i32 %.val191.i to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph372.i
  %indvars.iv416.i = phi i64 [ 0, %.lr.ph372.i ], [ %indvars.iv.next417.i, %bb.aa ] ; 3 uses
  %.3141370.i = phi ptr [ %.1139.lcssa.i, %.lr.ph372.i ], [ %.4142.i, %bb.aa ] ; 2 uses
  %.2156368.i = phi ptr [ %.1155.lcssa.i, %.lr.ph372.i ], [ %.3157.i, %bb.aa ] ; 2 uses
  %.2160367.i = phi ptr [ %.1159.lcssa.i, %.lr.ph372.i ], [ %.3161.i, %bb.aa ] ; 2 uses
  %i.hu = inttoptr i64 %indvars.iv416.i to ptr    ; 2 uses
  br i1 %.not236, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.y
  %.047.i.i = phi ptr [ %.04.val5.i.i, %bb.y ], [ %1, %bb.x ] ; 2 uses
  %i.hv = getelementptr i8, ptr %.047.i.i, i64 8
  %.04.val.i.i = load ptr, ptr %i.hv, align 8
  %i.hw = icmp eq ptr %.04.val.i.i, %i.hu
  br i1 %i.hw, label %list_PointerMember.exit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %.04.val5.i.i = load ptr, ptr %.047.i.i, align 8 ; 2 uses
  %.not.i243.i = icmp eq ptr %.04.val5.i.i, null
  br i1 %.not.i243.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.y, %bb.x
  %i.hx = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val200.i = load ptr, ptr %i.am, align 8
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.val200.i, i64 %indvars.iv416.i
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr i8, ptr %i.hz, i64 24
  %.val1.i244.i = load ptr, ptr %i.ia, align 8    ; 3 uses
  %.val5.val.i.i245.i = load i32, ptr %.val1.i244.i, align 8
  %i.ib = load i32, ptr @fol_NOT, align 4
  %.not.i.i246.i = icmp eq i32 %.val5.val.i.i245.i, %i.ib
  br i1 %.not.i.i246.i, label %bb.z, label %clause_GetLiteralAtom.exit250.i

bb.z:                                             ; preds = %.loopexit.i
  %i.ic = getelementptr i8, ptr %.val1.i244.i, i64 16
  %.val6.i.i248.i = load ptr, ptr %i.ic, align 8
  %i.id = getelementptr i8, ptr %.val6.i.i248.i, i64 8
  %.val6.val.i.i249.i = load ptr, ptr %i.id, align 8
  br label %clause_GetLiteralAtom.exit250.i

clause_GetLiteralAtom.exit250.i:                  ; preds = %bb.z, %.loopexit.i
  %.0.i.i247.i = phi ptr [ %.val6.val.i.i249.i, %bb.z ], [ %.val1.i244.i, %.loopexit.i ]
  %i.ie = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.hx, ptr noundef %.0.i.i247.i) #12
  %i.if = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.ie, ptr %i.ig, align 8
  store ptr %.3141370.i, ptr %i.if, align 8
  br label %bb.aa

list_PointerMember.exit.i:                        ; preds = %.lr.ph.i.i
  %.val208.i = load i32, ptr %0, align 8
  %i.ih = sext i32 %.val208.i to i64
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.ii, ptr %i.ik, align 8
  store ptr %.2160367.i, ptr %i.ij, align 8
  %i.il = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.hu, ptr %i.im, align 8
  store ptr %.2156368.i, ptr %i.il, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %list_PointerMember.exit.i, %clause_GetLiteralAtom.exit250.i
  %.3161.i = phi ptr [ %i.ij, %list_PointerMember.exit.i ], [ %.2160367.i, %clause_GetLiteralAtom.exit250.i ] ; 2 uses
  %.3157.i = phi ptr [ %i.il, %list_PointerMember.exit.i ], [ %.2156368.i, %clause_GetLiteralAtom.exit250.i ] ; 2 uses
  %.4142.i = phi ptr [ %.3141370.i, %list_PointerMember.exit.i ], [ %i.if, %clause_GetLiteralAtom.exit250.i ] ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond420.not.i = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count419.i
  br i1 %exitcond420.not.i, label %._crit_edge373.loopexit.i, label %bb.x, !llvm.loop !61

._crit_edge373.loopexit.i:                        ; preds = %bb.aa
  %.val211.pre.i = load i32, ptr %i.ba, align 8
  br label %._crit_edge373.i

._crit_edge373.i:                                 ; preds = %._crit_edge373.loopexit.i, %._crit_edge358.i
  %.val211.i = phi i32 [ %.val191.i, %._crit_edge358.i ], [ %.val211.pre.i, %._crit_edge373.loopexit.i ] ; 4 uses
  %.2160.lcssa.i = phi ptr [ %.1159.lcssa.i, %._crit_edge358.i ], [ %.3161.i, %._crit_edge373.loopexit.i ]
  %.2156.lcssa.i = phi ptr [ %.1155.lcssa.i, %._crit_edge358.i ], [ %.3157.i, %._crit_edge373.loopexit.i ]
  %.3141.lcssa.i = phi ptr [ %.1139.lcssa.i, %._crit_edge358.i ], [ %.4142.i, %._crit_edge373.loopexit.i ] ; 3 uses
  %.val212.i = load i32, ptr %i.bb, align 4       ; 2 uses
  %i.in = add i32 %.val212.i, %.val211.i          ; 3 uses
  %i.io = add i32 %i.in, -1                       ; 2 uses
  %.not172377.i = icmp sgt i32 %.val211.i, %i.io
  br i1 %.not172377.i, label %._crit_edge382.i, label %.lr.ph381.preheader.i

.lr.ph381.preheader.i:                            ; preds = %._crit_edge373.i
  %i.ip = sext i32 %.val211.i to i64
  br label %.lr.ph381.i

.lr.ph381.i:                                      ; preds = %clause_GetLiteralAtom.exit257.i, %.lr.ph381.preheader.i
  %indvars.iv421.i = phi i64 [ %i.ip, %.lr.ph381.preheader.i ], [ %indvars.iv.next422.i, %clause_GetLiteralAtom.exit257.i ] ; 2 uses
  %.3146379.i = phi ptr [ %.1144.lcssa.i, %.lr.ph381.preheader.i ], [ %i.iy, %clause_GetLiteralAtom.exit257.i ]
  %i.iq = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val199.i = load ptr, ptr %i.am, align 8
  %i.ir = getelementptr inbounds [8 x i8], ptr %.val199.i, i64 %indvars.iv421.i
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = getelementptr i8, ptr %i.is, i64 24
  %.val1.i251.i = load ptr, ptr %i.it, align 8    ; 3 uses
  %.val5.val.i.i252.i = load i32, ptr %.val1.i251.i, align 8
  %i.iu = load i32, ptr @fol_NOT, align 4
  %.not.i.i253.i = icmp eq i32 %.val5.val.i.i252.i, %i.iu
  br i1 %.not.i.i253.i, label %bb.ab, label %clause_GetLiteralAtom.exit257.i

bb.ab:                                            ; preds = %.lr.ph381.i
  %i.iv = getelementptr i8, ptr %.val1.i251.i, i64 16
  %.val6.i.i255.i = load ptr, ptr %i.iv, align 8
  %i.iw = getelementptr i8, ptr %.val6.i.i255.i, i64 8
  %.val6.val.i.i256.i = load ptr, ptr %i.iw, align 8
  br label %clause_GetLiteralAtom.exit257.i

clause_GetLiteralAtom.exit257.i:                  ; preds = %bb.ab, %.lr.ph381.i
  %.0.i.i254.i = phi ptr [ %.val6.val.i.i256.i, %bb.ab ], [ %.val1.i251.i, %.lr.ph381.i ]
  %i.ix = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.iq, ptr noundef %.0.i.i254.i) #12
  %i.iy = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.ix, ptr %i.iz, align 8
  store ptr %.3146379.i, ptr %i.iy, align 8
  %indvars.iv.next422.i = add nsw i64 %indvars.iv421.i, 1 ; 2 uses
  %lftr.wideiv424.i = trunc i64 %indvars.iv.next422.i to i32
  %exitcond425.not.i = icmp eq i32 %i.in, %lftr.wideiv424.i
  br i1 %exitcond425.not.i, label %._crit_edge382.loopexit.i, label %.lr.ph381.i, !llvm.loop !62

._crit_edge382.loopexit.i:                        ; preds = %clause_GetLiteralAtom.exit257.i
  %.val.i.i258.pre.i = load i32, ptr %i.ba, align 8 ; 2 uses
  %.val3.i.i259.pre.i = load i32, ptr %i.bb, align 4 ; 2 uses
  %.pre278 = add i32 %.val.i.i258.pre.i, %.val3.i.i259.pre.i ; 2 uses
  %.pre278.a = add i32 %.pre278, -1
  br label %._crit_edge382.i

._crit_edge382.i:                                 ; preds = %._crit_edge382.loopexit.i, %._crit_edge373.i
  %.pre-phi280 = phi i32 [ %.pre278.a, %._crit_edge382.loopexit.i ], [ %i.io, %._crit_edge373.i ]
  %.pre-phi = phi i32 [ %.pre278, %._crit_edge382.loopexit.i ], [ %i.in, %._crit_edge373.i ] ; 2 uses
  %.val3.i.i259.i = phi i32 [ %.val3.i.i259.pre.i, %._crit_edge382.loopexit.i ], [ %.val212.i, %._crit_edge373.i ]
  %.val.i.i258.i = phi i32 [ %.val.i.i258.pre.i, %._crit_edge382.loopexit.i ], [ %.val211.i, %._crit_edge373.i ]
  %.3146.lcssa.i = phi ptr [ %i.iy, %._crit_edge382.loopexit.i ], [ %.1144.lcssa.i, %._crit_edge373.i ] ; 3 uses
  %.val4.i.i260.i = load i32, ptr %i.bc, align 8  ; 2 uses
  %i.ja = add i32 %.pre-phi280, %.val4.i.i260.i
  %.not173384.i = icmp sgt i32 %.pre-phi, %i.ja
  br i1 %.not173384.i, label %._crit_edge389.i, label %.lr.ph388.preheader.i

.lr.ph388.preheader.i:                            ; preds = %._crit_edge382.i
  %i.jb = sext i32 %.val.i.i258.i to i64
  %i.jc = sext i32 %.val3.i.i259.i to i64
  %i.jd = add nsw i64 %i.jb, %i.jc
  %8 = add i32 %.pre-phi, %.val4.i.i260.i
  br label %.lr.ph388.i

.lr.ph388.i:                                      ; preds = %clause_GetLiteralAtom.exit267.i, %.lr.ph388.preheader.i
  %indvars.iv426.i = phi i64 [ %i.jd, %.lr.ph388.preheader.i ], [ %indvars.iv.next427.i, %clause_GetLiteralAtom.exit267.i ] ; 2 uses
  %.4166385.i = phi ptr [ %.1163.lcssa.i, %.lr.ph388.preheader.i ], [ %i.jm, %clause_GetLiteralAtom.exit267.i ]
  %i.je = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val198.i = load ptr, ptr %i.am, align 8
  %i.jf = getelementptr inbounds [8 x i8], ptr %.val198.i, i64 %indvars.iv426.i
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr i8, ptr %i.jg, i64 24
  %.val1.i261.i = load ptr, ptr %i.jh, align 8    ; 3 uses
  %.val5.val.i.i262.i = load i32, ptr %.val1.i261.i, align 8
  %i.ji = load i32, ptr @fol_NOT, align 4
  %.not.i.i263.i = icmp eq i32 %.val5.val.i.i262.i, %i.ji
  br i1 %.not.i.i263.i, label %bb.ac, label %clause_GetLiteralAtom.exit267.i

bb.ac:                                            ; preds = %.lr.ph388.i
  %i.jj = getelementptr i8, ptr %.val1.i261.i, i64 16
  %.val6.i.i265.i = load ptr, ptr %i.jj, align 8
  %i.jk = getelementptr i8, ptr %.val6.i.i265.i, i64 8
  %.val6.val.i.i266.i = load ptr, ptr %i.jk, align 8
  br label %clause_GetLiteralAtom.exit267.i

clause_GetLiteralAtom.exit267.i:                  ; preds = %bb.ac, %.lr.ph388.i
  %.0.i.i264.i = phi ptr [ %.val6.val.i.i266.i, %bb.ac ], [ %.val1.i261.i, %.lr.ph388.i ]
  %i.jl = tail call ptr @cont_CopyAndApplyBindings(ptr noundef %i.je, ptr noundef %.0.i.i264.i) #12
  %i.jm = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jl, ptr %i.jn, align 8
  store ptr %.4166385.i, ptr %i.jm, align 8
  %indvars.iv.next427.i = add nsw i64 %indvars.iv426.i, 1 ; 2 uses
  %lftr.wideiv429.i = trunc i64 %indvars.iv.next427.i to i32
  %exitcond430.not.i = icmp eq i32 %8, %lftr.wideiv429.i
  br i1 %exitcond430.not.i, label %._crit_edge389.i, label %.lr.ph388.i, !llvm.loop !63

._crit_edge389.i:                                 ; preds = %clause_GetLiteralAtom.exit267.i, %._crit_edge382.i
  %.4166.lcssa.i = phi ptr [ %.1163.lcssa.i, %._crit_edge382.i ], [ %i.jm, %clause_GetLiteralAtom.exit267.i ] ; 3 uses
  %i.jo = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %0, ptr %i.jp, align 8
  store ptr %.1137.lcssa.i, ptr %i.jo, align 8
  %i.jq = tail call ptr @clause_Create(ptr noundef %.3141.lcssa.i, ptr noundef %.3146.lcssa.i, ptr noundef %.4166.lcssa.i, ptr noundef %5, ptr noundef %6) #12 ; 11 uses
  %.not6.i268.i = icmp eq ptr %.3141.lcssa.i, null
  br i1 %.not6.i268.i, label %list_Delete.exit.i, label %.lr.ph.i269.i

.lr.ph.i269.i:                                    ; preds = %._crit_edge389.i, %.lr.ph.i269.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i269.i ], [ %.3141.lcssa.i, %._crit_edge389.i ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = sext i32 %i.jt to i64
  %i.jv = load i64, ptr @memory_FREEDBYTES, align 8
  %i.jw = add i64 %i.jv, %i.ju
  store i64 %i.jw, ptr @memory_FREEDBYTES, align 8
  %i.jx = load ptr, ptr %i.jr, align 8
  store ptr %i.jx, ptr %.07.i.i, align 8
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.jy, align 8
  %.not.i270.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i270.i, label %list_Delete.exit.i, label %.lr.ph.i269.i, !llvm.loop !3

list_Delete.exit.i:                               ; preds = %.lr.ph.i269.i, %._crit_edge389.i
  %.not6.i271.i = icmp eq ptr %.3146.lcssa.i, null
  br i1 %.not6.i271.i, label %list_Delete.exit276.i, label %.lr.ph.i272.i

.lr.ph.i272.i:                                    ; preds = %list_Delete.exit.i, %.lr.ph.i272.i
  %.07.i273.i = phi ptr [ %.0.val.i274.i, %.lr.ph.i272.i ], [ %.3146.lcssa.i, %list_Delete.exit.i ] ; 3 uses
  %.0.val.i274.i = load ptr, ptr %.07.i273.i, align 8 ; 2 uses
  %i.jz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load i32, ptr %i.ka, align 8
  %i.kc = sext i32 %i.kb to i64
  %i.kd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ke = add i64 %i.kd, %i.kc
  store i64 %i.ke, ptr @memory_FREEDBYTES, align 8
  %i.kf = load ptr, ptr %i.jz, align 8
  store ptr %i.kf, ptr %.07.i273.i, align 8
  %i.kg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i273.i, ptr %i.kg, align 8
  %.not.i275.i = icmp eq ptr %.0.val.i274.i, null
  br i1 %.not.i275.i, label %list_Delete.exit276.i, label %.lr.ph.i272.i, !llvm.loop !3

list_Delete.exit276.i:                            ; preds = %.lr.ph.i272.i, %list_Delete.exit.i
  %.not6.i277.i = icmp eq ptr %.4166.lcssa.i, null
  br i1 %.not6.i277.i, label %.lr.ph.i191, label %.lr.ph.i278.i

.lr.ph.i278.i:                                    ; preds = %list_Delete.exit276.i, %.lr.ph.i278.i
  %.07.i279.i = phi ptr [ %.0.val.i280.i, %.lr.ph.i278.i ], [ %.4166.lcssa.i, %list_Delete.exit276.i ] ; 3 uses
  %.0.val.i280.i = load ptr, ptr %.07.i279.i, align 8 ; 2 uses
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i32, ptr %i.ki, align 8
  %i.kk = sext i32 %i.kj to i64
  %i.kl = load i64, ptr @memory_FREEDBYTES, align 8
  %i.km = add i64 %i.kl, %i.kk
  store i64 %i.km, ptr @memory_FREEDBYTES, align 8
  %i.kn = load ptr, ptr %i.kh, align 8
  store ptr %i.kn, ptr %.07.i279.i, align 8
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i279.i, ptr %i.ko, align 8
  %.not.i281.i = icmp eq ptr %.0.val.i280.i, null
  br i1 %.not.i281.i, label %.lr.ph.i191, label %.lr.ph.i278.i, !llvm.loop !3

.lr.ph.i191:                                      ; preds = %.lr.ph.i278.i, %list_Delete.exit276.i
  %.val187.i = load i32, ptr %.val186.val.i, align 8
  %i.kp = icmp slt i32 %.val187.i, 1
  %spec.select.i = select i1 %i.kp, i32 2, i32 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jq, i64 76
  store i32 %spec.select.i, ptr %i.kq, align 4
  %i.kr = add nsw i32 %.1148.lcssa.i, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %i.kr, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jq, i64 48 ; 3 uses
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = or i32 %i.ku, 4                         ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 8            ; 4 uses
  %i.ky = getelementptr i8, ptr %i.jq, i64 12     ; 2 uses
  %.promoted.i = load i32, ptr %i.ky, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.lr.ph.i191
  %i.kz = phi i32 [ %i.kv, %.lr.ph.i191 ], [ %i.le, %bb.af ] ; 2 uses
  %spec.select5459.i = phi i32 [ %.promoted.i, %.lr.ph.i191 ], [ %spec.select54.i, %bb.af ]
  %.058.i = phi i32 [ %i.kx, %.lr.ph.i191 ], [ %spec.select.i193, %bb.af ]
  %.04057.i = phi ptr [ %i.jo, %.lr.ph.i191 ], [ %.040.val.i, %bb.af ] ; 2 uses
  %i.la = getelementptr i8, ptr %.04057.i, i64 8
  %.040.val49.i = load ptr, ptr %i.la, align 8    ; 3 uses
  %i.lb = getelementptr i8, ptr %.040.val49.i, i64 48
  %.val.i192 = load i32, ptr %i.lb, align 8
  %i.lc = and i32 %.val.i192, 8
  %.not47.i = icmp eq i32 %i.lc, 0
  br i1 %.not47.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ld = or i32 %i.kz, 8                         ; 2 uses
  store i32 %i.ld, ptr %i.kt, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.le = phi i32 [ %i.ld, %bb.ae ], [ %i.kz, %bb.ad ]
  %i.lf = getelementptr i8, ptr %.040.val49.i, i64 12
  %.val53.i = load i32, ptr %i.lf, align 4
  %spec.select54.i = tail call i32 @llvm.umax.i32(i32 %.val53.i, i32 %spec.select5459.i) ; 2 uses
  store i32 %spec.select54.i, ptr %i.ky, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.040.val49.i, i64 24
  %i.lh = load i32, ptr %i.lg, align 8
  %spec.select.i193 = tail call i32 @llvm.umax.i32(i32 %.058.i, i32 %i.lh) ; 4 uses
  %.040.val.i = load ptr, ptr %.04057.i, align 8  ; 2 uses
  %.not.i194 = icmp eq ptr %.040.val.i, null
  br i1 %.not.i194, label %._crit_edge.i195, label %bb.ad, !llvm.loop !7

._crit_edge.i195:                                 ; preds = %bb.af
  %i.li = icmp ugt i32 %spec.select.i193, %i.kx
  br i1 %i.li, label %bb.ag, label %._crit_edge.thread.i

bb.ag:                                            ; preds = %._crit_edge.i195
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8            ; 5 uses
  %.not45.i = icmp eq ptr %i.lk, null
  br i1 %.not45.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ll = shl i32 %i.kx, 3                        ; 4 uses
  %i.lm = icmp ult i32 %i.ll, 1024
  br i1 %i.lm, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ln = urem i32 %i.ll, %i.bd                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ln, 0
  %i.lo = sub nuw i32 %i.bd, %i.ln
  %i.lp = select i1 %.not.i.i.i.i, i32 0, i32 %i.lo
  %.1.i.i.i.i = add i32 %i.lp, %i.ll
  %i.lq = load i32, ptr @memory_OFFSET, align 4
  %i.lr = zext i32 %i.lq to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.lk, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8            ; 2 uses
  %.not.i.i200 = icmp eq ptr %i.lv, null
  %i.lw = getelementptr inbounds i8, ptr %i.lt, i64 -8
  %i.lx = load ptr, ptr %i.lw, align 8            ; 4 uses
  br i1 %.not.i.i200, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %i.lx, ptr %i.ly, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  store ptr %i.lx, ptr @memory_BIGBLOCKS, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not20.i.i = icmp eq ptr %i.lx, null
  br i1 %.not20.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_2
begin_hunk_3_@inf_InternWeakening:bb.a
  %i.pz = getelementptr i8, ptr %i.py, i64 24
  %.val.i.i.i169.prol = load ptr, ptr %i.pz, align 8
  store ptr %.val.i.i.i169.prol, ptr @cont_LASTBINDING, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qa, i8 0, i64 20, i1 false)
  %i.qb = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  store ptr null, ptr %i.qc, align 8
  %i.qd = add nsw i32 %.pr.i165, -1               ; 2 uses
  store i32 %i.qd, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i168.prol.loopexit

.lr.ph.i168.prol.loopexit:                        ; preds = %.lr.ph.i168.prol, %.lr.ph.i168.preheader
  %.unr387 = phi i32 [ %.pr.i165, %.lr.ph.i168.preheader ], [ %i.qd, %.lr.ph.i168.prol ]
  %i.qe = icmp eq i32 %.pr.i165, 1
  br i1 %i.qe, label %._crit_edge.i166, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.prol.loopexit, %.lr.ph.i168
  %i.qf = phi i32 [ %i.qr, %.lr.ph.i168 ], [ %.unr387, %.lr.ph.i168.prol.loopexit ] ; 3 uses
  %i.qg = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.qg, ptr @cont_CURRENTBINDING, align 8
  %i.qh = getelementptr i8, ptr %i.qg, i64 24
  %.val.i.i.i169 = load ptr, ptr %i.qh, align 8
  store ptr %.val.i.i.i169, ptr @cont_LASTBINDING, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qi, i8 0, i64 20, i1 false)
  %i.qj = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store ptr null, ptr %i.qk, align 8
  %i.ql = add nsw i32 %i.qf, -1
  store i32 %i.ql, ptr @cont_BINDINGS, align 4
  %i.qm = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.qm, ptr @cont_CURRENTBINDING, align 8
  %i.qn = getelementptr i8, ptr %i.qm, i64 24
  %.val.i.i.i169.1 = load ptr, ptr %i.qn, align 8
  store ptr %.val.i.i.i169.1, ptr @cont_LASTBINDING, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qo, i8 0, i64 20, i1 false)
  %i.qp = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store ptr null, ptr %i.qq, align 8
  %i.qr = add nsw i32 %i.qf, -2                   ; 2 uses
  store i32 %i.qr, ptr @cont_BINDINGS, align 4
  %i.qs = icmp sgt i32 %i.qf, 2
  br i1 %i.qs, label %.lr.ph.i168, label %._crit_edge.i166, !llvm.loop !6

._crit_edge.i166:                                 ; preds = %.lr.ph.i168.prol.loopexit, %.lr.ph.i168, %bb.ax
  %i.qt = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i167 = icmp eq i32 %i.qt, 0
  br i1 %.not.i167, label %cont_BackTrack.exit170, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i166
  %i.qu = add nsw i32 %i.qt, -1                   ; 2 uses
  store i32 %i.qu, ptr @cont_STACKPOINTER, align 4
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4
  store i32 %i.qx, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit170

cont_BackTrack.exit170:                           ; preds = %._crit_edge.i166, %bb.ay
  %.val.i171 = load ptr, ptr %.3253, align 8
  %i.qy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.ra = load i32, ptr %i.qz, align 8
  %i.rb = sext i32 %i.ra to i64
  %i.rc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.rd = add i64 %i.rc, %i.rb
  store i64 %i.rd, ptr @memory_FREEDBYTES, align 8
  %i.re = load ptr, ptr %i.qy, align 8
  store ptr %i.re, ptr %.3253, align 8
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.3253, ptr %i.rf, align 8
  %.pre = load i32, ptr @stack_POINTER, align 4
  %i.rg = icmp eq i32 %.pre, %i.aw
  br label %.critedge2

.critedge2:                                       ; preds = %cont_BackTrack.exit163, %list_Nconc.exit, %cont_BackTrack.exit170
  %.not208 = phi i1 [ %i.rg, %cont_BackTrack.exit170 ], [ true, %list_Nconc.exit ], [ true, %cont_BackTrack.exit163 ]
  %.375 = phi ptr [ %i.pw, %cont_BackTrack.exit170 ], [ %.173218, %list_Nconc.exit ], [ %.173218, %cont_BackTrack.exit163 ]
  %.371 = phi ptr [ %i.oi, %cont_BackTrack.exit170 ], [ %.169216, %list_Nconc.exit ], [ %.169216, %cont_BackTrack.exit163 ] ; 2 uses
  %.4 = phi ptr [ %.val.i171, %cont_BackTrack.exit170 ], [ %.1214, %list_Nconc.exit ], [ %.val.i164, %cont_BackTrack.exit163 ]
  %.not209 = icmp eq ptr %.371, null
  %or.cond = select i1 %.not208, i1 %.not209, i1 false
  br i1 %or.cond, label %bb.az, label %.critedge4, !llvm.loop !65

bb.az:                                            ; preds = %.critedge2
  %.not6.i = icmp eq ptr %i.bo, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.az, %.lr.ph.i172
  %.07.i = phi ptr [ %.0.val.i173, %.lr.ph.i172 ], [ %i.bo, %bb.az ] ; 3 uses
  %.0.val.i173 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.rh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rj = load i32, ptr %i.ri, align 8
  %i.rk = sext i32 %i.rj to i64
  %i.rl = load i64, ptr @memory_FREEDBYTES, align 8
  %i.rm = add i64 %i.rl, %i.rk
  store i64 %i.rm, ptr @memory_FREEDBYTES, align 8
  %i.rn = load ptr, ptr %i.rh, align 8
  store ptr %i.rn, ptr %.07.i, align 8
  %i.ro = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ro, align 8
  %.not.i174 = icmp eq ptr %.0.val.i173, null
  br i1 %.not.i174, label %list_Delete.exit, label %.lr.ph.i172, !llvm.loop !3

list_Delete.exit:                                 ; preds = %.lr.ph.i172, %bb.az, %clause_LiteralPredicate.exit
  %.381 = phi ptr [ %.078257, %clause_LiteralPredicate.exit ], [ %.280, %bb.az ], [ %.280, %.lr.ph.i172 ] ; 2 uses
  %i.rp = getelementptr i8, ptr %.083.val, i64 8
  %.val.i176 = load ptr, ptr %i.rp, align 8       ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i176, null
  br i1 %.not6.i.i.i, label %sort_PairDelete.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %list_Delete.exit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %.0.val.i.i.i, %.lr.ph.i.i.i ], [ %.val.i176, %list_Delete.exit ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.07.i.i.i, align 8 ; 2 uses
  %i.rq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rs = load i32, ptr %i.rr, align 8
  %i.rt = sext i32 %i.rs to i64
  %i.ru = load i64, ptr @memory_FREEDBYTES, align 8
  %i.rv = add i64 %i.ru, %i.rt
  store i64 %i.rv, ptr @memory_FREEDBYTES, align 8
  %i.rw = load ptr, ptr %i.rq, align 8
  store ptr %i.rw, ptr %.07.i.i.i, align 8
  %i.rx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i.i, ptr %i.rx, align 8
  %.not.i.i.i177 = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i177, label %sort_PairDelete.exit, label %.lr.ph.i.i.i, !llvm.loop !3

sort_PairDelete.exit:                             ; preds = %.lr.ph.i.i.i, %list_Delete.exit
  %.val3.i = load ptr, ptr %.083.val, align 8
  tail call void @sort_ConditionDelete(ptr noundef %.val3.i) #12
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  %i.sa = load i32, ptr %i.rz, align 8
  %i.sb = sext i32 %i.sa to i64
  %i.sc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.sd = add i64 %i.sc, %i.sb
  store i64 %i.sd, ptr @memory_FREEDBYTES, align 8
  %i.se = load ptr, ptr %i.ry, align 8
  store ptr %i.se, ptr %.083.val, align 8
  %i.sf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.083.val, ptr %i.sf, align 8
  %.val.i178 = load ptr, ptr %.083256, align 8    ; 2 uses
  %i.sg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load i32, ptr %i.sh, align 8
  %i.sj = sext i32 %i.si to i64
  %i.sk = load i64, ptr @memory_FREEDBYTES, align 8
  %i.sl = add i64 %i.sk, %i.sj
  store i64 %i.sl, ptr @memory_FREEDBYTES, align 8
  %i.sm = load ptr, ptr %i.sg, align 8
  store ptr %i.sm, ptr %.083256, align 8
  %i.sn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.083256, ptr %i.sn, align 8
  %.not203 = icmp eq ptr %.val.i178, null
  br i1 %.not203, label %.lr.ph.i179, label %bb.g, !llvm.loop !66

.lr.ph.i179:                                      ; preds = %sort_PairDelete.exit, %.lr.ph.i179
  %.06.i = phi ptr [ %.0.val4.i, %.lr.ph.i179 ], [ %i.t, %sort_PairDelete.exit ] ; 2 uses
  %i.so = getelementptr i8, ptr %.06.i, i64 8     ; 2 uses
  %.0.val.i180 = load ptr, ptr %i.so, align 8
  %i.sp = getelementptr i8, ptr %.0.val.i180, i64 16
  %.val.i181 = load ptr, ptr %i.sp, align 8
  tail call void @clause_Delete(ptr noundef %.val.i181) #12
  store ptr null, ptr %i.so, align 8
  %.0.val4.i = load ptr, ptr %.06.i, align 8      ; 2 uses
  %.not.i182 = icmp eq ptr %.0.val4.i, null
  br i1 %.not.i182, label %.lr.ph.i185, label %.lr.ph.i179, !llvm.loop !67

.lr.ph.i185:                                      ; preds = %.lr.ph.i179, %.lr.ph.i185
  %.07.i186 = phi ptr [ %.0.val.i187, %.lr.ph.i185 ], [ %i.t, %.lr.ph.i179 ] ; 3 uses
  %.0.val.i187 = load ptr, ptr %.07.i186, align 8 ; 2 uses
  %i.sq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  %i.ss = load i32, ptr %i.sr, align 8
  %i.st = sext i32 %i.ss to i64
  %i.su = load i64, ptr @memory_FREEDBYTES, align 8
  %i.sv = add i64 %i.su, %i.st
  store i64 %i.sv, ptr @memory_FREEDBYTES, align 8
  %i.sw = load ptr, ptr %i.sq, align 8
  store ptr %i.sw, ptr %.07.i186, align 8
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i186, ptr %i.sx, align 8
  %.not.i188 = icmp eq ptr %.0.val.i187, null
  br i1 %.not.i188, label %list_Delete.exit190, label %.lr.ph.i185, !llvm.loop !3

list_Delete.exit190:                              ; preds = %.lr.ph.i185, %._crit_edge242
  %.082 = phi ptr [ null, %._crit_edge242 ], [ %.381, %.lr.ph.i185 ]
  ret ptr %.082
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardWeakening(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val.i.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not155 = icmp sgt i32 %i.f, %i.h
  br i1 %.not155, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %5 = add i32 %.val4.i.i, %.val.i.i
  %i.o = add i32 %5, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph159, %clause_LiteralIsSort.exit.thread
  %indvars.iv163 = phi i64 [ %i.n, %.lr.ph159 ], [ %indvars.iv.next164, %clause_LiteralIsSort.exit.thread ] ; 2 uses
  %.061156 = phi ptr [ null, %.lr.ph159 ], [ %.2, %clause_LiteralIsSort.exit.thread ] ; 8 uses
  %.val70 = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %.val70, i64 %indvars.iv163
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val78 = load ptr, ptr %i.r, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val78, align 8   ; 2 uses
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.s
  %.val79 = load i32, ptr %i.q, align 8
  %i.t = and i32 %.val79, 2
  %.not63 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not63, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not63, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.u = getelementptr i8, ptr %.val78, i64 16
  %.val6.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.v, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i135137 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val78, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.val.i.i86 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i86, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.w = sub nsw i32 0, %.val.i.i86               ; 2 uses
  %i.x = and i32 %i.j, %i.w
  %.not.i87 = icmp eq i32 %i.x, 2
  br i1 %.not.i87, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.y = lshr i32 %i.w, %i.k
  %i.z = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not139 = icmp eq i32 %i.ae, 1
  br i1 %.not139, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.af = getelementptr i8, ptr %.0.i135137, i64 16
  %.val76 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %.val76, i64 8
  %.val76.val = load ptr, ptr %i.ag, align 8
  %.val81 = load i32, ptr %.val76.val, align 8
  %i.ah = icmp slt i32 %.val81, 1
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val84 = load i32, ptr %i.c, align 8
  %.not140 = icmp eq i32 %.val84, 0
  br i1 %.not140, label %bb.f, label %clause_LiteralIsSort.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  call fastcc void @inf_GetBackwardPartnerLits(ptr noundef nonnull %i.q, ptr noundef %1, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.q, ptr %i.ak, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.a, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %sort_Intersect.exit.i
  %.013.i = phi ptr [ %.0.val9.i, %sort_Intersect.exit.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.0812.i = phi ptr [ %.0.i.i.i, %sort_Intersect.exit.i ], [ null, %bb.f ] ; 3 uses
  %i.al = getelementptr i8, ptr %.013.i, i64 8
  %.0.val.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.0.val.i, i64 24
  %.val.i = load ptr, ptr %i.am, align 8          ; 2 uses
  %.val5.val.i.i.i88 = load i32, ptr %.val.i, align 8 ; 2 uses
  %i.an = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i89 = icmp eq i32 %.val5.val.i.i.i88, %i.an
  br i1 %.not.i.i.i89, label %bb.g, label %clause_LiteralPredicate.exit.i90

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i.i93 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %.val6.i.i.i93, i64 8
  %.val6.val.i.i.i94 = load ptr, ptr %i.ap, align 8
  %.val.pre.i.i95 = load i32, ptr %.val6.val.i.i.i94, align 8
  br label %clause_LiteralPredicate.exit.i90

clause_LiteralPredicate.exit.i90:                 ; preds = %bb.g, %.lr.ph.i
  %.val.i.i91 = phi i32 [ %.val.pre.i.i95, %bb.g ], [ %.val5.val.i.i.i88, %.lr.ph.i ]
  %i.aq = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val.i.i91) #12 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i10.i, label %sort_Intersect.exit.i, label %bb.h

bb.h:                                             ; preds = %clause_LiteralPredicate.exit.i90
  %.not16.i.i.i = icmp eq ptr %.0812.i, null
  br i1 %.not16.i.i.i, label %sort_Intersect.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.i, label %.preheader.i.i.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i.i.i
  store ptr %.0812.i, ptr %.012.i.i.i, align 8
  br label %sort_Intersect.exit.i

sort_Intersect.exit.i:                            ; preds = %bb.i, %bb.h, %clause_LiteralPredicate.exit.i90
  %.0.i.i.i = phi ptr [ %i.aq, %bb.i ], [ %.0812.i, %clause_LiteralPredicate.exit.i90 ], [ %i.aq, %bb.h ] ; 4 uses
  %.0.val9.i = load ptr, ptr %.013.i, align 8     ; 2 uses
  %.not.i92 = icmp eq ptr %.0.val9.i, null
  br i1 %.not.i92, label %inf_GetSortFromLits.exit, label %.lr.ph.i, !llvm.loop !4

inf_GetSortFromLits.exit:                         ; preds = %sort_Intersect.exit.i
  %i.ar = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i.i) #12 ; 0 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %.not141148 = icmp eq ptr %.promoted, null
  br i1 %.not141148, label %.lr.ph.i125.preheader, label %.lr.ph151

.lr.ph151:                                        ; preds = %inf_GetSortFromLits.exit, %list_Delete.exit
  %.162150 = phi ptr [ %.0.i116, %list_Delete.exit ], [ %.061156, %inf_GetSortFromLits.exit ] ; 3 uses
  %.val.i123147149 = phi ptr [ %.val.i123, %list_Delete.exit ], [ %.promoted, %inf_GetSortFromLits.exit ] ; 4 uses
  %i.as = getelementptr i8, ptr %.val.i123147149, i64 8
  %.val73 = load ptr, ptr %i.as, align 8          ; 3 uses
  %i.at = getelementptr i8, ptr %.val73, i64 16
  %.val82 = load ptr, ptr %i.at, align 8          ; 3 uses
  %i.au = getelementptr i8, ptr %.val73, i64 24
  %.val77 = load ptr, ptr %i.au, align 8          ; 3 uses
  %.val5.val.i96 = load i32, ptr %.val77, align 8
  %i.av = load i32, ptr @fol_NOT, align 4
  %.not.i97 = icmp eq i32 %.val5.val.i96, %i.av
  br i1 %.not.i97, label %bb.j, label %clause_LiteralAtom.exit101

bb.j:                                             ; preds = %.lr.ph151
  %i.aw = getelementptr i8, ptr %.val77, i64 16
  %.val6.i99 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.val6.i99, i64 8
  %.val6.val.i100 = load ptr, ptr %i.ax, align 8
  br label %clause_LiteralAtom.exit101

clause_LiteralAtom.exit101:                       ; preds = %.lr.ph151, %bb.j
  %.0.i98 = phi ptr [ %.val6.val.i100, %bb.j ], [ %.val77, %.lr.ph151 ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.val82, i64 56   ; 2 uses
  %.val.i102 = load ptr, ptr %i.ay, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %clause_LiteralAtom.exit101
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %clause_LiteralAtom.exit101 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i102, i64 %indvars.iv.i
  %i.ba = load ptr, ptr %i.az, align 8
  %.not.i103 = icmp eq ptr %i.ba, %.val73
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i103, label %clause_LiteralGetIndex.exit, label %bb.k, !llvm.loop !0

clause_LiteralGetIndex.exit:                      ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %.val82, i64 64
  %.val83 = load i32, ptr %i.bb, align 8          ; 2 uses
  %i.bc = icmp sgt i32 %.val83, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %clause_LiteralGetIndex.exit
  %i.bd = getelementptr i8, ptr %.0.i98, i64 16
  %i.be = zext nneg i32 %.val83 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %sort_Intersect.exit
  %indvars.iv = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %sort_Intersect.exit ] ; 2 uses
  %.0144 = phi ptr [ null, %.lr.ph ], [ %.1, %sort_Intersect.exit ] ; 5 uses
  %.057143 = phi ptr [ null, %.lr.ph ], [ %.158, %sort_Intersect.exit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %.val85 = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val85, i64 %indvars.iv.next
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %.val1.i = load ptr, ptr %i.bh, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.bi = load i32, ptr @fol_NOT, align 4
  %.not.i.i104 = icmp eq i32 %.val5.val.i.i, %i.bi
  br i1 %.not.i.i104, label %bb.m, label %clause_GetLiteralAtom.exit

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val6.i.i, i64 8
end_hunk_3
begin_hunk_4_@inf_ForwardEmptySortPlusPlus:bb.a
  br i1 %i.am, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %clause_LiteralAtom.exit103, %sort_Intersect.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %sort_Intersect.exit ], [ %i.f, %clause_LiteralAtom.exit103 ] ; 3 uses
  %.0143 = phi ptr [ %.1, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 4 uses
  %.059142 = phi ptr [ %.160, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 2 uses
  %.val88 = load ptr, ptr %i.b, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.val88, i64 %indvars.iv159
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val1.i104 = load ptr, ptr %i.ap, align 8      ; 3 uses
  %.val5.val.i.i105 = load i32, ptr %.val1.i104, align 8
  %i.aq = load i32, ptr @fol_NOT, align 4
  %.not.i.i106 = icmp eq i32 %.val5.val.i.i105, %i.aq
  br i1 %.not.i.i106, label %bb.f, label %clause_GetLiteralAtom.exit110

bb.f:                                             ; preds = %.lr.ph145
  %i.ar = getelementptr i8, ptr %.val1.i104, i64 16
  %.val6.i.i108 = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.val6.i.i108, i64 8
  %.val6.val.i.i109 = load ptr, ptr %i.as, align 8
  br label %clause_GetLiteralAtom.exit110

clause_GetLiteralAtom.exit110:                    ; preds = %.lr.ph145, %bb.f
  %.0.i.i107 = phi ptr [ %.val6.val.i.i109, %bb.f ], [ %.val1.i104, %.lr.ph145 ] ; 2 uses
  %i.at = getelementptr i8, ptr %.0.i.i107, i64 16
  %.val79 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.val79, i64 8
  %.val79.val = load ptr, ptr %i.au, align 8
  %i.av = icmp eq ptr %.val79.val, %.val80.val
  br i1 %i.av, label %bb.g, label %sort_Intersect.exit

bb.g:                                             ; preds = %clause_GetLiteralAtom.exit110
  %i.aw = inttoptr i64 %indvars.iv159 to ptr
  %i.ax = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  store ptr %.059142, ptr %i.ax, align 8
  %.val77 = load i32, ptr %.0.i.i107, align 8
  %i.az = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val77) #12 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.az, null
  br i1 %.not.i.i111, label %sort_Intersect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not16.i.i = icmp eq ptr %.0143, null
  br i1 %.not16.i.i, label %sort_Intersect.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.i, label %.preheader.i.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i.i
  store ptr %.0143, ptr %.012.i.i, align 8
  br label %sort_Intersect.exit

sort_Intersect.exit:                              ; preds = %bb.i, %bb.h, %bb.g, %clause_GetLiteralAtom.exit110
  %.160 = phi ptr [ %.059142, %clause_GetLiteralAtom.exit110 ], [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %.0143, %clause_GetLiteralAtom.exit110 ], [ %.0143, %bb.g ], [ %i.az, %bb.h ], [ %i.az, %bb.i ] ; 2 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1 ; 2 uses
  %i.ba = icmp sgt i64 %indvars.iv.next160, %indvars.iv162
  br i1 %i.ba, label %.lr.ph145, label %._crit_edge146, !llvm.loop !75

._crit_edge146:                                   ; preds = %sort_Intersect.exit, %clause_LiteralAtom.exit103
  %.059.lcssa = phi ptr [ null, %clause_LiteralAtom.exit103 ], [ %.160, %sort_Intersect.exit ]
  %.0.lcssa = phi ptr [ null, %clause_LiteralAtom.exit103 ], [ %.1, %sort_Intersect.exit ] ; 3 uses
  %i.bb = inttoptr i64 %indvars.iv162 to ptr
  %i.bc = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  store ptr %.059.lcssa, ptr %i.bc, align 8
  %.val76 = load i32, ptr %.0.i100, align 8
  %i.be = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val76) #12 ; 4 uses
  %.not.i.i113 = icmp eq ptr %i.be, null
  br i1 %.not.i.i113, label %sort_Intersect.exit120, label %bb.j

bb.j:                                             ; preds = %._crit_edge146
  %.not16.i.i114 = icmp eq ptr %.0.lcssa, null
  br i1 %.not16.i.i114, label %sort_Intersect.exit120, label %.preheader.i.i115

.preheader.i.i115:                                ; preds = %bb.j, %.preheader.i.i115
  %.012.i.i116 = phi ptr [ %.012.val15.i.i117, %.preheader.i.i115 ], [ %i.be, %bb.j ] ; 2 uses
  %.012.val15.i.i117 = load ptr, ptr %.012.i.i116, align 8 ; 2 uses
  %.not17.i.i118 = icmp eq ptr %.012.val15.i.i117, null
  br i1 %.not17.i.i118, label %bb.k, label %.preheader.i.i115, !llvm.loop !2

bb.k:                                             ; preds = %.preheader.i.i115
  store ptr %.0.lcssa, ptr %.012.i.i116, align 8
  br label %sort_Intersect.exit120

sort_Intersect.exit120:                           ; preds = %._crit_edge146, %bb.j, %bb.k
  %.0.i.i119 = phi ptr [ %i.be, %bb.k ], [ %.0.lcssa, %._crit_edge146 ], [ %i.be, %bb.j ] ; 3 uses
  %i.bf = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i119) #12 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sort_Intersect.exit120, %sort_Intersect.exit.i
  %.013.i = phi ptr [ %.0.val9.i, %sort_Intersect.exit.i ], [ %i.ai, %sort_Intersect.exit120 ] ; 2 uses
  %.0812.i = phi ptr [ %.0.i.i.i, %sort_Intersect.exit.i ], [ null, %sort_Intersect.exit120 ] ; 3 uses
  %i.bg = getelementptr i8, ptr %.013.i, i64 8
  %.0.val.i = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %.0.val.i, i64 24
  %.val.i = load ptr, ptr %i.bh, align 8          ; 2 uses
  %.val5.val.i.i.i = load i32, ptr %.val.i, align 8 ; 2 uses
  %i.bi = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.bi
  br i1 %.not.i.i.i, label %bb.l, label %clause_LiteralPredicate.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.bk, align 8
  %.val.pre.i.i = load i32, ptr %.val6.val.i.i.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %bb.l, %.lr.ph.i
  %.val.i.i121 = phi i32 [ %.val.pre.i.i, %bb.l ], [ %.val5.val.i.i.i, %.lr.ph.i ]
  %i.bl = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val.i.i121) #12 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i10.i, label %sort_Intersect.exit.i, label %bb.m

bb.m:                                             ; preds = %clause_LiteralPredicate.exit.i
  %.not16.i.i.i = icmp eq ptr %.0812.i, null
  br i1 %.not16.i.i.i, label %sort_Intersect.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %i.bl, %bb.m ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %.preheader.i.i.i
  store ptr %.0812.i, ptr %.012.i.i.i, align 8
  br label %sort_Intersect.exit.i

sort_Intersect.exit.i:                            ; preds = %bb.n, %bb.m, %clause_LiteralPredicate.exit.i
  %.0.i.i.i = phi ptr [ %i.bl, %bb.n ], [ %.0812.i, %clause_LiteralPredicate.exit.i ], [ %i.bl, %bb.m ] ; 4 uses
  %.0.val9.i = load ptr, ptr %.013.i, align 8     ; 2 uses
  %.not.i122 = icmp eq ptr %.0.val9.i, null
  br i1 %.not.i122, label %inf_GetSortFromLits.exit, label %.lr.ph.i, !llvm.loop !4

inf_GetSortFromLits.exit:                         ; preds = %sort_Intersect.exit.i
  %i.bm = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i.i) #12 ; 0 uses
  %i.bn = tail call ptr @sort_TheoryComputeAllSubsortHits(ptr noundef %2, ptr noundef %.0.i.i.i, ptr noundef %.0.i.i119) #12
  tail call void @sort_Delete(ptr noundef %.0.i.i.i) #12
  tail call void @sort_Delete(ptr noundef %.0.i.i119) #12
  %i.bo = tail call fastcc ptr @inf_InternWeakening(ptr noundef %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ai, ptr noundef null, ptr noundef %i.bn, ptr noundef %3, ptr noundef %4)
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %inf_GetSortFromLits.exit, %.lr.ph.i125
  %.07.i = phi ptr [ %.0.val.i126, %.lr.ph.i125 ], [ %i.bc, %inf_GetSortFromLits.exit ] ; 3 uses
  %.0.val.i126 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bu = add i64 %i.bt, %i.bs
  store i64 %i.bu, ptr @memory_FREEDBYTES, align 8
  %i.bv = load ptr, ptr %i.bp, align 8
  store ptr %i.bv, ptr %.07.i, align 8
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bw, align 8
  %.not.i127 = icmp eq ptr %.0.val.i126, null
  br i1 %.not.i127, label %.lr.ph.i129, label %.lr.ph.i125, !llvm.loop !3

.lr.ph.i129:                                      ; preds = %.lr.ph.i125, %.lr.ph.i129
  %.07.i130 = phi ptr [ %.0.val.i131, %.lr.ph.i129 ], [ %i.ai, %.lr.ph.i125 ] ; 3 uses
  %.0.val.i131 = load ptr, ptr %.07.i130, align 8 ; 2 uses
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cc = add i64 %i.cb, %i.ca
  store i64 %i.cc, ptr @memory_FREEDBYTES, align 8
  %i.cd = load ptr, ptr %i.bx, align 8
  store ptr %i.cd, ptr %.07.i130, align 8
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i130, ptr %i.ce, align 8
  %.not.i132 = icmp eq ptr %.0.val.i131, null
  br i1 %.not.i132, label %.critedge, label %.lr.ph.i129, !llvm.loop !3

list_Delete.exit133:                              ; preds = %clause_GetLiteralAtom.exit.thread, %._crit_edge, %clause_GetLiteralAtom.exit
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv.next163, %i.e
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %list_Delete.exit133, %.lr.ph.i129, %.critedge156, %bb.a
  %.068.lcssa = phi ptr [ null, %bb.a ], [ %i.bo, %.lr.ph.i129 ], [ null, %.critedge156 ], [ null, %list_Delete.exit133 ]
  ret ptr %.068.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardEmptySortPlusPlus(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val.i.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not190 = icmp sgt i32 %i.f, %i.h
  br i1 %.not190, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %5 = add i32 %.val4.i.i, %.val.i.i
  %i.o = add i32 %5, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph194, %clause_LiteralIsSort.exit.thread
  %indvars.iv202 = phi i64 [ %i.n, %.lr.ph194 ], [ %indvars.iv.next203, %clause_LiteralIsSort.exit.thread ] ; 2 uses
  %.075191 = phi ptr [ null, %.lr.ph194 ], [ %.3, %clause_LiteralIsSort.exit.thread ] ; 8 uses
  %.val85 = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %.val85, i64 %indvars.iv202
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val96 = load ptr, ptr %i.r, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val96, align 8   ; 2 uses
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.s
  %.val97 = load i32, ptr %i.q, align 8
  %i.t = and i32 %.val97, 2
  %.not77 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.u = getelementptr i8, ptr %.val96, i64 16
  %.val6.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.v, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i165167 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val96, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.val.i.i106 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i106, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.w = sub nsw i32 0, %.val.i.i106              ; 2 uses
  %i.x = and i32 %i.j, %i.w
  %.not.i107 = icmp eq i32 %i.x, 2
  br i1 %.not.i107, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.y = lshr i32 %i.w, %i.k
  %i.z = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not169 = icmp eq i32 %i.ae, 1
  br i1 %.not169, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.af = getelementptr i8, ptr %.0.i165167, i64 16
  %.val94 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.ag, align 8
  %.val99 = load i32, ptr %.val94.val, align 8
  %i.ah = icmp slt i32 %.val99, 1
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val103 = load i32, ptr %i.c, align 8
  %.not170 = icmp eq i32 %.val103, 0
  br i1 %.not170, label %bb.f, label %clause_LiteralIsSort.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  call fastcc void @inf_GetBackwardPartnerLits(ptr noundef nonnull %i.q, ptr noundef %1, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 1, ptr noundef %3, ptr noundef %4)
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.q, ptr %i.ak, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.a, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %sort_Intersect.exit.i
  %.013.i = phi ptr [ %.0.val9.i, %sort_Intersect.exit.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.0812.i = phi ptr [ %.0.i.i.i, %sort_Intersect.exit.i ], [ null, %bb.f ] ; 3 uses
  %i.al = getelementptr i8, ptr %.013.i, i64 8
  %.0.val.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.0.val.i, i64 24
  %.val.i = load ptr, ptr %i.am, align 8          ; 2 uses
  %.val5.val.i.i.i108 = load i32, ptr %.val.i, align 8 ; 2 uses
  %i.an = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i109 = icmp eq i32 %.val5.val.i.i.i108, %i.an
  br i1 %.not.i.i.i109, label %bb.g, label %clause_LiteralPredicate.exit.i110

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i.i113 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %.val6.i.i.i113, i64 8
  %.val6.val.i.i.i114 = load ptr, ptr %i.ap, align 8
  %.val.pre.i.i115 = load i32, ptr %.val6.val.i.i.i114, align 8
  br label %clause_LiteralPredicate.exit.i110

clause_LiteralPredicate.exit.i110:                ; preds = %bb.g, %.lr.ph.i
  %.val.i.i111 = phi i32 [ %.val.pre.i.i115, %bb.g ], [ %.val5.val.i.i.i108, %.lr.ph.i ]
  %i.aq = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val.i.i111) #12 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i10.i, label %sort_Intersect.exit.i, label %bb.h

bb.h:                                             ; preds = %clause_LiteralPredicate.exit.i110
  %.not16.i.i.i = icmp eq ptr %.0812.i, null
  br i1 %.not16.i.i.i, label %sort_Intersect.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.i, label %.preheader.i.i.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i.i.i
  store ptr %.0812.i, ptr %.012.i.i.i, align 8
  br label %sort_Intersect.exit.i

sort_Intersect.exit.i:                            ; preds = %bb.i, %bb.h, %clause_LiteralPredicate.exit.i110
  %.0.i.i.i = phi ptr [ %i.aq, %bb.i ], [ %.0812.i, %clause_LiteralPredicate.exit.i110 ], [ %i.aq, %bb.h ] ; 4 uses
  %.0.val9.i = load ptr, ptr %.013.i, align 8     ; 2 uses
  %.not.i112 = icmp eq ptr %.0.val9.i, null
  br i1 %.not.i112, label %inf_GetSortFromLits.exit, label %.lr.ph.i, !llvm.loop !4

inf_GetSortFromLits.exit:                         ; preds = %sort_Intersect.exit.i
  %i.ar = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i.i) #12 ; 0 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %.not171183 = icmp eq ptr %.promoted, null
  br i1 %.not171183, label %.lr.ph.i155.preheader, label %.lr.ph186

.lr.ph186:                                        ; preds = %inf_GetSortFromLits.exit, %list_Delete.exit
  %.176185 = phi ptr [ %.2, %list_Delete.exit ], [ %.075191, %inf_GetSortFromLits.exit ] ; 4 uses
  %.val.i153182184 = phi ptr [ %.val.i153, %list_Delete.exit ], [ %.promoted, %inf_GetSortFromLits.exit ] ; 4 uses
  %i.as = getelementptr i8, ptr %.val.i153182184, i64 8
  %.val91 = load ptr, ptr %i.as, align 8          ; 3 uses
  %i.at = getelementptr i8, ptr %.val91, i64 16
  %.val100 = load ptr, ptr %i.at, align 8         ; 5 uses
  %i.au = getelementptr i8, ptr %.val91, i64 24
  %.val95 = load ptr, ptr %i.au, align 8          ; 3 uses
  %.val5.val.i116 = load i32, ptr %.val95, align 8
  %i.av = load i32, ptr @fol_NOT, align 4
  %.not.i117 = icmp eq i32 %.val5.val.i116, %i.av
  br i1 %.not.i117, label %bb.j, label %clause_LiteralAtom.exit121

bb.j:                                             ; preds = %.lr.ph186
  %i.aw = getelementptr i8, ptr %.val95, i64 16
  %.val6.i119 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.val6.i119, i64 8
  %.val6.val.i120 = load ptr, ptr %i.ax, align 8
  br label %clause_LiteralAtom.exit121

clause_LiteralAtom.exit121:                       ; preds = %.lr.ph186, %bb.j
  %.0.i118 = phi ptr [ %.val6.val.i120, %bb.j ], [ %.val95, %.lr.ph186 ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.val100, i64 56  ; 3 uses
  %.val.i122 = load ptr, ptr %i.ay, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %clause_LiteralAtom.exit121
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %clause_LiteralAtom.exit121 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i122, i64 %indvars.iv.i
  %i.ba = load ptr, ptr %i.az, align 8
  %.not.i123 = icmp eq ptr %i.ba, %.val91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i123, label %clause_LiteralGetIndex.exit, label %bb.k, !llvm.loop !0

clause_LiteralGetIndex.exit:                      ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %.val100, i64 64  ; 2 uses
  %.val.i.i124 = load i32, ptr %i.bb, align 8     ; 4 uses
  %i.bc = getelementptr i8, ptr %.val100, i64 68
  %.val3.i.i125 = load i32, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %.val100, i64 72
  %.val4.i.i126 = load i32, ptr %i.bd, align 8
  %i.be = add i32 %.val.i.i124, -1
  %i.bf = add i32 %i.be, %.val3.i.i125
  %i.bg = add i32 %i.bf, %.val4.i.i126            ; 2 uses
  %i.bh = getelementptr i8, ptr %.0.i118, i64 16
  %.val93 = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %.val93, i64 8
  %.val93.val = load ptr, ptr %i.bi, align 8      ; 2 uses
  %.not197 = icmp sgt i32 %.val.i.i124, %i.bg
  br i1 %.not197, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clause_LiteralGetIndex.exit
  %i.bj = sext i32 %.val.i.i124 to i64
  %i.bk = sext i32 %i.bg to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_GetLiteralAtom.exit
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph.preheader ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit ] ; 3 uses
  %.val105 = load ptr, ptr %i.ay, align 8
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val105, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %.val1.i = load ptr, ptr %i.bn, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
end_hunk_4
