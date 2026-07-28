inline.NumInlined: 4
inline.NumDeleted: 3
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
  %i.k = tail call noalias dereferenceable_or_null(3180) ptr @zmalloc(i64 noundef 3180) #9 ; 8 uses
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
  %scevgep113 = getelementptr i8, ptr %i.k, i64 212
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %shuffle.exit
  %indvars.iv124 = phi i64 [ 0, %shuffle.exit ], [ %indvars.iv.next123, %._crit_edge ] ; 5 uses
  %indvars.iv122 = phi i64 [ 15, %shuffle.exit ], [ %indvars.iv.next125, %._crit_edge ] ; 2 uses
  %i.t = icmp eq i64 %indvars.iv124, 0
  %i.u = getelementptr [212 x i8], ptr %2, i64 %indvars.iv124 ; 4 uses
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
  %.us-phi = phi i32 [ 0, %.lr.ph ], [ %i.ak, %.lr.ph.split.us.loopexit ] ; 3 uses
  %i.al = zext nneg i32 %.us-phi to i64           ; 2 uses
  %i.am = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.u, ptr noundef nonnull align 1 dereferenceable(212) %i.am, i64 212, i1 false), !tbaa.struct !43
  %indvars.iv.next125 = add nsw i64 %indvars.iv122, -1 ; 2 uses
  %i.an = sext i32 %.us-phi to i64
  %i.ao = icmp samesign ugt i64 %indvars.iv.next125, %i.an
  br i1 %i.ao, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %.lr.ph.split.us
  %3 = mul nuw nsw i64 %i.al, 212                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %3
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %3
  %4 = trunc i64 %indvars.iv124 to i32
  %5 = add i32 %.us-phi, %4
  %6 = sub i32 13, %5
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 212
  %9 = add nuw nsw i64 %8, 212
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %scevgep114, i64 %9, i1 false)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv122
  br i1 %exitcond.not, label %.lr.ph103, label %bb.e, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph97, %.lr.ph.split.us
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next123, 10
  br i1 %exitcond133.not, label %.lr.ph103, label %.lr.ph, !llvm.loop !48

