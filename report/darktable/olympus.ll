Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/olympus?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.libraw_static_table_t = type <{ ptr, i32, [4 x i8] }>

@.str.18 = private unnamed_addr constant [8 x i8] c"SP510UZ\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"MC-20\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"MC-14\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"EC-20\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"EC-14\00", align 1
@_ZN6LibRaw12Oly_wb_list2E = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@_ZN6LibRaw12Oly_wb_list1E = external local_unnamed_addr global %class.libraw_static_table_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6LibRaw22setOlympusBodyFeaturesEy(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) initializes((1344, 1352)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %1, ptr %i.a, align 8, !tbaa !74
  %i.b = and i64 %1, 1099494850560
  %i.c = icmp eq i64 %i.b, 357287591936
  br i1 %i.c, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i64 %1, label %bb.f [
    i64 322931012917, label %bb.b
    i64 292933350449, label %bb.b
    i64 292933350448, label %bb.b
    i64 292933679157, label %.sink.split
    i64 292933679158, label %.sink.split
    i64 292933679411, label %.sink.split
    i64 292933742643, label %.sink.split
    i64 292933742645, label %.sink.split
    i64 292933678134, label %.sink.split
    i64 292933678898, label %bb.e
    i64 292933677873, label %bb.e
  ]

bb.b:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 8, ptr %i.d, align 8, !tbaa !75
  %i.e = icmp samesign ult i64 %1, 292933350450
  br i1 %i.e, label %bb.g, label %switch.early.test30

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 8, ptr %i.f, align 8, !tbaa !75
  %i.g = add i64 %1, -357290750003
  %or.cond25 = icmp ult i64 %i.g, 262
  br i1 %or.cond25, label %bb.g, label %switch.early.test30

switch.early.test30:                              ; preds = %bb.b, %bb.c
  switch i64 %1, label %bb.d [
    i64 357290750771, label %bb.g
    i64 357290750768, label %bb.g
    i64 357290750521, label %bb.g
    i64 357290750515, label %bb.g
  ]

bb.d:                                             ; preds = %switch.early.test30
  br label %bb.g

bb.e:                                             ; preds = %switch.early.test, %switch.early.test
  br label %.sink.split

.sink.split:                                      ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.e
  %.sink = phi i16 [ 7, %bb.e ], [ 6, %switch.early.test ], [ 6, %switch.early.test ], [ 6, %switch.early.test ], [ 6, %switch.early.test ], [ 6, %switch.early.test ], [ 6, %switch.early.test ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 %.sink, ptr %i.h, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %switch.early.test
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.i, align 2, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %switch.early.test30, %switch.early.test30, %switch.early.test30, %switch.early.test30, %bb.d, %bb.f
  %.sink36 = phi i64 [ 1338, %bb.f ], [ 1354, %bb.d ], [ 1354, %switch.early.test30 ], [ 1354, %switch.early.test30 ], [ 1354, %switch.early.test30 ], [ 1354, %switch.early.test30 ], [ 1354, %bb.c ], [ 1354, %bb.b ]
  %.sink34 = phi i16 [ 43, %bb.f ], [ 10, %bb.d ], [ 9, %switch.early.test30 ], [ 9, %switch.early.test30 ], [ 9, %switch.early.test30 ], [ 9, %switch.early.test30 ], [ 9, %bb.c ], [ 9, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36
  store i16 %.sink34, ptr %i.j, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22getOlympus_CameraType2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381704 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e, i64 noundef 6, i64 noundef 1), !call_target !91 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3141
  store i8 0, ptr %i.j, align 1, !tbaa !92
  %i.k = load i8, ptr %i.e, align 8, !tbaa !92    ; 2 uses
  %.not8 = icmp eq i8 %i.k, 0
  br i1 %.not8, label %.critedgethread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !78
  %i.m = shl i64 %i.l, 8
  %i.n = sext i8 %i.k to i64
  %i.o = or i64 %i.m, %i.n                        ; 2 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3137
  %i.q = load i8, ptr %i.p, align 1, !tbaa !92    ; 3 uses
  %i.r = sext i8 %i.q to i32
  %i.s = tail call i32 @isspace(i32 noundef %i.r) #9
  %.not10 = icmp eq i32 %i.s, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  %.lcssa14 = phi ptr [ %i.e, %bb.c ], [ %i.u, %bb.f ], [ %i.ac, %bb.h ], [ %i.ak, %bb.j ], [ %i.as, %bb.l ]
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa14, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !92
  br label %.critedgethread-pre-split

bb.e:                                             ; preds = %bb.c
  %.not8.1 = icmp eq i8 %i.q, 0
  br i1 %.not8.1, label %.critedgethread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3137
  %i.v = shl i64 %i.o, 8
  %i.w = sext i8 %i.q to i64
  %i.x = or i64 %i.v, %i.w                        ; 2 uses
  store i64 %i.x, ptr %i.a, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3138
  %i.z = load i8, ptr %i.y, align 2, !tbaa !92    ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #9
  %.not10.1 = icmp eq i32 %i.ab, 0
  br i1 %.not10.1, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %.not8.2 = icmp eq i8 %i.z, 0
  br i1 %.not8.2, label %.critedgethread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3138
  %i.ad = shl i64 %i.x, 8
  %i.ae = sext i8 %i.z to i64
  %i.af = or i64 %i.ad, %i.ae                     ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3139
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !92  ; 3 uses
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #9
  %.not10.2 = icmp eq i32 %i.aj, 0
  br i1 %.not10.2, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %.not8.3 = icmp eq i8 %i.ah, 0
  br i1 %.not8.3, label %.critedgethread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3139
  %i.al = shl i64 %i.af, 8
  %i.am = sext i8 %i.ah to i64
  %i.an = or i64 %i.al, %i.am                     ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !92  ; 3 uses
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #9
  %.not10.3 = icmp eq i32 %i.ar, 0
  br i1 %.not10.3, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %.not8.4 = icmp eq i8 %i.ap, 0
  br i1 %.not8.4, label %.critedgethread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.at = shl i64 %i.an, 8
  %i.au = sext i8 %i.ap to i64
  %i.av = or i64 %i.at, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !78
  %i.aw = tail call i32 @isspace(i32 noundef 0) #9
  %.not10.4 = icmp eq i32 %i.aw, 0
  br i1 %.not10.4, label %.critedge, label %bb.d

.critedgethread-pre-split:                        ; preds = %bb.d, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %.pr = load i64, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.l
  %i.ax = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.av, %bb.l ] ; 7 uses
  %i.ay = icmp eq i64 %i.ax, 336338242881
  br i1 %i.ay, label %.thread, label %bb.m

.thread:                                          ; preds = %.critedge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(8) @.str.18) #9
  %.not11 = icmp eq i32 %i.ba, 0
  %. = select i1 %.not11, i64 0, i64 292933546546 ; 4 uses
  store i64 %., ptr %i.a, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 %., ptr %i.bb, align 8, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %., ptr %i.bc, align 8, !tbaa !74
  br label %switch.early.test.i

