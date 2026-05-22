inline.NumInlined: 228
inline.NumDeleted: 106
begin_hunk_0
%class.aiVector3t = type { float, float, float }

$_ZNSt6vectorI11aiVectorKeySaIS0_EEaSERKS2_ = comdat any

$_ZN6Assimp11KeyIteratorD2Ev = comdat any

$_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6Assimp11KeyIteratorC1EPKSt6vectorI11aiVectorKeySaIS2_EES6_PK10aiVector3tIfESA_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6Assimp11KeyIteratorC2EPKSt6vectorI11aiVectorKeySaIS2_EES6_PK10aiVector3tIfESA_

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11KeyIteratorC2EPKSt6vectorI11aiVectorKeySaIS2_EES6_PK10aiVector3tIfESA_(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 1), (4, 28), (32, 112)) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double -1.000000e+00, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %.not = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.b
  invoke void @_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit unwind label %bb.e

_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit: ; preds = %bb.c
  %.pre = load ptr, ptr %i.f, align 8
  store double 1.000000e+11, ptr %.pre, align 8
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.l, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit:      ; preds = %bb.e, %bb.f
  %i.u = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit15, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit15

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit15:    ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, %bb.g
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.d, %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit
  store ptr %i.f, ptr %i.c, align 8
  %.pre21 = load ptr, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.aa = phi ptr [ %.pre21, %bb.h ], [ %2, %bb.b ] ; 3 uses
  %.not12 = icmp eq ptr %i.aa, null
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = load ptr, ptr %i.g, align 8             ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24                ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.ah
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = sub nuw nsw i64 1, %i.al
  invoke void @_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.an)
          to label %._ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19_crit_edge unwind label %bb.e

._ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19_crit_edge: ; preds = %bb.l
  %.pre22 = load ptr, ptr %i.g, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19

bb.m:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.al, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i16, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19, label %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i17

_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i17: ; preds = %bb.n
  store ptr %i.ap, ptr %i.af, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19

_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19: ; preds = %._ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19_crit_edge, %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i17, %bb.n, %bb.m
  %i.aq = phi ptr [ %.pre22, %._ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19_crit_edge ], [ %i.ah, %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i17 ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ]
  store double 1.000000e+11, ptr %i.aq, align 8
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt6vectorI11aiVectorKeySaIS0_EE6resizeEm.exit19
  store ptr %i.g, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11KeyIteratorppEv(ptr noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !3, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24                  ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -1
  %i.o = load i32, ptr %i.e, align 8              ; 13 uses
  %.sroa.speculated60 = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.o)
  %i.p = zext i32 %.sroa.speculated60 to i64      ; 3 uses
  %.not.i.i = icmp ugt i64 %i.l, %i.p
  br i1 %.not.i.i, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.p, i64 noundef %i.l) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit:    ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.p
  %i.r = load double, ptr %i.q, align 8           ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24                ; 3 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -1
  %i.ae = load i32, ptr %i.u, align 4             ; 12 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ae)
  %i.af = zext i32 %.sroa.speculated to i64       ; 3 uses
  %.not.i.i36 = icmp ugt i64 %i.ab, %i.af
  br i1 %.not.i.i36, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit37, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.af, i64 noundef %i.ab) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit37:  ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8         ; 4 uses
  %i.ai = fcmp oeq double %i.r, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.r, ptr %i.aj, align 8
  %i.ak = zext i32 %i.o to i64                    ; 3 uses
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24                ; 2 uses
  %.not.i.i38 = icmp ugt i64 %i.aq, %i.ak
  br i1 %.not.i.i38, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit39, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ak, i64 noundef %i.aq) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit39:  ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ak
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false)
  %i.au = zext i32 %i.ae to i64                   ; 3 uses
  %i.av = load ptr, ptr %i.v, align 8
  %i.aw = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24                ; 2 uses
  %.not.i.i40 = icmp ugt i64 %i.ba, %i.au
  br i1 %.not.i.i40, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit39
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.au, i64 noundef %i.ba) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit41:  ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit39
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.au
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 12, i1 false)
  %i.be = load ptr, ptr %i.f, align 8
  %i.bf = load ptr, ptr %i.d, align 8
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 24
  %i.bk = add i32 %i.o, -1
  %i.bl = zext i32 %i.bk to i64
  %.not31 = icmp eq i64 %i.bj, %i.bl
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit41
  %i.bm = add i32 %i.o, 1                         ; 2 uses
  store i32 %i.bm, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit41
  %i.bn = phi i32 [ %i.bm, %bb.h ], [ %i.o, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit41 ] ; 2 uses
  %i.bo = load ptr, ptr %i.v, align 8
  %i.bp = load ptr, ptr %i.t, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 24
  %i.bu = add i32 %i.ae, -1
  %i.bv = zext i32 %i.bu to i64
  %.not32 = icmp eq i64 %i.bt, %i.bv
  br i1 %.not32, label %bb.y, label %bb.x

