Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/kodak_decoders?download=true
inline.NumInlined: 179
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

$__clang_call_terminate = comdat any

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZZN6LibRaw19kodak_radc_load_rawEvE3src = internal unnamed_addr constant [260 x i8] c"\01\01\02\03\03\04\04\02\05\07\06\05\07\06\07\08\01\00\02\01\03\03\04\04\05\02\06\07\07\06\08\05\08\08\02\01\02\03\03\00\03\02\03\04\04\06\05\05\06\07\06\08\02\00\02\01\02\03\03\02\04\04\05\06\06\07\07\05\07\08\02\01\02\04\03\00\03\02\03\03\04\07\05\05\06\06\06\08\02\03\03\01\03\02\03\04\03\05\03\06\04\07\05\00\05\08\02\03\02\06\03\00\03\01\04\04\04\05\04\07\05\02\05\08\02\04\02\07\03\03\03\06\04\01\04\02\04\05\05\00\05\08\02\06\03\01\03\03\03\05\03\07\03\08\04\00\05\02\05\04\02\00\02\01\03\02\03\03\04\04\04\05\05\06\05\07\04\08\01\00\02\02\02\FE\01\FD\01\03\02\EF\02\FB\02\05\02\11\02\F9\02\02\02\09\02\12\02\EE\02\F7\02\FE\02\07\02\E4\02\1C\03\CF\03\F7\03\09\041\05\B1\05O\02\FF\02\0D\02\1A\03'\04\F0\057\06\DB\06L\02\E6\02\F3\02\01\03\D9\04\10\05\C9\06\B4\06%", align 16
@__const._ZN6LibRaw19kodak_radc_load_rawEv.last = private unnamed_addr constant [3 x i16] [i16 16, i16 16, i16 16], align 2
@_ZZN6LibRaw20kodak_dc120_load_rawEvE3mul = internal unnamed_addr constant [4 x i32] [i32 162, i32 192, i32 187, i32 92], align 16
@_ZZN6LibRaw20kodak_dc120_load_rawEvE3add = internal unnamed_addr constant [4 x i32] [i32 0, i32 636, i32 424, i32 212], align 16
@_ZZN6LibRaw18kodak_262_load_rawEvE10kodak_tree = internal constant [2 x [26 x i8]] [[26 x i8] c"\00\01\05\01\01\02\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09", [26 x i8] c"\00\03\01\01\01\01\01\02\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09"], align 16

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19kodak_radc_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 5 uses
  %i.b = alloca [3 x i16], align 2                ; 7 uses
  %i.c = alloca [3 x [3 x [386 x i16]]], align 16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 15 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !70
  %i.g = icmp ugt i16 %i.f, 768
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 11 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !71
  %i.j = icmp ugt i16 %i.i, 768
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.l = load i16, ptr %i.k, align 4, !tbaa !72
  %i.m = icmp ugt i16 %i.l, 512
  %i.n = load i16, ptr %i.d, align 8
  %i.o = icmp ugt i16 %i.n, 512
  %or.cond271 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond271, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 5, ptr %i.p, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(9728) ptr @_Znwm(i64 noundef 9728) #14 ; 43 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9728) %i.q, i8 0, i64 9728, i1 false), !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) @__const._ZN6LibRaw19kodak_radc_load_rawEv.last, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.t = fdiv <8 x float> %i.s, splat (float 1.280000e+03)
  %1 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.344000e+03), <8 x float> zeroinitializer)
  %i.u = fadd <8 x float> %1, splat (float 5.000000e-01)
  %i.v = fptoui <8 x float> %i.u to <8 x i16>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index
  store <8 x i16> %i.v, ptr %i.w, align 8, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.x = icmp eq i64 %index.next, 1280
  br i1 %i.x, label %scalar.ph, label %vector.body, !llvm.loop !86

scalar.ph:                                        ; preds = %vector.body
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8160
  store i16 1344, ptr %i.y, align 8, !tbaa !75
  br label %vector.body583

vector.body583:                                   ; preds = %scalar.ph, %vector.body583
  %index584 = phi i64 [ %index.next586, %vector.body583 ], [ 0, %scalar.ph ] ; 2 uses
  %vec.ind585 = phi <8 x i32> [ %vec.ind.next587, %vector.body583 ], [ <i32 1280, i32 1281, i32 1282, i32 1283, i32 1284, i32 1285, i32 1286, i32 1287>, %scalar.ph ] ; 2 uses
  %i.z = add <8 x i32> %vec.ind585, splat (i32 -1280)
  %i.aa = uitofp nneg <8 x i32> %i.z to <8 x float>
  %i.ab = fdiv <8 x float> %i.aa, splat (float 1.040000e+03)
  %i.ac = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> splat (float 2.272000e+03), <8 x float> splat (float 1.344000e+03))
  %i.ad = fadd <8 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fptoui <8 x float> %i.ad to <8 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index584
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2560
  store <8 x i16> %i.ae, ptr %i.ag, align 8, !tbaa !75
  %index.next586 = add nuw i64 %index584, 8       ; 2 uses
  %vec.ind.next587 = add <8 x i32> %vec.ind585, splat (i32 8)
  %i.ah = icmp eq i64 %index.next586, 1040
  br i1 %i.ah, label %.lr.ph.1, label %vector.body583, !llvm.loop !87

