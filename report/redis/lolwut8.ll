Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lolwut8?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
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
  %1 = alloca %struct.Verse, align 1              ; 56 uses
  %2 = alloca [10 x %struct.Verse], align 16      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not83 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  %i.k = tail call noalias dereferenceable_or_null(3180) ptr @zmalloc(i64 noundef 3180) #9 ; 33 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3180) %i.k, ptr noundef nonnull align 16 dereferenceable(3180) @__const.lolwut8Command.verses, i64 3180, i1 false)
  %i.l = tail call i32 @rand() #10
  %i.m = srem i32 %i.l, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.n ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.o, i64 212, i1 false), !tbaa.struct !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2968
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.o, ptr noundef nonnull align 8 dereferenceable(212) getelementptr inbounds nuw (i8, ptr @__const.lolwut8Command.verses, i64 2968), i64 212, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.p, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.q = tail call i32 @rand() #10
  %i.r = srem i32 %i.q, 14
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.s ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.t, i64 212, i1 false), !tbaa.struct !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2756 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.t, ptr noundef nonnull align 1 dereferenceable(212) %i.u, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.u, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.v = tail call i32 @rand() #10
  %i.w = srem i32 %i.v, 13
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.x ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.y, i64 212, i1 false), !tbaa.struct !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 2544 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.y, ptr noundef nonnull align 1 dereferenceable(212) %i.z, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.z, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aa = tail call i32 @rand() #10
  %i.ab = srem i32 %i.aa, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.ad, i64 212, i1 false), !tbaa.struct !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 2332 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ad, ptr noundef nonnull align 1 dereferenceable(212) %i.ae, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ae, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.af = tail call i32 @rand() #10
  %i.ag = srem i32 %i.af, 11
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.ah ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.ai, i64 212, i1 false), !tbaa.struct !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 2120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ai, ptr noundef nonnull align 1 dereferenceable(212) %i.aj, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.aj, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ak = tail call i32 @rand() #10
  %i.al = srem i32 %i.ak, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.am ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.an, i64 212, i1 false), !tbaa.struct !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 1908 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.an, ptr noundef nonnull align 1 dereferenceable(212) %i.ao, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ao, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ap = tail call i32 @rand() #10
  %i.aq = srem i32 %i.ap, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.ar ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.as, i64 212, i1 false), !tbaa.struct !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 1696 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.as, ptr noundef nonnull align 1 dereferenceable(212) %i.at, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.at, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.au = tail call i32 @rand() #10
  %i.av = srem i32 %i.au, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.aw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.ax, i64 212, i1 false), !tbaa.struct !48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 1484 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ax, ptr noundef nonnull align 1 dereferenceable(212) %i.ay, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.ay, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.az = tail call i32 @rand() #10
  %i.ba = srem i32 %i.az, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.bb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.bc, i64 212, i1 false), !tbaa.struct !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 1272 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bc, ptr noundef nonnull align 1 dereferenceable(212) %i.bd, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bd, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.be = tail call i32 @rand() #10
  %i.bf = srem i32 %i.be, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.bg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.bh, i64 212, i1 false), !tbaa.struct !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 1060 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bh, ptr noundef nonnull align 1 dereferenceable(212) %i.bi, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bi, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bj = tail call i32 @rand() #10
  %i.bk = srem i32 %i.bj, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.bl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.bm, i64 212, i1 false), !tbaa.struct !48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 848 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bm, ptr noundef nonnull align 1 dereferenceable(212) %i.bn, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bn, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bo = tail call i32 @rand() #10
  %i.bp = srem i32 %i.bo, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.bq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.br, i64 212, i1 false), !tbaa.struct !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 636 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.br, ptr noundef nonnull align 1 dereferenceable(212) %i.bs, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bs, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bt = tail call i32 @rand() #10
  %i.bu = srem i32 %i.bt, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.bv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.bw, i64 212, i1 false), !tbaa.struct !48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 424 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bw, ptr noundef nonnull align 1 dereferenceable(212) %i.bx, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.bx, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.by = tail call i32 @rand() #10
  %i.bz = srem i32 %i.by, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [212 x i8], ptr %i.k, i64 %i.ca ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %1, ptr noundef nonnull align 1 dereferenceable(212) %i.cb, i64 212, i1 false), !tbaa.struct !48
  %i.cc = getelementptr i8, ptr %i.k, i64 212     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.cb, ptr noundef nonnull align 1 dereferenceable(212) %i.cc, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(212) %i.cc, ptr noundef nonnull align 1 dereferenceable(212) %1, i64 212, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.c
  %indvars.iv120 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next121, %._crit_edge ] ; 5 uses
  %indvars.iv118 = phi i64 [ 15, %bb.c ], [ %indvars.iv.next119, %._crit_edge ] ; 2 uses
  %i.cd = icmp eq i64 %indvars.iv120, 0
  %i.ce = getelementptr [212 x i8], ptr %2, i64 %indvars.iv120 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -5
  %i.cg = getelementptr i8, ptr %i.ce, i64 -2
  br i1 %i.cd, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ch = getelementptr i8, ptr %i.ce, i64 -7
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !47  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !47
  %i.cm = icmp eq i8 %i.cl, %i.ci
  br i1 %i.cm, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 202
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !47  ; 2 uses
  %i.cp = icmp eq i8 %i.co, %i.ci
  br i1 %i.cp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = load i8, ptr %i.cf, align 1, !tbaa !47
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 210
  %i.ct = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) %i.cg) #8
  %.not80 = icmp eq i32 %i.ct, 0
  br i1 %.not80, label %bb.h, label %.lr.ph.split.us.loopexit

