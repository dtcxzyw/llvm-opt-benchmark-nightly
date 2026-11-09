Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/editorhelper?download=true
inline.NumInlined: 328
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.ultrahdr::Color" = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { float, float, float }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.11 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.11 = type { i64, [8 x i8] }

@_ZTVN8ultrahdr18uhdr_mirror_effectE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8ultrahdr18uhdr_mirror_effectE, ptr @_ZN8ultrahdr18uhdr_mirror_effect9to_stringB5cxx11Ev, ptr @_ZN8ultrahdr16uhdr_effect_descD2Ev, ptr @_ZN8ultrahdr18uhdr_mirror_effectD0Ev] }, align 8, !guid !9
@_ZTVN8ultrahdr18uhdr_rotate_effectE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8ultrahdr18uhdr_rotate_effectE, ptr @_ZN8ultrahdr18uhdr_rotate_effect9to_stringB5cxx11Ev, ptr @_ZN8ultrahdr16uhdr_effect_descD2Ev, ptr @_ZN8ultrahdr18uhdr_rotate_effectD0Ev] }, align 8, !guid !10
@_ZTVN8ultrahdr16uhdr_crop_effectE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8ultrahdr16uhdr_crop_effectE, ptr @_ZN8ultrahdr16uhdr_crop_effect9to_stringB5cxx11Ev, ptr @_ZN8ultrahdr16uhdr_effect_descD2Ev, ptr @_ZN8ultrahdr16uhdr_crop_effectD0Ev] }, align 8, !guid !11
@_ZTVN8ultrahdr18uhdr_resize_effectE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8ultrahdr18uhdr_resize_effectE, ptr @_ZN8ultrahdr18uhdr_resize_effect9to_stringB5cxx11Ev, ptr @_ZN8ultrahdr16uhdr_effect_descD2Ev, ptr @_ZN8ultrahdr18uhdr_resize_effectD0Ev] }, align 8, !guid !12
@_ZTIN8ultrahdr18uhdr_mirror_effectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr18uhdr_mirror_effectE, ptr @_ZTIN8ultrahdr16uhdr_effect_descE }, align 8, !guid !13
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8ultrahdr18uhdr_mirror_effectE = linkonce_odr constant [32 x i8] c"N8ultrahdr18uhdr_mirror_effectE\00", align 1, !guid !14
@_ZTIN8ultrahdr16uhdr_effect_descE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr16uhdr_effect_descE }, align 8, !guid !15
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8ultrahdr16uhdr_effect_descE = linkonce_odr constant [30 x i8] c"N8ultrahdr16uhdr_effect_descE\00", align 1, !guid !16
@_ZTIN8ultrahdr18uhdr_rotate_effectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr18uhdr_rotate_effectE, ptr @_ZTIN8ultrahdr16uhdr_effect_descE }, align 8, !guid !17
@_ZTSN8ultrahdr18uhdr_rotate_effectE = linkonce_odr constant [32 x i8] c"N8ultrahdr18uhdr_rotate_effectE\00", align 1, !guid !18
@_ZTIN8ultrahdr16uhdr_crop_effectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr16uhdr_crop_effectE, ptr @_ZTIN8ultrahdr16uhdr_effect_descE }, align 8, !guid !19
@_ZTSN8ultrahdr16uhdr_crop_effectE = linkonce_odr constant [30 x i8] c"N8ultrahdr16uhdr_crop_effectE\00", align 1, !guid !20
@_ZTIN8ultrahdr18uhdr_resize_effectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr18uhdr_resize_effectE, ptr @_ZTIN8ultrahdr16uhdr_effect_descE }, align 8, !guid !21
@_ZTSN8ultrahdr18uhdr_resize_effectE = linkonce_odr constant [32 x i8] c"N8ultrahdr18uhdr_resize_effectE\00", align 1, !guid !22
@.str = private unnamed_addr constant [41 x i8] c"effect : mirror, metadata : direction - \00", align 1, !guid !23
@.str.1 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1, !guid !24
@.str.6 = private unnamed_addr constant [38 x i8] c"effect : rotate, metadata : degree - \00", align 1, !guid !25
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16, !guid !26
@.str.7 = private unnamed_addr constant [54 x i8] c"effect : crop, metadata : left, right, top, bottom - \00", align 1, !guid !27
@.str.8 = private unnamed_addr constant [3 x i8] c" ,\00", align 1, !guid !28
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !29
@.str.10 = private unnamed_addr constant [44 x i8] c"effect : resize, metadata : dimensions w, h\00", align 1, !guid !30

@_ZN8ultrahdr18uhdr_mirror_effectC1E21uhdr_mirror_direction = unnamed_addr alias void (ptr, i32), ptr @_ZN8ultrahdr18uhdr_mirror_effectC2E21uhdr_mirror_direction
@_ZN8ultrahdr18uhdr_rotate_effectC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN8ultrahdr18uhdr_rotate_effectC2Ei
@_ZN8ultrahdr16uhdr_crop_effectC1Eiiii = unnamed_addr alias void (ptr, i32, i32, i32, i32), ptr @_ZN8ultrahdr16uhdr_crop_effectC2Eiiii
@_ZN8ultrahdr18uhdr_resize_effectC1Eii = unnamed_addr alias void (ptr, i32, i32), ptr @_ZN8ultrahdr18uhdr_resize_effectC2Eii

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13mirror_bufferIhEEvPT_S2_iiii21uhdr_mirror_direction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !98 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader33
  ]

.preheader33:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %i.c = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count43 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 11 uses
  %i.d = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.e = add nsw i32 %2, -1                       ; 2 uses
  %i.f = add nsw i64 %wide.trip.count43, -1
  %i.g = mul nsw i64 %i.f, %i.c
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %2, 8
  %i.i = trunc nsw i64 %i.d to i32
  %i.j = icmp ugt i64 %i.d, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %min.iters.check57 = icmp ult i32 %2, 32
  %i.k = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  %n.vec60 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n65 = icmp eq i64 %n.vec60, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %iter.check

.preheader:                                       ; preds = %bb.a
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = sext i32 %2 to i64                       ; 3 uses
  %i.o = zext nneg i32 %3 to i64                  ; 3 uses
  %i.p = sext i32 %5 to i64                       ; 3 uses
  %i.q = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count48 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter67 = and i64 %wide.trip.count48, 1
  %i.r = icmp eq i32 %3, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count48, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next46.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.s = xor i64 %indvars.iv45, -1
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = mul nsw i64 %i.t, %i.p
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = mul nsw i64 %indvars.iv45, %i.q
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.x, i64 %i.n, i1 false)
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1
  %i.y = xor i64 %indvars.iv45, -2
  %i.z = add nsw i64 %i.y, %i.o
  %i.aa = mul nsw i64 %i.z, %i.p
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = mul nsw i64 %indvars.iv.next46, %i.q
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %i.n, i1 false)
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !90

iter.check:                                       ; preds = %.preheader32.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ae = trunc i64 %indvars.iv40 to i32
  %i.af = mul i32 %4, %i.ae                       ; 2 uses
  %i.ag = add i32 %i.af, %2                       ; 5 uses
  %i.ah = mul nsw i64 %indvars.iv40, %i.c
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ah ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ai = trunc i64 %indvars.iv40 to i32
  %i.aj = mul i32 %4, %i.ai
  %i.ak = add i32 %i.aj, %i.e                     ; 2 uses
  %i.al = sub i32 %i.ak, %i.i
  %i.am = icmp sgt i32 %i.al, %i.ak
  %i.an = or i1 %i.am, %i.j
  br i1 %i.an, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = add i32 %i.e, %i.af
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %reass.sub = sub nsw i64 %i.ap, %wide.trip.count
  %7 = getelementptr i8, ptr %0, i64 %reass.sub
  %8 = getelementptr i8, ptr %7, i64 1
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %bound0 = icmp ult ptr %1, %i.ar
  %bound1 = icmp ult ptr %8, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.as = or i1 %found.conflict, %stride.check
  br i1 %i.as, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.at = trunc i64 %index to i32
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %i.ag, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -15
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !32, !alias.scope !99
  %wide.load58 = load <16 x i8>, ptr %i.az, align 1, !tbaa !32, !alias.scope !99
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse59 = shufflevector <16 x i8> %wide.load58, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ba = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store <16 x i8> %reverse, ptr %i.ba, align 1, !tbaa !32, !alias.scope !100, !noalias !99
  store <16 x i8> %reverse59, ptr %i.bb, align 1, !tbaa !32, !alias.scope !100, !noalias !99
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = trunc i64 %index61 to i32
  %i.be = xor i32 %i.bd, -1
  %i.bf = add i32 %i.ag, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -7
  %wide.load62 = load <8 x i8>, ptr %i.bi, align 1, !tbaa !32, !alias.scope !99
  %reverse63 = shufflevector <8 x i8> %wide.load62, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bj = getelementptr i8, ptr %invariant.gep, i64 %index61
  store <8 x i8> %reverse63, ptr %i.bj, align 1, !tbaa !32, !alias.scope !100, !noalias !99
  %index.next64 = add nuw i64 %index61, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bl = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bm = xor i32 %i.bl, -1
  %i.bn = add i32 %i.ag, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.ph
  store i8 %i.bq, ptr %gep.prol, align 1, !tbaa !32
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.br = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.br, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.loopexit, label %iter.check, !llvm.loop !96

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bs = trunc i64 %indvars.iv to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %i.ag, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.bx, ptr %gep, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = trunc i64 %indvars.iv.next to i32
  %i.bz = xor i32 %i.by, -1
  %i.ca = add i32 %i.ag, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  store i8 %i.cd, ptr %gep.1, align 1, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !97

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod69 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.ce = xor i64 %indvars.iv45.epil.init, -1
  %i.cf = add nsw i64 %i.o, %i.ce
  %i.cg = mul nsw i64 %i.cf, %i.p
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = mul nsw i64 %indvars.iv45.epil.init, %i.q
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cj, i64 %i.n, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader33, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13mirror_bufferItEEvPT_S2_iiii21uhdr_mirror_direction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !109 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader33
  ]

