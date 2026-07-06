inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Verse = type { [100 x i8], [100 x i8], [5 x i8], [5 x i8], [2 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"IT\00", align 1
@__const.lolwut8Command.verses = private unnamed_addr constant [15 x %struct.Verse] [%struct.Verse { [100 x i8] c" The blinding / globe / of fire \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" l accecante   /  globo  /  di fuoco  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/4\00\00", [5 x i8] c"2/3\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" It expands / rapidly \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" si espande   /  rapidamente  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/2\00\00", [5 x i8] c"3/4\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" Thirty times / brighter / than the sun \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" trenta volte  / piu luminoso  / del sole \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"2/3\00\00", [5 x i8] c"2/4\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" When it reaches / the stratosphere \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" quando  raggiunge / la stratosfera  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"3/4\00\00", [5 x i8] c"1/2\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" The summit / of the cloud \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" la  sommita  /  della nuvola \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/3\00\00", [5 x i8] c"2/3\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" Assumes / the well-known shape / of a mushroom \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" assume   / la ben nota forma  / di fungo \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"2/4\00\00", [5 x i8] c"3/4\00\00", [2 x i8] c"1\00" }, %struct.Verse { [100 x i8] c" The head / pressed / upon the shoulder \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" la testa / premuta  / sulla spalla  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/4\00\00", [5 x i8] c"2/4\00\00", [2 x i8] c"2\00" }, %struct.Verse { [100 x i8] c" The hair / between the lips \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" i  capelli   /  tra le labbra \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/4\00\00", [5 x i8] c"2/4\00\00", [2 x i8] c"2\00" }, %struct.Verse { [100 x i8] c" They lay / motionless / without speaking \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" giacquero  /   immobili / senza parlare \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"2/3\00\00", [5 x i8] c"2/3\00\00", [2 x i8] c"2\00" }, %struct.Verse { [100 x i8] c" Till he moved / his fingers / slowly \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" finche non mosse  /  le dita  / lentamente    \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"3/4\00\00", [5 x i8] c"1/3\00\00", [2 x i8] c"2\00" }, %struct.Verse { [100 x i8] c" Trying / to grasp \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" cercando / di afferrare  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"3/4\00\00", [5 x i8] c"1/2\00\00", [2 x i8] c"2\00" }, %struct.Verse { [100 x i8] c" While the multitude / of things / comes into being \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" mentre la moltitudine  /  delle cose  /   accade   \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/2\00\00", [5 x i8] c"1/2\00\00", [2 x i8] c"3\00" }, %struct.Verse { [100 x i8] c" I envisage / their return \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" io contemplo  /  il loro ritorno    \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"2/3\00\00", [5 x i8] c"3/4\00\00", [2 x i8] c"3\00" }, %struct.Verse { [100 x i8] c" Although / things / flourish \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" malgrado / che le cose  /  fioriscano    \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"1/2\00\00", [5 x i8] c"2/3\00\00", [2 x i8] c"3\00" }, %struct.Verse { [100 x i8] c" They all return / to / their roots \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [100 x i8] c" esse tornano  / tutte    / alla loro radice   \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [5 x i8] c"2/3\00\00", [5 x i8] c"1/4\00\00", [2 x i8] c"3\00" }], align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [611 x i8] c"\0AIn 1961, Nanni Balestrini created one of the first computer-generated poems, TAPE MARK I, using an IBM 7090 mainframe. Each execution combined verses from three literary sources following algorithmic rules based on metrical compatibility and group constraints. This LOLWUT command reproduces Balestrini's original algorithm, generating new stanzas through the same computational poetry process described in Almanacco Letterario Bompiani, 1962.\0A\0Ahttps://en.wikipedia.org/wiki/Digital_poetry\0Ahttps://www.youtube.com/watch?v=8i7uFCK7G0o (English subs)\0A\0AUse: LOLWUT IT for the original Italian output. Redis ver. \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"8.6.1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @lolwut8Command(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Verse, align 1              ; 4 uses
  %2 = alloca [10 x %struct.Verse], align 16      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not83 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  %i.k = tail call noalias dereferenceable_or_null(3180) ptr @zmalloc(i64 noundef 3180) #9 ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3180) %i.k, ptr noundef nonnull align 16 dereferenceable(3180) @__const.lolwut8Command.verses, i64 3180, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 14, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.l = tail call i32 @rand() #10
  %i.m = trunc i64 %indvars.iv.i to i32
  %i.n = add i32 %i.m, 1
  %i.o = srem i32 %i.l, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.p ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.q, i64 212, i1 false), !tbaa.struct !43
  %i.r = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.q, ptr noundef nonnull align 1 dereferenceable(212) %i.r, i64 212, i1 false), !tbaa.struct !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.r, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.s = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.s, label %bb.d, label %shuffle.exit, !llvm.loop !45

shuffle.exit:                                     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %shuffle.exit
  %indvars.iv126 = phi i64 [ 0, %shuffle.exit ], [ %indvars.iv.next127, %._crit_edge ] ; 5 uses
  %indvars.iv124 = phi i64 [ 15, %shuffle.exit ], [ %indvars.iv.next125, %._crit_edge ] ; 2 uses
  %indvars.iv122 = phi i64 [ 14, %shuffle.exit ], [ %indvars.iv.next123, %._crit_edge ] ; 3 uses
  %i.t = icmp eq i64 %indvars.iv126, 0
  %i.u = getelementptr [212 x i8], ptr %2, i64 %indvars.iv126 ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -5
  %i.w = getelementptr i8, ptr %i.u, i64 -2
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %i.u, i64 -7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !44    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44
  %i.ac = icmp eq i8 %i.ab, %i.y
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 202
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !44  ; 2 uses
  %i.af = icmp eq i8 %i.ae, %i.y
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.v, align 1, !tbaa !44
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 210
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.w) #8
  %.not80 = icmp eq i32 %i.aj, 0
  br i1 %.not80, label %bb.i, label %.lr.ph.split.us.loopexit

.lr.ph.split.us.loopexit:                         ; preds = %bb.h
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.loopexit, %.lr.ph
  %.us-phi = phi i32 [ 0, %.lr.ph ], [ %i.ak, %.lr.ph.split.us.loopexit ] ; 2 uses
  %i.al = zext nneg i32 %.us-phi to i64           ; 6 uses
  %i.am = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.u, ptr noundef nonnull align 1 dereferenceable(212) %i.am, i64 212, i1 false), !tbaa.struct !43
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, -1 ; 2 uses
  %i.an = sext i32 %.us-phi to i64
  %i.ao = icmp samesign ugt i64 %indvars.iv.next125, %i.an
  br i1 %i.ao, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.lr.ph.split.us
  %i.ap = sub i64 %indvars.iv122, %i.al
  %i.aq = add nuw i64 %indvars.iv126, %i.al
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol

.lr.ph97.prol:                                    ; preds = %.lr.ph97.preheader
  %i.ar = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %i.al
  %indvars.iv.next116.prol = add nuw nsw i64 %i.al, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv.next116.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ar, ptr noundef nonnull align 1 dereferenceable(212) %i.as, i64 212, i1 false), !tbaa.struct !43
  br label %.lr.ph97.prol.loopexit

.lr.ph97.prol.loopexit:                           ; preds = %.lr.ph97.prol, %.lr.ph97.preheader
  %indvars.iv115.unr = phi i64 [ %i.al, %.lr.ph97.preheader ], [ %indvars.iv.next116.prol, %.lr.ph97.prol ]
  %i.at = icmp eq i64 %i.aq, 13
  br i1 %i.at, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph97 ], [ %indvars.iv115.unr, %.lr.ph97.prol.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv115
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv.next116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.au, ptr noundef nonnull align 1 dereferenceable(212) %i.av, i64 212, i1 false), !tbaa.struct !43
  %i.aw = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv.next116
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv.next116.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.aw, ptr noundef nonnull align 1 dereferenceable(212) %i.ax, i64 212, i1 false), !tbaa.struct !43
  %exitcond121.not.1 = icmp eq i64 %indvars.iv.next116.1, %indvars.iv122
  br i1 %exitcond121.not.1, label %._crit_edge, label %.lr.ph97, !llvm.loop !47

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv124
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.e, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97, %.lr.ph.split.us
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, -1
  %exitcond133.not = icmp eq i64 %indvars.iv.next127, 10
  br i1 %exitcond133.not, label %.lr.ph103, label %.lr.ph, !llvm.loop !49