bb.m:                                             ; preds = %.critedge
end_hunk_0
begin_hunk_1_@_ZN6LibRaw20parseOlympus_RawInfoEjjjj
define void @_ZN6LibRaw20parseOlympus_RawInfoEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 272
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.c = load i64, ptr %i.b, align 1
  %i.d = icmp ne i64 %i.c, 13852941198112630
  %i.e = zext i1 %i.d to i32
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 32 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188536
  store i32 %i.g, ptr %i.i, align 8, !tbaa !98
  %i.j = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.k, ptr %i.l, align 8, !tbaa !98
  %i.m = icmp eq i32 %3, 2
  br i1 %i.m, label %vector.body, label %.thread77

vector.body:                                      ; preds = %bb.c
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.gep128 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.1 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %wide.gep128.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.2 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 2 uses
  %wide.gep128.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.3 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31> ; 2 uses
  %wide.gep128.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.4 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39> ; 2 uses
  %wide.gep128.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.5 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47> ; 2 uses
  %wide.gep128.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.6 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55> ; 2 uses
  %wide.gep128.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.7 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63> ; 2 uses
  %wide.gep128.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.8 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71> ; 2 uses
  %wide.gep128.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.8, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.8, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.9 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79> ; 2 uses
  %wide.gep128.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.9, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.9, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.10 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87> ; 2 uses
  %wide.gep128.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.10, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.10, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.11 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95> ; 2 uses
  %wide.gep128.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.11, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.11, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.12 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103> ; 2 uses
  %wide.gep128.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.12, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.12, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.13 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111> ; 2 uses
  %wide.gep128.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.13, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.13, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.14 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119> ; 2 uses
  %wide.gep128.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.14, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.14, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.15 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127> ; 2 uses
  %wide.gep128.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.15, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.15, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.16 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135> ; 2 uses
  %wide.gep128.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.16, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.16, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.17 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143> ; 2 uses
  %wide.gep128.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.17, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.17, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.18 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151> ; 2 uses
  %wide.gep128.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.18, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.18, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.19 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159> ; 2 uses
  %wide.gep128.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.19, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.19, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.19, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.19, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.20 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167> ; 2 uses
  %wide.gep128.20 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.20, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.20, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.20 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.20, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.20, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.21 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175> ; 2 uses
  %wide.gep128.21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.21, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.21, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.21, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.21, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.22 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183> ; 2 uses
  %wide.gep128.22 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.22, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.22, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.22 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.22, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.22, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.23 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191> ; 2 uses
  %wide.gep128.23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.23, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.23, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.23, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.23, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.24 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199> ; 2 uses
  %wide.gep128.24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.24, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.24, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.24, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.24, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.25 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207> ; 2 uses
  %wide.gep128.25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.25, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.25, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.25, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.25, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.26 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215> ; 2 uses
  %wide.gep128.26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.26, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.26, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.26, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.26, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.27 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223> ; 2 uses
  %wide.gep128.27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.27, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.27, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.27, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.27, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.28 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231> ; 2 uses
  %wide.gep128.28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.28, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.28, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.28, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.28, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.29 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239> ; 2 uses
  %wide.gep128.29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.29, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.29, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.29, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.29, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.30 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247> ; 2 uses
  %wide.gep128.30 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.30, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.30, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.30 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.30, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.30, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.31 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255> ; 2 uses
  %wide.gep128.31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.31, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep128.31, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep129.31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.31, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.31, <8 x i1> splat (i1 true)), !tbaa !98
  br label %.thread77

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = icmp samesign ult i32 %1, 293
  %i.o = add i32 %1, -288                         ; 2 uses
  %or.cond = icmp ult i32 %i.o, 5
  %i.p = and i32 %1, -4
  %or.cond3 = icmp eq i32 %i.p, 304
  %or.cond63 = or i1 %or.cond, %or.cond3
  br i1 %or.cond63, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 332
  %5 = load i64, ptr %i.q, align 1
  %6 = icmp ne i64 %5, 13852941198112630
  %7 = zext i1 %6 to i32
  %.not61 = icmp eq i32 %7, 0
  br i1 %.not61, label %.thread77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %1, -299
  %.058 = select i1 %i.n, i32 %i.o, i32 %i.r      ; 4 uses
  %i.s = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 2 uses
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw12Oly_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.w = icmp ult i32 %.058, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104
  %i.y = zext i32 %.058 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.aa, %bb.g ], [ %i.ac, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.ad = sext i32 %.0.i to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.ad
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !98
  %i.af = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ag = zext i16 %i.af to i32
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw12Oly_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.ai = icmp ult i32 %.058, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.aj = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104
  %i.ak = zext i32 %.058 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit67

bb.l:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %.not.i64 = icmp eq i32 %i.ah, 0
  br i1 %.not.i64, label %_ZNK21libraw_static_table_tixEj.exit67, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i65 = icmp eq ptr %i.an, null
  br i1 %.not6.i65, label %_ZNK21libraw_static_table_tixEj.exit67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit67

_ZNK21libraw_static_table_tixEj.exit67:           ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i66 = phi i32 [ %i.am, %bb.k ], [ %i.ao, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  %i.ap = sext i32 %.0.i66 to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.ag, ptr %i.ar, align 8, !tbaa !98
  br label %.thread77

bb.o:                                             ; preds = %bb.d
  %i.as = icmp eq i32 %1, 512
  %i.at = icmp eq i32 %4, 0                       ; 6 uses
  %or.cond5 = and i1 %i.as, %i.at
  br i1 %or.cond5, label %.preheader81, label %bb.p

.preheader81:                                     ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3218 ; 3 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !99
  %.not62 = icmp eq i16 %i.av, 0                  ; 3 uses
  %i.aw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ax = sitofp reassoc nsz arcp contract afn i16 %i.aw to float
  %i.ay = fmul reassoc nnan nsz arcp contract afn float %i.ax, 3.906250e-03
  %. = select i1 %.not62, i64 153284, i64 153332
  %.126 = select i1 %.not62, i64 153288, i64 153336
  %.127 = select i1 %.not62, i64 153292, i64 153340
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %i.ay, ptr %i.az, align 4, !tbaa !101
  %i.ba = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bb = sitofp reassoc nsz arcp contract afn i16 %i.ba to float
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.bb, 3.906250e-03
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.126
  store float %i.bc, ptr %i.bd, align 8, !tbaa !101
  %i.be = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bf = sitofp reassoc nsz arcp contract afn i16 %i.be to float
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.bf, 3.906250e-03
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.127
  store float %i.bg, ptr %i.bh, align 4, !tbaa !101
  %i.bi = load i16, ptr %i.au, align 2, !tbaa !99
  %.not62.1 = icmp eq i16 %i.bi, 0                ; 3 uses
  %.sink = select i1 %.not62.1, i64 153300, i64 153348
  %.sink122 = select i1 %.not62.1, i64 153304, i64 153352
  %.sink119 = select i1 %.not62.1, i64 153308, i64 153356
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.bk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bl = sitofp reassoc nsz arcp contract afn i16 %i.bk to float
  %i.bm = fmul reassoc nnan nsz arcp contract afn float %i.bl, 3.906250e-03
  store float %i.bm, ptr %i.bj, align 4, !tbaa !101
  %i.bn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bo = sitofp reassoc nsz arcp contract afn i16 %i.bn to float
  %i.bp = fmul reassoc nnan nsz arcp contract afn float %i.bo, 3.906250e-03
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink122
  store float %i.bp, ptr %i.bq, align 8, !tbaa !101
  %i.br = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bs = sitofp reassoc nsz arcp contract afn i16 %i.br to float
  %i.bt = fmul reassoc nnan nsz arcp contract afn float %i.bs, 3.906250e-03
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink119
  store float %i.bt, ptr %i.bu, align 4, !tbaa !101
  %i.bv = load i16, ptr %i.au, align 2, !tbaa !99
  %.not62.2 = icmp eq i16 %i.bv, 0
  %i.bw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bx = sitofp reassoc nsz arcp contract afn i16 %i.bw to float
  %i.by = fmul reassoc nnan nsz arcp contract afn float %i.bx, 3.906250e-03 ; 2 uses
  br i1 %.not62.2, label %.preheader.2, label %.preheader79.2

.preheader79.2:                                   ; preds = %.preheader81
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 153364
  store float %i.by, ptr %i.bz, align 4, !tbaa !101
  %i.ca = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cb = sitofp reassoc nsz arcp contract afn i16 %i.ca to float
  %i.cc = fmul reassoc nnan nsz arcp contract afn float %i.cb, 3.906250e-03
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 153368
  store float %i.cc, ptr %i.cd, align 8, !tbaa !101
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = sitofp reassoc nsz arcp contract afn i16 %i.ce to float
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, 3.906250e-03
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 153372
  store float %i.cg, ptr %i.ch, align 4, !tbaa !101
  br label %.thread77

.preheader.2:                                     ; preds = %.preheader81
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 153316
  store float %i.by, ptr %i.ci, align 4, !tbaa !101
  %i.cj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ck = sitofp reassoc nsz arcp contract afn i16 %i.cj to float
  %i.cl = fmul reassoc nnan nsz arcp contract afn float %i.ck, 3.906250e-03
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.cl, ptr %i.cm, align 8, !tbaa !101
  %i.cn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.co = sitofp reassoc nsz arcp contract afn i16 %i.cn to float
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %i.co, 3.906250e-03
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.cp, ptr %i.cq, align 4, !tbaa !101
  br label %.thread77

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp eq i32 %1, 1536
  %or.cond7 = and i1 %i.cr, %i.at
  br i1 %or.cond7, label %.preheader82, label %bb.q

.preheader82:                                     ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ct = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cu = zext i16 %i.ct to i32
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !98
  %i.cv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !98
  %i.cy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !98
  %i.db = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dc = zext i16 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !98
  br label %.thread77

bb.q:                                             ; preds = %bb.p
  %i.de = icmp eq i32 %1, 1554
  %or.cond9 = and i1 %i.de, %i.at
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !107
  br label %.thread77

bb.s:                                             ; preds = %bb.q
  %i.dh = icmp eq i32 %1, 1555
  %or.cond11 = and i1 %i.dh, %i.at
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.di = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.di, ptr %i.dj, align 8, !tbaa !108
end_hunk_1
