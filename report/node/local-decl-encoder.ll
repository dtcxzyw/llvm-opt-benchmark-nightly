inline.NumInlined: 75
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::wasm::HeapType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.v8::internal::wasm::ValueTypeBase" = type { i32 }
%"class.v8::internal::wasm::ValueType" = type { %"class.v8::internal::wasm::ValueTypeBase" }

$_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE4GrowEm = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm16LocalDeclEncoder7PrependEPNS0_4ZoneEPPKhS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = tail call noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4SizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, 7
  %i.i = and i64 %i.h, -8                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm22LocalDeclEncoderBufferEEEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.i) #7
  %.pre.i.i = load i64, ptr %i.l, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm22LocalDeclEncoderBufferEEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm22LocalDeclEncoderBufferEEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %.pre.i.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = add i64 %i.p, %i.i
  store i64 %i.r, ptr %i.l, align 8
  %i.s = tail call noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4EmitEPh(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.q) ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm22LocalDeclEncoderBufferEEEPT_m.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm22LocalDeclEncoderBufferEEEPT_m.exit
  store ptr %i.q, ptr %2, align 8
  %i.v = getelementptr i8, ptr %i.q, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 %i.e
  store ptr %i.w, ptr %3, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i64 [ %i.h, %bb.a ], [ %i.j, %bb.b ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ]
  %i.i = add nuw nsw i64 %.0.i, 1                 ; 3 uses
  %i.j = lshr i64 %.04.i, 7                       ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader, label %bb.b, !llvm.loop !6

_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader: ; preds = %bb.b
  %.not26 = icmp eq ptr %i.d, %i.b
  br i1 %.not26, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit._crit_edge, label %.lr.ph

