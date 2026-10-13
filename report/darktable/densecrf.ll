Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/densecrf?download=true
inline.NumInlined: 170
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 55
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu", target_cpu: "icelake-server")
    ".globl _ZSt21ios_base_library_initv"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%class.PermutohedralLattice = type { i64, i64, ptr, ptr, ptr, ptr }
%class.PermutohedralLattice.0 = type { i64, i64, ptr, ptr, ptr, ptr }
%"struct.HashTablePermutohedral<2, 2>::Key" = type { i32, [2 x i16] }
%"struct.HashTablePermutohedral<5, 2>::Key" = type <{ i32, [5 x i16], [2 x i8] }>

$_ZN20PermutohedralLatticeILi2ELi2EEC2Emmm = comdat any

$_ZN20PermutohedralLatticeILi5ELi2EEC2Emmm = comdat any

$_ZNK20PermutohedralLatticeILi2ELi2EE4blurEv = comdat any

$_ZNK20PermutohedralLatticeILi5ELi2EE4blurEv = comdat any

$_ZN20PermutohedralLatticeILi5ELi2EED2Ev = comdat any

$_ZN20PermutohedralLatticeILi2ELi2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN22HashTablePermutohedralILi2ELi2EE7setSizeEm = comdat any

$_ZN22HashTablePermutohedralILi5ELi2EE7setSizeEm = comdat any

$_ZNK20PermutohedralLatticeILi2ELi2EE5splatEPfS1_mi = comdat any

$_ZN20PermutohedralLatticeILi2ELi2EE19merge_splat_threadsEv = comdat any

$_ZN22HashTablePermutohedralILi2ELi2EE9growExactEm = comdat any

$_ZNK20PermutohedralLatticeILi5ELi2EE5splatEPfS1_mi = comdat any

$_ZN20PermutohedralLatticeILi5ELi2EE19merge_splat_threadsEv = comdat any

$_ZN22HashTablePermutohedralILi5ELi2EE9growExactEm = comdat any

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [56 x i8] c"[densecrf] failed to allocate scratch buffers for %dx%d\00", align 1
@_ZTISt9exception = external constant ptr
@.str.1 = private unnamed_addr constant [38 x i8] c"[densecrf] aborted: unknown exception\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[densecrf] aborted: %s\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"[permutohedral] hash tables %lu bytes (%lu initially), %lu entries, [permutohedral] tables grew %lu times, replay using %lu bytes for %lu pixels, [permutohedral] fill factor %f%%, remap using %lu bytes\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"[permutohedral] blur using %lu bytes for newValue\00", align 1