.preheader33:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %i.c = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count43 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 11 uses
  %i.d = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.e = add nsw i32 %2, -1                       ; 2 uses
  %i.f = add nuw i64 %wide.trip.count43, 9223372036854775807
  %i.g = mul i64 %i.f, %i.c
  %i.h = add i64 %i.g, %wide.trip.count
  %i.i = shl i64 %i.h, 1
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  %min.iters.check = icmp ult i32 %2, 4
  %i.j = trunc nsw i64 %i.d to i32
  %i.k = icmp ugt i64 %i.d, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %min.iters.check57 = icmp ult i32 %2, 16
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec60 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n65 = icmp eq i64 %n.vec60, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %iter.check

.preheader:                                       ; preds = %bb.a
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = sext i32 %2 to i64
  %i.p = shl nsw i64 %i.o, 1                      ; 3 uses
  %i.q = zext nneg i32 %3 to i64                  ; 3 uses
  %i.r = sext i32 %5 to i64                       ; 3 uses
  %i.s = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count48 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter67 = and i64 %wide.trip.count48, 1
  %i.t = icmp eq i32 %3, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count48, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next46.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.u = xor i64 %indvars.iv45, -1
  %i.v = add nsw i64 %i.q, %i.u
  %i.w = mul nsw i64 %i.v, %i.r
  %i.x = getelementptr inbounds [2 x i8], ptr %1, i64 %i.w
  %i.y = mul nsw i64 %indvars.iv45, %i.s
  %i.z = getelementptr inbounds [2 x i8], ptr %0, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.z, i64 %i.p, i1 false)
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1
  %i.aa = xor i64 %indvars.iv45, -2
  %i.ab = add nsw i64 %i.aa, %i.q
  %i.ac = mul nsw i64 %i.ab, %i.r
  %i.ad = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ac
  %i.ae = mul nsw i64 %indvars.iv.next46, %i.s
  %i.af = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ad, ptr align 2 %i.af, i64 %i.p, i1 false)
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !101

iter.check:                                       ; preds = %.preheader32.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ag = trunc i64 %indvars.iv40 to i32
  %i.ah = mul i32 %4, %i.ag                       ; 2 uses
  %i.ai = add i32 %i.ah, %2                       ; 5 uses
  %i.aj = mul nsw i64 %indvars.iv40, %i.c
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aj ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ak = trunc i64 %indvars.iv40 to i32
  %i.al = mul i32 %4, %i.ak
  %i.am = add i32 %i.al, %i.e                     ; 2 uses
  %i.an = sub i32 %i.am, %i.j
  %i.ao = icmp sgt i32 %i.an, %i.am
  %i.ap = or i1 %i.ao, %i.k
  br i1 %i.ap, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aq = add i32 %i.e, %i.ah
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %7 = shl nsw i64 %i.ar, 1
  %8 = sub nsw i64 %i.ar, %wide.trip.count
  %i.as = shl nsw i64 %8, 1
  %9 = getelementptr i8, ptr %0, i64 %i.as
  %10 = getelementptr i8, ptr %9, i64 2
  %i.at = getelementptr i8, ptr %0, i64 %7
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %bound0 = icmp ult ptr %1, %i.au
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i1 %found.conflict, %stride.check
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aw = trunc i64 %index to i32
  %i.ax = xor i32 %i.aw, -1
  %i.ay = add i32 %i.ai, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -14
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -30
  %wide.load = load <8 x i16>, ptr %i.bb, align 2, !tbaa !37, !alias.scope !110
  %wide.load58 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !37, !alias.scope !110
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse59 = shufflevector <8 x i16> %wide.load58, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bd = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store <8 x i16> %reverse, ptr %i.bd, align 2, !tbaa !37, !alias.scope !111, !noalias !110
  store <8 x i16> %reverse59, ptr %i.be, align 2, !tbaa !37, !alias.scope !111, !noalias !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = trunc i64 %index61 to i32
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %i.ai, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -6
  %wide.load62 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !37, !alias.scope !110
  %reverse63 = shufflevector <4 x i16> %wide.load62, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bm = getelementptr [2 x i8], ptr %invariant.gep, i64 %index61
  store <4 x i16> %reverse63, ptr %i.bm, align 2, !tbaa !37, !alias.scope !111, !noalias !110
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bo = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bp = xor i32 %i.bo, -1
  %i.bq = add i32 %i.ai, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %0, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !37
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i16 %i.bt, ptr %gep.prol, align 2, !tbaa !37
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.bu, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.loopexit, label %iter.check, !llvm.loop !107

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bv = trunc i64 %indvars.iv to i32
  %i.bw = xor i32 %i.bv, -1
  %i.bx = add i32 %i.ai, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %0, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !37
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ca, ptr %gep, align 2, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = trunc i64 %indvars.iv.next to i32
  %i.cc = xor i32 %i.cb, -1
  %i.cd = add i32 %i.ai, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !37
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i16 %i.cg, ptr %gep.1, align 2, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !108

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod69 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.ch = xor i64 %indvars.iv45.epil.init, -1
  %i.ci = add nsw i64 %i.q, %i.ch
  %i.cj = mul nsw i64 %i.ci, %i.r
  %i.ck = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cj
  %i.cl = mul nsw i64 %indvars.iv45.epil.init, %i.s
  %i.cm = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ck, ptr align 2 %i.cm, i64 %i.p, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader33, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13mirror_bufferIjEEvPT_S2_iiii21uhdr_mirror_direction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !119 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader33
  ]

.preheader33:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %i.c = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count43 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %i.d = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.e = add nsw i32 %2, -1                       ; 2 uses
  %i.f = add nuw nsw i64 %wide.trip.count43, 4611686018427387903
  %i.g = mul i64 %i.f, %i.c
  %i.h = add i64 %i.g, %wide.trip.count
  %i.i = shl i64 %i.h, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  %min.iters.check = icmp ult i32 %2, 12
  %i.j = trunc nsw i64 %i.d to i32
  %i.k = icmp ugt i64 %i.d, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.preheader32

.preheader:                                       ; preds = %bb.a
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = sext i32 %2 to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 3 uses
  %i.p = zext nneg i32 %3 to i64                  ; 3 uses
  %i.q = sext i32 %5 to i64                       ; 3 uses
  %i.r = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count48 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter60 = and i64 %wide.trip.count48, 1
  %i.s = icmp eq i32 %3, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count48, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next46.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.t = xor i64 %indvars.iv45, -1
  %i.u = add nsw i64 %i.p, %i.t
  %i.v = mul nsw i64 %i.u, %i.q
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = mul nsw i64 %indvars.iv45, %i.r
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.y, i64 %i.o, i1 false)
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1
  %i.z = xor i64 %indvars.iv45, -2
  %i.aa = add nsw i64 %i.z, %i.p
  %i.ab = mul nsw i64 %i.aa, %i.q
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = mul nsw i64 %indvars.iv.next46, %i.r
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr align 4 %i.ae, i64 %i.o, i1 false)
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

.preheader32:                                     ; preds = %.preheader32.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.af = trunc i64 %indvars.iv40 to i32
  %i.ag = mul i32 %4, %i.af                       ; 2 uses
  %i.ah = add i32 %i.ag, %2                       ; 4 uses
  %i.ai = mul nsw i64 %indvars.iv40, %i.c
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32
  %i.aj = trunc i64 %indvars.iv40 to i32
  %i.ak = mul i32 %4, %i.aj
  %i.al = add i32 %i.ak, %i.e                     ; 2 uses
  %i.am = sub i32 %i.al, %i.j
  %i.an = icmp sgt i32 %i.am, %i.al
  %i.ao = or i1 %i.an, %i.k
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ap = add i32 %i.e, %i.ag
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %7 = shl nsw i64 %i.aq, 2
  %8 = sub nsw i64 %i.aq, %wide.trip.count
  %i.ar = shl nsw i64 %8, 2
  %9 = getelementptr i8, ptr %0, i64 %i.ar
  %10 = getelementptr i8, ptr %9, i64 4
  %i.as = getelementptr i8, ptr %0, i64 %7
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %bound0 = icmp ult ptr %1, %i.at
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.au = or i1 %found.conflict, %stride.check
  br i1 %i.au, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.av = trunc i64 %index to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %i.ah, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !tbaa !8, !alias.scope !120
  %wide.load57 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !8, !alias.scope !120
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse58 = shufflevector <4 x i32> %wide.load57, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store <4 x i32> %reverse, ptr %i.bc, align 4, !tbaa !8, !alias.scope !121, !noalias !120
  store <4 x i32> %reverse58, ptr %i.bd, align 4, !tbaa !8, !alias.scope !121, !noalias !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader32, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader32 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bg = xor i32 %i.bf, -1
  %i.bh = add i32 %i.ah, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i32 %i.bk, ptr %gep.prol, align 4, !tbaa !8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bl = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.bl, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.loopexit, label %.preheader32, !llvm.loop !117

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bm = trunc i64 %indvars.iv to i32
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %i.ah, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.br, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc i64 %indvars.iv.next to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %i.ah, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.bx, ptr %gep.1, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !118

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.by = xor i64 %indvars.iv45.epil.init, -1
  %i.bz = add nsw i64 %i.p, %i.by
  %i.ca = mul nsw i64 %i.bz, %i.q
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = mul nsw i64 %indvars.iv45.epil.init, %i.r
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cb, ptr align 4 %i.cd, i64 %i.o, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader33, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13mirror_bufferImEEvPT_S2_iiii21uhdr_mirror_direction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !129 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader33
  ]

.preheader33:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %i.c = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count43 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %i.d = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.e = add nsw i32 %2, -1                       ; 2 uses
  %i.f = add nuw nsw i64 %wide.trip.count43, 2305843009213693951
  %i.g = mul i64 %i.f, %i.c
  %i.h = add i64 %i.g, %wide.trip.count
  %i.i = shl i64 %i.h, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  %min.iters.check = icmp ult i32 %2, 10
  %i.j = trunc nsw i64 %i.d to i32
  %i.k = icmp ugt i64 %i.d, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.preheader32