bb.j:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit37
  %i.bw = fcmp olt double %i.r, %i.ah
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.bw, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  store double %i.r, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = sdiv exact i64 %i.cc, 24                ; 3 uses
  %i.ce = icmp eq i64 %i.cc, 24
  %.not29 = icmp eq i32 %i.ae, 0
  %or.cond = or i1 %.not29, %i.ce
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not.i.i42.not = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i42.not, label %bb.m, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit43

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef %i.cd) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit43:  ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 8 dereferenceable(12) %i.cf, i64 12, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ch = zext i32 %i.ae to i64                   ; 3 uses
  %.not.i.i44 = icmp ugt i64 %i.cd, %i.ch
  br i1 %.not.i.i44, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ch, i64 noundef %i.cd) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit45:  ; preds = %bb.n
  %i.ci = add i32 %i.ae, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ch ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cj ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load double, ptr %i.cl, align 8         ; 2 uses
  %i.cp = fsub double %i.r, %i.co
  %i.cq = load double, ptr %i.ck, align 8
  %i.cr = fsub double %i.cq, %i.co
  %i.cs = fdiv double %i.cp, %i.cr
  %i.ct = fptrunc double %i.cs to float           ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cv = load float, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cx = load float, ptr %i.cw, align 8          ; 2 uses
  %i.cy = fsub float %i.cv, %i.cx
  %i.cz = fmul float %i.cy, %i.ct
  %i.da = load <2 x float>, ptr %i.cn, align 8
  %i.db = load <2 x float>, ptr %i.cm, align 8    ; 2 uses
  %i.dc = fsub <2 x float> %i.da, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.dc, %i.de
  %i.dg = fadd <2 x float> %i.db, %i.df
  %i.dh = fadd float %i.cx, %i.cz
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.dg, ptr %i.di, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.dh, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit45, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit43
  %i.dj = load ptr, ptr %i.f, align 8
  %i.dk = load ptr, ptr %i.d, align 8
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 24
  %i.dp = add i32 %i.o, -1
  %i.dq = zext i32 %i.dp to i64
  %.not30 = icmp eq i64 %i.do, %i.dq
  br i1 %.not30, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = add i32 %i.o, 1                         ; 2 uses
  store i32 %i.dr, ptr %i.e, align 8
  br label %bb.y

