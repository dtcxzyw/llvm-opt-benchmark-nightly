Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/symbol_bit_decoder?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt19__shrink_to_fit_auxISt6vectorIjSaIjEELb1EE8_S_do_itERS2_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco16SymbolBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = add i64 %i.d, 4                          ; 2 uses
  %.not = icmp slt i64 %i.b, %i.e
  br i1 %.not, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 1              ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !28
  %i.i = zext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i64 %i.i, %i.p
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r)
  %.pre = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.t, ptr %i.j, align 8, !tbaa !11
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.u = phi ptr [ %.pre, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.v = tail call noundef zeroext i1 @_ZN5draco13DecodeSymbolsEjiPNS_13DecoderBufferEPj(i32 noundef %i.h, i32 noundef 1, ptr noundef nonnull %1, ptr noundef %i.u)
  br i1 %i.v, label %bb.f, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !13     ; 9 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 6 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !13   ; 5 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = icmp ne ptr %i.w, %i.y
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 5 uses
  %i.ab = icmp ult ptr %i.w, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ac = add i64 %i.z, -8
  %i.ad = add i64 %i.x, 4
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.ad)
  %i.af = add i64 %i.ae, -4                       ; 2 uses
  %i.ag = icmp ne i64 %i.af, %i.x
  %i.ah = zext i1 %i.ag to i64                    ; 2 uses
  %i.ai = add i64 %i.x, %i.ah
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, %i.ah            ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.an = add i64 %i.z, -8
  %i.ao = add i64 %i.x, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ao)
  %i.ap = add i64 %umax, -4                       ; 2 uses
  %i.aq = icmp ne i64 %i.ap, %i.x
  %umin = zext i1 %i.aq to i64                    ; 2 uses
  %i.ar = add i64 %i.x, %umin
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, %umin
  %i.av = shl nuw i64 %i.au, 2                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.w, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 4
  %i.ax = sub nuw nsw i64 -4, %i.av
  %scevgep15 = getelementptr i8, ptr %i.y, i64 %i.ax
  %bound0 = icmp ult ptr %i.w, %i.y
  %bound1 = icmp ult ptr %scevgep15, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 9223372036854775800     ; 4 uses
  %i.ay = mul i64 %n.vec, -4
  %i.az = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ay
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.w, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bc ; 2 uses
  %i.bd = shl i64 %index, 2
  %next.gep16 = getelementptr i8, ptr %i.w, i64 %i.bd ; 3 uses
  %i.be = getelementptr i8, ptr %next.gep16, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !14, !alias.scope !30, !noalias !31
  %wide.load17.a = load <4 x i32>, ptr %i.be, align 4, !tbaa !14, !alias.scope !30, !noalias !31
  %2 = getelementptr i8, ptr %next.gep, i64 -12   ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load18 = load <4 x i32>, ptr %2, align 4, !tbaa !14, !alias.scope !31
  %wide.load19 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !14, !alias.scope !31
  %reverse = shufflevector <4 x i32> %wide.load18, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse20 = shufflevector <4 x i32> %wide.load19, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep16, align 4, !tbaa !14, !alias.scope !30, !noalias !31
  store <4 x i32> %reverse20, ptr %i.be, align 4, !tbaa !14, !alias.scope !30, !noalias !31
  %reverse21 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse22 = shufflevector <4 x i32> %wide.load17.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse21, ptr %2, align 4, !tbaa !14, !alias.scope !31
  store <4 x i32> %reverse22, ptr %i.bf, align 4, !tbaa !14, !alias.scope !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.az, %middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 3 uses
  %i.bh = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !14
  %i.bi = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !14
  store i32 %i.bi, ptr %.sroa.05.09.i.i, align 4, !tbaa !14
  store i32 %i.bh, ptr %.sroa.0.010.i.i, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %.sroa.0.0.i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit, !llvm.loop !20

_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit:     ; preds = %.lr.ph.i.i, %middle.block, %bb.f, %bb.a, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ true, %bb.f ], [ true, %middle.block ], [ true, %.lr.ph.i.i ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5draco13DecodeSymbolsEjiPNS_13DecoderBufferEPj(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco16SymbolBitDecoder13DecodeNextBitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  store ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %i.e = trunc i32 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5draco16SymbolBitDecoder28DecodeLeastSignificantBits32EiPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  store ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %i.e = sub nsw i32 32, %1
  %i.f = lshr i32 -1, %i.e
  %i.g = and i32 %i.d, %i.f
  store i32 %i.g, ptr %2, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5draco16SymbolBitDecoder5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.g = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIjSaIjEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #13 ; 0 uses
  br label %_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit

_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit:       ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !11
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !14
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !14
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #16
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
end_hunk_0