.lr.ph.split.us.loopexit:                         ; preds = %bb.g
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.loopexit, %.lr.ph
  %.us-phi = phi i32 [ 0, %.lr.ph ], [ %i.cu, %.lr.ph.split.us.loopexit ] ; 3 uses
  %i.cv = zext nneg i32 %.us-phi to i64           ; 2 uses
  %i.cw = getelementptr inbounds nuw [212 x i8], ptr %i.k, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.ce, ptr noundef nonnull align 1 dereferenceable(212) %i.cw, i64 212, i1 false), !tbaa.struct !48
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1 ; 2 uses
  %i.cx = sext i32 %.us-phi to i64
  %i.cy = icmp samesign ugt i64 %indvars.iv.next119, %i.cx
  br i1 %i.cy, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.lr.ph.split.us
  %i.cz = mul nuw nsw i64 %i.cv, 212              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.cz
  %scevgep114 = getelementptr i8, ptr %i.cc, i64 %i.cz
  %i.da = trunc i64 %indvars.iv120 to i32
  %i.db = add i32 %.us-phi, %i.da
  %i.dc = sub i32 13, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul nuw nsw i64 %i.dd, 212
  %i.df = add nuw nsw i64 %i.de, 212
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %scevgep114, i64 %i.df, i1 false)
  br label %._crit_edge

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv118
  br i1 %exitcond.not, label %.lr.ph103, label %bb.d, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph97.preheader, %.lr.ph.split.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, 10
  br i1 %exitcond125.not, label %.lr.ph103, label %.lr.ph, !llvm.loop !14

