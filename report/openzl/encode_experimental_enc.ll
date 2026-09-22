Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_experimental_enc?download=true
inline.NumInlined: 102
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_encoder = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ZL_ContextClustering = type { [256 x i8], i64, i64 }
%struct.ZL_WriteCursor = type { ptr, ptr, ptr }
%struct.ZS_Entropy_EncodeParameters = type { i32, %struct.ZL_EncodeSpeed, %struct.ZL_DecodeSpeed, ptr, i64, i64, i32, i8, i8, ptr, ptr }
%struct.ZL_EncodeSpeed = type { i32 }
%struct.ZL_DecodeSpeed = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"experimental\00", align 1
@ZS_experimentalEncoder = local_unnamed_addr constant %struct.ZS_encoder { ptr @.str, ptr @ZS_encoderCtx_create, ptr @ZS_encoderCtx_release, ptr @ZS_encoderCtx_reset, ptr @ZS_experimentalEncoder_compressBound, ptr @ZS_experimentalEncoder_compress }, align 8
@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/rolz/encode_experimental_enc.c\00", align 1
@__func__.ZS_experimentalEncoder_compress = private unnamed_addr constant [32 x i8] c"ZS_experimentalEncoder_compress\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"%s `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Requirement\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s `%s' failed\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"mts != ((void*)0) && lls != ((void*)0) && mls != ((void*)0) && mcs != ((void*)0)\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"ZL_uintFits((seqs[i].matchType), sizeof(uint8_t))\00", align 1
@__func__.encodeLiterals = private unnamed_addr constant [15 x i8] c"encodeLiterals\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Expression `%s' returned an error violating %s:\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"ZL_cluster( &clustering, src, ctx, 255, 256, ZL_ClusteringMode_prune)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"requirement\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Context: \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"ZL_WC_avail(out)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"ZL_ContextClustering_encode(out, &clustering)\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"%s `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"(const char*)(const void*)clusteredLits\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Literals: n=%u o0=%u o1=%u --> Chose %s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"O0\00", align 1
@__func__.encodeCodes = private unnamed_addr constant [12 x i8] c"encodeCodes\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"ZS_Entropy_encode(out, codes, numSequences, 1, &params)\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"%s %u: O0: %zu (extra=%u)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"MatchType\00", align 1
@ZS_markov_nextState.kNextState = internal unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 5], [4 x i32] [i32 0, i32 1, i32 3, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 2, i32 5]], align 16
@.str.32 = private unnamed_addr constant [10 x i8] c"LitLength\00", align 1
@__func__.encodeSeq = private unnamed_addr constant [10 x i8] c"encodeSeq\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"(const char*)(const void*)codes\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"4 + (1 ? (0 ? 12 : 6) : 4) * 4\00", align 1
@valueToCode = internal unnamed_addr constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@bits = internal unnamed_addr constant [59 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"bitSize\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"lz\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"*-r0\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"rz-r0\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"r0-r0\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"%s: %u bytes\00", align 1
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16
@.str.45 = private unnamed_addr constant [12 x i8] c"MatchLength\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"MatchCode\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef ptr @ZS_encoderCtx_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, ptr noundef nonnull align 4 dereferenceable(44) %0, i64 44, i1 false), !tbaa.struct !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ZS_encoderCtx_release(ptr noundef captures(address_is_null) %0) #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ZS_encoderCtx_reset(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @ZS_experimentalEncoder_compressBound(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = add i64 %0, 1000
  %i.b = shl i64 %1, 4
  %i.c = add i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @ZS_experimentalEncoder_compress(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 10 uses
  %i.b = alloca [6 x i32], align 16               ; 12 uses
  %i.c = alloca [100 x i8], align 16              ; 24 uses
  %i.d = alloca [6 x i32], align 16               ; 10 uses
  %i.e = alloca [6 x i32], align 16               ; 12 uses
  %i.f = alloca [100 x i8], align 16              ; 24 uses
  %i.g = alloca [6 x i32], align 16               ; 10 uses
  %i.h = alloca [6 x i32], align 16               ; 12 uses
  %i.i = alloca [100 x i8], align 16              ; 24 uses
  %4 = alloca %struct.ZL_ContextClustering, align 8 ; 11 uses
  %i.j = alloca [256 x i32], align 16             ; 14 uses
  %i.k = alloca [256 x i32], align 16             ; 14 uses
  %5 = alloca %struct.ZL_WriteCursor, align 8     ; 27 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = lshr exact i64 %i.y, 4                   ; 10 uses
  %i.aa = and i64 %i.r, 4294967295                ; 6 uses
  %i.ab = and i64 %i.z, 4294967295                ; 20 uses
  %i.ac = add nuw nsw i64 %i.aa, 1000
  %i.ad = shl nuw nsw i64 %i.ab, 4
  %i.ae = add nuw nsw i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %2, %i.ae
  br i1 %i.af, label %bb.cx, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = trunc i64 %i.z to i32
  %i.ah = trunc i64 %i.r to i32                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8, !tbaa !45, !alias.scope !46
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 20 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !17, !alias.scope !46
  %i.al = ptrtoint ptr %1 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ao, ptr %1, align 1, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !54, !range !55, !noundef !56
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !50
  store i32 %i.ah, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i32 %i.ag, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 15
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !19
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !42  ; 5 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !59    ; 8 uses
  %i.br = icmp eq i64 %i.aa, 0
  br i1 %i.br, label %encodeLiterals.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.aa
  %i.bu = call { i32, i64 } @ZL_cluster(ptr noundef nonnull %4, ptr %i.bp, ptr nonnull %i.bs, ptr %i.bq, ptr nonnull %i.bt, i32 noundef 255, i64 noundef 256, i32 noundef 2) #14 ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 0      ; 2 uses
  %.not102.i = icmp eq i32 %i.bv, 0
  br i1 %.not102.i, label %bb.g, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.bw = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeLiterals, i32 noundef 416, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14
  %.pr.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.by = icmp sgt i32 %.pr.i, 0
  br i1 %i.by, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeLiterals, i32 noundef 416, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.bz = extractvalue { i32, i64 } %i.bu, 1
  %i.ca = inttoptr i64 %i.bz to ptr
  call void @ZL_E_log(i32 %i.bv, ptr %i.ca, i32 noundef 1) #14
  call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false)
  %i.cb = add nsw i64 %i.aa, -1                   ; 2 uses
  %xtraiter = and i64 %i.r, 1
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %i.r, 4294967294
  br label %bb.i

.unr-lcssa:                                       ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.h, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.g
  %.080109.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.di, %.unr-lcssa ]
  %lcmp.mod224 = trunc i64 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod224)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.080109.i.epil.init
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !50
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !50
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@ZS_experimentalEncoder_compress:bb.a

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_experimentalEncoder_compress, i32 noundef 762, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #14
  %.pr163 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.je = icmp sgt i32 %.pr163, 0
  br i1 %i.je, label %bb.ah, label %.thread164

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_experimentalEncoder_compress, i32 noundef 762, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread164

.thread164:                                       ; preds = %bb.af, %bb.ag, %bb.ah
  call void @abort() #15
  unreachable

bb.ai:                                            ; preds = %.lr.ph
  %i.jf = trunc nuw i32 %i.ja to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.086171
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !50
  %i.jh = load i32, ptr %i.iy, align 4, !tbaa !69
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.086171
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !11
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !70
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.086171
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !71
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.086171
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !11
  %i.jp = add nuw nsw i64 %.086171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.jp, %i.ab
  br i1 %exitcond.not, label %.lr.ph175.preheader, label %.lr.ph, !llvm.loop !34

._crit_edge176.loopexit.unr-lcssa:                ; preds = %.lr.ph175
  %lcmp.mod238.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod238.not, label %._crit_edge176, label %.lr.ph175.epil.preheader

.lr.ph175.epil.preheader:                         ; preds = %._crit_edge176.loopexit.unr-lcssa, %.lr.ph175.preheader
  %.0173.epil.init = phi i64 [ 0, %.lr.ph175.preheader ], [ %i.agh, %._crit_edge176.loopexit.unr-lcssa ]
  %.085172.epil.init = phi i32 [ 0, %.lr.ph175.preheader ], [ %i.agf, %._crit_edge176.loopexit.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter236, 0
  call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph175.epil

.lr.ph175.epil:                                   ; preds = %.lr.ph175.epil, %.lr.ph175.epil.preheader
  %.0173.epil = phi i64 [ %i.jy, %.lr.ph175.epil ], [ %.0173.epil.init, %.lr.ph175.epil.preheader ] ; 2 uses
  %.085172.epil = phi i32 [ %i.jw, %.lr.ph175.epil ], [ %.085172.epil.init, %.lr.ph175.epil.preheader ]
  %epil.iter237 = phi i64 [ %epil.iter237.next, %.lr.ph175.epil ], [ 0, %.lr.ph175.epil.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0173.epil ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !50
  %i.js = zext i32 %.085172.epil to i64
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr @ZS_markov_nextState.kNextState, i64 %i.js
  %i.ju = zext i8 %i.jr to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !11 ; 2 uses
  %i.jx = trunc i32 %i.jw to i8
  store i8 %i.jx, ptr %i.jq, align 1, !tbaa !50
  %i.jy = add nuw nsw i64 %.0173.epil, 1
  %epil.iter237.next = add i64 %epil.iter237, 1   ; 2 uses
  %epil.iter237.cmp.not = icmp eq i64 %epil.iter237.next, %xtraiter236
  br i1 %epil.iter237.cmp.not, label %._crit_edge176, label %.lr.ph175.epil, !llvm.loop !35

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit.unr-lcssa, %.lr.ph175.epil, %._crit_edge.thread
  %i.jz = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.ka = icmp sgt i32 %i.jz, 255
  br i1 %i.ka, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge176
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 585, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge176
  br i1 %.not, label %encodeLitLengths.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kb = shl nuw nsw i64 %i.ab, 1
  %i.kc = call noalias ptr @malloc(i64 noundef %i.kb) #13 ; 12 uses
  %.not.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i, label %bb.am, label %bb.ap, !prof !60

bb.am:                                            ; preds = %bb.al
  %i.kd = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %bb.an, label %.thread.i95

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null) #14
  %.pr.i96 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.kf = icmp sgt i32 %.pr.i96, 0
  br i1 %i.kf, label %bb.ao, label %.thread.i95

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread.i95

.thread.i95:                                      ; preds = %bb.ao, %bb.an, %bb.am
  call void @abort() #15
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ab ; 4 uses
  %.val4.i = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 9 uses
  %.val5.i = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.kh = ptrtoint ptr %.val5.i to i64            ; 2 uses
  %i.ki = ptrtoint ptr %.val4.i to i64            ; 2 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = icmp ult i64 %i.kj, 28
  br i1 %i.kk, label %bb.aq, label %bb.at, !prof !60

bb.aq:                                            ; preds = %bb.ap
  %i.kl = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %bb.ar, label %.thread24.i

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, i64 noundef %i.kj, i64 noundef 28) #14
  %.pr23.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.kn = icmp sgt i32 %.pr23.i, 0
  br i1 %i.kn, label %bb.as, label %.thread24.i

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread24.i

.thread24.i:                                      ; preds = %bb.as, %bb.ar, %bb.aq
  call void @abort() #15
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.ko = getelementptr inbounds nuw i8, ptr %.val4.i, i64 28 ; 5 uses
  store ptr %i.ko, ptr %i.ai, align 8, !tbaa !19
  %i.kp = ptrtoint ptr %i.ko to i64               ; 3 uses
  %i.kq = sub i64 %i.kh, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.ba
  %i.kt = lshr i32 %.sroa.11.1.i, 3
  %i.ku = zext nneg i32 %i.kt to i64              ; 2 uses
  store i64 %.sroa.0.1.i, ptr %.sroa.22.1.i, align 1, !tbaa !73
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.22.1.i, i64 %i.ku ; 2 uses
  %i.kw = icmp ugt ptr %i.kv, %i.ks
  %spec.store.select.i.i = select i1 %i.kw, ptr %i.ks, ptr %i.kv ; 2 uses
  %i.kx = and i32 %.sroa.11.1.i, 7                ; 2 uses
  %i.ky = shl nuw nsw i64 %i.ku, 3
  %i.kz = lshr i64 %.sroa.0.1.i, %i.ky
  %i.la = zext nneg i32 %i.kx to i64
  %i.lb = shl nuw nsw i64 1, %i.la
  %i.lc = or i64 %i.kz, %i.lb
  %i.ld = add nuw nsw i32 %i.kx, 1                ; 2 uses
  %i.le = lshr i32 %i.ld, 3
  %i.lf = zext nneg i32 %i.le to i64
  store i64 %i.lc, ptr %spec.store.select.i.i, align 1, !tbaa !73
  %i.lg = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i, i64 %i.lf ; 2 uses
  %i.lh = icmp ugt ptr %i.lg, %i.ks
  %spec.store.select.i.i.i = select i1 %i.lh, ptr %i.ks, ptr %i.lg ; 2 uses
  %.not.i9.i = icmp ult ptr %spec.store.select.i.i.i, %i.ks
  br i1 %.not.i9.i, label %BIT_closeCStream.exit.i, label %BIT_closeCStream.exit.thread.i

BIT_closeCStream.exit.i:                          ; preds = %bb.au
  %i.li = and i32 %i.ld, 7
  %i.lj = ptrtoint ptr %spec.store.select.i.i.i to i64
  %i.lk = icmp ne i32 %i.li, 0
  %i.ll = zext i1 %i.lk to i64
  %i.lm = add i64 %i.lj, %i.ll                    ; 2 uses
  %.not79.i.i = icmp eq i64 %i.lm, %i.kp
  br i1 %.not79.i.i, label %BIT_closeCStream.exit.thread.i, label %.preheader30.preheader.i, !prof !74

bb.av:                                            ; preds = %bb.ba, %bb.at
  %.in.i = phi i64 [ %i.ab, %bb.at ], [ %i.ln, %bb.ba ]
  %.sroa.0.033.i = phi i64 [ 0, %bb.at ], [ %.sroa.0.1.i, %bb.ba ]
  %.sroa.11.032.i = phi i32 [ 0, %bb.at ], [ %.sroa.11.1.i, %bb.ba ] ; 2 uses
  %.sroa.22.031.i = phi ptr [ %i.ko, %bb.at ], [ %.sroa.22.1.i, %bb.ba ] ; 3 uses
  %i.ln = add nsw i64 %.in.i, -1                  ; 6 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !11 ; 4 uses
  %i.lq = icmp ugt i32 %i.lp, 31
  br i1 %i.lq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lr = call range(i32 0, 27) i32 @llvm.ctlz.i32(i32 range(i32 32, 0) %i.lp, i1 true)
  %i.ls = trunc nuw nsw i32 %i.lr to i8
  %i.lt = sub nuw nsw i8 58, %i.ls
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.lu = zext nneg i32 %i.lp to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @valueToCode, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !50
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.074.i.i = phi i8 [ %i.lt, %bb.aw ], [ %i.lw, %bb.ax ] ; 2 uses
  %i.lx = zext i8 %.074.i.i to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr @bits, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !11 ; 2 uses
  %6 = zext i32 %i.lz to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %i.ma = and i32 %8, %i.lp
  %i.mb = zext i32 %i.ma to i64
  %i.mc = zext nneg i32 %.sroa.11.032.i to i64
  %i.md = shl i64 %i.mb, %i.mc
  %i.me = or i64 %i.md, %.sroa.0.033.i            ; 3 uses
  %i.mf = add i32 %i.lz, %.sroa.11.032.i          ; 3 uses
  %i.mg = and i64 %i.ln, 1
  %.not80.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not80.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mh = lshr i32 %i.mf, 3
  %i.mi = zext nneg i32 %i.mh to i64              ; 2 uses
  store i64 %i.me, ptr %.sroa.22.031.i, align 1, !tbaa !73
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.22.031.i, i64 %i.mi ; 2 uses
  %i.mk = icmp ugt ptr %i.mj, %i.ks
  %spec.store.select.i11.i = select i1 %i.mk, ptr %i.ks, ptr %i.mj
  %i.ml = and i32 %i.mf, 7
  %i.mm = shl nuw nsw i64 %i.mi, 3
  %i.mn = lshr i64 %i.me, %i.mm
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.22.1.i = phi ptr [ %.sroa.22.031.i, %bb.ay ], [ %spec.store.select.i11.i, %bb.az ] ; 3 uses
  %.sroa.11.1.i = phi i32 [ %i.mf, %bb.ay ], [ %i.ml, %bb.az ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.me, %bb.ay ], [ %i.mn, %bb.az ] ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ln
  store i8 %.074.i.i, ptr %i.mo, align 1, !tbaa !50
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ln
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !50
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !11
  %i.mu = add i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !11
  %.not78.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not78.i.i, label %bb.au, label %bb.av, !llvm.loop !36

BIT_closeCStream.exit.thread.i:                   ; preds = %BIT_closeCStream.exit.i, %bb.au
  %i.mv = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %bb.bb, label %.thread29.i

bb.bb:                                            ; preds = %BIT_closeCStream.exit.thread.i
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, i64 noundef 0, i64 noundef 0) #14
  %.pr28.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.mx = icmp sgt i32 %.pr28.i, 0
  br i1 %i.mx, label %bb.bc, label %.thread29.i

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread29.i

.thread29.i:                                      ; preds = %bb.bc, %bb.bb, %BIT_closeCStream.exit.thread.i
  call void @abort() #15
  unreachable

.preheader30.preheader.i:                         ; preds = %BIT_closeCStream.exit.i
  %i.my = sub i64 %i.lm, %i.kp                    ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.my
  store ptr %i.mz, ptr %i.ai, align 8, !tbaa !19
  %i.na = trunc i64 %i.my to i32
  store i32 %i.na, ptr %.val4.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 16, i1 false)
  %i.nb = load i32, ptr %i.g, align 16, !tbaa !11 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !11
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !11 ; 3 uses
  %i.nf = add i32 %i.ne, %i.nb                    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !11
  %i.nh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !11 ; 3 uses
  %i.nj = add i32 %i.ni, %i.nf                    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !11
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !11 ; 3 uses
  %i.nn = add i32 %i.nm, %i.nj                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i32 %i.nn, ptr %i.no, align 16, !tbaa !11
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.nq = load i32, ptr %i.np, align 16, !tbaa !11 ; 3 uses
  %i.nr = add i32 %i.nq, %i.nn
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !11
  %i.nt = icmp eq i64 %i.ab, 1
  br i1 %i.nt, label %.preheader30.i.epil.preheader, label %.preheader30.preheader.i.new

.preheader30.preheader.i.new:                     ; preds = %.preheader30.preheader.i
  %unroll_iter246 = and i64 %i.z, 4294967294
  br label %.preheader30.i

.preheader.i.unr-lcssa:                           ; preds = %.preheader30.i
  %i.nu = and i64 %i.y, 16
  %lcmp.mod244.not = icmp eq i64 %i.nu, 0
  br i1 %lcmp.mod244.not, label %.preheader.i, label %.preheader30.i.epil.preheader

.preheader30.i.epil.preheader:                    ; preds = %.preheader.i.unr-lcssa, %.preheader30.preheader.i
  %.072.i35.i.epil.init = phi i64 [ 0, %.preheader30.preheader.i ], [ %i.qu, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod245 = trunc i64 %i.z to i1
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i.epil.init
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !50
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.nx ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !11 ; 2 uses
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.072.i35.i.epil.init
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !50
  %i.od = zext i32 %i.nz to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.od
  store i8 %i.oc, ptr %i.oe, align 1, !tbaa !50
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.preheader30.i.epil.preheader
  %i.of = getelementptr inbounds nuw i8, ptr %.val4.i, i64 4
  %i.og = load i32, ptr %i.h, align 16, !tbaa !11 ; 2 uses
  %i.oh = sub i32 %i.og, %i.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.oi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.oj = zext i32 %i.oh to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.oj
  %i.ol = zext i32 %i.nb to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.ok, i64 noundef %i.ol, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  store i32 %i.og, ptr %i.of, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.om = load i32, ptr %i.nc, align 4, !tbaa !11 ; 2 uses
  %i.on = sub i32 %i.om, %i.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.oo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.op = zext i32 %i.on to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.op
  %i.or = zext i32 %i.ne to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.oq, i64 noundef %i.or, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.os = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  store i32 %i.om, ptr %i.os, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ot = load i32, ptr %i.ng, align 8, !tbaa !11 ; 2 uses
  %i.ou = sub i32 %i.ot, %i.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ov = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.ow = zext i32 %i.ou to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ow
  %i.oy = zext i32 %i.ni to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.ox, i64 noundef %i.oy, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.oz = getelementptr inbounds nuw i8, ptr %.val4.i, i64 12
  store i32 %i.ot, ptr %i.oz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.pa = load i32, ptr %i.nk, align 4, !tbaa !11 ; 2 uses
  %i.pb = sub i32 %i.pa, %i.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.pc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.pd = zext i32 %i.pb to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.pd
  %i.pf = zext i32 %i.nm to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.pe, i64 noundef %i.pf, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.pg = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  store i32 %i.pa, ptr %i.pg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ph = load i32, ptr %i.no, align 16, !tbaa !11 ; 2 uses
  %i.pi = sub i32 %i.ph, %i.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.pj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.pk = zext i32 %i.pi to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.pk
  %i.pm = zext i32 %i.nq to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.pl, i64 noundef %i.pm, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.pn = getelementptr inbounds nuw i8, ptr %.val4.i, i64 20
  store i32 %i.ph, ptr %i.pn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.po = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !11 ; 2 uses
  %i.pq = load i32, ptr %i.ns, align 4, !tbaa !11 ; 2 uses
  %i.pr = sub i32 %i.pq, %i.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ps = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.pt = zext i32 %i.pr to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.pt
  %i.pv = zext i32 %i.pp to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.pu, i64 noundef %i.pv, i32 noundef 59, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.pw = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  store i32 %i.pq, ptr %i.pw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @free(ptr noundef nonnull %i.kc) #14
  %i.px = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.py = icmp sgt i32 %i.px, 255
  br i1 %i.py, label %bb.bd, label %bb.be

.preheader30.i:                                   ; preds = %.preheader30.i, %.preheader30.preheader.i.new
  %.072.i35.i = phi i64 [ 0, %.preheader30.preheader.i.new ], [ %i.qu, %.preheader30.i ] ; 4 uses
  %niter247 = phi i64 [ 0, %.preheader30.preheader.i.new ], [ %niter247.next.1, %.preheader30.i ]
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !50
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !11 ; 2 uses
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.qc, align 4, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.072.i35.i
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !50
  %i.qh = zext i32 %i.qd to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.qh
  store i8 %i.qg, ptr %i.qi, align 1, !tbaa !50
  %i.qj = or disjoint i64 %.072.i35.i, 1          ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !50
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.qm ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !11 ; 2 uses
  %i.qp = add i32 %i.qo, 1
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !11
  %i.qq = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.qj
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !50
  %i.qs = zext i32 %i.qo to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.qs
  store i8 %i.qr, ptr %i.qt, align 1, !tbaa !50
  %i.qu = add nuw nsw i64 %.072.i35.i, 2          ; 2 uses
  %niter247.next.1 = add i64 %niter247, 2         ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %.preheader.i.unr-lcssa, label %.preheader30.i, !llvm.loop !37

bb.bd:                                            ; preds = %.preheader.i
  %.val6.i = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.qv = ptrtoint ptr %.val6.i to i64
  %i.qw = sub i64 %i.qv, %i.ki
  %i.qx = trunc i64 %i.qw to i32
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 671, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.32, i32 noundef %i.qx) #14
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %encodeLitLengths.exit

encodeLitLengths.exit:                            ; preds = %bb.ak, %bb.be
  %i.qy = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.qz = icmp sgt i32 %i.qy, 255
  br i1 %i.qz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %encodeLitLengths.exit
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 585, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.45) #14
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %encodeLitLengths.exit
  br i1 %.not, label %encodeMatchLengths.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ra = shl nuw nsw i64 %i.ab, 1
  %i.rb = call noalias ptr @malloc(i64 noundef %i.ra) #13 ; 12 uses
  %.not.i.i97 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i97, label %bb.bi, label %bb.bl, !prof !60

bb.bi:                                            ; preds = %bb.bh
  %i.rc = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.rd = icmp sgt i32 %i.rc, 0
  br i1 %i.rd, label %bb.bj, label %.thread.i127

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null) #14
  %.pr.i128 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.re = icmp sgt i32 %.pr.i128, 0
  br i1 %i.re, label %bb.bk, label %.thread.i127

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread.i127

.thread.i127:                                     ; preds = %bb.bk, %bb.bj, %bb.bi
  call void @abort() #15
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.ab ; 4 uses
  %.val4.i98 = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 9 uses
  %.val5.i99 = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.rg = ptrtoint ptr %.val5.i99 to i64          ; 2 uses
  %i.rh = ptrtoint ptr %.val4.i98 to i64          ; 2 uses
  %i.ri = sub i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = icmp ult i64 %i.ri, 28
  br i1 %i.rj, label %bb.bm, label %bb.bp, !prof !60

bb.bm:                                            ; preds = %bb.bl
  %i.rk = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %bb.bn, label %.thread24.i125

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, i64 noundef %i.ri, i64 noundef 28) #14
  %.pr23.i126 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.rm = icmp sgt i32 %.pr23.i126, 0
  br i1 %i.rm, label %bb.bo, label %.thread24.i125

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread24.i125

.thread24.i125:                                   ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @abort() #15
  unreachable

bb.bp:                                            ; preds = %bb.bl
  %i.rn = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 28 ; 5 uses
  store ptr %i.rn, ptr %i.ai, align 8, !tbaa !19
  %i.ro = ptrtoint ptr %i.rn to i64               ; 3 uses
  %i.rp = sub i64 %i.rg, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rp
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 -8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bw
  %i.rs = lshr i32 %.sroa.11.1.i108, 3
  %i.rt = zext nneg i32 %i.rs to i64              ; 2 uses
  store i64 %.sroa.0.1.i109, ptr %.sroa.22.1.i107, align 1, !tbaa !73
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.22.1.i107, i64 %i.rt ; 2 uses
  %i.rv = icmp ugt ptr %i.ru, %i.rr
  %spec.store.select.i.i111 = select i1 %i.rv, ptr %i.rr, ptr %i.ru ; 2 uses
  %i.rw = and i32 %.sroa.11.1.i108, 7             ; 2 uses
  %i.rx = shl nuw nsw i64 %i.rt, 3
  %i.ry = lshr i64 %.sroa.0.1.i109, %i.rx
  %i.rz = zext nneg i32 %i.rw to i64
  %i.sa = shl nuw nsw i64 1, %i.rz
  %i.sb = or i64 %i.ry, %i.sa
  %i.sc = add nuw nsw i32 %i.rw, 1                ; 2 uses
  %i.sd = lshr i32 %i.sc, 3
  %i.se = zext nneg i32 %i.sd to i64
  store i64 %i.sb, ptr %spec.store.select.i.i111, align 1, !tbaa !73
  %i.sf = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i111, i64 %i.se ; 2 uses
  %i.sg = icmp ugt ptr %i.sf, %i.rr
  %spec.store.select.i.i.i112 = select i1 %i.sg, ptr %i.rr, ptr %i.sf ; 2 uses
  %.not.i9.i113 = icmp ult ptr %spec.store.select.i.i.i112, %i.rr
  br i1 %.not.i9.i113, label %BIT_closeCStream.exit.i117, label %BIT_closeCStream.exit.thread.i114

BIT_closeCStream.exit.i117:                       ; preds = %bb.bq
  %i.sh = and i32 %i.sc, 7
  %i.si = ptrtoint ptr %spec.store.select.i.i.i112 to i64
  %i.sj = icmp ne i32 %i.sh, 0
  %i.sk = zext i1 %i.sj to i64
  %i.sl = add i64 %i.si, %i.sk                    ; 2 uses
  %.not79.i.i118 = icmp eq i64 %i.sl, %i.ro
  br i1 %.not79.i.i118, label %BIT_closeCStream.exit.thread.i114, label %.preheader30.preheader.i119, !prof !74

bb.br:                                            ; preds = %bb.bw, %bb.bp
  %.in.i100 = phi i64 [ %i.ab, %bb.bp ], [ %i.sm, %bb.bw ]
  %.sroa.0.033.i101 = phi i64 [ 0, %bb.bp ], [ %.sroa.0.1.i109, %bb.bw ]
  %.sroa.11.032.i102 = phi i32 [ 0, %bb.bp ], [ %.sroa.11.1.i108, %bb.bw ] ; 2 uses
  %.sroa.22.031.i103 = phi ptr [ %i.rn, %bb.bp ], [ %.sroa.22.1.i107, %bb.bw ] ; 3 uses
  %i.sm = add nsw i64 %.in.i100, -1               ; 6 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !11 ; 4 uses
  %i.sp = icmp ugt i32 %i.so, 31
  br i1 %i.sp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.sq = call range(i32 0, 27) i32 @llvm.ctlz.i32(i32 range(i32 32, 0) %i.so, i1 true)
  %i.sr = trunc nuw nsw i32 %i.sq to i8
  %i.ss = sub nuw nsw i8 58, %i.sr
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.st = zext nneg i32 %i.so to i64
  %i.su = getelementptr inbounds nuw i8, ptr @valueToCode, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !50
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.074.i.i104 = phi i8 [ %i.ss, %bb.bs ], [ %i.sv, %bb.bt ] ; 2 uses
  %i.sw = zext i8 %.074.i.i104 to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr @bits, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !11 ; 2 uses
  %9 = zext i32 %i.sy to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %i.sz = and i32 %11, %i.so
  %i.ta = zext i32 %i.sz to i64
  %i.tb = zext nneg i32 %.sroa.11.032.i102 to i64
  %i.tc = shl i64 %i.ta, %i.tb
  %i.td = or i64 %i.tc, %.sroa.0.033.i101         ; 3 uses
  %i.te = add i32 %i.sy, %.sroa.11.032.i102       ; 3 uses
  %i.tf = and i64 %i.sm, 1
  %.not80.i.i105 = icmp eq i64 %i.tf, 0
  br i1 %.not80.i.i105, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tg = lshr i32 %i.te, 3
  %i.th = zext nneg i32 %i.tg to i64              ; 2 uses
  store i64 %i.td, ptr %.sroa.22.031.i103, align 1, !tbaa !73
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.22.031.i103, i64 %i.th ; 2 uses
  %i.tj = icmp ugt ptr %i.ti, %i.rr
  %spec.store.select.i11.i106 = select i1 %i.tj, ptr %i.rr, ptr %i.ti
  %i.tk = and i32 %i.te, 7
  %i.tl = shl nuw nsw i64 %i.th, 3
  %i.tm = lshr i64 %i.td, %i.tl
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sroa.22.1.i107 = phi ptr [ %.sroa.22.031.i103, %bb.bu ], [ %spec.store.select.i11.i106, %bb.bv ] ; 3 uses
  %.sroa.11.1.i108 = phi i32 [ %i.te, %bb.bu ], [ %i.tk, %bb.bv ] ; 3 uses
  %.sroa.0.1.i109 = phi i64 [ %i.td, %bb.bu ], [ %i.tm, %bb.bv ] ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.sm
  store i8 %.074.i.i104, ptr %i.tn, align 1, !tbaa !50
  %i.to = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.sm
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !50
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.tq ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !11
  %i.tt = add i32 %i.ts, 1
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !11
  %.not78.i.i110 = icmp eq i64 %i.sm, 0
  br i1 %.not78.i.i110, label %bb.bq, label %bb.br, !llvm.loop !36

BIT_closeCStream.exit.thread.i114:                ; preds = %BIT_closeCStream.exit.i117, %bb.bq
  %i.tu = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %bb.bx, label %.thread29.i115

bb.bx:                                            ; preds = %BIT_closeCStream.exit.thread.i114
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, i64 noundef 0, i64 noundef 0) #14
  %.pr28.i116 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.tw = icmp sgt i32 %.pr28.i116, 0
  br i1 %i.tw, label %bb.by, label %.thread29.i115

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread29.i115

.thread29.i115:                                   ; preds = %bb.by, %bb.bx, %BIT_closeCStream.exit.thread.i114
  call void @abort() #15
  unreachable

.preheader30.preheader.i119:                      ; preds = %BIT_closeCStream.exit.i117
  %i.tx = sub i64 %i.sl, %i.ro                    ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.tx
  store ptr %i.ty, ptr %i.ai, align 8, !tbaa !19
  %i.tz = trunc i64 %i.tx to i32
  store i32 %i.tz, ptr %.val4.i98, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 16, i1 false)
  %i.ua = load i32, ptr %i.d, align 16, !tbaa !11 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !11
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !11 ; 3 uses
  %i.ue = add i32 %i.ud, %i.ua                    ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i32 %i.ue, ptr %i.uf, align 8, !tbaa !11
  %i.ug = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !11 ; 3 uses
  %i.ui = add i32 %i.uh, %i.ue                    ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store i32 %i.ui, ptr %i.uj, align 4, !tbaa !11
  %i.uk = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !11 ; 3 uses
  %i.um = add i32 %i.ul, %i.ui                    ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i32 %i.um, ptr %i.un, align 16, !tbaa !11
  %i.uo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.up = load i32, ptr %i.uo, align 16, !tbaa !11 ; 3 uses
  %i.uq = add i32 %i.up, %i.um
  %i.ur = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !11
  %i.us = icmp eq i64 %i.ab, 1
  br i1 %i.us, label %.preheader30.i120.epil.preheader, label %.preheader30.preheader.i119.new

.preheader30.preheader.i119.new:                  ; preds = %.preheader30.preheader.i119
  %unroll_iter252 = and i64 %i.z, 4294967294
  br label %.preheader30.i120

.preheader.i123.unr-lcssa:                        ; preds = %.preheader30.i120
  %i.ut = and i64 %i.y, 16
  %lcmp.mod250.not = icmp eq i64 %i.ut, 0
  br i1 %lcmp.mod250.not, label %.preheader.i123, label %.preheader30.i120.epil.preheader

.preheader30.i120.epil.preheader:                 ; preds = %.preheader.i123.unr-lcssa, %.preheader30.preheader.i119
  %.072.i35.i121.epil.init = phi i64 [ 0, %.preheader30.preheader.i119 ], [ %i.xt, %.preheader.i123.unr-lcssa ] ; 2 uses
  %lcmp.mod251 = trunc i64 %i.z to i1
  call void @llvm.assume(i1 %lcmp.mod251)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i121.epil.init
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !50
  %i.uw = zext i8 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.uw ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !11 ; 2 uses
  %i.uz = add i32 %i.uy, 1
  store i32 %i.uz, ptr %i.ux, align 4, !tbaa !11
  %i.va = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.072.i35.i121.epil.init
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !50
  %i.vc = zext i32 %i.uy to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.vc
  store i8 %i.vb, ptr %i.vd, align 1, !tbaa !50
  br label %.preheader.i123

.preheader.i123:                                  ; preds = %.preheader.i123.unr-lcssa, %.preheader30.i120.epil.preheader
  %i.ve = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 4
  %i.vf = load i32, ptr %i.e, align 16, !tbaa !11 ; 2 uses
  %i.vg = sub i32 %i.vf, %i.ua
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.vh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.vi = zext i32 %i.vg to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.vi
  %i.vk = zext i32 %i.ua to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.vj, i64 noundef %i.vk, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  store i32 %i.vf, ptr %i.ve, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.vl = load i32, ptr %i.ub, align 4, !tbaa !11 ; 2 uses
  %i.vm = sub i32 %i.vl, %i.ud
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.vn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.vo = zext i32 %i.vm to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.vo
  %i.vq = zext i32 %i.ud to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.vp, i64 noundef %i.vq, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  %i.vr = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 8
  store i32 %i.vl, ptr %i.vr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.vs = load i32, ptr %i.uf, align 8, !tbaa !11 ; 2 uses
  %i.vt = sub i32 %i.vs, %i.uh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.vu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.vv = zext i32 %i.vt to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.vv
  %i.vx = zext i32 %i.uh to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.vw, i64 noundef %i.vx, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  %i.vy = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 12
  store i32 %i.vs, ptr %i.vy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.vz = load i32, ptr %i.uj, align 4, !tbaa !11 ; 2 uses
  %i.wa = sub i32 %i.vz, %i.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.wb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.wc = zext i32 %i.wa to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.wc
  %i.we = zext i32 %i.ul to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.wd, i64 noundef %i.we, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  %i.wf = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 16
  store i32 %i.vz, ptr %i.wf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.wg = load i32, ptr %i.un, align 16, !tbaa !11 ; 2 uses
  %i.wh = sub i32 %i.wg, %i.up
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.wi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.wj = zext i32 %i.wh to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.wj
  %i.wl = zext i32 %i.up to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.wk, i64 noundef %i.wl, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  %i.wm = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 20
  store i32 %i.wg, ptr %i.wm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.wn = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !11 ; 2 uses
  %i.wp = load i32, ptr %i.ur, align 4, !tbaa !11 ; 2 uses
  %i.wq = sub i32 %i.wp, %i.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.wr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.45) #14 ; 0 uses
  %i.ws = zext i32 %i.wq to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.ws
  %i.wu = zext i32 %i.wo to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.wt, i64 noundef %i.wu, i32 noundef 59, ptr noundef nonnull %i.f, i32 noundef 0)
  %i.wv = getelementptr inbounds nuw i8, ptr %.val4.i98, i64 24
  store i32 %i.wp, ptr %i.wv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @free(ptr noundef nonnull %i.rb) #14
  %i.ww = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.wx = icmp sgt i32 %i.ww, 255
  br i1 %i.wx, label %bb.bz, label %bb.ca

.preheader30.i120:                                ; preds = %.preheader30.i120, %.preheader30.preheader.i119.new
  %.072.i35.i121 = phi i64 [ 0, %.preheader30.preheader.i119.new ], [ %i.xt, %.preheader30.i120 ] ; 4 uses
  %niter253 = phi i64 [ 0, %.preheader30.preheader.i119.new ], [ %niter253.next.1, %.preheader30.i120 ]
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i121
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !50
  %i.xa = zext i8 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.xa ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !11 ; 2 uses
  %i.xd = add i32 %i.xc, 1
  store i32 %i.xd, ptr %i.xb, align 4, !tbaa !11
  %i.xe = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.072.i35.i121
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !50
  %i.xg = zext i32 %i.xc to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.xg
  store i8 %i.xf, ptr %i.xh, align 1, !tbaa !50
  %i.xi = or disjoint i64 %.072.i35.i121, 1       ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !50
  %i.xl = zext i8 %i.xk to i64
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.xl ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !11 ; 2 uses
  %i.xo = add i32 %i.xn, 1
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !11
  %i.xp = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.xi
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !50
  %i.xr = zext i32 %i.xn to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.xr
  store i8 %i.xq, ptr %i.xs, align 1, !tbaa !50
  %i.xt = add nuw nsw i64 %.072.i35.i121, 2       ; 2 uses
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.preheader.i123.unr-lcssa, label %.preheader30.i120, !llvm.loop !37

bb.bz:                                            ; preds = %.preheader.i123
  %.val6.i124 = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.xu = ptrtoint ptr %.val6.i124 to i64
  %i.xv = sub i64 %i.xu, %i.rh
  %i.xw = trunc i64 %i.xv to i32
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 671, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %i.xw) #14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.preheader.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %encodeMatchLengths.exit

encodeMatchLengths.exit:                          ; preds = %bb.bg, %bb.ca
  %i.xx = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.xy = icmp sgt i32 %i.xx, 255
  br i1 %i.xy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %encodeMatchLengths.exit
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 585, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.46) #14
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %encodeMatchLengths.exit
  br i1 %.not, label %encodeMatchCodes.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xz = shl nuw nsw i64 %i.ab, 1
  %i.ya = call noalias ptr @malloc(i64 noundef %i.xz) #13 ; 12 uses
  %.not.i.i129 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i129, label %bb.ce, label %bb.ch, !prof !60

bb.ce:                                            ; preds = %bb.cd
  %i.yb = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.yc = icmp sgt i32 %i.yb, 0
  br i1 %i.yc, label %bb.cf, label %.thread.i159

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null) #14
  %.pr.i160 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.yd = icmp sgt i32 %.pr.i160, 0
  br i1 %i.yd, label %bb.cg, label %.thread.i159

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 590, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread.i159

.thread.i159:                                     ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @abort() #15
  unreachable

bb.ch:                                            ; preds = %bb.cd
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.ab ; 4 uses
  %.val4.i130 = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 9 uses
  %.val5.i131 = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.yf = ptrtoint ptr %.val5.i131 to i64         ; 2 uses
  %i.yg = ptrtoint ptr %.val4.i130 to i64         ; 2 uses
  %i.yh = sub i64 %i.yf, %i.yg                    ; 2 uses
  %i.yi = icmp ult i64 %i.yh, 28
  br i1 %i.yi, label %bb.ci, label %bb.cl, !prof !60

bb.ci:                                            ; preds = %bb.ch
  %i.yj = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.yk = icmp sgt i32 %i.yj, 0
  br i1 %i.yk, label %bb.cj, label %.thread24.i157

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, i64 noundef %i.yh, i64 noundef 28) #14
  %.pr23.i158 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.yl = icmp sgt i32 %.pr23.i158, 0
  br i1 %i.yl, label %bb.ck, label %.thread24.i157

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 594, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread24.i157

.thread24.i157:                                   ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @abort() #15
  unreachable

bb.cl:                                            ; preds = %bb.ch
  %i.ym = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 28 ; 5 uses
  store ptr %i.ym, ptr %i.ai, align 8, !tbaa !19
  %i.yn = ptrtoint ptr %i.ym to i64               ; 3 uses
  %i.yo = sub i64 %i.yf, %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yo
  %i.yq = getelementptr inbounds i8, ptr %i.yp, i64 -8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cs
  %i.yr = lshr i32 %.sroa.11.1.i140, 3
  %i.ys = zext nneg i32 %i.yr to i64              ; 2 uses
  store i64 %.sroa.0.1.i141, ptr %.sroa.22.1.i139, align 1, !tbaa !73
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.22.1.i139, i64 %i.ys ; 2 uses
  %i.yu = icmp ugt ptr %i.yt, %i.yq
  %spec.store.select.i.i143 = select i1 %i.yu, ptr %i.yq, ptr %i.yt ; 2 uses
  %i.yv = and i32 %.sroa.11.1.i140, 7             ; 2 uses
  %i.yw = shl nuw nsw i64 %i.ys, 3
  %i.yx = lshr i64 %.sroa.0.1.i141, %i.yw
  %i.yy = zext nneg i32 %i.yv to i64
  %i.yz = shl nuw nsw i64 1, %i.yy
  %i.za = or i64 %i.yx, %i.yz
  %i.zb = add nuw nsw i32 %i.yv, 1                ; 2 uses
  %i.zc = lshr i32 %i.zb, 3
  %i.zd = zext nneg i32 %i.zc to i64
  store i64 %i.za, ptr %spec.store.select.i.i143, align 1, !tbaa !73
  %i.ze = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i143, i64 %i.zd ; 2 uses
  %i.zf = icmp ugt ptr %i.ze, %i.yq
  %spec.store.select.i.i.i144 = select i1 %i.zf, ptr %i.yq, ptr %i.ze ; 2 uses
  %.not.i9.i145 = icmp ult ptr %spec.store.select.i.i.i144, %i.yq
  br i1 %.not.i9.i145, label %BIT_closeCStream.exit.i149, label %BIT_closeCStream.exit.thread.i146

BIT_closeCStream.exit.i149:                       ; preds = %bb.cm
  %i.zg = and i32 %i.zb, 7
  %i.zh = ptrtoint ptr %spec.store.select.i.i.i144 to i64
  %i.zi = icmp ne i32 %i.zg, 0
  %i.zj = zext i1 %i.zi to i64
  %i.zk = add i64 %i.zh, %i.zj                    ; 2 uses
  %.not79.i.i150 = icmp eq i64 %i.zk, %i.yn
  br i1 %.not79.i.i150, label %BIT_closeCStream.exit.thread.i146, label %.preheader30.preheader.i151, !prof !74

bb.cn:                                            ; preds = %bb.cs, %bb.cl
  %.in.i132 = phi i64 [ %i.ab, %bb.cl ], [ %i.zl, %bb.cs ]
  %.sroa.0.033.i133 = phi i64 [ 0, %bb.cl ], [ %.sroa.0.1.i141, %bb.cs ]
  %.sroa.11.032.i134 = phi i32 [ 0, %bb.cl ], [ %.sroa.11.1.i140, %bb.cs ] ; 2 uses
  %.sroa.22.031.i135 = phi ptr [ %i.ym, %bb.cl ], [ %.sroa.22.1.i139, %bb.cs ] ; 3 uses
  %i.zl = add nsw i64 %.in.i132, -1               ; 6 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !11 ; 4 uses
  %i.zo = icmp ugt i32 %i.zn, 31
  br i1 %i.zo, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.zp = call range(i32 0, 27) i32 @llvm.ctlz.i32(i32 range(i32 32, 0) %i.zn, i1 true)
  %i.zq = trunc nuw nsw i32 %i.zp to i8
  %i.zr = sub nuw nsw i8 58, %i.zq
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.zs = zext nneg i32 %i.zn to i64
  %i.zt = getelementptr inbounds nuw i8, ptr @valueToCode, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !50
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.074.i.i136 = phi i8 [ %i.zr, %bb.co ], [ %i.zu, %bb.cp ] ; 2 uses
  %i.zv = zext i8 %.074.i.i136 to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr @bits, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !11 ; 2 uses
  %12 = zext i32 %i.zx to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %i.zy = and i32 %14, %i.zn
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = zext nneg i32 %.sroa.11.032.i134 to i64
  %i.aab = shl i64 %i.zz, %i.aaa
  %i.aac = or i64 %i.aab, %.sroa.0.033.i133       ; 3 uses
  %i.aad = add i32 %i.zx, %.sroa.11.032.i134      ; 3 uses
  %i.aae = and i64 %i.zl, 1
  %.not80.i.i137 = icmp eq i64 %i.aae, 0
  br i1 %.not80.i.i137, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aaf = lshr i32 %i.aad, 3
  %i.aag = zext nneg i32 %i.aaf to i64            ; 2 uses
  store i64 %i.aac, ptr %.sroa.22.031.i135, align 1, !tbaa !73
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.22.031.i135, i64 %i.aag ; 2 uses
  %i.aai = icmp ugt ptr %i.aah, %i.yq
  %spec.store.select.i11.i138 = select i1 %i.aai, ptr %i.yq, ptr %i.aah
  %i.aaj = and i32 %i.aad, 7
  %i.aak = shl nuw nsw i64 %i.aag, 3
  %i.aal = lshr i64 %i.aac, %i.aak
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.22.1.i139 = phi ptr [ %.sroa.22.031.i135, %bb.cq ], [ %spec.store.select.i11.i138, %bb.cr ] ; 3 uses
  %.sroa.11.1.i140 = phi i32 [ %i.aad, %bb.cq ], [ %i.aaj, %bb.cr ] ; 3 uses
  %.sroa.0.1.i141 = phi i64 [ %i.aac, %bb.cq ], [ %i.aal, %bb.cr ] ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.zl
  store i8 %.074.i.i136, ptr %i.aam, align 1, !tbaa !50
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.zl
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !50
  %i.aap = zext i8 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aap ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !11
  %i.aas = add i32 %i.aar, 1
  store i32 %i.aas, ptr %i.aaq, align 4, !tbaa !11
  %.not78.i.i142 = icmp eq i64 %i.zl, 0
  br i1 %.not78.i.i142, label %bb.cm, label %bb.cn, !llvm.loop !36

BIT_closeCStream.exit.thread.i146:                ; preds = %BIT_closeCStream.exit.i149, %bb.cm
  %i.aat = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.aau = icmp sgt i32 %i.aat, 0
  br i1 %i.aau, label %bb.ct, label %.thread29.i147

bb.ct:                                            ; preds = %BIT_closeCStream.exit.thread.i146
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, i64 noundef 0, i64 noundef 0) #14
  %.pr28.i148 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.aav = icmp sgt i32 %.pr28.i148, 0
  br i1 %i.aav, label %bb.cu, label %.thread29.i147

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.encodeSeq, i32 noundef 620, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %.thread29.i147

.thread29.i147:                                   ; preds = %bb.cu, %bb.ct, %BIT_closeCStream.exit.thread.i146
  call void @abort() #15
  unreachable

.preheader30.preheader.i151:                      ; preds = %BIT_closeCStream.exit.i149
  %i.aaw = sub i64 %i.zk, %i.yn                   ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.aaw
  store ptr %i.aax, ptr %i.ai, align 8, !tbaa !19
  %i.aay = trunc i64 %i.aaw to i32
  store i32 %i.aay, ptr %.val4.i130, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.aaz = load i32, ptr %i.a, align 16, !tbaa !11 ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %i.aaz, ptr %i.aba, align 4, !tbaa !11
  %i.abb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !11 ; 3 uses
  %i.abd = add i32 %i.abc, %i.aaz                 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.abd, ptr %i.abe, align 8, !tbaa !11
  %i.abf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !11 ; 3 uses
  %i.abh = add i32 %i.abg, %i.abd                 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 %i.abh, ptr %i.abi, align 4, !tbaa !11
  %i.abj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !11 ; 3 uses
  %i.abl = add i32 %i.abk, %i.abh                 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.abl, ptr %i.abm, align 16, !tbaa !11
  %i.abn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.abo = load i32, ptr %i.abn, align 16, !tbaa !11 ; 3 uses
  %i.abp = add i32 %i.abo, %i.abl
  %i.abq = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !11
  %i.abr = icmp eq i64 %i.ab, 1
  br i1 %i.abr, label %.preheader30.i152.epil.preheader, label %.preheader30.preheader.i151.new

.preheader30.preheader.i151.new:                  ; preds = %.preheader30.preheader.i151
  %unroll_iter258 = and i64 %i.z, 4294967294
  br label %.preheader30.i152

.preheader.i155.unr-lcssa:                        ; preds = %.preheader30.i152
  %i.abs = and i64 %i.y, 16
  %lcmp.mod256.not = icmp eq i64 %i.abs, 0
  br i1 %lcmp.mod256.not, label %.preheader.i155, label %.preheader30.i152.epil.preheader

.preheader30.i152.epil.preheader:                 ; preds = %.preheader.i155.unr-lcssa, %.preheader30.preheader.i151
  %.072.i35.i153.epil.init = phi i64 [ 0, %.preheader30.preheader.i151 ], [ %i.aes, %.preheader.i155.unr-lcssa ] ; 2 uses
  %lcmp.mod257 = trunc i64 %i.z to i1
  call void @llvm.assume(i1 %lcmp.mod257)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i153.epil.init
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !50
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.abv ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !11 ; 2 uses
  %i.aby = add i32 %i.abx, 1
  store i32 %i.aby, ptr %i.abw, align 4, !tbaa !11
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ye, i64 %.072.i35.i153.epil.init
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !50
  %i.acb = zext i32 %i.abx to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.acb
  store i8 %i.aca, ptr %i.acc, align 1, !tbaa !50
  br label %.preheader.i155

.preheader.i155:                                  ; preds = %.preheader.i155.unr-lcssa, %.preheader30.i152.epil.preheader
  %i.acd = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 4
  %i.ace = load i32, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.acf = sub i32 %i.ace, %i.aaz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.acg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.ach = zext i32 %i.acf to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.ach
  %i.acj = zext i32 %i.aaz to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.aci, i64 noundef %i.acj, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  store i32 %i.ace, ptr %i.acd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.ack = load i32, ptr %i.aba, align 4, !tbaa !11 ; 2 uses
  %i.acl = sub i32 %i.ack, %i.abc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.acm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.acn = zext i32 %i.acl to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.acn
  %i.acp = zext i32 %i.abc to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.aco, i64 noundef %i.acp, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.acq = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 8
  store i32 %i.ack, ptr %i.acq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.acr = load i32, ptr %i.abe, align 8, !tbaa !11 ; 2 uses
  %i.acs = sub i32 %i.acr, %i.abg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.act = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.acu = zext i32 %i.acs to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.acu
  %i.acw = zext i32 %i.abg to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.acv, i64 noundef %i.acw, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.acx = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 12
  store i32 %i.acr, ptr %i.acx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.acy = load i32, ptr %i.abi, align 4, !tbaa !11 ; 2 uses
  %i.acz = sub i32 %i.acy, %i.abk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ada = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.adb = zext i32 %i.acz to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.adb
  %i.add = zext i32 %i.abk to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.adc, i64 noundef %i.add, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.ade = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 16
  store i32 %i.acy, ptr %i.ade, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.adf = load i32, ptr %i.abm, align 16, !tbaa !11 ; 2 uses
  %i.adg = sub i32 %i.adf, %i.abo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.adh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.adi = zext i32 %i.adg to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.adi
  %i.adk = zext i32 %i.abo to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.adj, i64 noundef %i.adk, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.adl = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 20
  store i32 %i.adf, ptr %i.adl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.adm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !11 ; 2 uses
  %i.ado = load i32, ptr %i.abq, align 4, !tbaa !11 ; 2 uses
  %i.adp = sub i32 %i.ado, %i.adn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.adq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.46) #14 ; 0 uses
  %i.adr = zext i32 %i.adp to i64
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.adr
  %i.adt = zext i32 %i.adn to i64
  call fastcc void @encodeCodes(ptr noundef nonnull %5, ptr noundef nonnull %i.ads, i64 noundef %i.adt, i32 noundef 59, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.adu = getelementptr inbounds nuw i8, ptr %.val4.i130, i64 24
  store i32 %i.ado, ptr %i.adu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @free(ptr noundef nonnull %i.ya) #14
  %i.adv = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.adw = icmp sgt i32 %i.adv, 255
  br i1 %i.adw, label %bb.cv, label %bb.cw

.preheader30.i152:                                ; preds = %.preheader30.i152, %.preheader30.preheader.i151.new
  %.072.i35.i153 = phi i64 [ 0, %.preheader30.preheader.i151.new ], [ %i.aes, %.preheader30.i152 ] ; 4 uses
  %niter259 = phi i64 [ 0, %.preheader30.preheader.i151.new ], [ %niter259.next.1, %.preheader30.i152 ]
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.072.i35.i153
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !50
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.adz ; 2 uses
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !11 ; 2 uses
  %i.aec = add i32 %i.aeb, 1
  store i32 %i.aec, ptr %i.aea, align 4, !tbaa !11
end_hunk_1
