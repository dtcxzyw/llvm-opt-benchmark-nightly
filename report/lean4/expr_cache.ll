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
  %i.m = zext i32 %i.k to i64                     ; 6 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 8, !tbaa !26, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, label %bb.b

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread:   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.c, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread17

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread17: ; preds = %bb.b
  store i32 %i.k, ptr %i.u, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.x, ptr %i.t, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !34   ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
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
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #11 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store i32 %i.k, ptr %i.al, align 4, !tbaa !33
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.aq) #12
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i, %bb.f
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !34
  store ptr %i.an, ptr %i.t, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !32
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.m
  %.pre10 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !26, !range !29
  %i.as = trunc nuw i8 %.pre10 to i1
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.m ; 2 uses
  br i1 %i.as, label %bb.g, label %_ZN4lean10object_refD2Ev.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.au = phi ptr [ %i.r, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread ], [ %i.at, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8  ; 4 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN4lean10object_refD2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.i, label %bb.j, !prof !37

bb.i:                                             ; preds = %bb.h
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !35
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %.not.i1.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.aw)
          to label %_ZN4lean10object_refD2Ev.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #13
  unreachable

_ZN4lean10object_refD2Ev.exit.i:                  ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread17, %bb.k, %bb.j, %bb.i, %bb.g, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.be = phi ptr [ %i.au, %bb.k ], [ %i.au, %bb.j ], [ %i.au, %bb.i ], [ %i.au, %bb.g ], [ %i.at, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.y, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread17 ] ; 2 uses
  store i8 1, ptr %i.be, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %1, align 8, !tbaa !8     ; 5 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

bb.m:                                             ; preds = %_ZN4lean10object_refD2Ev.exit.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !35 ; 3 uses
  %i.bj = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.n, label %bb.o, !prof !37

bb.n:                                             ; preds = %bb.m
  %i.bk = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !35
  br label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit

_ZN4lean8optionalINS_4exprEEaSERKS1_.exit:        ; preds = %_ZN4lean10object_refD2Ev.exit.i, %bb.n, %bb.o, %bb.p
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !8     ; 7 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i.i.i.i4 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i4, label %bb.q, label %_ZN4lean3incEP11lean_object.exit.i.i

bb.q:                                             ; preds = %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit
  %.val.i.i.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !35 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !37

bb.r:                                             ; preds = %bb.q
  %i.bt = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !35
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i.i.i6 = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = atomicrmw sub ptr %i.bp, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !8
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %bb.t, %bb.s, %bb.r, %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit
  %i.bv = phi ptr [ %i.bp, %_ZN4lean8optionalINS_4exprEEaSERKS1_.exit ], [ %i.bp, %bb.r ], [ %i.bp, %bb.s ], [ %.pre.i.i, %bb.t ]
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !8  ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i4.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i4.i.i, label %bb.u, label %_ZN4lean4expraSERKS0_.exit

bb.u:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !35 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.v, label %bb.w, !prof !37

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !35
  br label %_ZN4lean4expraSERKS0_.exit

bb.w:                                             ; preds = %bb.u
  %.not.i1.i.i.i5 = icmp eq i32 %i.bz, 0
  br i1 %.not.i1.i.i.i5, label %_ZN4lean4expraSERKS0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw)
  br label %_ZN4lean4expraSERKS0_.exit

_ZN4lean4expraSERKS0_.exit:                       ; preds = %_ZN4lean3incEP11lean_object.exit.i.i, %bb.v, %bb.w, %bb.x
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !8
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
  br i1 %i.aj, label %._crit_edge, label %bb.b
}

declare void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4lean10object_refE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"_ZTSN4lean10expr_cacheE", !5, i64 0, !15, i64 8, !20, i64 32}
!15 = !{!"_ZTSSt6vectorIN4lean10expr_cache5entryESaIS2_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIN4lean10expr_cache5entryESaIS2_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4lean10expr_cache5entryESaIS2_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN4lean10expr_cache5entryESaIS2_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSN4lean10expr_cache5entryE", !10, i64 0}
!20 = !{!"_ZTSSt6vectorIjSaIjEE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!18, !19, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN4lean8optionalINS_4exprEEE", !28, i64 0, !6, i64 8}
!28 = !{!"bool", !6, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!23, !24, i64 8}
!32 = !{!23, !24, i64 16}
!33 = !{!5, !5, i64 0}
!34 = !{!23, !24, i64 0}
!35 = !{!36, !5, i64 0}
!36 = !{!"_ZTS11lean_object", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 7}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!24, !24, i64 0}
end_hunk_0