.lr.ph103:                                        ; preds = %._crit_edge, %bb.i
  %.07792 = phi i64 [ %indvars.iv124, %bb.i ], [ 10, %._crit_edge ] ; 2 uses
  tail call void @zfree(ptr noundef nonnull %i.k) #10
  %i.ap = tail call ptr @sdsempty() #10           ; 2 uses
  br i1 %.not83, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103, %.lr.ph103.split.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph103.split.us ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101.us = phi ptr [ %i.at, %.lr.ph103.split.us ], [ %i.ap, %.lr.ph103 ]
  %i.aq = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv138
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 100
  %i.as = call ptr @sdscat(ptr noundef %.071101.us, ptr noundef nonnull %i.ar) #10
  %i.at = call ptr @sdscat(ptr noundef %i.as, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %.07792
  br i1 %exitcond142.not, label %.preheader, label %.lr.ph103.split.us, !llvm.loop !49

.preheader:                                       ; preds = %.lr.ph103.split, %.lr.ph103.split.us
  %.071.lcssa = phi ptr [ %i.at, %.lr.ph103.split.us ], [ %i.be, %.lr.ph103.split ] ; 7 uses
  %i.au = getelementptr i8, ptr %.071.lcssa, i64 -1
  %i.av = getelementptr inbounds i8, ptr %.071.lcssa, i64 -17
  %i.aw = getelementptr inbounds i8, ptr %.071.lcssa, i64 -9
  %i.ax = getelementptr inbounds i8, ptr %.071.lcssa, i64 -5
  %i.ay = getelementptr inbounds i8, ptr %.071.lcssa, i64 -3
  %.val.i.pre = load i8, ptr %i.au, align 1, !tbaa !44 ; 2 uses
  %i.az = and i8 %.val.i.pre, 7
  %i.ba = lshr i8 %.val.i.pre, 3
  %i.bb = zext nneg i8 %i.ba to i64
  br label %bb.j

.lr.ph103.split:                                  ; preds = %.lr.ph103, %.lr.ph103.split
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.lr.ph103.split ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101 = phi ptr [ %i.be, %.lr.ph103.split ], [ %i.ap, %.lr.ph103 ]
  %i.bc = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv134
  %i.bd = call ptr @sdscat(ptr noundef %.071101, ptr noundef nonnull %i.bc) #10
  %i.be = call ptr @sdscat(ptr noundef %i.bd, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %.07792
  br i1 %exitcond137.not, label %.preheader, label %.lr.ph103.split, !llvm.loop !49

bb.j:                                             ; preds = %.preheader, %bb.v
  %.069 = phi i64 [ %i.co, %bb.v ], [ 0, %.preheader ] ; 3 uses
  switch i8 %i.az, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !44
  %i.bg = zext i8 %i.bf to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.bh = load i16, ptr %i.ax, align 1, !tbaa !50
  %i.bi = zext i16 %i.bh to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.aw, align 1, !tbaa !9
  %i.bk = zext i32 %i.bj to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.av, align 1, !tbaa !52
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bl, %bb.o ], [ %i.bb, %bb.k ], [ %i.bg, %bb.l ], [ %i.bi, %bb.m ], [ %i.bk, %bb.n ], [ 0, %bb.j ]
  %i.bm = icmp ult i64 %.069, %.0.i
  br i1 %i.bm, label %bb.v, label %bb.p

bb.p:                                             ; preds = %sdslen.exit
  %i.bn = call ptr @sdscat(ptr noundef nonnull %.071.lcssa, ptr noundef nonnull @.str.2) #10
  %i.bo = call ptr @sdscat(ptr noundef %i.bn, ptr noundef nonnull @.str.3) #10
  %i.bp = call ptr @sdscatlen(ptr noundef %i.bo, ptr noundef nonnull @.str.1, i64 noundef 1) #10 ; 7 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %.val.i85 = load i8, ptr %i.bq, align 1, !tbaa !44 ; 2 uses
  %i.br = and i8 %.val.i85, 7
  switch i8 %i.br, label %sdslen.exit87 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.bs = lshr i8 %.val.i85, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %sdslen.exit87

bb.r:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !44
  %i.bw = zext i8 %i.bv to i64
  br label %sdslen.exit87

bb.s:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds i8, ptr %i.bp, i64 -5
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !50
  %i.bz = zext i16 %i.by to i64
  br label %sdslen.exit87

bb.t:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds i8, ptr %i.bp, i64 -9
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  br label %sdslen.exit87

bb.u:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds i8, ptr %i.bp, i64 -17
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !52
  br label %sdslen.exit87

sdslen.exit87:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i86 = phi i64 [ %i.ce, %bb.u ], [ %i.bt, %bb.q ], [ %i.bw, %bb.r ], [ %i.bz, %bb.s ], [ %i.cc, %bb.t ], [ 0, %bb.p ]
  call void @addReplyVerbatim(ptr noundef %0, ptr noundef nonnull %i.bp, i64 noundef %.0.i86, ptr noundef nonnull @.str.4) #10
  call void @sdsfree(ptr noundef nonnull %i.bp) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void

bb.v:                                             ; preds = %sdslen.exit
  %i.cf = tail call ptr @__ctype_toupper_loc() #11
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 %.069 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !44
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9  ; 2 uses
  %i.cm = trunc i32 %i.cl to i8
  %sext.mask = and i32 %i.cl, 255
  %i.cn = icmp eq i32 %sext.mask, 47
  %spec.select84 = select i1 %i.cn, i8 32, i8 %i.cm
  store i8 %spec.select84, ptr %i.ch, align 1, !tbaa !44
  %i.co = add nuw i64 %.069, 1
  br label %bb.j, !llvm.loop !55
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

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
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !10, i64 88}
!14 = !{!"client", !15, i64 0, !15, i64 8, !16, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !18, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !20, i64 64, !15, i64 72, !15, i64 80, !10, i64 88, !21, i64 96, !10, i64 104, !10, i64 108, !21, i64 112, !15, i64 120, !23, i64 128, !24, i64 152, !25, i64 160, !10, i64 168, !21, i64 176, !10, i64 184, !10, i64 188, !26, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !17, i64 224, !10, i64 232, !10, i64 236, !15, i64 240, !27, i64 248, !28, i64 256, !27, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !10, i64 296, !10, i64 300, !29, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !28, i64 336, !28, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !15, i64 368, !15, i64 376, !20, i64 384, !28, i64 392, !28, i64 400, !28, i64 408, !28, i64 416, !28, i64 424, !28, i64 432, !28, i64 440, !28, i64 448, !28, i64 456, !28, i64 464, !28, i64 472, !11, i64 480, !10, i64 524, !20, i64 528, !10, i64 536, !10, i64 540, !15, i64 544, !30, i64 552, !32, i64 592, !28, i64 664, !27, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !20, i64 704, !20, i64 712, !34, i64 720, !34, i64 728, !34, i64 736, !17, i64 744, !17, i64 752, !17, i64 760, !17, i64 768, !17, i64 776, !15, i64 784, !35, i64 792, !15, i64 800, !10, i64 808, !34, i64 816, !17, i64 824, !34, i64 832, !15, i64 840, !34, i64 848, !15, i64 856, !34, i64 864, !15, i64 872, !36, i64 880, !36, i64 904, !15, i64 928, !15, i64 936, !15, i64 944, !28, i64 952, !15, i64 960, !15, i64 968, !20, i64 976, !11, i64 984, !37, i64 992, !28, i64 1000, !28, i64 1008, !28, i64 1016, !38, i64 1024, !20, i64 1032, !11, i64 1040}
!15 = !{!"long", !11, i64 0}
!16 = !{!"p1 _ZTS10connection", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!19 = !{!"p1 _ZTS11redisObject", !17, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!"p2 _ZTS11redisObject", !22, i64 0}
!22 = !{!"any p2 pointer", !17, i64 0}
!23 = !{!"pendingCommandList", !24, i64 0, !24, i64 8, !10, i64 16, !10, i64 20}
!24 = !{!"p1 _ZTS14pendingCommand", !17, i64 0}
!25 = !{!"p1 _ZTS14deferredObject", !17, i64 0}
!26 = !{!"p1 _ZTS12redisCommand", !17, i64 0}
!27 = !{!"p1 _ZTS4list", !17, i64 0}
!28 = !{!"long long", !11, i64 0}
!29 = !{!"p1 _ZTS9dictEntry", !17, i64 0}
!30 = !{!"multiState", !31, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !15, i64 24, !10, i64 32}
!31 = !{!"p2 _ZTS14pendingCommand", !22, i64 0}
!32 = !{!"blockingState", !10, i64 0, !28, i64 8, !10, i64 16, !33, i64 24, !10, i64 32, !10, i64 36, !28, i64 40, !17, i64 48, !17, i64 56, !15, i64 64}
!33 = !{!"p1 _ZTS4dict", !17, i64 0}
!34 = !{!"p1 _ZTS8listNode", !17, i64 0}
!35 = !{!"p1 _ZTS3rax", !17, i64 0}
!36 = !{!"listNode", !34, i64 0, !34, i64 8, !17, i64 16}
!37 = !{!"p1 _ZTS13payloadHeader", !17, i64 0}
!38 = !{!"p1 _ZTS7asmTask", !17, i64 0}
!39 = !{!14, !21, i64 96}
!40 = !{!19, !19, i64 0}
!41 = !{!42, !17, i64 8}
!42 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !17, i64 8}
!43 = !{i64 0, i64 100, !44, i64 100, i64 100, !44, i64 200, i64 5, !44, i64 205, i64 5, !44, i64 210, i64 2, !44}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !11, i64 0}
!52 = !{!15, !15, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 int", !17, i64 0}
!55 = distinct !{!55, !46}
end_hunk_0