.preheader:                                       ; preds = %bb.a
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = sext i32 %2 to i64
  %i.o = shl nsw i64 %i.n, 3                      ; 3 uses
  %i.p = zext nneg i32 %3 to i64                  ; 3 uses
  %i.q = sext i32 %5 to i64                       ; 3 uses
  %i.r = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count48 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter60 = and i64 %wide.trip.count48, 1
  %i.s = icmp eq i32 %3, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count48, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next46.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.t = xor i64 %indvars.iv45, -1
  %i.u = add nsw i64 %i.p, %i.t
  %i.v = mul nsw i64 %i.u, %i.q
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v
  %i.x = mul nsw i64 %indvars.iv45, %i.r
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.w, ptr align 8 %i.y, i64 %i.o, i1 false)
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1
  %i.z = xor i64 %indvars.iv45, -2
  %i.aa = add nsw i64 %i.z, %i.p
  %i.ab = mul nsw i64 %i.aa, %i.q
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %i.ad = mul nsw i64 %indvars.iv.next46, %i.r
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ae, i64 %i.o, i1 false)
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !122

.preheader32:                                     ; preds = %.preheader32.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.af = trunc i64 %indvars.iv40 to i32
  %i.ag = mul i32 %4, %i.af                       ; 2 uses
  %i.ah = add i32 %i.ag, %2                       ; 4 uses
  %i.ai = mul nsw i64 %indvars.iv40, %i.c
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.ai ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32
  %i.aj = trunc i64 %indvars.iv40 to i32
  %i.ak = mul i32 %4, %i.aj
  %i.al = add i32 %i.ak, %i.e                     ; 2 uses
  %i.am = sub i32 %i.al, %i.j
  %i.an = icmp sgt i32 %i.am, %i.al
  %i.ao = or i1 %i.an, %i.k
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ap = add i32 %i.e, %i.ag
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %7 = shl nsw i64 %i.aq, 3
  %8 = sub nsw i64 %i.aq, %wide.trip.count
  %i.ar = shl nsw i64 %8, 3
  %9 = getelementptr i8, ptr %0, i64 %i.ar
  %10 = getelementptr i8, ptr %9, i64 8
  %i.as = getelementptr i8, ptr %0, i64 %7
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %bound0 = icmp ult ptr %1, %i.at
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.au = or i1 %found.conflict, %stride.check
  br i1 %i.au, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.av = trunc i64 %index to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %i.ah, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ba, align 8, !tbaa !40, !alias.scope !130
  %wide.load57 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !40, !alias.scope !130
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse58 = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store <2 x i64> %reverse, ptr %i.bc, align 8, !tbaa !40, !alias.scope !131, !noalias !130
  store <2 x i64> %reverse58, ptr %i.bd, align 8, !tbaa !40, !alias.scope !131, !noalias !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader32, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader32 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bg = xor i32 %i.bf, -1
  %i.bh = add i32 %i.ah, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !40
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i64 %i.bk, ptr %gep.prol, align 8, !tbaa !40
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bl = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.bl, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.loopexit, label %.preheader32, !llvm.loop !127

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bm = trunc i64 %indvars.iv to i32
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %i.ah, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !40
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i64 %i.br, ptr %gep, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc i64 %indvars.iv.next to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %i.ah, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i64 %i.bx, ptr %gep.1, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !128

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.by = xor i64 %indvars.iv45.epil.init, -1
  %i.bz = add nsw i64 %i.p, %i.by
  %i.ca = mul nsw i64 %i.bz, %i.q
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = mul nsw i64 %indvars.iv45.epil.init, %i.r
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cb, ptr align 8 %i.cd, i64 %i.o, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader33, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr23rotate_buffer_clockwiseIhEEvPT_S2_iiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !149 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 90, label %.preheader63
    i32 180, label %.preheader65
    i32 270, label %.preheader68
  ]

.preheader68:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader67.preheader, label %.loopexit

.preheader67.preheader:                           ; preds = %.preheader68
  %i.c = sext i32 %4 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64
  %i.e = sext i32 %5 to i64
  %wide.trip.count86 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  br label %.preheader67

.preheader65:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond78 = and i1 %i.h, %i.i
  br i1 %or.cond78, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count96 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count91 = zext nneg i32 %2 to i64    ; 11 uses
  %i.k = add nsw i64 %wide.trip.count91, -1       ; 2 uses
  %i.l = add nsw i32 %3, -1
  %i.m = mul i32 %4, %i.l
  %i.n = add i32 %2, %i.m
  %i.o = add i32 %i.n, -1
  %i.p = sub i32 0, %4                            ; 2 uses
  %i.q = add nsw i32 %3, -1
  %i.r = mul i32 %4, %i.q
  %i.s = add i32 %2, %i.r
  %i.t = add i32 %i.s, -1
  %i.u = add nsw i64 %wide.trip.count96, -1
  %i.v = mul nsw i64 %i.u, %i.j
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 %wide.trip.count91
  %min.iters.check = icmp ult i32 %2, 8
  %i.x = trunc nsw i64 %i.k to i32
  %i.y = icmp ugt i64 %i.k, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %min.iters.check127 = icmp ult i32 %2, 32
  %i.z = and i64 %wide.trip.count91, 24
  %n.vec = and i64 %wide.trip.count91, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count91
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  %n.vec130 = and i64 %wide.trip.count91, 2147483640 ; 3 uses
  %cmp.n135 = icmp eq i64 %n.vec130, %wide.trip.count91
  %xtraiter184 = and i64 %wide.trip.count91, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  %i.aa = add nsw i64 %wide.trip.count91, -1
  br label %iter.check

.preheader63:                                     ; preds = %bb.a
  %i.ab = icmp sgt i32 %2, 0
  %i.ac = icmp sgt i32 %3, 0
  %or.cond79 = and i1 %i.ab, %i.ac
  br i1 %or.cond79, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader63
  %i.ad = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ae = sext i32 %4 to i64                      ; 3 uses
  %i.af = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count106 = zext nneg i32 %2 to i64   ; 3 uses
  %wide.trip.count101 = zext nneg i32 %3 to i64   ; 10 uses
  %i.ag = getelementptr i8, ptr %0, i64 %wide.trip.count101
  %i.ah = getelementptr i8, ptr %i.ag, i64 %wide.trip.count106
  %scevgep144 = getelementptr i8, ptr %i.ah, i64 -1
  %i.ai = add nsw i64 %wide.trip.count106, -1
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep145 = getelementptr i8, ptr %i.ak, i64 %wide.trip.count101
  %min.iters.check146 = icmp ugt i32 %3, 7
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond180 = and i1 %min.iters.check146, %ident.check.not
  %bound0148 = icmp ult ptr %1, %scevgep144
  %bound1149 = icmp ult ptr %0, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  %stride.check151 = icmp slt i32 %5, 0
  %i.al = or i1 %found.conflict150, %stride.check151
  %min.iters.check153 = icmp ult i32 %3, 32
  %i.am = and i64 %wide.trip.count101, 24
  %n.vec155 = and i64 %wide.trip.count101, 2147483616 ; 4 uses
  %cmp.n164 = icmp eq i64 %n.vec155, %wide.trip.count101
  %min.epilog.iters.check168 = icmp eq i64 %i.am, 0
  %n.vec171 = and i64 %wide.trip.count101, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count101
  %xtraiter186 = and i64 %wide.trip.count101, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.an = add nsw i64 %wide.trip.count101, -1
  br label %iter.check165

iter.check165:                                    ; preds = %.preheader.preheader, %._crit_edge76
  %indvars.iv103 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge76 ] ; 3 uses
  %i.ao = mul nsw i64 %indvars.iv103, %i.af
  %invariant.gep115 = getelementptr i8, ptr %0, i64 %indvars.iv103 ; 5 uses
  %invariant.gep117 = getelementptr i8, ptr %1, i64 %i.ao ; 5 uses
  %or.cond180.not = xor i1 %or.cond180, true
  %brmerge = select i1 %or.cond180.not, i1 true, i1 %i.al
  br i1 %brmerge, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check165
  br i1 %min.iters.check153, label %vec.epilog.ph169, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.ap = getelementptr i8, ptr %invariant.gep115, i64 %i.ad
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 3 uses
  %i.aq = xor i64 %index157, -1
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -15
  %i.at = getelementptr i8, ptr %i.ar, i64 -31
  %wide.load158 = load <16 x i8>, ptr %i.as, align 1, !tbaa !32, !alias.scope !150
  %wide.load159 = load <16 x i8>, ptr %i.at, align 1, !tbaa !32, !alias.scope !150
  %reverse160 = shufflevector <16 x i8> %wide.load158, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse161 = shufflevector <16 x i8> %wide.load159, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr i8, ptr %invariant.gep117, i64 %index157 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %reverse160, ptr %i.au, align 1, !tbaa !32, !alias.scope !151, !noalias !150
  store <16 x i8> %reverse161, ptr %i.av, align 1, !tbaa !32, !alias.scope !151, !noalias !150
  %index.next162 = add nuw i64 %index157, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.aw, label %middle.block163, label %vector.body156, !llvm.loop !135