.critedge.loopexit:                               ; preds = %bb.i
  %3 = and i64 %indvars.iv126, 4294967295
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %._crit_edge, %.critedge.loopexit
  %.07792 = phi i64 [ %3, %.critedge.loopexit ], [ 10, %._crit_edge ] ; 2 uses
  tail call void @zfree(ptr noundef nonnull %i.k) #10
  %i.ay = tail call ptr @sdsempty() #10           ; 2 uses
  br i1 %.not83, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103, %.lr.ph103.split.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph103.split.us ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101.us = phi ptr [ %i.bc, %.lr.ph103.split.us ], [ %i.ay, %.lr.ph103 ]
  %i.az = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv138
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 100
  %i.bb = call ptr @sdscat(ptr noundef %.071101.us, ptr noundef nonnull %i.ba) #10
  %i.bc = call ptr @sdscat(ptr noundef %i.bb, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %.07792
  br i1 %exitcond142.not, label %.preheader, label %.lr.ph103.split.us, !llvm.loop !50

.preheader:                                       ; preds = %.lr.ph103.split, %.lr.ph103.split.us
  %.071.lcssa = phi ptr [ %i.bc, %.lr.ph103.split.us ], [ %i.bn, %.lr.ph103.split ] ; 7 uses
  %i.bd = getelementptr i8, ptr %.071.lcssa, i64 -1
  %i.be = getelementptr inbounds i8, ptr %.071.lcssa, i64 -17
  %i.bf = getelementptr inbounds i8, ptr %.071.lcssa, i64 -9
  %i.bg = getelementptr inbounds i8, ptr %.071.lcssa, i64 -5
  %i.bh = getelementptr inbounds i8, ptr %.071.lcssa, i64 -3
  %.val.i.pre = load i8, ptr %i.bd, align 1, !tbaa !44 ; 2 uses
  %i.bi = and i8 %.val.i.pre, 7
  %i.bj = lshr i8 %.val.i.pre, 3
  %i.bk = zext nneg i8 %i.bj to i64
  br label %bb.j

.lr.ph103.split:                                  ; preds = %.lr.ph103, %.lr.ph103.split
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.lr.ph103.split ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101 = phi ptr [ %i.bn, %.lr.ph103.split ], [ %i.ay, %.lr.ph103 ]
  %i.bl = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv134
  %i.bm = call ptr @sdscat(ptr noundef %.071101, ptr noundef nonnull %i.bl) #10
  %i.bn = call ptr @sdscat(ptr noundef %i.bm, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %.07792
  br i1 %exitcond137.not, label %.preheader, label %.lr.ph103.split, !llvm.loop !50

bb.j:                                             ; preds = %.preheader, %bb.v
  %.069 = phi i64 [ %i.cx, %bb.v ], [ 0, %.preheader ] ; 3 uses
  switch i8 %i.bi, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !44
  %i.bp = zext i8 %i.bo to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.bq = load i16, ptr %i.bg, align 1, !tbaa !51
  %i.br = zext i16 %i.bq to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.bf, align 1, !tbaa !9
  %i.bt = zext i32 %i.bs to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.bu = load i64, ptr %i.be, align 1, !tbaa !53
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bu, %bb.o ], [ %i.bk, %bb.k ], [ %i.bp, %bb.l ], [ %i.br, %bb.m ], [ %i.bt, %bb.n ], [ 0, %bb.j ]
  %i.bv = icmp ult i64 %.069, %.0.i
  br i1 %i.bv, label %bb.v, label %bb.p

bb.p:                                             ; preds = %sdslen.exit
  %i.bw = call ptr @sdscat(ptr noundef nonnull %.071.lcssa, ptr noundef nonnull @.str.2) #10
  %i.bx = call ptr @sdscat(ptr noundef %i.bw, ptr noundef nonnull @.str.3) #10
  %i.by = call ptr @sdscatlen(ptr noundef %i.bx, ptr noundef nonnull @.str.1, i64 noundef 1) #10 ; 7 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %.val.i85 = load i8, ptr %i.bz, align 1, !tbaa !44 ; 2 uses
  %i.ca = and i8 %.val.i85, 7
  switch i8 %i.ca, label %sdslen.exit87 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = lshr i8 %.val.i85, 3
  %i.cc = zext nneg i8 %i.cb to i64
  br label %sdslen.exit87

bb.r:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 -3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !44
  %i.cf = zext i8 %i.ce to i64
  br label %sdslen.exit87

bb.s:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 -5
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !51
  %i.ci = zext i16 %i.ch to i64
  br label %sdslen.exit87

bb.t:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds i8, ptr %i.by, i64 -9
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !9
  %i.cl = zext i32 %i.ck to i64
  br label %sdslen.exit87

bb.u:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds i8, ptr %i.by, i64 -17
  %i.cn = load i64, ptr %i.cm, align 1, !tbaa !53
  br label %sdslen.exit87

sdslen.exit87:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i86 = phi i64 [ %i.cn, %bb.u ], [ %i.cc, %bb.q ], [ %i.cf, %bb.r ], [ %i.ci, %bb.s ], [ %i.cl, %bb.t ], [ 0, %bb.p ]
  call void @addReplyVerbatim(ptr noundef %0, ptr noundef nonnull %i.by, i64 noundef %.0.i86, ptr noundef nonnull @.str.4) #10
  call void @sdsfree(ptr noundef nonnull %i.by) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void

bb.v:                                             ; preds = %sdslen.exit
  %i.co = tail call ptr @__ctype_toupper_loc() #11
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 %.069 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !44
  %i.cs = sext i8 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !9  ; 2 uses
  %i.cv = trunc i32 %i.cu to i8
  %sext.mask = and i32 %i.cu, 255
  %i.cw = icmp eq i32 %sext.mask, 47
  %spec.select84 = select i1 %i.cw, i8 32, i8 %i.cv
  store i8 %spec.select84, ptr %i.cq, align 1, !tbaa !44
  %i.cx = add nuw i64 %.069, 1
  br label %bb.j, !llvm.loop !56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @zfree(ptr noundef) local_unnamed_addr #5

declare ptr @sdsempty() local_unnamed_addr #5

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @addReplyVerbatim(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @sdsfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
