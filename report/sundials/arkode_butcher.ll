Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_butcher?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 246
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 430
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"  A = \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"% .15e  \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"  c = \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"  b = \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"  d = \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ARKodeButcherTable_CheckOrder:\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"  method fails row sum condition\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"  method fails order 1 condition\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"  method fails order 2 condition\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"  method fails order 3 condition A\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"  method fails order 3 condition B\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"  method fails order 4 condition A\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"  method fails order 4 condition B\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"  method fails order 4 condition C\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"  method fails order 4 condition D\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition A\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition B\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition C\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition D\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition E\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition F\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition G\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition H\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"  method fails order 5 condition I\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition A\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition B\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition C\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition D\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition E\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition F\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition G\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition H\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition I\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition J\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition K\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition L\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition M\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition N\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition O\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition P\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition Q\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition R\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"  method fails order 6 condition S\0A\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"  method order >= 6; reverting to simplifying assumptions\0A\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"  method order = %i\0A\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"  embedding fails row sum condition\0A\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"  embedding fails order 1 condition\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"  embedding fails order 2 condition\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"  embedding fails order 3 condition A\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"  embedding fails order 3 condition B\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"  embedding fails order 4 condition A\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"  embedding fails order 4 condition B\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"  embedding fails order 4 condition C\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"  embedding fails order 4 condition D\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition A\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition B\0A\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition C\0A\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition D\0A\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition E\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition F\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition G\0A\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition H\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"  embedding fails order 5 condition I\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition A\0A\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition B\0A\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition C\0A\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition D\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition E\0A\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition F\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition G\0A\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition H\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition I\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition J\0A\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition K\0A\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition L\0A\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition M\0A\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition N\0A\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition O\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition P\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition Q\0A\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition R\0A\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"  embedding fails order 6 condition S\0A\00", align 1
@.str.84 = private unnamed_addr constant [62 x i8] c"  embedding order >= 6; reverting to simplifying assumptions\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"  embedding order = %i\0A\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"ARKodeButcherTable_CheckARKOrder:\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"  method fails row sum conditions\0A\00", align 1
@.str.88 = private unnamed_addr constant [35 x i8] c"  method fails order 1 conditions\0A\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"  method fails order 2 conditions\0A\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"  method fails order 3 conditions A\0A\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"  method fails order 3 conditions B\0A\00", align 1
@.str.92 = private unnamed_addr constant [37 x i8] c"  method fails order 4 conditions A\0A\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"  method fails order 4 conditions B\0A\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"  method fails order 4 conditions C\0A\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"  method fails order 4 conditions D\0A\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions A\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions B\0A\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions C\0A\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions D\0A\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions E\0A\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions F\0A\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions G\0A\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions H\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"  method fails order 5 conditions I\0A\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions A\0A\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions B\0A\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions C\0A\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions D\0A\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions E\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions F\0A\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions G\0A\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions H\0A\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions I\0A\00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions J\0A\00", align 1
@.str.115 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions K\0A\00", align 1
@.str.116 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions L\0A\00", align 1
@.str.117 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions M\0A\00", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions N\0A\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions O\0A\00", align 1
@.str.120 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions P\0A\00", align 1
@.str.121 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions Q\0A\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions R\0A\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"  method fails order 6 conditions S\0A\00", align 1
@.str.124 = private unnamed_addr constant [38 x i8] c"  embedding fails row sum conditions\0A\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"  embedding fails order 1 conditions\0A\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"  embedding fails order 2 conditions\0A\00", align 1
@.str.127 = private unnamed_addr constant [40 x i8] c"  embedding fails order 3 conditions A\0A\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"  embedding fails order 3 conditions B\0A\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"  embedding fails order 4 conditions A\0A\00", align 1
@.str.130 = private unnamed_addr constant [40 x i8] c"  embedding fails order 4 conditions B\0A\00", align 1
@.str.131 = private unnamed_addr constant [40 x i8] c"  embedding fails order 4 conditions C\0A\00", align 1
@.str.132 = private unnamed_addr constant [40 x i8] c"  embedding fails order 4 conditions D\0A\00", align 1
@.str.133 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions A\0A\00", align 1
@.str.134 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions B\0A\00", align 1
@.str.135 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions C\0A\00", align 1
@.str.136 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions D\0A\00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions E\0A\00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions F\0A\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions G\0A\00", align 1
@.str.140 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions H\0A\00", align 1
@.str.141 = private unnamed_addr constant [40 x i8] c"  embedding fails order 5 conditions I\0A\00", align 1
@.str.142 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions A\0A\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions B\0A\00", align 1
@.str.144 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions C\0A\00", align 1
@.str.145 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions D\0A\00", align 1
@.str.146 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions E\0A\00", align 1
@.str.147 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions F\0A\00", align 1
@.str.148 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions G\0A\00", align 1
@.str.149 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions H\0A\00", align 1
@.str.150 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions I\0A\00", align 1
@.str.151 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions J\0A\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions K\0A\00", align 1
@.str.153 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions L\0A\00", align 1
@.str.154 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions M\0A\00", align 1
@.str.155 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions N\0A\00", align 1
@.str.156 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions O\0A\00", align 1
@.str.157 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions P\0A\00", align 1
@.str.158 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions Q\0A\00", align 1
@.str.159 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions R\0A\00", align 1
@.str.160 = private unnamed_addr constant [40 x i8] c"  embedding fails order 6 conditions S\0A\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @ARKodeButcherTable_Alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #16 ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store i32 %0, ptr %i.h, align 8, !tbaa !13
  %i.j = zext nneg i32 %0 to i64                  ; 5 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 3 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !14
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.lr.ph48.preheader

