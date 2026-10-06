Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/cstdio?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::nowide::basic_stackstring" = type { [256 x i8], ptr }
%"class.boost::nowide::basic_stackstring.0" = type { [16 x i8], ptr }

$_ZN5boost6nowide17basic_stackstringIcwLm256EE7convertEPKwS4_ = comdat any

$_ZN5boost6nowide17basic_stackstringIcwLm16EE7convertEPKwS4_ = comdat any

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN5boost6nowide6detail6wfopenEPKwS3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::nowide::basic_stackstring", align 8 ; 7 uses
  %3 = alloca %"class.boost::nowide::basic_stackstring.0", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i.i = tail call i64 @wcslen(ptr nonnull %0)
  %i.b = shl i64 %wcslen.i.i.i, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = call noundef ptr @_ZN5boost6nowide17basic_stackstringIcwLm256EE7convertEPKwS4_(ptr noundef nonnull align 8 dereferenceable(264) %2, ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit

_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !13
  %.not.i.i3 = icmp eq ptr %1, null
  br i1 %.not.i.i3, label %_ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit
  %wcslen.i.i.i4 = call i64 @wcslen(ptr nonnull %1)
  %i.f = shl i64 %wcslen.i.i.i4, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = invoke noundef ptr @_ZN5boost6nowide17basic_stackstringIcwLm16EE7convertEPKwS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %1, ptr noundef nonnull %i.g)
          to label %._ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit_crit_edge unwind label %bb.f ; 0 uses

._ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %_ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit

_ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit: ; preds = %._ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit_crit_edge, %_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit
  %i.i = phi ptr [ %.pre, %._ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit_crit_edge ], [ null, %_ZN5boost6nowide17basic_stackstringIcwLm256EEC2EPKw.exit ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.k = call noalias ptr @fopen(ptr noundef %i.j, ptr noundef %i.i)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.m = icmp eq ptr %i.l, %3
  %i.n = icmp eq ptr %i.l, null
  %or.cond.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i, label %_ZN5boost6nowide17basic_stackstringIcwLm16EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit
  call void @_ZdaPv(ptr noundef nonnull %i.l) #7
  br label %_ZN5boost6nowide17basic_stackstringIcwLm16EED2Ev.exit

_ZN5boost6nowide17basic_stackstringIcwLm16EED2Ev.exit: ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm16EEC2EPKw.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.p = icmp eq ptr %i.o, %2
  %i.q = icmp eq ptr %i.o, null
  %or.cond.i.i5 = or i1 %i.p, %i.q
  br i1 %or.cond.i.i5, label %_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm16EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.o) #7
  br label %_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit

_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit: ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm16EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %i.k

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = icmp eq ptr %i.s, %2
  %i.u = icmp eq ptr %i.s, null
  %or.cond.i.i6 = or i1 %i.t, %i.u
  br i1 %or.cond.i.i6, label %_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.s) #7
  br label %_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit7

_ZN5boost6nowide17basic_stackstringIcwLm256EED2Ev.exit7: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  resume { ptr, i32 } %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6nowide17basic_stackstringIcwLm256EE7convertEPKwS4_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = icmp eq ptr %i.b, %0
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #7
  br label %_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit

_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 1
  %i.j = icmp ult i64 %i.i, 257
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not40.i = icmp eq ptr %1, %2
  br i1 %.not40.i, label %.loopexit, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i