; Function Attrs: mustprogress uwtable
define void @dt_dense_crf_binary(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = alloca [5 x float], align 16             ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = alloca [2 x float], align 8              ; 4 uses
  %i.e = alloca [2 x float], align 8              ; 4 uses
  %9 = alloca %class.PermutohedralLattice, align 8 ; 12 uses
  %10 = alloca %class.PermutohedralLattice.0, align 8 ; 12 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %1, null
  %or.cond.not188 = or i1 %i.f, %i.g
  %i.h = icmp slt i32 %2, 1
  %or.cond3 = or i1 %or.cond.not188, %i.h
  %i.i = icmp slt i32 %3, 1
  %or.cond5 = or i1 %or.cond3, %i.i
  %i.j = icmp slt i32 %8, 1
  %or.cond7 = or i1 %or.cond5, %i.j
  %i.k = fcmp reassoc nsz arcp contract afn ole float %4, 0.000000e+00
  %or.cond9 = or i1 %i.k, %or.cond7
  %i.l = fcmp reassoc nsz arcp contract afn ole float %5, 0.000000e+00
  %or.cond11 = or i1 %i.l, %or.cond9
  br i1 %or.cond11, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i32 %3, %2                   ; 8 uses
  %i.n = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %4 ; 5 uses
  %i.o = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %5 ; 7 uses
  %i.p = zext nneg i32 %i.m to i64                ; 31 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @dt_alloc_aligned(i64 noundef %i.q) ; 14 uses
  %i.s = mul nuw nsw i64 %i.p, 20
  %i.t = tail call ptr @dt_alloc_aligned(i64 noundef %i.s) ; 14 uses
  %i.u = shl nuw nsw i64 %i.p, 2                  ; 3 uses
  %i.v = tail call ptr @dt_alloc_aligned(i64 noundef %i.u) ; 12 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = tail call ptr @dt_alloc_aligned(i64 noundef %i.u) ; 12 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = tail call ptr @dt_alloc_aligned(i64 noundef %i.u) ; 12 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = icmp ne ptr %i.r, null
  %i.ac = icmp ne ptr %i.t, null
  %or.cond13 = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.v, null
  %or.cond15 = select i1 %or.cond13, i1 %i.ad, i1 false
  %i.ae = icmp ne ptr %i.x, null
  %or.cond17 = select i1 %or.cond15, i1 %i.ae, i1 false
  %i.af = icmp ne ptr %i.z, null
  %or.cond19 = select i1 %or.cond17, i1 %i.af, i1 false
  br i1 %or.cond19, label %.preheader226.preheader, label %bb.c

.preheader226.preheader:                          ; preds = %bb.b
  %i.ag = zext nneg i32 %2 to i64                 ; 5 uses
  %wide.trip.count243 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ah = mul nuw nsw i64 %wide.trip.count243, %i.ag ; 3 uses
  %i.ai = shl i64 %i.ah, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ai ; 2 uses
  %i.aj = mul i64 %i.ah, 20
  %scevgep271 = getelementptr i8, ptr %i.t, i64 %i.aj ; 2 uses
  %i.ak = mul nuw i64 %i.ah, 3
  %scevgep272 = getelementptr i8, ptr %1, i64 %i.ak ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %i.r, %scevgep271
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0273 = icmp ult ptr %i.r, %scevgep272
  %bound1274 = icmp ult ptr %1, %scevgep
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx = or i1 %found.conflict, %found.conflict275
  %bound0276 = icmp ult ptr %i.t, %scevgep272
  %bound1277 = icmp ult ptr %1, %scevgep271
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx, %found.conflict278
  %n.vec = and i64 %i.ag, 2147483640              ; 3 uses
  %broadcast.splatinsert280 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat281 = shufflevector <8 x float> %broadcast.splatinsert280, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat283 = shufflevector <8 x float> %broadcast.splatinsert282, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br label %.preheader226

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %3)
  tail call void @free(ptr noundef %i.r) #15
  tail call void @free(ptr noundef %i.t) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.x) #15
  tail call void @free(ptr noundef %i.z) #15
  br label %bb.ae

.preheader226:                                    ; preds = %.preheader226.preheader, %._crit_edge
  %indvars.iv240 = phi i64 [ 0, %.preheader226.preheader ], [ %indvars.iv.next241, %._crit_edge ] ; 3 uses
  %i.al = mul nuw nsw i64 %indvars.iv240, %i.ag   ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv240 to i32
  %i.an = uitofp nsz nneg i32 %i.am to float
  %i.ao = fmul reassoc nsz arcp contract afn float %i.n, %i.an ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx279
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader226
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ao, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ap = add nuw nsw i64 %index, %i.al           ; 3 uses
  %i.aq = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat281, %i.aq ; 2 uses
  %i.as = shl nuw nsw i64 %i.ap, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.as
  %i.au = shufflevector <8 x float> %i.ar, <8 x float> %broadcast.splat, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <8 x float> %i.ar, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.at, align 4, !tbaa !14, !alias.scope !172, !noalias !173
  %i.av = mul nuw nsw i64 %i.ap, 20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.av
  %i.ax = mul nuw nsw i64 %i.ap, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %wide.vec = load <24 x i8>, ptr %i.ay, align 1, !tbaa !15, !alias.scope !174 ; 3 uses
  %strided.vec = shufflevector <24 x i8> %wide.vec, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec284 = shufflevector <24 x i8> %wide.vec, <24 x i8> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec285 = shufflevector <24 x i8> %wide.vec, <24 x i8> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.az = uitofp <8 x i8> %strided.vec to <8 x float>
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat283, %i.az
  %i.bb = uitofp <8 x i8> %strided.vec284 to <8 x float>
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat283, %i.bb
  %i.bd = uitofp <8 x i8> %strided.vec285 to <8 x float>
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat283, %i.bd
  %i.bf = shufflevector <8 x float> %i.ba, <8 x float> %i.bc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = shufflevector <16 x float> %i.au, <16 x float> %i.bf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bh = shufflevector <8 x float> %i.be, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec286 = shufflevector <32 x float> %i.bg, <32 x float> %i.bh, <40 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 1, i32 9, i32 17, i32 25, i32 33, i32 2, i32 10, i32 18, i32 26, i32 34, i32 3, i32 11, i32 19, i32 27, i32 35, i32 4, i32 12, i32 20, i32 28, i32 36, i32 5, i32 13, i32 21, i32 29, i32 37, i32 6, i32 14, i32 22, i32 30, i32 38, i32 7, i32 15, i32 23, i32 31, i32 39>
  store <40 x float> %interleaved.vec286, ptr %i.aw, align 4, !tbaa !14, !alias.scope !175, !noalias !174
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader226, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader226 ]
  br label %scalar.ph