.lr.ph.1:                                         ; preds = %vector.body583
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10240
  store i16 3616, ptr %i.ai, align 8, !tbaa !75
  br label %vector.body591

vector.body591:                                   ; preds = %.lr.ph.1, %vector.body591
  %index592 = phi i64 [ %index.next594, %vector.body591 ], [ 0, %.lr.ph.1 ] ; 2 uses
  %vec.ind593 = phi <8 x i32> [ %vec.ind.next595, %vector.body591 ], [ <i32 2320, i32 2321, i32 2322, i32 2323, i32 2324, i32 2325, i32 2326, i32 2327>, %.lr.ph.1 ] ; 2 uses
  %i.aj = add <8 x i32> %vec.ind593, splat (i32 -2320)
  %i.ak = uitofp nneg <8 x i32> %i.aj to <8 x float>
  %i.al = fdiv <8 x float> %i.ak, splat (float 1.008000e+03)
  %i.am = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.al, <8 x float> splat (float 4.384000e+03), <8 x float> splat (float 3.616000e+03))
  %i.an = fadd <8 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = fptoui <8 x float> %i.an to <8 x i16>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index592
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4640
  store <8 x i16> %i.ao, ptr %i.aq, align 8, !tbaa !75
  %index.next594 = add nuw i64 %index592, 8       ; 2 uses
  %vec.ind.next595 = add <8 x i32> %vec.ind593, splat (i32 8)
  %i.ar = icmp eq i64 %index.next594, 1008
  br i1 %i.ar, label %.lr.ph.2, label %vector.body591, !llvm.loop !88

.lr.ph.2:                                         ; preds = %vector.body591
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12256
  store i16 8000, ptr %i.as, align 8, !tbaa !75
  br label %vector.body599

vector.body599:                                   ; preds = %.lr.ph.2, %vector.body599
  %index600 = phi i64 [ %index.next602, %vector.body599 ], [ 0, %.lr.ph.2 ] ; 2 uses
  %vec.ind601 = phi <8 x i32> [ %vec.ind.next603, %vector.body599 ], [ <i32 3328, i32 3329, i32 3330, i32 3331, i32 3332, i32 3333, i32 3334, i32 3335>, %.lr.ph.2 ] ; 2 uses
  %i.at = add <8 x i32> %vec.ind601, splat (i32 -3328)
  %i.au = uitofp nneg <8 x i32> %i.at to <8 x float>
  %i.av = fdiv <8 x float> %i.au, splat (float 7.670000e+02)
  %i.aw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.av, <8 x float> splat (float 8.383000e+03), <8 x float> splat (float 8.000000e+03))
  %i.ax = fadd <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fptoui <8 x float> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index600
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 6656
  store <8 x i16> %i.ay, ptr %i.ba, align 8, !tbaa !75
  %index.next602 = add nuw i64 %index600, 8       ; 2 uses
  %vec.ind.next603 = add <8 x i32> %vec.ind601, splat (i32 8)
  %i.bb = icmp eq i64 %index.next602, 768
  br i1 %i.bb, label %vector.body607, label %vector.body599, !llvm.loop !89

vector.body607:                                   ; preds = %vector.body599, %vector.body607
  %index608 = phi i64 [ %index.next610, %vector.body607 ], [ 0, %vector.body599 ] ; 2 uses
  %vec.ind609 = phi <8 x i32> [ %vec.ind.next611, %vector.body607 ], [ <i32 4095, i32 4096, i32 4097, i32 4098, i32 4099, i32 4100, i32 4101, i32 4102>, %vector.body599 ] ; 2 uses
  %i.bc = add <8 x i32> %vec.ind609, splat (i32 -4095)
  %i.bd = uitofp nneg <8 x i32> %i.bc to <8 x float>
  %i.be = fdiv <8 x float> %i.bd, splat (float 6.144000e+04)
  %i.bf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.be, <8 x float> zeroinitializer, <8 x float> splat (float 1.638300e+04))
  %i.bg = fadd <8 x float> %i.bf, splat (float 5.000000e-01)
  %i.bh = fptoui <8 x float> %i.bg to <8 x i16>
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index608
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8190
  store <8 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !75
  %index.next610 = add nuw i64 %index608, 8       ; 2 uses
  %vec.ind.next611 = add <8 x i32> %vec.ind609, splat (i32 8)
  %i.bk = icmp eq i64 %index.next610, 61440
  br i1 %i.bk, label %.lr.ph.4, label %vector.body607, !llvm.loop !90