_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i: ; preds = %bb.d, %bb.j
  %.02043.i = phi i64 [ %i.be, %bb.j ], [ 255, %bb.d ] ; 3 uses
  %.02242.i = phi ptr [ %.0.i29.i, %bb.j ], [ %0, %bb.d ] ; 12 uses
  %.03141.i = phi ptr [ %i.k, %bb.j ], [ %1, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03141.i, i64 4 ; 2 uses
  %i.l = load i32, ptr %.03141.i, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp ugt i32 %i.l, 1114111
  %i.n = and i32 %i.l, 2095104
  %or.cond.i.i.i = icmp eq i32 %i.n, 55296
  %.0.i.i.not.i = or i1 %i.m, %or.cond.i.i.i
  %spec.store.select.i = select i1 %.0.i.i.not.i, i32 65533, i32 %i.l ; 13 uses
  %i.o = icmp ult i32 %spec.store.select.i, 128
  br i1 %i.o, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i
  %i.p = icmp ult i32 %spec.store.select.i, 2048  ; 2 uses
  %i.q = icmp ult i32 %spec.store.select.i, 65536 ; 2 uses
  %..i28.i = select i1 %i.q, i64 3, i64 4
  %.0.i.i = select i1 %i.p, i64 2, i64 %..i28.i
  %i.r = icmp ult i64 %.02043.i, %.0.i.i
  br i1 %i.r, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, label %bb.e

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i
  %i.s = icmp eq i64 %.02043.i, 0
  br i1 %i.s, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i
  %i.t = trunc nuw nsw i32 %spec.store.select.i to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  store i8 %i.t, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.j

bb.e:                                             ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %spec.store.select.i, 6
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -64
  %i.y = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  store i8 %i.x, ptr %.02242.i, align 1, !tbaa !16
  %i.z = trunc i32 %spec.store.select.i to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %.02242.i, i64 2
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.02242.i, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  %i.af = lshr i32 %spec.store.select.i, 12
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -32
  store i8 %i.ah, ptr %.02242.i, align 1, !tbaa !16
  %i.ai = lshr i32 %spec.store.select.i, 6
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = and i8 %i.aj, 63
  %i.al = or disjoint i8 %i.ak, -128
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !16
  %i.am = trunc i32 %spec.store.select.i to i8
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %.02242.i, i64 3
  store i8 %i.ao, ptr %i.ad, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.02242.i, i64 4
  %i.ar = lshr i32 %spec.store.select.i, 18
  %i.as = trunc i32 %i.ar to i8
  %i.at = lshr i32 %spec.store.select.i, 12
  %i.au = trunc i32 %i.at to i8
  %i.av = lshr i32 %spec.store.select.i, 6
  %i.aw = trunc i32 %i.av to i8
  %i.ax = trunc i32 %spec.store.select.i to i8
  %i.ay = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.au, i64 1
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.aw, i64 2
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 3
  %i.bc = and <4 x i8> %i.bb, <i8 -1, i8 63, i8 63, i8 63>
  %i.bd = or <4 x i8> %i.bc, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bd, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %.thread.i
  %.neg.i = phi i64 [ -1, %.thread.i ], [ -2, %bb.f ], [ -3, %bb.h ], [ -4, %bb.i ]
  %.0.i29.i = phi ptr [ %i.u, %.thread.i ], [ %i.ac, %bb.f ], [ %i.ap, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.be = add i64 %.neg.i, %.02043.i
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %.loopexit, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i

_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread: ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i
  store i8 0, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.k

.loopexit:                                        ; preds = %bb.j, %bb.d
  %.022.lcssa.i = phi ptr [ %0, %bb.d ], [ %.0.i29.i, %bb.j ]
  store i8 0, ptr %.022.lcssa.i, align 1, !tbaa !16
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  br label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32

bb.k:                                             ; preds = %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, %bb.c
  %i.bf = add i64 %i.g, 1                         ; 2 uses
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #8 ; 4 uses
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !11
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not40.i13 = icmp eq ptr %1, %2
  br i1 %.not40.i13, label %.thread34.i, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15

_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15: ; preds = %bb.l, %bb.r
  %.02043.i16 = phi i64 [ %i.dc, %bb.r ], [ %i.g, %bb.l ] ; 3 uses
  %.02242.i17 = phi ptr [ %.0.i29.i26, %bb.r ], [ %i.bg, %bb.l ] ; 13 uses
  %.03141.i18 = phi ptr [ %i.bi, %bb.r ], [ %1, %bb.l ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03141.i18, i64 4 ; 2 uses
  %i.bj = load i32, ptr %.03141.i18, align 4, !tbaa !15 ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 1114111
  %i.bl = and i32 %i.bj, 2095104
  %or.cond.i.i.i19 = icmp eq i32 %i.bl, 55296
  %.0.i.i.not.i20 = or i1 %i.bk, %or.cond.i.i.i19
  %spec.store.select.i21 = select i1 %.0.i.i.not.i20, i32 65533, i32 %i.bj ; 13 uses
  %i.bm = icmp ult i32 %spec.store.select.i21, 128
  br i1 %i.bm, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15
  %i.bn = icmp ult i32 %spec.store.select.i21, 2048 ; 2 uses
  %i.bo = icmp ult i32 %spec.store.select.i21, 65536 ; 2 uses
  %..i28.i23 = select i1 %i.bo, i64 3, i64 4
  %.0.i.i24 = select i1 %i.bn, i64 2, i64 %..i28.i23
  %i.bp = icmp ult i64 %.02043.i16, %.0.i.i24
  br i1 %i.bp, label %.thread34.i, label %bb.m

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15
  %i.bq = icmp eq i64 %.02043.i16, 0
  br i1 %i.bq, label %.thread34.i, label %.thread.i31

.thread.i31:                                      ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30
  %i.br = trunc nuw nsw i32 %spec.store.select.i21 to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  store i8 %i.br, ptr %.02242.i17, align 1, !tbaa !16
  br label %bb.r

bb.m:                                             ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = lshr i32 %spec.store.select.i21, 6
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -64
  %i.bw = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  store i8 %i.bv, ptr %.02242.i17, align 1, !tbaa !16
  %i.bx = trunc i32 %spec.store.select.i21 to i8
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128
  %i.ca = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 2
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !16
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  %i.cd = lshr i32 %spec.store.select.i21, 12
  %i.ce = trunc nuw nsw i32 %i.cd to i8
  %i.cf = or disjoint i8 %i.ce, -32
  store i8 %i.cf, ptr %.02242.i17, align 1, !tbaa !16
  %i.cg = lshr i32 %spec.store.select.i21, 6
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 63
  %i.cj = or disjoint i8 %i.ci, -128
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !16
  %i.ck = trunc i32 %spec.store.select.i21 to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128
  %i.cn = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 3
  store i8 %i.cm, ptr %i.cb, align 1, !tbaa !16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 4
  %i.cp = lshr i32 %spec.store.select.i21, 18
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = lshr i32 %spec.store.select.i21, 12
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = lshr i32 %spec.store.select.i21, 6
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = trunc i32 %spec.store.select.i21 to i8
  %i.cw = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.cs, i64 1
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 2
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cv, i64 3
  %i.da = and <4 x i8> %i.cz, <i8 -1, i8 63, i8 63, i8 63>
  %i.db = or <4 x i8> %i.da, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.db, ptr %.02242.i17, align 1, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %.thread.i31
  %.neg.i25 = phi i64 [ -1, %.thread.i31 ], [ -2, %bb.n ], [ -3, %bb.p ], [ -4, %bb.q ]
  %.0.i29.i26 = phi ptr [ %i.bs, %.thread.i31 ], [ %i.ca, %bb.n ], [ %i.cn, %bb.p ], [ %i.co, %bb.q ] ; 2 uses
  %i.dc = add i64 %.neg.i25, %.02043.i16
  %.not.i27 = icmp eq ptr %i.bi, %2
  br i1 %.not.i27, label %.thread34.i, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15

.thread34.i:                                      ; preds = %bb.r, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22, %bb.l
  %.022.lcssa.i28 = phi ptr [ %i.bg, %bb.l ], [ %.0.i29.i26, %bb.r ], [ %.02242.i17, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22 ], [ %.02242.i17, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30 ]
  store i8 0, ptr %.022.lcssa.i28, align 1, !tbaa !16
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32

_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32: ; preds = %.thread34.i, %bb.k, %.loopexit, %_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit
  %i.dd = phi ptr [ %.pre, %.thread34.i ], [ %i.bg, %bb.k ], [ %0, %.loopexit ], [ null, %_ZN5boost6nowide17basic_stackstringIcwLm256EE5clearEv.exit ]
  ret ptr %i.dd
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6nowide17basic_stackstringIcwLm16EE7convertEPKwS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp eq ptr %i.b, %0
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #7
  br label %_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit

_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 1
  %i.j = icmp ult i64 %i.i, 17
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not40.i = icmp eq ptr %1, %2
  br i1 %.not40.i, label %.loopexit, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i

_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i: ; preds = %bb.d, %bb.j
  %.02043.i = phi i64 [ %i.be, %bb.j ], [ 15, %bb.d ] ; 3 uses
  %.02242.i = phi ptr [ %.0.i29.i, %bb.j ], [ %0, %bb.d ] ; 12 uses
  %.03141.i = phi ptr [ %i.k, %bb.j ], [ %1, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03141.i, i64 4 ; 2 uses
  %i.l = load i32, ptr %.03141.i, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp ugt i32 %i.l, 1114111
  %i.n = and i32 %i.l, 2095104
  %or.cond.i.i.i = icmp eq i32 %i.n, 55296
  %.0.i.i.not.i = or i1 %i.m, %or.cond.i.i.i
  %spec.store.select.i = select i1 %.0.i.i.not.i, i32 65533, i32 %i.l ; 13 uses
  %i.o = icmp ult i32 %spec.store.select.i, 128
  br i1 %i.o, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i
  %i.p = icmp ult i32 %spec.store.select.i, 2048  ; 2 uses
  %i.q = icmp ult i32 %spec.store.select.i, 65536 ; 2 uses
  %..i28.i = select i1 %i.q, i64 3, i64 4
  %.0.i.i = select i1 %i.p, i64 2, i64 %..i28.i
  %i.r = icmp ult i64 %.02043.i, %.0.i.i
  br i1 %i.r, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, label %bb.e

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i
  %i.s = icmp eq i64 %.02043.i, 0
  br i1 %i.s, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i
  %i.t = trunc nuw nsw i32 %spec.store.select.i to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  store i8 %i.t, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.j

bb.e:                                             ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %spec.store.select.i, 6
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -64
  %i.y = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  store i8 %i.x, ptr %.02242.i, align 1, !tbaa !16
  %i.z = trunc i32 %spec.store.select.i to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %.02242.i, i64 2
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.02242.i, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.02242.i, i64 1
  %i.af = lshr i32 %spec.store.select.i, 12
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -32
  store i8 %i.ah, ptr %.02242.i, align 1, !tbaa !16
  %i.ai = lshr i32 %spec.store.select.i, 6
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = and i8 %i.aj, 63
  %i.al = or disjoint i8 %i.ak, -128
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !16
  %i.am = trunc i32 %spec.store.select.i to i8
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %.02242.i, i64 3
  store i8 %i.ao, ptr %i.ad, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.02242.i, i64 4
  %i.ar = lshr i32 %spec.store.select.i, 18
  %i.as = trunc i32 %i.ar to i8
  %i.at = lshr i32 %spec.store.select.i, 12
  %i.au = trunc i32 %i.at to i8
  %i.av = lshr i32 %spec.store.select.i, 6
  %i.aw = trunc i32 %i.av to i8
  %i.ax = trunc i32 %spec.store.select.i to i8
  %i.ay = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.au, i64 1
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.aw, i64 2
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 3
  %i.bc = and <4 x i8> %i.bb, <i8 -1, i8 63, i8 63, i8 63>
  %i.bd = or <4 x i8> %i.bc, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bd, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %.thread.i
  %.neg.i = phi i64 [ -1, %.thread.i ], [ -2, %bb.f ], [ -3, %bb.h ], [ -4, %bb.i ]
  %.0.i29.i = phi ptr [ %i.u, %.thread.i ], [ %i.ac, %bb.f ], [ %i.ap, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.be = add i64 %.neg.i, %.02043.i
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %.loopexit, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i

_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread: ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i
  store i8 0, ptr %.02242.i, align 1, !tbaa !16
  br label %bb.k

.loopexit:                                        ; preds = %bb.j, %bb.d
  %.022.lcssa.i = phi ptr [ %0, %bb.d ], [ %.0.i29.i, %bb.j ]
  store i8 0, ptr %.022.lcssa.i, align 1, !tbaa !16
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  br label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32

bb.k:                                             ; preds = %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit.thread, %bb.c
  %i.bf = add i64 %i.g, 1                         ; 2 uses
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #8 ; 4 uses
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !13
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not40.i13 = icmp eq ptr %1, %2
  br i1 %.not40.i13, label %.thread34.i, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15

_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15: ; preds = %bb.l, %bb.r
  %.02043.i16 = phi i64 [ %i.dc, %bb.r ], [ %i.g, %bb.l ] ; 3 uses
  %.02242.i17 = phi ptr [ %.0.i29.i26, %bb.r ], [ %i.bg, %bb.l ] ; 13 uses
  %.03141.i18 = phi ptr [ %i.bi, %bb.r ], [ %1, %bb.l ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03141.i18, i64 4 ; 2 uses
  %i.bj = load i32, ptr %.03141.i18, align 4, !tbaa !15 ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 1114111
  %i.bl = and i32 %i.bj, 2095104
  %or.cond.i.i.i19 = icmp eq i32 %i.bl, 55296
  %.0.i.i.not.i20 = or i1 %i.bk, %or.cond.i.i.i19
  %spec.store.select.i21 = select i1 %.0.i.i.not.i20, i32 65533, i32 %i.bj ; 13 uses
  %i.bm = icmp ult i32 %spec.store.select.i21, 128
  br i1 %i.bm, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15
  %i.bn = icmp ult i32 %spec.store.select.i21, 2048 ; 2 uses
  %i.bo = icmp ult i32 %spec.store.select.i21, 65536 ; 2 uses
  %..i28.i23 = select i1 %i.bo, i64 3, i64 4
  %.0.i.i24 = select i1 %i.bn, i64 2, i64 %..i28.i23
  %i.bp = icmp ult i64 %.02043.i16, %.0.i.i24
  br i1 %i.bp, label %.thread34.i, label %bb.m

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30: ; preds = %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15
  %i.bq = icmp eq i64 %.02043.i16, 0
  br i1 %i.bq, label %.thread34.i, label %.thread.i31

.thread.i31:                                      ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30
  %i.br = trunc nuw nsw i32 %spec.store.select.i21 to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  store i8 %i.br, ptr %.02242.i17, align 1, !tbaa !16
  br label %bb.r

bb.m:                                             ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = lshr i32 %spec.store.select.i21, 6
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -64
  %i.bw = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  store i8 %i.bv, ptr %.02242.i17, align 1, !tbaa !16
  %i.bx = trunc i32 %spec.store.select.i21 to i8
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128
  %i.ca = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 2
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !16
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 1
  %i.cd = lshr i32 %spec.store.select.i21, 12
  %i.ce = trunc nuw nsw i32 %i.cd to i8
  %i.cf = or disjoint i8 %i.ce, -32
  store i8 %i.cf, ptr %.02242.i17, align 1, !tbaa !16
  %i.cg = lshr i32 %spec.store.select.i21, 6
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 63
  %i.cj = or disjoint i8 %i.ci, -128
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !16
  %i.ck = trunc i32 %spec.store.select.i21 to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128
  %i.cn = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 3
  store i8 %i.cm, ptr %i.cb, align 1, !tbaa !16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.02242.i17, i64 4
  %i.cp = lshr i32 %spec.store.select.i21, 18
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = lshr i32 %spec.store.select.i21, 12
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = lshr i32 %spec.store.select.i21, 6
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = trunc i32 %spec.store.select.i21 to i8
  %i.cw = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.cs, i64 1
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 2
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cv, i64 3
  %i.da = and <4 x i8> %i.cz, <i8 -1, i8 63, i8 63, i8 63>
  %i.db = or <4 x i8> %i.da, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.db, ptr %.02242.i17, align 1, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %.thread.i31
  %.neg.i25 = phi i64 [ -1, %.thread.i31 ], [ -2, %bb.n ], [ -3, %bb.p ], [ -4, %bb.q ]
  %.0.i29.i26 = phi ptr [ %i.bs, %.thread.i31 ], [ %i.ca, %bb.n ], [ %i.cn, %bb.p ], [ %i.co, %bb.q ] ; 2 uses
  %i.dc = add i64 %.neg.i25, %.02043.i16
  %.not.i27 = icmp eq ptr %i.bi, %2
  br i1 %.not.i27, label %.thread34.i, label %_ZN5boost6nowide3utf10utf_traitsIwLi4EE6decodeIPKwEEjRT_S7_.exit.i15

.thread34.i:                                      ; preds = %bb.r, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22, %bb.l
  %.022.lcssa.i28 = phi ptr [ %i.bg, %bb.l ], [ %.0.i29.i26, %bb.r ], [ %.02242.i17, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.i22 ], [ %.02242.i17, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i30 ]
  store i8 0, ptr %.022.lcssa.i28, align 1, !tbaa !16
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32

_ZN5boost6nowide3utf14convert_bufferIcwEEPT_S4_mPKT0_S7_.exit32: ; preds = %.thread34.i, %bb.k, %.loopexit, %_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit
  %i.dd = phi ptr [ %.pre, %.thread34.i ], [ %i.bg, %bb.k ], [ %0, %.loopexit ], [ null, %_ZN5boost6nowide17basic_stackstringIcwLm16EE5clearEv.exit ]
  ret ptr %i.dd
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSN5boost6nowide17basic_stackstringIcwLm256EEE", !4, i64 0, !9, i64 256}
!11 = !{!10, !9, i64 256}
!12 = !{!"_ZTSN5boost6nowide17basic_stackstringIcwLm16EEE", !4, i64 0, !9, i64 16}
!13 = !{!12, !9, i64 16}
!14 = !{!"wchar_t", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
