Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbt_data?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN6icu_789HashtableD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN6icu_7823TransliterationRuleDataC1ER10UErrorCode = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7823TransliterationRuleDataC2ER10UErrorCode
@_ZN6icu_7823TransliterationRuleDataC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7823TransliterationRuleDataC2ERKS0_
@_ZN6icu_7823TransliterationRuleDataD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7823TransliterationRuleDataD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7823TransliterationRuleDataC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6icu_7822TransliterationRuleSetC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1056) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = load i32, ptr %1, align 4, !tbaa !16
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN6icu_789HashtableC2ER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.f = invoke ptr @uhash_init_78(ptr noundef nonnull %i.e, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !16
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %_ZN6icu_789HashtableC2ER10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %.noexc
  store ptr %i.e, ptr %i.b, align 8, !tbaa !14
  %i.i = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.e, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789HashtableC2ER10UErrorCode.exit unwind label %bb.d ; 0 uses

_ZN6icu_789HashtableC2ER10UErrorCode.exit.thread: ; preds = %.noexc, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr null, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 1, ptr %i.k, align 8, !tbaa !25
  br label %bb.g

_ZN6icu_789HashtableC2ER10UErrorCode.exit:        ; preds = %bb.c
  %.pre = load i32, ptr %1, align 4, !tbaa !16
  %i.l = icmp slt i32 %.pre, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 1, ptr %i.n, align 8, !tbaa !25
  br i1 %i.l, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #10
  br label %bb.h

bb.f:                                             ; preds = %_ZN6icu_789HashtableC2ER10UErrorCode.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.r = invoke noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.q, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit unwind label %bb.e ; 0 uses

_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit: ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i32 0, ptr %i.s, align 4, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_789HashtableC2ER10UErrorCode.exit.thread, %_ZN6icu_789HashtableC2ER10UErrorCode.exit, %_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  tail call void @_ZN6icu_7822TransliterationRuleSetD1Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.a) #10
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7822TransliterationRuleSetC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @uprv_deleteUObject_78(ptr noundef) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @uhash_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #11
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6icu_7822TransliterationRuleSetD1Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7823TransliterationRuleDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(1168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7822TransliterationRuleSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(1056) %i.d, ptr noundef nonnull align 8 dereferenceable(1056) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 5 uses
  store ptr null, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.h = invoke ptr @uhash_init_78(ptr noundef nonnull %i.g, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load i32, ptr %i.a, align 4, !tbaa !16
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  store ptr %i.g, ptr %i.f, align 8, !tbaa !14
  %i.k = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.g, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 1, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1162
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1162
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  store i16 %i.o, ptr %i.m, align 2, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1164 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1164
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  store i32 %i.r, ptr %i.p, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !16
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.t = invoke noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.s, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit unwind label %bb.g ; 0 uses

_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 -1, ptr %i.c, align 4, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1064
  br label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.k, %_ZN6icu_789Hashtable15setValueDeleterEPFvPvE.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = invoke noundef ptr @uhash_nextElement_78(ptr noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNK6icu_789Hashtable11nextElementERi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK6icu_789Hashtable11nextElementERi.exit:       ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_789Hashtable11nextElementERi.exit
  %i.x = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.x) #10
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.ah = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = invoke noundef ptr @uhash_put_78(ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef nonnull %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !33 ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ah) #10
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.k, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, %bb.n, %._crit_edge, %bb.u
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZNK6icu_789Hashtable11nextElementERi.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 6 uses
  store ptr null, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %.not36 = icmp eq ptr %i.an, null
  br i1 %.not36, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !26
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aq) #12
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !24
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge, label %.preheader48

.preheader48:                                     ; preds = %bb.o
  %i.at = load i32, ptr %i.p, align 4, !tbaa !26
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader48, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader48 ] ; 4 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !24 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !30
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %.loopexit.thread, label %bb.q

.loopexit.thread:                                 ; preds = %bb.p
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 7, ptr %i.b, align 4, !tbaa !16
  br label %.preheader

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bg = load i32, ptr %i.p, align 4, !tbaa !26
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !34