.lr.ph.4:                                         ; preds = %vector.body607
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136670
  store i16 16383, ptr %i.bl, align 2, !tbaa !75
  br label %.preheader317

.preheader317:                                    ; preds = %.lr.ph.4, %._crit_edge326
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %._crit_edge326 ], [ 0, %.lr.ph.4 ] ; 3 uses
  %.0232328 = phi i32 [ %.1233.lcssa, %._crit_edge326 ], [ 0, %.lr.ph.4 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw19kodak_radc_load_rawEvE3src, i64 %indvars.iv420 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !77  ; 2 uses
  %.not378 = icmp ugt i8 %i.bn, 8
  br i1 %.not378, label %._crit_edge326, label %iter.check

iter.check:                                       ; preds = %.preheader317
  %i.bo = zext nneg i8 %i.bn to i32               ; 2 uses
  %i.bp = lshr i32 256, %i.bo                     ; 2 uses
  %i.bq = shl nuw nsw i32 %i.bo, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !77
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = trunc nuw nsw i32 %i.bu to i16          ; 3 uses
  %i.bw = sext i32 %.0232328 to i64               ; 5 uses
  %i.bx = add nsw i32 %i.bp, -1                   ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bx, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check614 = icmp ult i32 %i.bx, 15
  br i1 %min.iters.check614, label %vec.epilog.ph, label %vector.ph615

vector.ph615:                                     ; preds = %vector.main.loop.iter.check
  %i.ca = and i64 %i.bz, 12
  %n.vec = and i64 %i.bz, 8589934576              ; 5 uses
  %i.cb = add nsw i64 %n.vec, %i.bw               ; 2 uses
  %i.cc = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.q, i64 %i.bw
  br label %vector.body616

vector.body616:                                   ; preds = %vector.ph615, %vector.body616
  %index617 = phi i64 [ 0, %vector.ph615 ], [ %index.next618, %vector.body616 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index617 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !75
  store <8 x i16> %broadcast.splat, ptr %i.cd, align 2, !tbaa !75
  %index.next618 = add nuw i64 %index617, 16      ; 2 uses
  %i.ce = icmp eq i64 %index.next618, %n.vec
  br i1 %i.ce, label %middle.block619, label %vector.body616, !llvm.loop !91

middle.block619:                                  ; preds = %vector.body616
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge326.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block619
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec620 = and i64 %i.bz, 8589934588           ; 4 uses
  %i.cf = add nsw i64 %n.vec620, %i.bw            ; 2 uses
  %i.cg = trunc i64 %n.vec620 to i32
  %broadcast.splatinsert621 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat622 = shufflevector <4 x i16> %broadcast.splatinsert621, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep699 = getelementptr [2 x i8], ptr %i.q, i64 %i.bw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index623 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next624, %vec.epilog.vector.body ] ; 2 uses
  %gep700 = getelementptr [2 x i8], ptr %invariant.gep699, i64 %index623
  store <4 x i16> %broadcast.splat622, ptr %gep700, align 2, !tbaa !75
  %index.next624 = add nuw i64 %index623, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next624, %n.vec620
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n625 = icmp eq i64 %i.bz, %n.vec620
  br i1 %cmp.n625, label %._crit_edge326.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv416.ph = phi i64 [ %i.bw, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.1235323.ph = phi i32 [ 0, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %vec.epilog.scalar.ph ], [ %indvars.iv416.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1235323 = phi i32 [ %i.cj, %vec.epilog.scalar.ph ], [ %.1235323.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next417 = add nsw i64 %indvars.iv416, 1 ; 2 uses
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv416
  store i16 %i.bv, ptr %i.ci, align 2, !tbaa !75
  %i.cj = add nuw nsw i32 %.1235323, 1            ; 2 uses
  %exitcond419.not = icmp eq i32 %i.cj, %i.bp
  br i1 %exitcond419.not, label %._crit_edge326.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !93

._crit_edge326.loopexit:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block619
  %indvars.iv.next417.lcssa = phi i64 [ %i.cf, %vec.epilog.middle.block ], [ %i.cb, %middle.block619 ], [ %indvars.iv.next417, %vec.epilog.scalar.ph ]
  %i.ck = trunc nsw i64 %indvars.iv.next417.lcssa to i32
  br label %._crit_edge326

._crit_edge326:                                   ; preds = %._crit_edge326.loopexit, %.preheader317
  %.1233.lcssa = phi i32 [ %.0232328, %.preheader317 ], [ %i.ck, %._crit_edge326.loopexit ]
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2
  %i.cl = icmp samesign ult i64 %indvars.iv420, 258
  br i1 %i.cl, label %.preheader317, label %vector.body635, !llvm.loop !94
end_hunk_0