.preheader:                                       ; preds = %._crit_edge
  %i.bj = icmp sgt i32 %i.m, 0                    ; 2 uses
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge231

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check289 = icmp ult i32 %i.m, 8
  %i.bk = sub i64 %i.a, %i.w
  %diff.check = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check289, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader515, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph.preheader
  %n.vec291 = and i64 %i.p, 2147483640            ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next294, %vector.body292 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index293
  %wide.load = load <8 x float>, ptr %i.bl, align 4, !tbaa !14
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load, <8 x float> splat (float f0x358637BD))
  %i.bn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bm, <8 x float> splat (float f0x3F7FFFEF)) ; 2 uses
  %i.bo = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bn
  %i.bp = fdiv reassoc nsz arcp contract afn <8 x float> %i.bn, %i.bo
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.log.v8f32(<8 x float> %i.bp)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index293
  store <8 x float> %i.bq, ptr %i.br, align 4, !tbaa !14
  %index.next294 = add nuw i64 %index293, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next294, %n.vec291
  br i1 %i.bs, label %middle.block295, label %vector.body292, !llvm.loop !136

middle.block295:                                  ; preds = %vector.body292
  %cmp.n296 = icmp eq i64 %n.vec291, %i.p
  br i1 %cmp.n296, label %._crit_edge231, label %.lr.ph.preheader515

.lr.ph.preheader515:                              ; preds = %.lr.ph.preheader, %middle.block295
  %indvars.iv245.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec291, %middle.block295 ] ; 5 uses
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader515
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv245.ph
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bu, float f0x358637BD)
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float f0x3F7FFFEF) ; 2 uses
  %i.bx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bw
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.by)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv245.ph
  store float %i.bz, ptr %i.ca, align 4, !tbaa !14
  %indvars.iv.next246.prol = or disjoint i64 %indvars.iv245.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader515
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %.lr.ph.preheader515 ], [ %indvars.iv.next246.prol, %.lr.ph.prol ]
  %i.cb = add nsw i64 %i.p, -1
  %i.cc = icmp eq i64 %indvars.iv245.ph, %i.cb
  br i1 %i.cc, label %._crit_edge231, label %.lr.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %.preheader, label %.preheader226, !llvm.loop !137

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cd = add nuw nsw i64 %indvars.iv, %i.al      ; 3 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = uitofp nsz nneg i32 %i.ce to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.n, %i.cf ; 2 uses
  %.idx = shl nuw nsw i64 %i.cd, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  store float %i.cg, ptr %i.ch, align 4, !tbaa !14
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  store float %i.ao, ptr %i.ci, align 4, !tbaa !14
  %.idx268 = mul nuw nsw i64 %i.cd, 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx268 ; 5 uses
  store float %i.cg, ptr %i.cj, align 4, !tbaa !14
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  store float %i.ao, ptr %i.ck, align 4, !tbaa !14
  %i.cl = mul nuw nsw i64 %i.cd, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15
  %i.co = uitofp reassoc nsz arcp contract afn i8 %i.cn to float
  %i.cp = fmul reassoc nsz arcp contract afn float %i.o, %i.co
  %i.cq = getelementptr i8, ptr %i.cj, i64 8
  store float %i.cp, ptr %i.cq, align 4, !tbaa !14
  %i.cr = getelementptr i8, ptr %i.cm, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = uitofp reassoc nsz arcp contract afn i8 %i.cs to float
  %i.cu = fmul reassoc nsz arcp contract afn float %i.o, %i.ct
  %i.cv = getelementptr i8, ptr %i.cj, i64 12
  store float %i.cu, ptr %i.cv, align 4, !tbaa !14
  %i.cw = getelementptr i8, ptr %i.cm, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = uitofp reassoc nsz arcp contract afn i8 %i.cx to float
  %i.cz = fmul reassoc nsz arcp contract afn float %i.o, %i.cy
  %i.da = getelementptr i8, ptr %i.cj, i64 16
  store float %i.cz, ptr %i.da, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !138