bb.d:                                             ; preds = %bb.c
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.b)
  br label %bb.n

.lr.ph48.preheader:                               ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph48

bb.e:                                             ; preds = %.lr.ph48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.m, ptr %i.n, align 8, !tbaa !15
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph48
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.b)
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 2 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !16
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.b)
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !17
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.b)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !18
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.a, %bb.m, %bb.l, %bb.i, %bb.g, %bb.f, %bb.d
  %.042 = phi ptr [ %i.b, %bb.m ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.b ]
  ret ptr %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @ARKodeButcherTable_Free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.l = phi i32 [ %i.p, %bb.j ], [ %i.j, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.o) #18
  %.pre = load i32, ptr %i.i, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.p = phi i32 [ %i.l, %.lr.ph ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre28 = load ptr, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.s = phi ptr [ %.pre28, %._crit_edge.loopexit ], [ %i.h, %.preheader ]
  tail call void @free(ptr noundef %i.s) #18
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @ARKodeButcherTable_Create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = icmp slt i32 %0, 1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %6, null                    ; 2 uses
  %i.d = zext i1 %.not to i32
  %i.e = tail call ptr @ARKodeButcherTable_Alloc(i32 noundef %0, i32 noundef %i.d) ; 12 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %0, ptr %i.g, align 8, !tbaa !13
  store i32 %1, ptr %i.e, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = zext nneg i32 %0 to i64                  ; 12 uses
  %i.p = mul nsw i64 %i.o, -8
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %i.o, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph49
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge.us ], [ 0, %.lr.ph49 ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv53
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv53
  store double %i.r, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv53
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv53
  store double %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = mul nuw nsw i64 %indvars.iv53, %i.o
end_hunk_0
begin_hunk_1_@ARKodeButcherTable_CheckARKOrder:bb.a
  %i.iuo = icmp eq i32 %i.iun, 0
  br i1 %i.iuo, label %.thread7620, label %bb.adl

bb.adl:                                           ; preds = %.preheader2701.1
  %i.iup = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iuq = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iur = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.iup, ptr noundef %i.iuq, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.l, i32 noundef %i.c)
  %i.ius = icmp eq i32 %i.iur, 0
  br i1 %i.ius, label %.thread7620, label %.preheader.1.1

.preheader.1.1:                                   ; preds = %bb.adl
  %i.iut = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iuu = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iuv = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.iut, ptr noundef %i.iuu, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.ab, i32 noundef %i.c)
  %i.iuw = icmp eq i32 %i.iuv, 0
  br i1 %i.iuw, label %.thread7620, label %bb.adm

bb.adm:                                           ; preds = %.preheader.1.1
  %i.iux = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iuy = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iuz = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.iux, ptr noundef %i.iuy, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.l, i32 noundef %i.c)
  %i.iva = icmp eq i32 %i.iuz, 0
  br i1 %i.iva, label %.thread7620, label %.preheader2702.1

.preheader2702.1:                                 ; preds = %bb.adm
  %i.ivb = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivc = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivd = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivb, ptr noundef %i.ivc, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.ab, i32 noundef %i.c)
  %i.ive = icmp eq i32 %i.ivd, 0
  br i1 %i.ive, label %.thread7620, label %bb.adn