middle.block163:                                  ; preds = %vector.body156
  br i1 %cmp.n164, label %._crit_edge76, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph169, !prof !35

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec155, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check152 ]
  %i.ax = getelementptr i8, ptr %invariant.gep115, i64 %i.ad
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next176, %vec.epilog.vector.body172 ] ; 3 uses
  %i.ay = xor i64 %index173, -1
  %i.az = getelementptr i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -7
  %wide.load174 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !32, !alias.scope !150
  %reverse175 = shufflevector <8 x i8> %wide.load174, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = getelementptr i8, ptr %invariant.gep117, i64 %index173
  store <8 x i8> %reverse175, ptr %i.bb, align 1, !tbaa !32, !alias.scope !151, !noalias !150
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.bc, label %vec.epilog.middle.block177, label %vec.epilog.vector.body172, !llvm.loop !136

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body172
  br i1 %cmp.n178, label %._crit_edge76, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block177
  %indvars.iv98.ph = phi i64 [ 0, %iter.check165 ], [ %n.vec171, %vec.epilog.middle.block177 ], [ %n.vec155, %vec.epilog.iter.check166 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader
  %i.bd = xor i64 %indvars.iv98.ph, -1
  %i.be = add nsw i64 %i.ad, %i.bd
  %i.bf = mul nsw i64 %i.be, %i.ae
  %gep116.prol = getelementptr i8, ptr %invariant.gep115, i64 %i.bf
  %i.bg = load i8, ptr %gep116.prol, align 1, !tbaa !32
  %gep118.prol = getelementptr i8, ptr %invariant.gep117, i64 %indvars.iv98.ph
  store i8 %i.bg, ptr %gep118.prol, align 1, !tbaa !32
  %indvars.iv.next99.prol = or disjoint i64 %indvars.iv98.ph, 1
  br label %vec.epilog.scalar.ph167.prol.loopexit

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %indvars.iv98.unr = phi i64 [ %indvars.iv98.ph, %vec.epilog.scalar.ph167.preheader ], [ %indvars.iv.next99.prol, %vec.epilog.scalar.ph167.prol ]
  %i.bh = icmp eq i64 %indvars.iv98.ph, %i.an
  br i1 %i.bh, label %._crit_edge76, label %vec.epilog.scalar.ph167

._crit_edge76:                                    ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %vec.epilog.middle.block177, %middle.block163
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %iter.check165, !llvm.loop !137

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %vec.epilog.scalar.ph167 ], [ %indvars.iv98.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 5 uses
  %i.bi = xor i64 %indvars.iv98, -1
  %i.bj = add nsw i64 %i.ad, %i.bi
  %i.bk = mul nsw i64 %i.bj, %i.ae
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %i.bk
  %i.bl = load i8, ptr %gep116, align 1, !tbaa !32
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %indvars.iv98
  store i8 %i.bl, ptr %gep118, align 1, !tbaa !32
  %reass.sub.a = sub i64 %i.ad, %indvars.iv98
  %i.bm = add i64 %reass.sub.a, -2
  %i.bn = mul nsw i64 %i.bm, %i.ae
  %gep116.1 = getelementptr i8, ptr %invariant.gep115, i64 %i.bn
  %i.bo = load i8, ptr %gep116.1, align 1, !tbaa !32
  %i.bp = getelementptr i8, ptr %invariant.gep117, i64 %indvars.iv98
  %gep118.1 = getelementptr i8, ptr %i.bp, i64 1
  store i8 %i.bo, ptr %gep118.1, align 1, !tbaa !32
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %indvars.iv.next99.1, %wide.trip.count101
  br i1 %exitcond102.not.1, label %._crit_edge76, label %vec.epilog.scalar.ph167, !llvm.loop !138

iter.check:                                       ; preds = %.preheader64.preheader, %._crit_edge73
  %indvars.iv93 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next94, %._crit_edge73 ] ; 4 uses
  %i.bq = trunc i64 %indvars.iv93 to i32          ; 2 uses
  %i.br = xor i32 %i.bq, -1
  %i.bs = add i32 %3, %i.br
  %i.bt = mul i32 %i.bs, %4
  %i.bu = add i32 %i.bt, %2                       ; 5 uses
  %i.bv = mul nsw i64 %indvars.iv93, %i.j
  %invariant.gep113 = getelementptr i8, ptr %1, i64 %i.bv ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bw = trunc i64 %indvars.iv93 to i32
  %i.bx = mul i32 %i.bw, %i.p
  %i.by = add i32 %i.bx, %i.o                     ; 2 uses
  %i.bz = sub i32 %i.by, %i.x
  %i.ca = icmp sgt i32 %i.bz, %i.by
  %i.cb = or i1 %i.ca, %i.y
  br i1 %i.cb, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cc = mul i32 %i.bq, %i.p
  %i.cd = add i32 %i.t, %i.cc
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %reass.sub = sub nsw i64 %i.ce, %wide.trip.count91
  %7 = getelementptr i8, ptr %0, i64 %reass.sub
  %8 = getelementptr i8, ptr %7, i64 1
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 1
  %bound0 = icmp ult ptr %1, %i.cg
  %bound1 = icmp ult ptr %8, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ch = or i1 %found.conflict, %stride.check
  br i1 %i.ch, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ci = trunc i64 %index to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %i.bu, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -15
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -31
  %wide.load = load <16 x i8>, ptr %i.cn, align 1, !tbaa !32, !alias.scope !152
  %wide.load128 = load <16 x i8>, ptr %i.co, align 1, !tbaa !32, !alias.scope !152
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse129 = shufflevector <16 x i8> %wide.load128, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cp = getelementptr i8, ptr %invariant.gep113, i64 %index ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store <16 x i8> %reverse, ptr %i.cp, align 1, !tbaa !32, !alias.scope !153, !noalias !152
  store <16 x i8> %reverse129, ptr %i.cq, align 1, !tbaa !32, !alias.scope !153, !noalias !152
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = trunc i64 %index131 to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = add i32 %i.bu, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -7
  %wide.load132 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !32, !alias.scope !152
  %reverse133 = shufflevector <8 x i8> %wide.load132, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = getelementptr i8, ptr %invariant.gep113, i64 %index131
  store <8 x i8> %reverse133, ptr %i.cy, align 1, !tbaa !32, !alias.scope !153, !noalias !152
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n135, label %._crit_edge73, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv88.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod185.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.da = trunc nuw nsw i64 %indvars.iv88.ph to i32
  %i.db = xor i32 %i.da, -1
  %i.dc = add i32 %i.bu, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  %gep114.prol = getelementptr i8, ptr %invariant.gep113, i64 %indvars.iv88.ph
  store i8 %i.df, ptr %gep114.prol, align 1, !tbaa !32
  %indvars.iv.next89.prol = or disjoint i64 %indvars.iv88.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next89.prol, %vec.epilog.scalar.ph.prol ]
  %i.dg = icmp eq i64 %indvars.iv88.ph, %i.aa
  br i1 %i.dg, label %._crit_edge73, label %vec.epilog.scalar.ph

._crit_edge73:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %iter.check, !llvm.loop !144

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %vec.epilog.scalar.ph ], [ %indvars.iv88.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.dh = trunc i64 %indvars.iv88 to i32
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %i.bu, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !32
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %indvars.iv88
  store i8 %i.dm, ptr %gep114, align 1, !tbaa !32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.dn = trunc i64 %indvars.iv.next89 to i32
  %i.do = xor i32 %i.dn, -1
  %i.dp = add i32 %i.bu, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32
  %gep114.1 = getelementptr i8, ptr %invariant.gep113, i64 %indvars.iv.next89
  store i8 %i.ds, ptr %gep114.1, align 1, !tbaa !32
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %indvars.iv.next89.1, %wide.trip.count91
  br i1 %exitcond92.not.1, label %._crit_edge73, label %vec.epilog.scalar.ph, !llvm.loop !145

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader67.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 3 uses
  %i.dt = xor i64 %indvars.iv83, -1
  %i.du = mul nsw i64 %indvars.iv83, %i.e
  %i.dv = getelementptr i8, ptr %i.f, i64 %i.dt   ; 5 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.du ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader67.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader67.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader67
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.dw = mul nsw i64 %indvars.iv.epil, %i.c
  %i.dx = getelementptr i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !32
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.epil
  store i8 %i.dy, ptr %gep.epil, align 1, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit, label %.preheader67, !llvm.loop !147

.preheader67.new:                                 ; preds = %.preheader67, %.preheader67.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.new ], [ 0, %.preheader67 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.new ], [ 0, %.preheader67 ]
  %i.dz = mul nsw i64 %indvars.iv, %i.c
  %i.ea = getelementptr i8, ptr %i.dv, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.eb, ptr %gep, align 1, !tbaa !32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv.next, %i.c
  %i.ed = getelementptr i8, ptr %i.dv, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !32
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  store i8 %i.ee, ptr %gep.1, align 1, !tbaa !32
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ef = mul nsw i64 %indvars.iv.next.1, %i.c
  %i.eg = getelementptr i8, ptr %i.dv, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !32
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  store i8 %i.eh, ptr %gep.2, align 1, !tbaa !32
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ei = mul nsw i64 %indvars.iv.next.2, %i.c
  %i.ej = getelementptr i8, ptr %i.dv, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !32
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  store i8 %i.ek, ptr %gep.3, align 1, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader67.new, !llvm.loop !148

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge73, %._crit_edge76, %.preheader68, %.preheader65, %.preheader63, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr23rotate_buffer_clockwiseItEEvPT_S2_iiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !171 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 90, label %.preheader63
    i32 180, label %.preheader65
    i32 270, label %.preheader68
  ]

.preheader68:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader67.preheader, label %.loopexit

.preheader67.preheader:                           ; preds = %.preheader68
  %i.c = sext i32 %4 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64
  %i.e = sext i32 %5 to i64
  %wide.trip.count86 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.f = getelementptr [2 x i8], ptr %0, i64 %i.d
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  br label %.preheader67

.preheader65:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond78 = and i1 %i.h, %i.i
  br i1 %or.cond78, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count96 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count91 = zext nneg i32 %2 to i64    ; 11 uses
  %i.k = add nsw i64 %wide.trip.count91, -1       ; 2 uses
  %i.l = add nsw i32 %3, -1
  %i.m = mul i32 %4, %i.l
  %i.n = add i32 %2, %i.m
  %i.o = add i32 %i.n, -1
  %i.p = sub i32 0, %4                            ; 2 uses
  %i.q = add nsw i32 %3, -1
  %i.r = mul i32 %4, %i.q
  %i.s = add i32 %2, %i.r
  %i.t = add i32 %i.s, -1
  %i.u = add nuw i64 %wide.trip.count96, 9223372036854775807
  %i.v = mul i64 %i.u, %i.j
  %i.w = add i64 %i.v, %wide.trip.count91
  %i.x = shl i64 %i.w, 1
  %scevgep = getelementptr i8, ptr %1, i64 %i.x
  %min.iters.check = icmp ult i32 %2, 4
  %i.y = trunc nsw i64 %i.k to i32
  %i.z = icmp ugt i64 %i.k, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %min.iters.check127 = icmp ult i32 %2, 16
  %i.aa = and i64 %wide.trip.count91, 12
  %n.vec = and i64 %wide.trip.count91, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count91
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  %n.vec130 = and i64 %wide.trip.count91, 2147483644 ; 3 uses
  %cmp.n135 = icmp eq i64 %n.vec130, %wide.trip.count91
  %xtraiter184 = and i64 %wide.trip.count91, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  %i.ab = add nsw i64 %wide.trip.count91, -1
  br label %iter.check