.loopexit.loopexit:                               ; preds = %bb.q
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader48, %bb.m
  %.ph = phi ptr [ %i.bc, %.loopexit.loopexit ], [ %i.ar, %.preheader48 ], [ null, %bb.m ]
  %.127.ph = phi i32 [ %i.bj, %.loopexit.loopexit ], [ 0, %.preheader48 ], [ 0, %bb.m ]
  %.pr = load i32, ptr %i.b, align 4, !tbaa !16
  %i.bk = icmp slt i32 %.pr, 1
  br i1 %i.bk, label %bb.u, label %.preheader

.preheader:                                       ; preds = %.loopexit.thread, %.loopexit
  %.12780 = phi i32 [ %i.bf, %.loopexit.thread ], [ %.127.ph, %.loopexit ] ; 2 uses
  %i.bl = phi ptr [ %i.bc, %.loopexit.thread ], [ %.ph, %.loopexit ]
  %i.bm = icmp sgt i32 %.12780, 0
  br i1 %i.bm, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader
  %i.bn = zext nneg i32 %.12780 to i64
  br label %.lr.ph61

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bo = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bl, %.preheader ]
  invoke void @uprv_free_78(ptr noundef %i.bo)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %bb.s
  %indvars.iv72 = phi i64 [ %i.bn, %.lr.ph61.preheader ], [ %indvars.iv.next73, %bb.s ] ; 2 uses
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 2 uses
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next73
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph61
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #10
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph61, %bb.r
  %i.bw = icmp samesign ugt i64 %indvars.iv72, 1
  br i1 %i.bw, label %.lr.ph61, label %._crit_edge.loopexit, !llvm.loop !35

bb.t:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.al, align 8, !tbaa !24
  br label %.critedge

bb.u:                                             ; preds = %.loopexit
  invoke void @_ZN6icu_7822TransliterationRuleSet7setDataEPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(1056) %i.d, ptr noundef nonnull %0)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %bb.d, %bb.o, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ak, %bb.l ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.f) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.ab, %bb.f ]
  call void @_ZN6icu_7822TransliterationRuleSetD1Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.d) #10
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN6icu_7822TransliterationRuleSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef nonnull align 8 dereferenceable(1056)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #5

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #1

declare void @_ZN6icu_7822TransliterationRuleSet7setDataEPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7823TransliterationRuleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1164 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.h = phi i32 [ %i.p, %bb.d ], [ %i.f, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #10
  %.pre = load i32, ptr %i.e, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.p = phi i32 [ %i.h, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  invoke void @uprv_free_78(ptr noundef %i.t)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6icu_789HashtableD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @uhash_close_78(ptr noundef nonnull %i.v)
          to label %_ZN6icu_789HashtableD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #11
  unreachable

_ZN6icu_789HashtableD2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7822TransliterationRuleSetD1Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.y) #10
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_7823TransliterationRuleData6lookupEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1162
  %i.b = load i16, ptr %i.a, align 2, !tbaa !27
  %i.c = zext i16 %i.b to i32
  %i.d = sub nsw i32 %1, %i.c                     ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %i.d, %i.g
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1162
  %i.b = load i16, ptr %i.a, align 2, !tbaa !27
  %i.c = zext i16 %i.b to i32
  %i.d = sub nsw i32 %1, %i.c                     ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %i.d, %i.g
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i, label %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit, label %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit.thread

_ZNK6icu_7823TransliterationRuleData6lookupEi.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit.thread

_ZNK6icu_7823TransliterationRuleData6lookupEi.exit.thread: ; preds = %bb.a, %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %_ZNK6icu_7823TransliterationRuleData6lookupEi.exit ], [ null, %bb.a ]
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7823TransliterationRuleData14lookupReplacerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1162
  %i.b = load i16, ptr %i.a, align 2, !tbaa !27
  %i.c = zext i16 %i.b to i32
  %i.d = sub nsw i32 %1, %i.c                     ; 3 uses
end_hunk_0