bb.r:                                             ; preds = %bb.j
  store double %i.ah, ptr %i.bx, align 8
  %i.ds = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dt = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 2 uses
  %i.dx = sdiv exact i64 %i.dw, 24                ; 3 uses
  %i.dy = icmp eq i64 %i.dw, 24
  %.not = icmp eq i32 %i.o, 0
  %or.cond63 = or i1 %.not, %i.dy
  br i1 %or.cond63, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not.i.i48.not = icmp eq ptr %i.ds, %i.dt
  br i1 %.not.i.i48.not, label %bb.t, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit49

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef %i.dx) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit49:  ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %i.dz, i64 12, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.eb = zext i32 %i.o to i64                    ; 3 uses
  %.not.i.i50 = icmp ugt i64 %i.dx, %i.eb
  br i1 %.not.i.i50, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit51, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.eb, i64 noundef %i.dx) #13
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit51:  ; preds = %bb.u
  %i.ec = add i32 %i.o, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.eb ; 3 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ed ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load double, ptr %i.ef, align 8         ; 2 uses
  %i.ej = fsub double %i.ah, %i.ei
  %i.ek = load double, ptr %i.ee, align 8
  %i.el = fsub double %i.ek, %i.ei
  %i.em = fdiv double %i.ej, %i.el
  %i.en = fptrunc double %i.em to float           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ep = load float, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.er = load float, ptr %i.eq, align 8          ; 2 uses
  %i.es = fsub float %i.ep, %i.er
  %i.et = fmul float %i.es, %i.en
  %i.eu = load <2 x float>, ptr %i.eh, align 8
  %i.ev = load <2 x float>, ptr %i.eg, align 8    ; 2 uses
  %i.ew = fsub <2 x float> %i.eu, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ew, %i.ey
  %i.fa = fadd <2 x float> %i.ev, %i.ez
  %i.fb = fadd float %i.er, %i.et
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.fa, ptr %i.fc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.fb, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit51, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE2atEm.exit49
  %i.fd = load ptr, ptr %i.v, align 8
  %i.fe = load ptr, ptr %i.t, align 8
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 24
  %i.fj = add i32 %i.ae, -1
  %i.fk = zext i32 %i.fj to i64
  %.not28 = icmp eq i64 %i.fi, %i.fk
  br i1 %.not28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.i
  %.ph87 = phi i32 [ %i.bn, %bb.i ], [ %i.o, %bb.w ]
  %i.fl = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.fl, ptr %i.u, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q, %bb.p, %bb.w, %bb.i
  %1 = phi i32 [ %i.ae, %bb.q ], [ %i.ae, %bb.p ], [ %i.ae, %bb.i ], [ %i.ae, %bb.w ], [ %i.fl, %bb.x ]
  %2 = phi i32 [ %i.dr, %bb.q ], [ %i.o, %bb.p ], [ %i.bn, %bb.i ], [ %i.o, %bb.w ], [ %.ph87, %bb.x ]
  %i.fm = zext i32 %2 to i64
  %i.fn = load ptr, ptr %i.f, align 8
  %i.fo = load ptr, ptr %i.d, align 8
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 24
  %i.ft = add nsw i64 %i.fs, -1
  %.not33 = icmp ugt i64 %i.ft, %i.fm
  br i1 %.not33, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = zext i32 %1 to i64
  %i.fv = load ptr, ptr %i.v, align 8
  %i.fw = load ptr, ptr %i.t, align 8
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = sdiv exact i64 %i.fz, 24
  %i.gb = add nsw i64 %i.ga, -1
  %.not34 = icmp ugt i64 %i.gb, %i.fu
  br i1 %.not34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper25SetTargetAnimationChannelEPKSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper23SetMainAnimationChannelEPKSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper28SetFixedMainAnimationChannelERK10aiVector3tIfE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((8, 28)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper7ProcessEPSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull readonly align 8 captures(address_is_null) dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %3 = alloca %"class.Assimp::KeyIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %1, %i.b                     ; 4 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.s) ; 4 uses
  %i.t = icmp ugt i64 %.sroa.speculated, 384307168202282325
  br i1 %i.t, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.gep46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.sel = select i1 %i.c, ptr %.sroa.gep, ptr %.sroa.gep46 ; 4 uses
  %i.u = load ptr, ptr %.sroa.sel, align 8
  %i.v = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ult i64 %i.z, %.sroa.speculated
  br i1 %i.aa, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %.sroa.sel49.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %2, ptr %1
  %.sroa.sel49.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel, align 8 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.x
  %i.ae = mul nuw nsw i64 %.sroa.speculated, 24
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #15 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #12
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.af, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.ai, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel, align 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.sroa.speculated
  store ptr %i.aj, ptr %.sroa.sel, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre68 = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.b
  %i.ak = phi ptr [ %.pre68, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.l, %bb.b ]
  %i.al = phi ptr [ %.pre, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6Assimp11KeyIteratorC2EPKSt6vectorI11aiVectorKeySaIS2_EES6_PK10aiVector3tIfESA_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef %i.al, ptr noundef %i.ak, ptr noundef nonnull %i.am, ptr noundef null)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.gep66 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.gep67 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.sel52.v.sroa.sel = select i1 %i.c, ptr %.sroa.gep66, ptr %.sroa.gep67 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZN10aiVector3tIfEdVEf.exit
  %i.as = load i8, ptr %3, align 8, !range !3, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load <2 x float>, ptr %i.ao, align 8
  %i.av = load <2 x float>, ptr %i.an, align 4
  %i.aw = fsub <2 x float> %i.au, %i.av           ; 4 uses
  %i.ax = load float, ptr %i.ap, align 8
  %i.ay = load float, ptr %i.aq, align 4
  %i.az = fsub float %i.ax, %i.ay                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.aw, %i.aw
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bb = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ba)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bc)
  %i.be = fcmp une float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.f, label %_ZN10aiVector3tIfEdVEf.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %.sroa.sel52.v.sroa.sel, align 8 ; 6 uses
  %i.bg = load ptr, ptr %.sroa.sel, align 8
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i8 0, i64 20, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 4
  %i.bh = load ptr, ptr %.sroa.sel52.v.sroa.sel, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bi, ptr %.sroa.sel52.v.sroa.sel, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.i, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.noexc28 unwind label %.loopexit.split-lp

end_hunk_0