_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit._crit_edge: ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader
  %.0.lcssa = phi i64 [ %i.i, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader ], [ %i.af, %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader, %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit
  %.028 = phi i64 [ %i.af, %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit ], [ %i.i, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader ]
  %.0827 = phi ptr [ %i.ag, %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit ], [ %i.d, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit.preheader ] ; 2 uses
  %i.k = load i64, ptr %.0827, align 4            ; 3 uses
  %i.l = and i64 %i.k, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.04.i9 = phi i64 [ %i.l, %.lr.ph ], [ %3, %bb.c ]
  %.0.i10 = phi i64 [ 0, %.lr.ph ], [ %2, %bb.c ] ; 2 uses
  %2 = add nuw nsw i64 %.0.i10, 1
  %3 = lshr i64 %.04.i9, 7                        ; 2 uses
  %.not.i11 = icmp eq i64 %3, 0
  br i1 %.not.i11, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit12, label %bb.c, !llvm.loop !6

_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit12: ; preds = %bb.c
  %.sroa.4.0.extract.shift = lshr i64 %i.k, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 6 uses
  %i.m = and i32 %.sroa.4.0.extract.trunc, 19
  %i.n = icmp eq i32 %i.m, 17
  %i.o = zext i1 %i.n to i64
  %i.p = lshr i64 %i.k, 35
  %.lobit = and i64 %i.p, 1
  %i.q = and i32 %.sroa.4.0.extract.trunc, 3
  switch i32 %i.q, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread19 [
    i32 3, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit12
  %i.r = and i32 %.sroa.4.0.extract.trunc, 5
  %i.s = icmp eq i32 %i.r, 5
  br i1 %i.s, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit, label %bb.e

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread19: ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  br label %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit: ; preds = %bb.d
  %i.t = and i32 %.sroa.4.0.extract.trunc, 16
  %.not24 = icmp eq i32 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  br i1 %.not24, label %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  br label %_ZNK2v88internal4wasm8HeapType4codeEv.exit

_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread: ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.u = lshr i32 %.sroa.4.0.extract.trunc, 8
  %i.v = and i32 %i.u, 1048575                    ; 2 uses
  %i.w = icmp samesign ugt i32 %i.v, 63
  br i1 %i.w, label %.lr.ph19.i, label %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit

_ZNK2v88internal4wasm8HeapType4codeEv.exit:       ; preds = %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit, %bb.e
  store i32 %.sroa.4.0.extract.trunc, ptr %1, align 4
  %i.x = call noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #7
  %i.y = zext i8 %i.x to i32
  %i.z = or i32 %i.y, -128
  %.not14.i = icmp samesign ugt i32 %i.z, -65
  %spec.select = select i1 %.not14.i, i64 1, i64 2
  br label %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit

.lr.ph19.i:                                       ; preds = %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread, %.lr.ph19.i
  %.018.i = phi i64 [ %4, %.lr.ph19.i ], [ 1, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ]
  %.0817.i = phi i32 [ %5, %.lr.ph19.i ], [ %i.v, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ] ; 2 uses
  %4 = add nuw nsw i64 %.018.i, 1                 ; 2 uses
  %5 = lshr i32 %.0817.i, 7
  %6 = icmp samesign ugt i32 %.0817.i, 8191
  br i1 %6, label %.lr.ph19.i, label %_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit, !llvm.loop !8

_ZN2v88internal4wasm9LEBHelper11sizeof_i32vEi.exit: ; preds = %.lr.ph19.i, %_ZNK2v88internal4wasm8HeapType4codeEv.exit, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread19, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit
  %i.aa = phi i64 [ 0, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread19 ], [ 0, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit ], [ %spec.select, %_ZNK2v88internal4wasm8HeapType4codeEv.exit ], [ 1, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ], [ %4, %.lr.ph19.i ]
  %i.ab = add i64 %.028, 2
  %i.ac = add i64 %i.ab, %.lobit
  %i.ad = add i64 %i.ac, %i.o
  %i.ae = add i64 %i.ad, %.0.i10
  %i.af = add i64 %i.ae, %i.aa                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %.0827, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.b
  br i1 %.not, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4EmitEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 9 uses
  %3 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = icmp ugt i32 %i.i, 127
  br i1 %i.j, label %.lr.ph.i, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.4 = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.05.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.i, %bb.a ] ; 3 uses
  %i.k = trunc i32 %.05.i to i8
  %i.l = or i8 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.l, ptr %.4, align 1
  %i.n = lshr i32 %.05.i, 7                       ; 2 uses
  %i.o = icmp ugt i32 %.05.i, 16383
  br i1 %i.o, label %.lr.ph.i, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit, !llvm.loop !9

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit: ; preds = %.lr.ph.i, %bb.a
  %.5 = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.i, %bb.a ], [ %i.n, %.lr.ph.i ]
  %i.p = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  store i8 %i.p, ptr %.5, align 1
  %i.r = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.r, %i.s
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit
  %.032.lcssa = phi ptr [ %i.q, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit ], [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34 ]
  %i.t = ptrtoint ptr %.032.lcssa to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  ret i64 %i.v

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34
  %.047 = phi ptr [ %i.bu, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34 ], [ %i.r, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit ] ; 3 uses
  %.03246 = phi ptr [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34 ], [ %i.q, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit ] ; 2 uses
  %i.w = load i32, ptr %.047, align 4             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.x = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.y = load i32, ptr %i.x, align 4
  store i32 %i.y, ptr %2, align 4
  %i.z = icmp ugt i32 %i.w, 127
  br i1 %i.z, label %.lr.ph.i12, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit14