bb.adn:                                           ; preds = %.preheader2702.1
  %i.ivf = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivg = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivh = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivf, ptr noundef %i.ivg, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.f, ptr noundef %i.l, i32 noundef %i.c)
  %i.ivi = icmp eq i32 %i.ivh, 0
  br i1 %i.ivi, label %.thread7620, label %.preheader.1.15745

.preheader.1.15745:                               ; preds = %bb.adn
  %i.ivj = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivk = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivl = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivj, ptr noundef %i.ivk, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.f, ptr noundef %i.ab, i32 noundef %i.c)
  %i.ivm = icmp eq i32 %i.ivl, 0
  br i1 %i.ivm, label %.thread7620, label %bb.ado

bb.ado:                                           ; preds = %.preheader.1.15745
  %i.ivn = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivo = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivp = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivn, ptr noundef %i.ivo, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.l, i32 noundef %i.c)
  %i.ivq = icmp eq i32 %i.ivp, 0
  br i1 %i.ivq, label %.thread7620, label %.preheader2701.1.1

.preheader2701.1.1:                               ; preds = %bb.ado
  %i.ivr = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivs = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivt = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivr, ptr noundef %i.ivs, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.v, ptr noundef %i.ab, i32 noundef %i.c)
  %i.ivu = icmp eq i32 %i.ivt, 0
  br i1 %i.ivu, label %.thread7620, label %bb.adp

bb.adp:                                           ; preds = %.preheader2701.1.1
  %i.ivv = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.ivw = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.ivx = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivv, ptr noundef %i.ivw, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.l, i32 noundef %i.c)
  %i.ivy = icmp eq i32 %i.ivx, 0
  br i1 %i.ivy, label %.thread7620, label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %bb.adp
  %i.ivz = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iwa = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iwb = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.ivz, ptr noundef %i.iwa, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.f, ptr noundef %i.ab, i32 noundef %i.c)
  %i.iwc = icmp eq i32 %i.iwb, 0
  br i1 %i.iwc, label %.thread7620, label %bb.adq

bb.adq:                                           ; preds = %.preheader.1.1.1
  %i.iwd = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iwe = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iwf = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.iwd, ptr noundef %i.iwe, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.l, i32 noundef %i.c)
  %i.iwg = icmp eq i32 %i.iwf, 0
  br i1 %i.iwg, label %.thread7620, label %bb.adr

bb.adr:                                           ; preds = %bb.adq
  %i.iwh = load ptr, ptr %indvars.iv5751.sroa.phi, align 8, !tbaa !15
  %i.iwi = load ptr, ptr %indvars.iv5748.sroa.phi, align 8, !tbaa !395
  %i.iwj = tail call fastcc i32 @arkode_butcher_order6s(ptr noundef %i.iwh, ptr noundef %i.iwi, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.ab, i32 noundef %i.c)
  br label %.thread7620

.thread7620:                                      ; preds = %.preheader2703, %bb.adj, %.preheader.1, %bb.adk, %.preheader2701.1, %bb.adl, %.preheader.1.1, %bb.adm, %.preheader2702.1, %bb.adn, %.preheader.1.15745, %bb.ado, %.preheader2701.1.1, %bb.adp, %.preheader.1.1.1, %bb.adr, %bb.adq
  %i.iwk = phi i32 [ 0, %bb.adq ], [ %i.iwj, %bb.adr ], [ 0, %.preheader.1.1.1 ], [ 0, %bb.adp ], [ 0, %.preheader2701.1.1 ], [ 0, %bb.ado ], [ 0, %.preheader.1.15745 ], [ 0, %bb.adn ], [ 0, %.preheader2702.1 ], [ 0, %bb.adm ], [ 0, %.preheader.1.1 ], [ 0, %bb.adl ], [ 0, %.preheader2701.1 ], [ 0, %bb.adk ], [ 0, %.preheader.1 ], [ 0, %bb.adj ], [ 0, %.preheader2703 ] ; 3 uses
  br i1 %i.ity, label %.preheader2703, label %bb.ads

bb.ads:                                           ; preds = %.thread7620
  br i1 %i.itx, label %.preheader2704, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  %i.iwl = icmp eq i32 %i.iwk, 0                  ; 2 uses
  %or.cond138 = and i1 %i.ai, %i.iwl
  br i1 %or.cond138, label %.thread2682, label %bb.adu

.thread2682:                                      ; preds = %bb.adt
  %fwrite2248 = tail call i64 @fwrite(ptr nonnull @.str.160, i64 39, i64 1, ptr nonnull %4) ; 0 uses
  br label %thread-pre-split2680.thread