._crit_edge231:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block295, %.preheader
  %i.db = uitofp nneg i32 %3 to float
  %i.dc = uitofp nneg i32 %2 to float
  %i.dd = fmul reassoc nnan nsz arcp contract afn float %i.db, %i.dc
  %i.de = fmul reassoc nsz arcp contract afn float %i.n, %i.n
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.dd ; 2 uses
  %i.dg = fptoui float %i.df to i64
  %spec.store.select20 = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 16777216)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZN20PermutohedralLatticeILi2ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %i.p, i64 noundef 1, i64 noundef %spec.store.select20)
          to label %bb.d unwind label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.1, %.lr.ph ], [ %indvars.iv245.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv245
  %i.di = load float, ptr %i.dh, align 4, !tbaa !14
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.di, float f0x358637BD)
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dj, float f0x3F7FFFEF) ; 2 uses
  %i.dl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dk
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dl
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dm)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv245
  store float %i.dn, ptr %i.do, align 4, !tbaa !14
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next246
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !14
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dq, float f0x358637BD)
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dr, float f0x3F7FFFEF) ; 2 uses
  %i.dt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ds
  %i.du = fdiv reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.dv = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.du)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next246
  store float %i.dv, ptr %i.dw, align 4, !tbaa !14
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %exitcond249.not.1 = icmp eq i64 %indvars.iv.next246.1, %i.p
  br i1 %exitcond249.not.1, label %._crit_edge231, label %.lr.ph, !llvm.loop !139

bb.d:                                             ; preds = %._crit_edge231
  %i.dx = fmul reassoc nsz arcp contract afn float %i.o, %i.o
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x4B800000
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.o
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.df
  %i.eb = fptoui float %i.ea to i64
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.eb, i64 16777216)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZN20PermutohedralLatticeILi5ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %i.p, i64 noundef 1, i64 noundef %spec.store.select)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  br label %bb.g

bb.f:                                             ; preds = %.noexc197
  invoke void @_ZN20PermutohedralLatticeILi2ELi2EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %_ZL14_initial_splatILi2EEvR20PermutohedralLatticeIXT_ELi2EEPKfS4_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.noexc197, %bb.e
  %indvar.i = phi i64 [ 0, %bb.e ], [ %indvar.next.i, %.noexc197 ] ; 4 uses
  %i.ec = shl nuw nsw i64 %indvar.i, 3
  %scevgep.i = getelementptr nuw i8, ptr %i.r, i64 %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15, !noalias !178
  %i.ed = load i64, ptr %scevgep.i, align 4, !tbaa !14, !alias.scope !176, !noalias !177
  store i64 %i.ed, ptr %i.d, align 8, !tbaa !14, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15, !noalias !178
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar.i
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !14, !alias.scope !177, !noalias !176
  %i.eg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ef, i64 0
  store <2 x float> %i.eg, ptr %i.e, align 8, !tbaa !14, !noalias !178
  invoke void @_ZNK20PermutohedralLatticeILi2ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %indvar.i, i32 noundef 0)
          to label %.noexc197 unwind label %.loopexit.split-lp.loopexit

.noexc197:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15, !noalias !178
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %i.p
  br i1 %exitcond.not.i, label %bb.f, label %bb.g, !llvm.loop !143

_ZL14_initial_splatILi2EEvR20PermutohedralLatticeIXT_ELi2EEPKfS4_i.exit: ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  br label %bb.i

bb.h:                                             ; preds = %.noexc203
  invoke void @_ZN20PermutohedralLatticeILi5ELi2EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %_ZL14_initial_splatILi5EEvR20PermutohedralLatticeIXT_ELi2EEPKfS4_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.noexc203, %_ZL14_initial_splatILi2EEvR20PermutohedralLatticeIXT_ELi2EEPKfS4_i.exit
  %indvar.i199 = phi i64 [ 0, %_ZL14_initial_splatILi2EEvR20PermutohedralLatticeIXT_ELi2EEPKfS4_i.exit ], [ %indvar.next.i201, %.noexc203 ] ; 4 uses
  %i.eh = mul nuw nsw i64 %indvar.i199, 20
  %scevgep.i200 = getelementptr nuw i8, ptr %i.t, i64 %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(20) %scevgep.i200, i64 20, i1 false), !tbaa !14, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !180
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar.i199
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !14, !alias.scope !179, !noalias !181
  %i.ek = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ej, i64 0
  store <2 x float> %i.ek, ptr %i.c, align 8, !tbaa !14, !noalias !180
  invoke void @_ZNK20PermutohedralLatticeILi5ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %indvar.i199, i32 noundef 0)
          to label %.noexc203 unwind label %.loopexit

.noexc203:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !180
end_hunk_0