.preheader63:                                     ; preds = %bb.a
  %i.ac = icmp sgt i32 %2, 0
  %i.ad = icmp sgt i32 %3, 0
  %or.cond79 = and i1 %i.ac, %i.ad
  br i1 %or.cond79, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader63
  %i.ae = zext nneg i32 %3 to i64                 ; 5 uses
  %i.af = sext i32 %4 to i64                      ; 3 uses
  %i.ag = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count106 = zext nneg i32 %2 to i64   ; 3 uses
  %wide.trip.count101 = zext nneg i32 %3 to i64   ; 10 uses
  %i.ah = add nuw nsw i64 %wide.trip.count101, %wide.trip.count106
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep144 = getelementptr i8, ptr %i.aj, i64 -2
  %i.ak = add nuw i64 %wide.trip.count106, 9223372036854775807
  %i.al = mul i64 %i.ak, %i.ag
  %i.am = add i64 %i.al, %wide.trip.count101
  %i.an = shl i64 %i.am, 1
  %scevgep145 = getelementptr i8, ptr %1, i64 %i.an
  %min.iters.check146 = icmp ugt i32 %3, 3
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond180 = and i1 %min.iters.check146, %ident.check.not
  %bound0148 = icmp ult ptr %1, %scevgep144
  %bound1149 = icmp ult ptr %0, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  %stride.check151 = icmp slt i32 %5, 0
  %i.ao = or i1 %found.conflict150, %stride.check151
  %min.iters.check153 = icmp ult i32 %3, 16
  %i.ap = and i64 %wide.trip.count101, 12
  %n.vec155 = and i64 %wide.trip.count101, 2147483632 ; 4 uses
  %cmp.n164 = icmp eq i64 %n.vec155, %wide.trip.count101
  %min.epilog.iters.check168 = icmp eq i64 %i.ap, 0
  %n.vec171 = and i64 %wide.trip.count101, 2147483644 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count101
  %xtraiter186 = and i64 %wide.trip.count101, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.aq = add nsw i64 %wide.trip.count101, -1
  br label %iter.check165