.lr.ph103:                                        ; preds = %._crit_edge, %bb.h
  %.07792 = phi i64 [ %indvars.iv120, %bb.h ], [ 10, %._crit_edge ] ; 2 uses
  tail call void @zfree(ptr noundef nonnull %i.k) #10
  %i.dg = tail call ptr @sdsempty() #10           ; 2 uses
  br i1 %.not83, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103, %.lr.ph103.split.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.lr.ph103.split.us ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101.us = phi ptr [ %i.dk, %.lr.ph103.split.us ], [ %i.dg, %.lr.ph103 ]
  %i.dh = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv130
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 100
  %i.dj = call ptr @sdscat(ptr noundef %.071101.us, ptr noundef nonnull %i.di) #10
  %i.dk = call ptr @sdscat(ptr noundef %i.dj, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %.07792
  br i1 %exitcond134.not, label %.preheader, label %.lr.ph103.split.us, !llvm.loop !15

.preheader:                                       ; preds = %.lr.ph103.split, %.lr.ph103.split.us
  %.071.lcssa = phi ptr [ %i.dk, %.lr.ph103.split.us ], [ %i.dv, %.lr.ph103.split ] ; 7 uses
  %i.dl = getelementptr i8, ptr %.071.lcssa, i64 -1
  %i.dm = getelementptr inbounds i8, ptr %.071.lcssa, i64 -17
  %i.dn = getelementptr inbounds i8, ptr %.071.lcssa, i64 -9
  %i.do = getelementptr inbounds i8, ptr %.071.lcssa, i64 -5
  %i.dp = getelementptr inbounds i8, ptr %.071.lcssa, i64 -3
  %.val.i.pre = load i8, ptr %i.dl, align 1, !tbaa !47 ; 2 uses
  %i.dq = and i8 %.val.i.pre, 7
  %i.dr = lshr i8 %.val.i.pre, 3
  %i.ds = zext nneg i8 %i.dr to i64
  br label %bb.i

.lr.ph103.split:                                  ; preds = %.lr.ph103, %.lr.ph103.split
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.lr.ph103.split ], [ 0, %.lr.ph103 ] ; 2 uses
  %.071101 = phi ptr [ %i.dv, %.lr.ph103.split ], [ %i.dg, %.lr.ph103 ]
  %i.dt = getelementptr inbounds nuw [212 x i8], ptr %2, i64 %indvars.iv126
  %i.du = call ptr @sdscat(ptr noundef %.071101, ptr noundef nonnull %i.dt) #10
  %i.dv = call ptr @sdscat(ptr noundef %i.du, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next127, %.07792
  br i1 %exitcond129.not, label %.preheader, label %.lr.ph103.split, !llvm.loop !15

bb.i:                                             ; preds = %.preheader, %bb.u
  %.069 = phi i64 [ %i.ff, %bb.u ], [ 0, %.preheader ] ; 3 uses
  switch i8 %i.dq, label %sdslen.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.i
  %i.dw = load i8, ptr %i.dp, align 1, !tbaa !47
  %i.dx = zext i8 %i.dw to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.i
  %i.dy = load i16, ptr %i.do, align 1, !tbaa !51
  %i.dz = zext i16 %i.dy to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.i
  %i.ea = load i32, ptr %i.dn, align 1, !tbaa !12
  %i.eb = zext i32 %i.ea to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.i
  %i.ec = load i64, ptr %i.dm, align 1, !tbaa !52
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i64 [ %i.ec, %bb.n ], [ %i.ds, %bb.j ], [ %i.dx, %bb.k ], [ %i.dz, %bb.l ], [ %i.eb, %bb.m ], [ 0, %bb.i ]
  %i.ed = icmp ult i64 %.069, %.0.i
  br i1 %i.ed, label %bb.u, label %bb.o

bb.o:                                             ; preds = %sdslen.exit
  %i.ee = call ptr @sdscat(ptr noundef nonnull %.071.lcssa, ptr noundef nonnull @.str.2) #10
  %i.ef = call ptr @sdscat(ptr noundef %i.ee, ptr noundef nonnull @.str.3) #10
  %i.eg = call ptr @sdscatlen(ptr noundef %i.ef, ptr noundef nonnull @.str.1, i64 noundef 1) #10 ; 7 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  %.val.i85 = load i8, ptr %i.eh, align 1, !tbaa !47 ; 2 uses
  %i.ei = and i8 %.val.i85, 7
  switch i8 %i.ei, label %sdslen.exit87 [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.ej = lshr i8 %.val.i85, 3
  %i.ek = zext nneg i8 %i.ej to i64
  br label %sdslen.exit87

bb.q:                                             ; preds = %bb.o
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 -3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !47
  %i.en = zext i8 %i.em to i64
  br label %sdslen.exit87

bb.r:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds i8, ptr %i.eg, i64 -5
  %i.ep = load i16, ptr %i.eo, align 1, !tbaa !51
  %i.eq = zext i16 %i.ep to i64
  br label %sdslen.exit87

bb.s:                                             ; preds = %bb.o
  %i.er = getelementptr inbounds i8, ptr %i.eg, i64 -9
  %i.es = load i32, ptr %i.er, align 1, !tbaa !12
  %i.et = zext i32 %i.es to i64
  br label %sdslen.exit87

bb.t:                                             ; preds = %bb.o
  %i.eu = getelementptr inbounds i8, ptr %i.eg, i64 -17
  %i.ev = load i64, ptr %i.eu, align 1, !tbaa !52
  br label %sdslen.exit87

sdslen.exit87:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i86 = phi i64 [ %i.ev, %bb.t ], [ %i.ek, %bb.p ], [ %i.en, %bb.q ], [ %i.eq, %bb.r ], [ %i.et, %bb.s ], [ 0, %bb.o ]
  call void @addReplyVerbatim(ptr noundef %0, ptr noundef nonnull %i.eg, i64 noundef %.0.i86, ptr noundef nonnull @.str.4) #10
  call void @sdsfree(ptr noundef nonnull %i.eg) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void

bb.u:                                             ; preds = %sdslen.exit
  %i.ew = tail call ptr @__ctype_toupper_loc() #11
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54
  %i.ey = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 %.069 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !47
  %i.fa = sext i8 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !12 ; 2 uses
  %i.fd = trunc i32 %i.fc to i8
  %sext.mask = and i32 %i.fc, 255
  %i.fe = icmp eq i32 %sext.mask, 47
  %spec.select84 = select i1 %i.fe, i8 32, i8 %i.fd
  store i8 %spec.select84, ptr %i.ey, align 1, !tbaa !47
  %i.ff = add nuw i64 %.069, 1
  br label %bb.i, !llvm.loop !16
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
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !49}
!14 = distinct !{!14, !49}
!15 = distinct !{!15, !49}
!16 = distinct !{!16, !49}
!17 = !{!"long", !10, i64 0}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!"p1 _ZTS10connection", !18, i64 0}
!20 = !{!"p1 _ZTS7redisDb", !18, i64 0}
!21 = !{!"p1 _ZTS11redisObject", !18, i64 0}
!22 = !{!"p1 omnipotent char", !18, i64 0}
!23 = !{!"any p2 pointer", !18, i64 0}
!24 = !{!"p2 _ZTS11redisObject", !23, i64 0}
!25 = !{!"p1 _ZTS14pendingCommand", !18, i64 0}
!26 = !{!"pendingCommandList", !25, i64 0, !25, i64 8, !11, i64 16, !11, i64 20}
!27 = !{!"p1 _ZTS14deferredObject", !18, i64 0}
!28 = !{!"p1 _ZTS12redisCommand", !18, i64 0}
!29 = !{!"p1 _ZTS4list", !18, i64 0}
!30 = !{!"long long", !10, i64 0}
!31 = !{!"p1 _ZTS9dictEntry", !18, i64 0}
!32 = !{!"p2 _ZTS14pendingCommand", !23, i64 0}
!33 = !{!"multiState", !32, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !17, i64 24, !11, i64 32}
!34 = !{!"p1 _ZTS4dict", !18, i64 0}
!35 = !{!"blockingState", !11, i64 0, !30, i64 8, !11, i64 16, !34, i64 24, !11, i64 32, !11, i64 36, !30, i64 40, !18, i64 48, !18, i64 56, !17, i64 64}
!36 = !{!"p1 _ZTS8listNode", !18, i64 0}
!37 = !{!"p1 _ZTS3rax", !18, i64 0}
!38 = !{!"listNode", !36, i64 0, !36, i64 8, !18, i64 16}
!39 = !{!"p1 _ZTS13payloadHeader", !18, i64 0}
!40 = !{!"p1 _ZTS7asmTask", !18, i64 0}
!41 = !{!"client", !17, i64 0, !17, i64 8, !19, i64 16, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !11, i64 28, !20, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !22, i64 64, !17, i64 72, !17, i64 80, !11, i64 88, !24, i64 96, !11, i64 104, !11, i64 108, !24, i64 112, !17, i64 120, !26, i64 128, !25, i64 152, !27, i64 160, !11, i64 168, !24, i64 176, !11, i64 184, !11, i64 188, !28, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !18, i64 224, !11, i64 232, !11, i64 236, !17, i64 240, !29, i64 248, !30, i64 256, !29, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !11, i64 296, !11, i64 300, !31, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !30, i64 336, !30, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !17, i64 368, !17, i64 376, !22, i64 384, !30, i64 392, !30, i64 400, !30, i64 408, !30, i64 416, !30, i64 424, !30, i64 432, !30, i64 440, !30, i64 448, !30, i64 456, !30, i64 464, !30, i64 472, !10, i64 480, !11, i64 524, !22, i64 528, !11, i64 536, !11, i64 540, !17, i64 544, !33, i64 552, !35, i64 592, !30, i64 664, !29, i64 672, !34, i64 680, !34, i64 688, !34, i64 696, !22, i64 704, !22, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !18, i64 744, !18, i64 752, !18, i64 760, !18, i64 768, !18, i64 776, !17, i64 784, !37, i64 792, !17, i64 800, !11, i64 808, !36, i64 816, !18, i64 824, !36, i64 832, !17, i64 840, !36, i64 848, !17, i64 856, !36, i64 864, !17, i64 872, !38, i64 880, !38, i64 904, !17, i64 928, !17, i64 936, !17, i64 944, !30, i64 952, !17, i64 960, !17, i64 968, !22, i64 976, !10, i64 984, !39, i64 992, !30, i64 1000, !30, i64 1008, !30, i64 1016, !40, i64 1024, !22, i64 1032, !10, i64 1040}
!42 = !{!41, !11, i64 88}
!43 = !{!41, !24, i64 96}
!44 = !{!21, !21, i64 0}
!45 = !{!"redisObject", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 3, !11, i64 4, !11, i64 5, !18, i64 8}
!46 = !{!45, !18, i64 8}
!47 = !{!10, !10, i64 0}
!48 = !{i64 0, i64 100, !47, i64 100, i64 100, !47, i64 200, i64 5, !47, i64 205, i64 5, !47, i64 210, i64 2, !47}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"short", !10, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!17, !17, i64 0}
!53 = !{!"p1 int", !18, i64 0}
!54 = !{!53, !53, i64 0}
end_hunk_0