.lr.ph.i12:                                       ; preds = %.lr.ph, %.lr.ph.i12
  %.6 = phi ptr [ %i.ac, %.lr.ph.i12 ], [ %.03246, %.lr.ph ] ; 2 uses
  %.05.i13 = phi i32 [ %i.ad, %.lr.ph.i12 ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.aa = trunc i32 %.05.i13 to i8
  %i.ab = or i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  store i8 %i.ab, ptr %.6, align 1
  %i.ad = lshr i32 %.05.i13, 7                    ; 2 uses
  %i.ae = icmp ugt i32 %.05.i13, 16383
  br i1 %i.ae, label %.lr.ph.i12, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit14, !llvm.loop !9

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit14: ; preds = %.lr.ph.i12, %.lr.ph
  %.7 = phi ptr [ %.03246, %.lr.ph ], [ %i.ac, %.lr.ph.i12 ] ; 4 uses
  %.0.lcssa.i11 = phi i32 [ %i.w, %.lr.ph ], [ %i.ad, %.lr.ph.i12 ]
  %i.af = trunc nuw nsw i32 %.0.lcssa.i11 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.af, ptr %.7, align 1
  %i.ah = load i32, ptr %2, align 4               ; 4 uses
  %i.ai = and i32 %i.ah, 3                        ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit14
  %i.ak = call noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_numericEv(ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit

bb.c:                                             ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit14
  %i.al = trunc i32 %i.ah to i1
  br i1 %i.al, label %bb.d, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i

bb.d:                                             ; preds = %bb.c
  switch i32 %i.ai, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i [
    i32 3, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread.i
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.am = and i32 %i.ah, 21
  %or.cond.not.i = icmp eq i32 %i.am, 5
  br i1 %or.cond.not.i, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread.i

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread.i: ; preds = %bb.e, %bb.d
  %i.an = and i32 %i.ah, 5
  %i.ao = icmp eq i32 %i.an, 5
  %i.ap = select i1 %i.ao, i8 99, i8 100
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aq = call noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit

_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit: ; preds = %bb.b, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread.i, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i
  %.0.i = phi i8 [ %i.ak, %bb.b ], [ %i.ap, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread.i ], [ %i.aq, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread2.i ]
  store i8 %.0.i, ptr %i.ag, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  %i.as = load i32, ptr %2, align 4               ; 2 uses
  %i.at = and i32 %i.as, 19
  %i.au = icmp eq i32 %i.at, 17
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit
  store i8 101, ptr %i.ar, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.7, i64 3
  %.pre = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit
  %i.aw = phi i32 [ %.pre, %bb.f ], [ %i.as, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit ] ; 4 uses
  %.1 = phi ptr [ %i.av, %bb.f ], [ %i.ar, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit ] ; 5 uses
  %i.ax = and i32 %i.aw, 3
  switch i32 %i.ax, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34 [
    i32 3, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ay = and i32 %i.aw, 21
  %or.cond.not = icmp eq i32 %i.ay, 5
  br i1 %or.cond.not, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread: ; preds = %bb.h, %bb.g
  %i.az = and i32 %i.aw, 8
  %.not39 = icmp eq i32 %i.az, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
  store i8 98, ptr %.1, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.sroa.0.0.copyload.i.pre = load i32, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
  %.sroa.0.0.copyload.i = phi i32 [ %.sroa.0.0.copyload.i.pre, %bb.i ], [ %i.aw, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread ] ; 3 uses
  %.2 = phi ptr [ %i.ba, %bb.i ], [ %.1, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4
  %i.bb = and i32 %.sroa.0.0.copyload.i, 3
  %i.bc = icmp eq i32 %i.bb, 3
  br i1 %i.bc, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit

_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread: ; preds = %bb.j
  %i.bd = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.be = and i32 %i.bd, 1048575                  ; 3 uses
  %i.bf = icmp samesign ugt i32 %i.be, 63
  br i1 %i.bf, label %.lr.ph18.i, label %._crit_edge19.i

_ZNK2v88internal4wasm8HeapType4codeEv.exit:       ; preds = %bb.j
  %i.bg = call noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or i32 %i.bh, -128                      ; 3 uses
  %.not15.i = icmp samesign ugt i32 %i.bi, -65
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i17

.lr.ph18.i:                                       ; preds = %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread, %.lr.ph18.i
  %.11 = phi ptr [ %i.bl, %.lr.ph18.i ], [ %.2, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ] ; 2 uses
  %.017.i = phi i32 [ %i.bm, %.lr.ph18.i ], [ %i.be, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ] ; 3 uses
  %i.bj = trunc i32 %.017.i to i8
  %i.bk = or i8 %i.bj, -128
  %i.bl = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i8 %i.bk, ptr %.11, align 1
  %i.bm = lshr i32 %.017.i, 7                     ; 2 uses
  %i.bn = icmp samesign ugt i32 %.017.i, 8191
  br i1 %i.bn, label %.lr.ph18.i, label %._crit_edge19.i, !llvm.loop !10

._crit_edge19.i:                                  ; preds = %.lr.ph18.i, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread
  %.10 = phi ptr [ %.2, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ], [ %i.bl, %.lr.ph18.i ]
  %.0.lcssa.i18 = phi i32 [ %i.be, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ], [ %i.bm, %.lr.ph18.i ]
  %i.bo = trunc nuw nsw i32 %.0.lcssa.i18 to i8
  br label %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit

.lr.ph.i17:                                       ; preds = %_ZNK2v88internal4wasm8HeapType4codeEv.exit
  %i.bp = trunc nsw i32 %i.bi to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.bp, ptr %.2, align 1
  br label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i17, %_ZNK2v88internal4wasm8HeapType4codeEv.exit
  %.9 = phi ptr [ %.2, %_ZNK2v88internal4wasm8HeapType4codeEv.exit ], [ %i.bq, %.lr.ph.i17 ]
  %.1.lcssa.i = phi i32 [ %i.bi, %_ZNK2v88internal4wasm8HeapType4codeEv.exit ], [ -1, %.lr.ph.i17 ]
  %i.br = trunc nsw i32 %.1.lcssa.i to i8
  %i.bs = and i8 %i.br, 127
  br label %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit

_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit: ; preds = %._crit_edge19.i, %._crit_edge.i
  %.12 = phi ptr [ %.10, %._crit_edge19.i ], [ %.9, %._crit_edge.i ] ; 2 uses
  %.sink.i = phi i8 [ %i.bo, %._crit_edge19.i ], [ %i.bs, %._crit_edge.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 %.sink.i, ptr %.12, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34: ; preds = %bb.h, %bb.g, %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit
  %.3 = phi ptr [ %i.bt, %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit ], [ %.1, %bb.h ], [ %.1, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal4wasm16LocalDeclEncoder9AddLocalsEjNS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.b, %i.g
  store i64 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, %1
  store ptr %i.r, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = phi ptr [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.c ], [ %i.t, %bb.e ], [ %1, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.ab, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.ac)
  %.pre.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit: ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.u, %bb.f ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %i.ae = add i64 %i.f, %i.b
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.j, align 8
  %.sroa.4.0.insert.ext = zext i32 %2 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ad, align 4
  ret i32 %i.af
}

declare noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_numericEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.b, %i.j
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = ashr exact i64 %i.m, 2
  %i.o = select i1 %i.k, i64 2, i64 %i.n
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = shl nuw i64 %i.p, 3                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #7
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %.pre.i.i, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 6 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.h
  store ptr %i.ac, ptr %i.d, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ad = icmp ult ptr %i.b, %i.e
  %or.cond = select i1 %.not, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit
  %i.ae = add i64 %i.c, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.ae)
  %i.af = xor i64 %i.c, -1
  %i.ag = add i64 %umax, %i.af                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 56
  %i.aj = sub i64 %i.z, %i.g
  %diff.check = icmp ult i64 %i.aj, 32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.b, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.b, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.ap, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i10.ph = phi ptr [ %i.aa, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.07.i9.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.0.i10 = phi ptr [ %i.as, %.lr.ph ], [ %.0.i10.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.07.i9 = phi ptr [ %i.at, %.lr.ph ], [ %.07.i9.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.ar = load i64, ptr %.07.i9, align 4
  store i64 %i.ar, ptr %.0.i10, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.e
  br i1 %i.au, label %.lr.ph, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, !llvm.loop !16

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit: ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit
  %i.av = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.p
  store ptr %i.aw, ptr %i.i, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !7, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !7, !14}
end_hunk_0