bb.adu:                                           ; preds = %bb.adt
  br i1 %i.iwl, label %thread-pre-split2680.thread, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  store i32 6, ptr %3, align 4, !tbaa !26
  br label %thread-pre-split2680.thread

thread-pre-split2680.thread:                      ; preds = %arkode_butcher_rowsum.exit2450, %.thread6757, %.thread2682, %thread-pre-split2680, %bb.adv, %bb.adu, %bb.op
  %.not26856760 = phi i1 [ true, %.thread6757 ], [ false, %.thread2682 ], [ false, %thread-pre-split2680 ], [ false, %bb.adv ], [ false, %bb.adu ], [ true, %bb.op ], [ false, %arkode_butcher_rowsum.exit2450 ]
  %i.iwm = load i32, ptr %2, align 4, !tbaa !26   ; 4 uses
  %i.iwn = load i32, ptr %0, align 8, !tbaa !19   ; 3 uses
  %i.iwo = icmp sgt i32 %i.iwm, %i.iwn
  br i1 %i.iwo, label %.loopexit, label %bb.adw

bb.adw:                                           ; preds = %thread-pre-split2680.thread
  %i.iwp = load i32, ptr %1, align 8, !tbaa !19   ; 3 uses
  %i.iwq = icmp sgt i32 %i.iwm, %i.iwp
  br i1 %i.iwq, label %.loopexit, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  br i1 %.not26856760, label %bb.aea, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.iwr = load i32, ptr %3, align 4, !tbaa !26   ; 2 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iwt = load i32, ptr %i.iws, align 4, !tbaa !20
  %i.iwu = icmp sgt i32 %i.iwr, %i.iwt
  br i1 %i.iwu, label %.loopexit, label %bb.adz

bb.adz:                                           ; preds = %bb.ady
  %i.iwv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iww = load i32, ptr %i.iwv, align 4, !tbaa !20
  %i.iwx = icmp sgt i32 %i.iwr, %i.iww
  br i1 %i.iwx, label %.loopexit, label %.thread7622

bb.aea:                                           ; preds = %bb.adx
  %i.iwy = icmp eq i32 %i.iwm, 6
  %i.iwz = icmp sgt i32 %i.iwn, 6
  %i.ixa = icmp sgt i32 %i.iwp, 6
  %or.cond23212686 = or i1 %i.iwz, %i.ixa
  %or.cond2684 = and i1 %i.iwy, %or.cond23212686
  br i1 %or.cond2684, label %.loopexit, label %bb.aed

.thread7622:                                      ; preds = %bb.adz
  %i.ixb = icmp eq i32 %i.iwm, 6
  %i.ixc = icmp sgt i32 %i.iwn, 6
  %i.ixd = icmp sgt i32 %i.iwp, 6
  %or.cond232126867623 = or i1 %i.ixc, %i.ixd
  %or.cond26847624 = and i1 %i.ixb, %or.cond232126867623
  br i1 %or.cond26847624, label %.loopexit, label %bb.aeb

bb.aeb:                                           ; preds = %.thread7622
  %i.ixe = load i32, ptr %3, align 4, !tbaa !26
  %i.ixf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ixg = load i32, ptr %i.ixf, align 4, !tbaa !20
  %i.ixh = icmp eq i32 %i.ixe, 6                  ; 2 uses
  %i.ixi = icmp sgt i32 %i.ixg, 6
  %or.cond2322 = and i1 %i.ixh, %i.ixi
  br i1 %or.cond2322, label %.loopexit, label %bb.aec

bb.aec:                                           ; preds = %bb.aeb
  %i.ixj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ixk = load i32, ptr %i.ixj, align 4, !tbaa !20
  %i.ixl = icmp sgt i32 %i.ixk, 6
  %or.cond2323 = and i1 %i.ixh, %i.ixl
  br i1 %or.cond2323, label %.loopexit, label %bb.aed