iter.check165:                                    ; preds = %.preheader.preheader, %._crit_edge76
  %indvars.iv103 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge76 ] ; 3 uses
  %i.ar = mul nsw i64 %indvars.iv103, %i.ag
  %invariant.gep115 = getelementptr [2 x i8], ptr %0, i64 %indvars.iv103 ; 5 uses
  %invariant.gep117 = getelementptr [2 x i8], ptr %1, i64 %i.ar ; 5 uses
  %or.cond180.not = xor i1 %or.cond180, true
  %brmerge = select i1 %or.cond180.not, i1 true, i1 %i.ao
  br i1 %brmerge, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check165
  br i1 %min.iters.check153, label %vec.epilog.ph169, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.as = getelementptr [2 x i8], ptr %invariant.gep115, i64 %i.ae
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 3 uses
  %i.at = xor i64 %index157, -1
  %i.au = getelementptr [2 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -14
  %i.aw = getelementptr i8, ptr %i.au, i64 -30
  %wide.load158 = load <8 x i16>, ptr %i.av, align 2, !tbaa !37, !alias.scope !172
  %wide.load159 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !37, !alias.scope !172
  %reverse160 = shufflevector <8 x i16> %wide.load158, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse161 = shufflevector <8 x i16> %wide.load159, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ax = getelementptr [2 x i8], ptr %invariant.gep117, i64 %index157 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <8 x i16> %reverse160, ptr %i.ax, align 2, !tbaa !37, !alias.scope !173, !noalias !172
  store <8 x i16> %reverse161, ptr %i.ay, align 2, !tbaa !37, !alias.scope !173, !noalias !172
  %index.next162 = add nuw i64 %index157, 16      ; 2 uses
  %i.az = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.az, label %middle.block163, label %vector.body156, !llvm.loop !157

middle.block163:                                  ; preds = %vector.body156
  br i1 %cmp.n164, label %._crit_edge76, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph169, !prof !38

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec155, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check152 ]
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep115, i64 %i.ae
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next176, %vec.epilog.vector.body172 ] ; 3 uses
  %i.bb = xor i64 %index173, -1
  %i.bc = getelementptr [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -6
  %wide.load174 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !37, !alias.scope !172
  %reverse175 = shufflevector <4 x i16> %wide.load174, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.be = getelementptr [2 x i8], ptr %invariant.gep117, i64 %index173
  store <4 x i16> %reverse175, ptr %i.be, align 2, !tbaa !37, !alias.scope !173, !noalias !172
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.bf, label %vec.epilog.middle.block177, label %vec.epilog.vector.body172, !llvm.loop !158

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body172
  br i1 %cmp.n178, label %._crit_edge76, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block177
  %indvars.iv98.ph = phi i64 [ 0, %iter.check165 ], [ %n.vec171, %vec.epilog.middle.block177 ], [ %n.vec155, %vec.epilog.iter.check166 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader
  %i.bg = xor i64 %indvars.iv98.ph, -1
  %i.bh = add nsw i64 %i.ae, %i.bg
  %i.bi = mul nsw i64 %i.bh, %i.af
  %gep116.prol = getelementptr [2 x i8], ptr %invariant.gep115, i64 %i.bi
  %i.bj = load i16, ptr %gep116.prol, align 2, !tbaa !37
  %gep118.prol = getelementptr [2 x i8], ptr %invariant.gep117, i64 %indvars.iv98.ph
  store i16 %i.bj, ptr %gep118.prol, align 2, !tbaa !37
  %indvars.iv.next99.prol = or disjoint i64 %indvars.iv98.ph, 1
  br label %vec.epilog.scalar.ph167.prol.loopexit

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %indvars.iv98.unr = phi i64 [ %indvars.iv98.ph, %vec.epilog.scalar.ph167.preheader ], [ %indvars.iv.next99.prol, %vec.epilog.scalar.ph167.prol ]
  %i.bk = icmp eq i64 %indvars.iv98.ph, %i.aq
  br i1 %i.bk, label %._crit_edge76, label %vec.epilog.scalar.ph167

._crit_edge76:                                    ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %vec.epilog.middle.block177, %middle.block163
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %iter.check165, !llvm.loop !159

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %vec.epilog.scalar.ph167 ], [ %indvars.iv98.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 5 uses
  %i.bl = xor i64 %indvars.iv98, -1
  %i.bm = add nsw i64 %i.ae, %i.bl
  %i.bn = mul nsw i64 %i.bm, %i.af
  %gep116 = getelementptr [2 x i8], ptr %invariant.gep115, i64 %i.bn
  %i.bo = load i16, ptr %gep116, align 2, !tbaa !37
  %gep118 = getelementptr [2 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  store i16 %i.bo, ptr %gep118, align 2, !tbaa !37
  %reass.sub.a = sub i64 %i.ae, %indvars.iv98
  %i.bp = add i64 %reass.sub.a, -2
  %i.bq = mul nsw i64 %i.bp, %i.af
  %gep116.1 = getelementptr [2 x i8], ptr %invariant.gep115, i64 %i.bq
  %i.br = load i16, ptr %gep116.1, align 2, !tbaa !37
  %i.bs = getelementptr [2 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  %gep118.1 = getelementptr i8, ptr %i.bs, i64 2
  store i16 %i.br, ptr %gep118.1, align 2, !tbaa !37
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %indvars.iv.next99.1, %wide.trip.count101
  br i1 %exitcond102.not.1, label %._crit_edge76, label %vec.epilog.scalar.ph167, !llvm.loop !160

iter.check:                                       ; preds = %.preheader64.preheader, %._crit_edge73
  %indvars.iv93 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next94, %._crit_edge73 ] ; 4 uses
  %i.bt = trunc i64 %indvars.iv93 to i32          ; 2 uses
  %i.bu = xor i32 %i.bt, -1
  %i.bv = add i32 %3, %i.bu
  %i.bw = mul i32 %i.bv, %4
  %i.bx = add i32 %i.bw, %2                       ; 5 uses
  %i.by = mul nsw i64 %indvars.iv93, %i.j
  %invariant.gep113 = getelementptr [2 x i8], ptr %1, i64 %i.by ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bz = trunc i64 %indvars.iv93 to i32
  %i.ca = mul i32 %i.bz, %i.p
  %i.cb = add i32 %i.ca, %i.o                     ; 2 uses
  %i.cc = sub i32 %i.cb, %i.y
  %i.cd = icmp sgt i32 %i.cc, %i.cb
  %i.ce = or i1 %i.cd, %i.z
  br i1 %i.ce, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cf = mul i32 %i.bt, %i.p
  %i.cg = add i32 %i.t, %i.cf
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %7 = shl nsw i64 %i.ch, 1
  %8 = sub nsw i64 %i.ch, %wide.trip.count91
  %i.ci = shl nsw i64 %8, 1
  %9 = getelementptr i8, ptr %0, i64 %i.ci
  %10 = getelementptr i8, ptr %9, i64 2
  %i.cj = getelementptr i8, ptr %0, i64 %7
  %i.ck = getelementptr i8, ptr %i.cj, i64 2
  %bound0 = icmp ult ptr %1, %i.ck
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cl = or i1 %found.conflict, %stride.check
  br i1 %i.cl, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cm = trunc i64 %index to i32
  %i.cn = xor i32 %i.cm, -1
  %i.co = add i32 %i.bx, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -14
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -30
  %wide.load = load <8 x i16>, ptr %i.cr, align 2, !tbaa !37, !alias.scope !174
  %wide.load128 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !37, !alias.scope !174
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse129 = shufflevector <8 x i16> %wide.load128, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ct = getelementptr [2 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store <8 x i16> %reverse, ptr %i.ct, align 2, !tbaa !37, !alias.scope !175, !noalias !174
  store <8 x i16> %reverse129, ptr %i.cu, align 2, !tbaa !37, !alias.scope !175, !noalias !174
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 3 uses
  %i.cw = trunc i64 %index131 to i32
  %i.cx = xor i32 %i.cw, -1
  %i.cy = add i32 %i.bx, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -6
  %wide.load132 = load <4 x i16>, ptr %i.db, align 2, !tbaa !37, !alias.scope !174
  %reverse133 = shufflevector <4 x i16> %wide.load132, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dc = getelementptr [2 x i8], ptr %invariant.gep113, i64 %index131
  store <4 x i16> %reverse133, ptr %i.dc, align 2, !tbaa !37, !alias.scope !175, !noalias !174
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n135, label %._crit_edge73, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv88.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod185.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.de = trunc nuw nsw i64 %indvars.iv88.ph to i32
  %i.df = xor i32 %i.de, -1
  %i.dg = add i32 %i.bx, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !37
  %gep114.prol = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv88.ph
  store i16 %i.dj, ptr %gep114.prol, align 2, !tbaa !37
  %indvars.iv.next89.prol = or disjoint i64 %indvars.iv88.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next89.prol, %vec.epilog.scalar.ph.prol ]
  %i.dk = icmp eq i64 %indvars.iv88.ph, %i.ab
  br i1 %i.dk, label %._crit_edge73, label %vec.epilog.scalar.ph

._crit_edge73:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %iter.check, !llvm.loop !166

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %vec.epilog.scalar.ph ], [ %indvars.iv88.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.dl = trunc i64 %indvars.iv88 to i32
  %i.dm = xor i32 %i.dl, -1
  %i.dn = add i32 %i.bx, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [2 x i8], ptr %0, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !37
  %gep114 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv88
  store i16 %i.dq, ptr %gep114, align 2, !tbaa !37
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.dr = trunc i64 %indvars.iv.next89 to i32
  %i.ds = xor i32 %i.dr, -1
  %i.dt = add i32 %i.bx, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !37
  %gep114.1 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv.next89
  store i16 %i.dw, ptr %gep114.1, align 2, !tbaa !37
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %indvars.iv.next89.1, %wide.trip.count91
  br i1 %exitcond92.not.1, label %._crit_edge73, label %vec.epilog.scalar.ph, !llvm.loop !167

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader67.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 3 uses
  %i.dx = xor i64 %indvars.iv83, -1
  %i.dy = mul nsw i64 %indvars.iv83, %i.e
  %i.dz = getelementptr [2 x i8], ptr %i.f, i64 %i.dx ; 5 uses
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.dy ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader67.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader67.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader67
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ea = mul nsw i64 %indvars.iv.epil, %i.c
  %i.eb = getelementptr [2 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !37
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  store i16 %i.ec, ptr %gep.epil, align 2, !tbaa !37
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit, label %.preheader67, !llvm.loop !169

.preheader67.new:                                 ; preds = %.preheader67, %.preheader67.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.new ], [ 0, %.preheader67 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.new ], [ 0, %.preheader67 ]
  %i.ed = mul nsw i64 %indvars.iv, %i.c
  %i.ee = getelementptr [2 x i8], ptr %i.dz, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !37
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ef, ptr %gep, align 2, !tbaa !37
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv.next, %i.c
  %i.eh = getelementptr [2 x i8], ptr %i.dz, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !37
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i16 %i.ei, ptr %gep.1, align 2, !tbaa !37
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ej = mul nsw i64 %indvars.iv.next.1, %i.c
  %i.ek = getelementptr [2 x i8], ptr %i.dz, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !37
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store i16 %i.el, ptr %gep.2, align 2, !tbaa !37
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.em = mul nsw i64 %indvars.iv.next.2, %i.c
  %i.en = getelementptr [2 x i8], ptr %i.dz, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !37
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store i16 %i.eo, ptr %gep.3, align 2, !tbaa !37
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader67.new, !llvm.loop !170

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge73, %._crit_edge76, %.preheader68, %.preheader65, %.preheader63, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr23rotate_buffer_clockwiseIjEEvPT_S2_iiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !191 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 90, label %.preheader63
    i32 180, label %.preheader65
    i32 270, label %.preheader68
  ]

.preheader68:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader67.preheader, label %.loopexit

.preheader67.preheader:                           ; preds = %.preheader68
  %i.c = sext i32 %4 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64
  %i.e = sext i32 %5 to i64
  %wide.trip.count86 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.d
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  br label %.preheader67

.preheader65:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond78 = and i1 %i.h, %i.i
  br i1 %or.cond78, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count96 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count91 = zext nneg i32 %2 to i64    ; 8 uses
  %i.k = add nsw i64 %wide.trip.count91, -1       ; 2 uses
  %i.l = add nsw i32 %3, -1
  %i.m = mul i32 %4, %i.l
  %i.n = add i32 %2, %i.m
  %i.o = add i32 %i.n, -1
  %i.p = sub i32 0, %4                            ; 2 uses
  %i.q = add nsw i32 %3, -1
  %i.r = mul i32 %4, %i.q
  %i.s = add i32 %2, %i.r
  %i.t = add i32 %i.s, -1
  %i.u = add nuw nsw i64 %wide.trip.count96, 4611686018427387903
  %i.v = mul i64 %i.u, %i.j
  %i.w = add i64 %i.v, %wide.trip.count91
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.x
  %min.iters.check = icmp ult i32 %2, 12
  %i.y = trunc nsw i64 %i.k to i32
  %i.z = icmp ugt i64 %i.k, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %n.vec = and i64 %wide.trip.count91, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count91
  %xtraiter162 = and i64 %wide.trip.count91, 1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  %i.aa = add nsw i64 %wide.trip.count91, -1
  br label %.preheader64

.preheader63:                                     ; preds = %bb.a
  %i.ab = icmp sgt i32 %2, 0
  %i.ac = icmp sgt i32 %3, 0
  %or.cond79 = and i1 %i.ab, %i.ac
  br i1 %or.cond79, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader63
  %i.ad = zext nneg i32 %3 to i64                 ; 4 uses
  %i.ae = sext i32 %4 to i64                      ; 3 uses
  %i.af = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count106 = zext nneg i32 %2 to i64   ; 3 uses
  %wide.trip.count101 = zext nneg i32 %3 to i64   ; 7 uses
  %i.ag = add nuw nsw i64 %wide.trip.count101, %wide.trip.count106
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep137 = getelementptr i8, ptr %i.ai, i64 -4
  %i.aj = add nuw nsw i64 %wide.trip.count106, 4611686018427387903
  %i.ak = mul i64 %i.aj, %i.af
  %i.al = add i64 %i.ak, %wide.trip.count101
  %i.am = shl i64 %i.al, 2
  %scevgep138 = getelementptr i8, ptr %1, i64 %i.am
  %min.iters.check140 = icmp ugt i32 %3, 7
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond158 = and i1 %min.iters.check140, %ident.check.not
  %bound0142 = icmp ult ptr %1, %scevgep137
  %bound1143 = icmp ult ptr %0, %scevgep138
  %found.conflict144 = and i1 %bound0142, %bound1143
  %stride.check145 = icmp slt i32 %5, 0
  %i.an = or i1 %found.conflict144, %stride.check145
  %n.vec147 = and i64 %wide.trip.count101, 2147483640 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count101
  %xtraiter164 = and i64 %wide.trip.count101, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  %i.ao = add nsw i64 %wide.trip.count101, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge76
  %indvars.iv103 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge76 ] ; 3 uses
  %i.ap = mul nsw i64 %indvars.iv103, %i.af
  %invariant.gep115 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv103 ; 4 uses
  %invariant.gep117 = getelementptr [4 x i8], ptr %1, i64 %i.ap ; 4 uses
  %or.cond158.not = xor i1 %or.cond158, true
  %brmerge = select i1 %or.cond158.not, i1 true, i1 %i.an
  br i1 %brmerge, label %scalar.ph139.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.preheader
  %i.aq = getelementptr [4 x i8], ptr %invariant.gep115, i64 %i.ad
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 3 uses
  %i.ar = xor i64 %index149, -1
  %i.as = getelementptr [4 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -12
  %i.au = getelementptr i8, ptr %i.as, i64 -28
  %wide.load150 = load <4 x i32>, ptr %i.at, align 4, !tbaa !8, !alias.scope !192
  %wide.load151 = load <4 x i32>, ptr %i.au, align 4, !tbaa !8, !alias.scope !192
  %reverse152 = shufflevector <4 x i32> %wide.load150, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse153 = shufflevector <4 x i32> %wide.load151, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.av = getelementptr [4 x i8], ptr %invariant.gep117, i64 %index149 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <4 x i32> %reverse152, ptr %i.av, align 4, !tbaa !8, !alias.scope !193, !noalias !192
  store <4 x i32> %reverse153, ptr %i.aw, align 4, !tbaa !8, !alias.scope !193, !noalias !192
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.ax, label %middle.block155, label %vector.body148, !llvm.loop !179

middle.block155:                                  ; preds = %vector.body148
  br i1 %cmp.n156, label %._crit_edge76, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %.preheader, %middle.block155
  %indvars.iv98.ph = phi i64 [ %n.vec147, %middle.block155 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod165.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol

scalar.ph139.prol:                                ; preds = %scalar.ph139.preheader
  %i.ay = xor i64 %indvars.iv98.ph, -1
  %i.az = add nsw i64 %i.ad, %i.ay
  %i.ba = mul nsw i64 %i.az, %i.ae
  %gep116.prol = getelementptr [4 x i8], ptr %invariant.gep115, i64 %i.ba
  %i.bb = load i32, ptr %gep116.prol, align 4, !tbaa !8
  %gep118.prol = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv98.ph
  store i32 %i.bb, ptr %gep118.prol, align 4, !tbaa !8
  %indvars.iv.next99.prol = or disjoint i64 %indvars.iv98.ph, 1
  br label %scalar.ph139.prol.loopexit

scalar.ph139.prol.loopexit:                       ; preds = %scalar.ph139.prol, %scalar.ph139.preheader
  %indvars.iv98.unr = phi i64 [ %indvars.iv98.ph, %scalar.ph139.preheader ], [ %indvars.iv.next99.prol, %scalar.ph139.prol ]
  %i.bc = icmp eq i64 %indvars.iv98.ph, %i.ao
  br i1 %i.bc, label %._crit_edge76, label %scalar.ph139

._crit_edge76:                                    ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139, %middle.block155
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %.preheader, !llvm.loop !180

scalar.ph139:                                     ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %scalar.ph139 ], [ %indvars.iv98.unr, %scalar.ph139.prol.loopexit ] ; 5 uses
  %i.bd = xor i64 %indvars.iv98, -1
  %i.be = add nsw i64 %i.ad, %i.bd
  %i.bf = mul nsw i64 %i.be, %i.ae
  %gep116 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %i.bf
  %i.bg = load i32, ptr %gep116, align 4, !tbaa !8
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  store i32 %i.bg, ptr %gep118, align 4, !tbaa !8
  %reass.sub.a = sub i64 %i.ad, %indvars.iv98
  %i.bh = add i64 %reass.sub.a, -2
  %i.bi = mul nsw i64 %i.bh, %i.ae
  %gep116.1 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %i.bi
  %i.bj = load i32, ptr %gep116.1, align 4, !tbaa !8
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  %gep118.1 = getelementptr i8, ptr %i.bk, i64 4
  store i32 %i.bj, ptr %gep118.1, align 4, !tbaa !8
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %indvars.iv.next99.1, %wide.trip.count101
  br i1 %exitcond102.not.1, label %._crit_edge76, label %scalar.ph139, !llvm.loop !181

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge73
  %indvars.iv93 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next94, %._crit_edge73 ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv93 to i32          ; 2 uses
  %i.bm = xor i32 %i.bl, -1
  %i.bn = add i32 %3, %i.bm
  %i.bo = mul i32 %i.bn, %4
  %i.bp = add i32 %i.bo, %2                       ; 4 uses
  %i.bq = mul nsw i64 %indvars.iv93, %i.j
  %invariant.gep113 = getelementptr [4 x i8], ptr %1, i64 %i.bq ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader64
  %i.br = trunc i64 %indvars.iv93 to i32
  %i.bs = mul i32 %i.br, %i.p
  %i.bt = add i32 %i.bs, %i.o                     ; 2 uses
  %i.bu = sub i32 %i.bt, %i.y
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  %i.bw = or i1 %i.bv, %i.z
  br i1 %i.bw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bx = mul i32 %i.bl, %i.p
  %i.by = add i32 %i.t, %i.bx
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %7 = shl nsw i64 %i.bz, 2
  %8 = sub nsw i64 %i.bz, %wide.trip.count91
  %i.ca = shl nsw i64 %8, 2
  %9 = getelementptr i8, ptr %0, i64 %i.ca
  %10 = getelementptr i8, ptr %9, i64 4
  %i.cb = getelementptr i8, ptr %0, i64 %7
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %bound0 = icmp ult ptr %1, %i.cc
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = or i1 %found.conflict, %stride.check
  br i1 %i.cd, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ce = trunc i64 %index to i32
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.bp, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cj, align 4, !tbaa !8, !alias.scope !194
  %wide.load127 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !8, !alias.scope !194
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse128 = shufflevector <4 x i32> %wide.load127, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <4 x i32> %reverse, ptr %i.cl, align 4, !tbaa !8, !alias.scope !195, !noalias !194
  store <4 x i32> %reverse128, ptr %i.cm, align 4, !tbaa !8, !alias.scope !195, !noalias !194
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader64, %middle.block
  %indvars.iv88.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader64 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod163.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = trunc nuw nsw i64 %indvars.iv88.ph to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %i.bp, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %gep114.prol = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv88.ph
  store i32 %i.ct, ptr %gep114.prol, align 4, !tbaa !8
  %indvars.iv.next89.prol = or disjoint i64 %indvars.iv88.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph.preheader ], [ %indvars.iv.next89.prol, %scalar.ph.prol ]
  %i.cu = icmp eq i64 %indvars.iv88.ph, %i.aa
  br i1 %i.cu, label %._crit_edge73, label %scalar.ph

._crit_edge73:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %.preheader64, !llvm.loop !186

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %scalar.ph ], [ %indvars.iv88.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cv = trunc i64 %indvars.iv88 to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.bp, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv88
  store i32 %i.da, ptr %gep114, align 4, !tbaa !8
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.db = trunc i64 %indvars.iv.next89 to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add i32 %i.bp, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %gep114.1 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv.next89
  store i32 %i.dg, ptr %gep114.1, align 4, !tbaa !8
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %indvars.iv.next89.1, %wide.trip.count91
  br i1 %exitcond92.not.1, label %._crit_edge73, label %scalar.ph, !llvm.loop !187

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader67.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 3 uses
  %i.dh = xor i64 %indvars.iv83, -1
  %i.di = mul nsw i64 %indvars.iv83, %i.e
  %i.dj = getelementptr [4 x i8], ptr %i.f, i64 %i.dh ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.di ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader67.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader67.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader67
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.dk = mul nsw i64 %indvars.iv.epil, %i.c
  %i.dl = getelementptr [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  store i32 %i.dm, ptr %gep.epil, align 4, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !188

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit, label %.preheader67, !llvm.loop !189

.preheader67.new:                                 ; preds = %.preheader67, %.preheader67.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.new ], [ 0, %.preheader67 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.new ], [ 0, %.preheader67 ]
  %i.dn = mul nsw i64 %indvars.iv, %i.c
  %i.do = getelementptr [4 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.dp, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dq = mul nsw i64 %indvars.iv.next, %i.c
  %i.dr = getelementptr [4 x i8], ptr %i.dj, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.ds, ptr %gep.1, align 4, !tbaa !8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dt = mul nsw i64 %indvars.iv.next.1, %i.c
  %i.du = getelementptr [4 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store i32 %i.dv, ptr %gep.2, align 4, !tbaa !8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv.next.2, %i.c
  %i.dx = getelementptr [4 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store i32 %i.dy, ptr %gep.3, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader67.new, !llvm.loop !190

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge73, %._crit_edge76, %.preheader68, %.preheader65, %.preheader63, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr23rotate_buffer_clockwiseImEEvPT_S2_iiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !guid !211 {
bb.a:
  switch i32 %6, label %.loopexit [
    i32 90, label %.preheader63
    i32 180, label %.preheader65
    i32 270, label %.preheader68
  ]

.preheader68:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader67.preheader, label %.loopexit

.preheader67.preheader:                           ; preds = %.preheader68
  %i.c = sext i32 %4 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64
  %i.e = sext i32 %5 to i64
  %wide.trip.count86 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.d
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  br label %.preheader67

.preheader65:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond78 = and i1 %i.h, %i.i
  br i1 %or.cond78, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count96 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count91 = zext nneg i32 %2 to i64    ; 8 uses
  %i.k = add nsw i64 %wide.trip.count91, -1       ; 2 uses
  %i.l = add nsw i32 %3, -1
  %i.m = mul i32 %4, %i.l
  %i.n = add i32 %2, %i.m
  %i.o = add i32 %i.n, -1
  %i.p = sub i32 0, %4                            ; 2 uses
  %i.q = add nsw i32 %3, -1
  %i.r = mul i32 %4, %i.q
  %i.s = add i32 %2, %i.r
  %i.t = add i32 %i.s, -1
  %i.u = add nuw nsw i64 %wide.trip.count96, 2305843009213693951
  %i.v = mul i64 %i.u, %i.j
  %i.w = add i64 %i.v, %wide.trip.count91
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.x
  %min.iters.check = icmp ult i32 %2, 10
  %i.y = trunc nsw i64 %i.k to i32
  %i.z = icmp ugt i64 %i.k, 4294967295
  %stride.check = icmp slt i32 %5, 0
  %n.vec = and i64 %wide.trip.count91, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count91
  %xtraiter162 = and i64 %wide.trip.count91, 1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  %i.aa = add nsw i64 %wide.trip.count91, -1
  br label %.preheader64

.preheader63:                                     ; preds = %bb.a
  %i.ab = icmp sgt i32 %2, 0
  %i.ac = icmp sgt i32 %3, 0
  %or.cond79 = and i1 %i.ab, %i.ac
  br i1 %or.cond79, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader63
  %i.ad = zext nneg i32 %3 to i64                 ; 4 uses
  %i.ae = sext i32 %4 to i64                      ; 3 uses
  %i.af = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count106 = zext nneg i32 %2 to i64   ; 3 uses
  %wide.trip.count101 = zext nneg i32 %3 to i64   ; 7 uses
  %i.ag = add nuw nsw i64 %wide.trip.count101, %wide.trip.count106
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep137 = getelementptr i8, ptr %i.ai, i64 -8
  %i.aj = add nuw nsw i64 %wide.trip.count106, 2305843009213693951
  %i.ak = mul i64 %i.aj, %i.af
  %i.al = add i64 %i.ak, %wide.trip.count101
  %i.am = shl i64 %i.al, 3
  %scevgep138 = getelementptr i8, ptr %1, i64 %i.am
  %min.iters.check140 = icmp ugt i32 %3, 5
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond158 = and i1 %min.iters.check140, %ident.check.not
  %bound0142 = icmp ult ptr %1, %scevgep137
  %bound1143 = icmp ult ptr %0, %scevgep138
  %found.conflict144 = and i1 %bound0142, %bound1143
  %stride.check145 = icmp slt i32 %5, 0
  %i.an = or i1 %found.conflict144, %stride.check145
  %n.vec147 = and i64 %wide.trip.count101, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count101
  %xtraiter164 = and i64 %wide.trip.count101, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  %i.ao = add nsw i64 %wide.trip.count101, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge76
  %indvars.iv103 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge76 ] ; 3 uses
  %i.ap = mul nsw i64 %indvars.iv103, %i.af
  %invariant.gep115 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv103 ; 4 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %1, i64 %i.ap ; 4 uses
  %or.cond158.not = xor i1 %or.cond158, true
  %brmerge = select i1 %or.cond158.not, i1 true, i1 %i.an
  br i1 %brmerge, label %scalar.ph139.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.preheader
  %i.aq = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ad
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 3 uses
  %i.ar = xor i64 %index149, -1
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %wide.load150 = load <2 x i64>, ptr %i.at, align 8, !tbaa !40, !alias.scope !212
  %wide.load151 = load <2 x i64>, ptr %i.au, align 8, !tbaa !40, !alias.scope !212
  %reverse152 = shufflevector <2 x i64> %wide.load150, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse153 = shufflevector <2 x i64> %wide.load151, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = getelementptr [8 x i8], ptr %invariant.gep117, i64 %index149 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <2 x i64> %reverse152, ptr %i.av, align 8, !tbaa !40, !alias.scope !213, !noalias !212
  store <2 x i64> %reverse153, ptr %i.aw, align 8, !tbaa !40, !alias.scope !213, !noalias !212
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.ax, label %middle.block155, label %vector.body148, !llvm.loop !199

middle.block155:                                  ; preds = %vector.body148
  br i1 %cmp.n156, label %._crit_edge76, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %.preheader, %middle.block155
  %indvars.iv98.ph = phi i64 [ %n.vec147, %middle.block155 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod165.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol

scalar.ph139.prol:                                ; preds = %scalar.ph139.preheader
  %i.ay = xor i64 %indvars.iv98.ph, -1
  %i.az = add nsw i64 %i.ad, %i.ay
  %i.ba = mul nsw i64 %i.az, %i.ae
  %gep116.prol = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ba
  %i.bb = load i64, ptr %gep116.prol, align 8, !tbaa !40
  %gep118.prol = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv98.ph
  store i64 %i.bb, ptr %gep118.prol, align 8, !tbaa !40
  %indvars.iv.next99.prol = or disjoint i64 %indvars.iv98.ph, 1
  br label %scalar.ph139.prol.loopexit

scalar.ph139.prol.loopexit:                       ; preds = %scalar.ph139.prol, %scalar.ph139.preheader
  %indvars.iv98.unr = phi i64 [ %indvars.iv98.ph, %scalar.ph139.preheader ], [ %indvars.iv.next99.prol, %scalar.ph139.prol ]
  %i.bc = icmp eq i64 %indvars.iv98.ph, %i.ao
  br i1 %i.bc, label %._crit_edge76, label %scalar.ph139

._crit_edge76:                                    ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139, %middle.block155
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %.preheader, !llvm.loop !200

scalar.ph139:                                     ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %scalar.ph139 ], [ %indvars.iv98.unr, %scalar.ph139.prol.loopexit ] ; 5 uses
  %i.bd = xor i64 %indvars.iv98, -1
  %i.be = add nsw i64 %i.ad, %i.bd
  %i.bf = mul nsw i64 %i.be, %i.ae
  %gep116 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bf
  %i.bg = load i64, ptr %gep116, align 8, !tbaa !40
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  store i64 %i.bg, ptr %gep118, align 8, !tbaa !40
  %reass.sub.a = sub i64 %i.ad, %indvars.iv98
  %i.bh = add i64 %reass.sub.a, -2
  %i.bi = mul nsw i64 %i.bh, %i.ae
  %gep116.1 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bi
  %i.bj = load i64, ptr %gep116.1, align 8, !tbaa !40
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv98
  %gep118.1 = getelementptr i8, ptr %i.bk, i64 8
  store i64 %i.bj, ptr %gep118.1, align 8, !tbaa !40
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %indvars.iv.next99.1, %wide.trip.count101
  br i1 %exitcond102.not.1, label %._crit_edge76, label %scalar.ph139, !llvm.loop !201

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge73
  %indvars.iv93 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next94, %._crit_edge73 ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv93 to i32          ; 2 uses
  %i.bm = xor i32 %i.bl, -1
  %i.bn = add i32 %3, %i.bm
  %i.bo = mul i32 %i.bn, %4
  %i.bp = add i32 %i.bo, %2                       ; 4 uses
  %i.bq = mul nsw i64 %indvars.iv93, %i.j
  %invariant.gep113 = getelementptr [8 x i8], ptr %1, i64 %i.bq ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader64
  %i.br = trunc i64 %indvars.iv93 to i32
  %i.bs = mul i32 %i.br, %i.p
  %i.bt = add i32 %i.bs, %i.o                     ; 2 uses
  %i.bu = sub i32 %i.bt, %i.y
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  %i.bw = or i1 %i.bv, %i.z
  br i1 %i.bw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bx = mul i32 %i.bl, %i.p
  %i.by = add i32 %i.t, %i.bx
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %7 = shl nsw i64 %i.bz, 3
  %8 = sub nsw i64 %i.bz, %wide.trip.count91
  %i.ca = shl nsw i64 %8, 3
  %9 = getelementptr i8, ptr %0, i64 %i.ca
  %10 = getelementptr i8, ptr %9, i64 8
  %i.cb = getelementptr i8, ptr %0, i64 %7
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %bound0 = icmp ult ptr %1, %i.cc
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = or i1 %found.conflict, %stride.check
  br i1 %i.cd, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ce = trunc i64 %index to i32
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.bp, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -24
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !40, !alias.scope !214
  %wide.load127 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !40, !alias.scope !214
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse128 = shufflevector <2 x i64> %wide.load127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <2 x i64> %reverse, ptr %i.cl, align 8, !tbaa !40, !alias.scope !215, !noalias !214
  store <2 x i64> %reverse128, ptr %i.cm, align 8, !tbaa !40, !alias.scope !215, !noalias !214
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader64, %middle.block
  %indvars.iv88.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader64 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod163.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = trunc nuw nsw i64 %indvars.iv88.ph to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %i.bp, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !40
  %gep114.prol = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv88.ph
  store i64 %i.ct, ptr %gep114.prol, align 8, !tbaa !40
  %indvars.iv.next89.prol = or disjoint i64 %indvars.iv88.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph.preheader ], [ %indvars.iv.next89.prol, %scalar.ph.prol ]
  %i.cu = icmp eq i64 %indvars.iv88.ph, %i.aa
  br i1 %i.cu, label %._crit_edge73, label %scalar.ph

._crit_edge73:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %.preheader64, !llvm.loop !206

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %scalar.ph ], [ %indvars.iv88.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cv = trunc i64 %indvars.iv88 to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.bp, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !40
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv88
  store i64 %i.da, ptr %gep114, align 8, !tbaa !40
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.db = trunc i64 %indvars.iv.next89 to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add i32 %i.bp, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !40
  %gep114.1 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv.next89
  store i64 %i.dg, ptr %gep114.1, align 8, !tbaa !40
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %indvars.iv.next89.1, %wide.trip.count91
  br i1 %exitcond92.not.1, label %._crit_edge73, label %scalar.ph, !llvm.loop !207

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader67.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 3 uses
  %i.dh = xor i64 %indvars.iv83, -1
  %i.di = mul nsw i64 %indvars.iv83, %i.e
  %i.dj = getelementptr [8 x i8], ptr %i.f, i64 %i.dh ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.di ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader67.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader67.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader67
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.dk = mul nsw i64 %indvars.iv.epil, %i.c
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !40
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  store i64 %i.dm, ptr %gep.epil, align 8, !tbaa !40
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit, label %.preheader67, !llvm.loop !209

.preheader67.new:                                 ; preds = %.preheader67, %.preheader67.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.new ], [ 0, %.preheader67 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.new ], [ 0, %.preheader67 ]
  %i.dn = mul nsw i64 %indvars.iv, %i.c
  %i.do = getelementptr [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !40
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i64 %i.dp, ptr %gep, align 8, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dq = mul nsw i64 %indvars.iv.next, %i.c
  %i.dr = getelementptr [8 x i8], ptr %i.dj, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !40
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i64 %i.ds, ptr %gep.1, align 8, !tbaa !40
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dt = mul nsw i64 %indvars.iv.next.1, %i.c
  %i.du = getelementptr [8 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !40
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store i64 %i.dv, ptr %gep.2, align 8, !tbaa !40
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv.next.2, %i.c
  %i.dx = getelementptr [8 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !40
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store i64 %i.dy, ptr %gep.3, align 8, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader67.new, !llvm.loop !210

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge73, %._crit_edge76, %.preheader68, %.preheader65, %.preheader63, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13resize_bufferIhEEvPT_S2_iiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 !guid !221 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %5, 0
  %i.d = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge22.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.e = sdiv i32 %3, %5
  %factor.op.mul = mul i32 %6, %i.e
  %i.f = sdiv i32 %2, %4                          ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %7 to i64
  %wide.trip.count27 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %min.iters.check = icmp ugt i32 %4, 3
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond39 = and i1 %min.iters.check, %ident.check.not
  %min.iters.check32 = icmp ult i32 %4, 32
  %i.i = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec34, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next25, %._crit_edge ] ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv24 to i32
  %.reass = mul i32 %factor.op.mul, %i.j
  %i.k = mul nsw i64 %indvars.iv24, %i.h          ; 2 uses
  %i.l = sext i32 %.reass to i64                  ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.l ; 7 uses
  %invariant.gep30 = getelementptr i8, ptr %1, i64 %i.k ; 7 uses
  br i1 %or.cond39, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add i64 %i.k, %i.a
  %i.n = add i64 %i.b, %i.l
  %i.o = sub i64 %i.n, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
end_hunk_0
