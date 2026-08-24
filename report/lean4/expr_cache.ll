Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/expr_cache?download=true
inline.NumInlined: 101
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.lean::expr" = type { %"class.lean::object_ref" }
%"class.lean::object_ref" = type { ptr }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4lean10expr_cache4findERKNS_4exprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val.i.i, 13
  %i.d = and i32 %i.c, 2040
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = trunc i64 %i.h to i32
  %i.j = load i32, ptr %0, align 8, !tbaa !13
  %i.k = urem i32 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !26, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = tail call noundef zeroext i1 @_ZN4lean11is_bi_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.v, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN4lean11is_bi_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean10expr_cache6insertERKNS_4exprES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val.i.i, 13
  %i.d = and i32 %i.c, 2040
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = trunc i64 %i.h to i32
  %i.j = load i32, ptr %0, align 8, !tbaa !13
  %i.k = urem i32 %i.i, %i.j                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = zext i32 %i.k to i64                     ; 7 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !25   ; 4 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 8, !tbaa !26, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, label %bb.b

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread:   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.c, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread19

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread19: ; preds = %bb.b
  store i32 %i.k, ptr %i.u, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.x, ptr %i.t, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !34   ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #11 ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store i32 %i.k, ptr %i.al, align 4, !tbaa !33
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread20, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread20: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !34
  store ptr %i.an, ptr %i.t, align 8, !tbaa !31
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %3, ptr %i.v, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  br label %_ZN4lean10object_refD2Ev.exit.i

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #12
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre, i64 %i.m
  %.pre10.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !26, !range !29
  %5 = trunc nuw i8 %.pre10.pre to i1
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !34
  store ptr %i.an, ptr %i.t, align 8, !tbaa !31
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %6, ptr %i.v, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre, i64 %i.m ; 2 uses
  br i1 %5, label %bb.f, label %_ZN4lean10object_refD2Ev.exit.i

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ap = phi ptr [ %i.r, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN4lean10object_refD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !35 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.i, !prof !37

bb.h:                                             ; preds = %bb.g
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !35
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i1.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ar)
          to label %_ZN4lean10object_refD2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #13
  unreachable

_ZN4lean10object_refD2Ev.exit.i:                  ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread20, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread19, %bb.j, %bb.i, %bb.h, %bb.f, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %7 = phi ptr [ %i.ap, %bb.j ], [ %i.ap, %bb.i ], [ %i.ap, %bb.h ], [ %i.ap, %bb.f ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.y, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread19 ], [ %4, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread20 ] ; 2 uses
  store i8 1, ptr %7, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = load ptr, ptr %1, align 8, !tbaa !8     ; 5 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

bb.l:                                             ; preds = %_ZN4lean10object_refD2Ev.exit.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !35 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.m, label %bb.n, !prof !37

bb.m:                                             ; preds = %bb.l
  %i.be = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !35
  br label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

_ZN4lean8optionalINS_4exprEEaSERKS1_.exit:        ; preds = %_ZN4lean10object_refD2Ev.exit.i, %bb.m, %bb.n, %bb.o
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !8     ; 7 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i.i.i.i4 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i4, label %bb.p, label %_ZN4lean3incEP11lean_object.exit.i.i

bb.p:                                             ; preds = %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit
  %.val.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !35 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.bm, label %bb.q, label %bb.r, !prof !37

bb.q:                                             ; preds = %bb.p
  %i.bn = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !35
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.r:                                             ; preds = %bb.p
  %.not.i.i.i.i.i6 = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !8
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %bb.s, %bb.r, %bb.q, %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit
  %i.bp = phi ptr [ %i.bj, %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ], [ %.pre.i.i, %bb.s ]
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i.i4.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i4.i.i, label %bb.t, label %_ZN4lean4expraSERKS0_.exit

bb.t:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !35 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.u, label %bb.v, !prof !37

bb.u:                                             ; preds = %bb.t
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !35
  br label %_ZN4lean4expraSERKS0_.exit

bb.v:                                             ; preds = %bb.t
  %.not.i1.i.i.i5 = icmp eq i32 %i.bt, 0
  br i1 %.not.i1.i.i.i5, label %_ZN4lean4expraSERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq)
  br label %_ZN4lean4expraSERKS0_.exit

_ZN4lean4expraSERKS0_.exit:                       ; preds = %_ZN4lean3incEP11lean_object.exit.i.i, %bb.u, %bb.v, %bb.w
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean10expr_cache5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::expr", align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %.pre17 = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.g = icmp eq ptr %.pre17, %.pre
  br i1 %i.g, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean10object_refD2Ev.exit
  %.sroa.013.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.ai, %_ZN4lean10object_refD2Ev.exit ] ; 2 uses
  %i.h = load i32, ptr %.sroa.013.016, align 4, !tbaa !33
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !26, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.o, align 4, !tbaa !35   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !35
  br label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %.not.i1.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean8optionalINS_4exprEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.o)
          to label %_ZN4lean8optionalINS_4exprEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZN4lean8optionalINS_4exprEED2Ev.exit:            ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  store i8 0, ptr %i.k, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i.i.i.i7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i7, label %bb.i, label %_ZN4lean10object_refD2Ev.exit

bb.i:                                             ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !35  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !35
  br label %_ZN4lean10object_refD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %.not.i1.i.i.i8 = icmp eq i32 %i.ac, 0
  br i1 %.not.i1.i.i.i8, label %_ZN4lean10object_refD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.z)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #13
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.j, %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.016, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
end_hunk_0