bb.aed:                                           ; preds = %bb.aea, %bb.aec
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph3056, %.thread7622, %bb.aec, %bb.aeb, %bb.aea, %bb.adz, %bb.ady, %bb.adw, %thread-pre-split2680.thread, %bb.i, %._crit_edge3057, %bb.g, %bb.f, %bb.e, %._crit_edge, %bb.c, %bb.b, %bb.a, %bb.aed
  %.02069 = phi i32 [ 0, %bb.aed ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ 1, %.thread7622 ], [ -1, %._crit_edge ], [ -1, %bb.e ], [ 1, %bb.aec ], [ -1, %bb.f ], [ -1, %bb.g ], [ 1, %bb.aea ], [ -1, %._crit_edge3057 ], [ -1, %bb.i ], [ 1, %bb.aeb ], [ 1, %thread-pre-split2680.thread ], [ 1, %bb.adw ], [ 1, %bb.ady ], [ 1, %bb.adz ], [ -1, %.lr.ph3056 ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09449)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09484)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.379485)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09514)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31)
  ret i32 %.02069
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare double @SUNRpowerI(double noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p2 double", !9, i64 0}
!11 = !{!"p1 double", !8, i64 0}
!12 = !{!"ARKodeButcherTableMem", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!13 = !{!12, !5, i64 8}
!14 = !{!12, !10, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!12, !11, i64 32}
!17 = !{!12, !11, i64 24}
!18 = !{!12, !11, i64 40}
!19 = !{!12, !5, i64 0}
!20 = !{!12, !5, i64 4}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!5, !5, i64 0}
!27 = distinct !{!27, !23, !24}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23, !24}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23, !24}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23, !24}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !23}
!39 = !{!"long", !4, i64 0}
!40 = !{!39, !39, i64 0}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !23, !24}
!45 = distinct !{!45, !24, !23}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !23, !24}
!53 = distinct !{!53, !24, !23}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !23, !24}
!58 = distinct !{!58, !24, !23}
!59 = distinct !{!59, !23, !24}
!60 = distinct !{!60, !24, !23}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !23, !24}
!63 = distinct !{!63, !24, !23}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !23, !24}
!67 = distinct !{!67, !24, !23}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !23, !24}
!74 = distinct !{!74, !24, !23}
!75 = distinct !{!75, !23, !24}
!76 = distinct !{!76, !24, !23}
!77 = distinct !{!77, !23, !24}
!78 = distinct !{!78, !24, !23}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !23, !24}
!81 = distinct !{!81, !24, !23}
!82 = distinct !{!82, !23, !24}
!83 = distinct !{!83, !24, !23}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, !23, !24}
!89 = distinct !{!89, !24, !23}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !23, !24}
!92 = distinct !{!92, !24, !23}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !23, !24}
!95 = distinct !{!95, !24, !23}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !23, !24}
!98 = distinct !{!98, !24, !23}
!99 = distinct !{!99, !23, !24}
!100 = distinct !{!100, !24, !23}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !23, !24}
!106 = distinct !{!106, !24, !23}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !23, !24}
!110 = distinct !{!110, !24, !23}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !23, !24}
!114 = distinct !{!114, !24, !23}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !23, !24}
!123 = distinct !{!123, !24, !23}
!124 = distinct !{!124, !23, !24}
!125 = distinct !{!125, !24, !23}
!126 = distinct !{!126, !23, !24}
!127 = distinct !{!127, !24, !23}
!128 = distinct !{!128, !23, !24}
!129 = distinct !{!129, !24, !23}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !23, !24}
!132 = distinct !{!132, !24, !23}
!133 = distinct !{!133, !23, !24}
!134 = distinct !{!134, !24, !23}
!135 = distinct !{!135, !23, !24}
!136 = distinct !{!136, !24, !23}
!137 = distinct !{!137, !25}
!138 = distinct !{!138, !25}
!139 = distinct !{!139, !25}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !23, !24}
!142 = distinct !{!142, !24, !23}
!143 = distinct !{!143, !23, !24}
!144 = distinct !{!144, !24, !23}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !23, !24}
!147 = distinct !{!147, !24, !23}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !23, !24}
!150 = distinct !{!150, !24, !23}
!151 = distinct !{!151, !23, !24}
!152 = distinct !{!152, !24, !23}
!153 = distinct !{!153, !25}
!154 = distinct !{!154, !23, !24}
!155 = distinct !{!155, !24, !23}
!156 = distinct !{!156, !23, !24}
!157 = distinct !{!157, !24, !23}
!158 = distinct !{!158, !25}
!159 = distinct !{!159, !25}
!160 = distinct !{!160, !25}
!161 = distinct !{!161, !25}
!162 = distinct !{!162, !25}
!163 = distinct !{!163, !25}
!164 = distinct !{!164, !23, !24}
!165 = distinct !{!165, !24, !23}
!166 = distinct !{!166, !25}
!167 = distinct !{!167, !23, !24}
!168 = distinct !{!168, !24, !23}
!169 = distinct !{!169, !23, !24}
!170 = distinct !{!170, !24, !23}
!171 = distinct !{!171, !25}
end_hunk_1
