Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb19ConversionExceptionC2IJRiS2_S2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJiiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !235    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6duckdb4Date16ParseDoubleDigitEPKcmRmRi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !245    ; 4 uses
  %i.b = icmp ult i64 %i.a, %1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !273
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.a, 1                      ; 3 uses
  store i64 %i.g, ptr %2, align 8, !tbaa !245
  %i.h = load i8, ptr %i.c, align 1, !tbaa !273
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  store i32 %i.j, ptr %3, align 4, !tbaa !165
  %i.k = icmp ult i64 %i.g, %1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !273
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw i64 %i.a, 2
  store i64 %i.p, ptr %2, align 8, !tbaa !245
  %i.q = load i8, ptr %i.l, align 1, !tbaa !273
  %i.r = sext i8 %i.q to i32
  %i.s = mul nsw i32 %i.j, 10
  %i.t = add nsw i32 %i.s, -48
  %i.u = add nsw i32 %i.t, %i.r
  store i32 %i.u, ptr %3, align 4, !tbaa !165
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6duckdb4Date21TryConvertDateSpecialEPKcmRmRKNS_11DateSpecialE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !245    ; 5 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !1594   ; 3 uses
  %i.c = icmp ult i64 %i.a, %1
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.01832 = phi ptr [ %i.j, %bb.c ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.01931 = phi i64 [ %i.k, %bb.c ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.01832, align 1, !tbaa !273 ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.01931
  %i.g = load i8, ptr %i.f, align 1, !tbaa !273   ; 3 uses
  %i.h = add i8 %i.g, -65
  %or.cond.i = icmp ult i8 %i.h, 26
  %i.i = or disjoint i8 %i.g, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.i, i8 %i.g
  %.not24 = icmp eq i8 %spec.select.i, %i.e
  br i1 %.not24, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.01832, i64 1
  %i.k = add i64 %.01931, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1592

.critedge:                                        ; preds = %bb.c, %bb.a
  %.019.lcssa = phi i64 [ %i.a, %bb.a ], [ %1, %bb.c ] ; 3 uses
  %.018.lcssa = phi ptr [ %i.b, %bb.a ], [ %scevgep, %bb.c ]
  %.pr = load i8, ptr %.018.lcssa, align 1, !tbaa !273
  %.not22 = icmp eq i8 %.pr, 0
  br i1 %.not22, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.l = sub nuw i64 %.019.lcssa, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1595
  %.not23 = icmp eq i64 %i.l, %i.n
  br i1 %.not23, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %.lr.ph, %bb.d, %.critedge
  %.01930 = phi i64 [ %.019.lcssa, %.critedge ], [ %.019.lcssa, %bb.d ], [ %.01931, %.lr.ph ]
  store i64 %.01930, ptr %2, align 8, !tbaa !245
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %.critedge.thread
  %.2 = phi i1 [ false, %bb.d ], [ true, %.critedge.thread ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext range(i8 0, 3) i8 @_ZN6duckdb4Date14TryConvertDateEPKcmRmRNS_6date_tERbb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, i1 noundef zeroext %5) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i8 0, ptr %4, align 1, !tbaa !375
  store i64 0, ptr %2, align 8, !tbaa !245
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.an, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i32 0, ptr %i.a, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 -1, ptr %i.b, align 4, !tbaa !165
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.d = phi i64 [ %i.g, %bb.b ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !273   ; 3 uses
  switch i8 %i.f, label %bb.c [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.g, ptr %2, align 8, !tbaa !245
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1596

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.f, 45                      ; 4 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i64 %i.d, 1                      ; 4 uses
  store i64 %i.i, ptr %2, align 8, !tbaa !245
  %.not129 = icmp ult i64 %i.i, %1
  br i1 %.not129, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !273
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.j = phi i8 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ] ; 7 uses
  %.promoted186 = phi i64 [ %i.i, %._crit_edge ], [ %i.d, %bb.c ] ; 19 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  %i.m = icmp ult i64 %.promoted186, %1           ; 2 uses
  br i1 %i.l, label %.preheader167, label %bb.f

.preheader167:                                    ; preds = %bb.e
  br i1 %i.m, label %.lr.ph189.preheader, label %.critedge

.lr.ph189.preheader:                              ; preds = %.preheader167
  %i.n = sub nuw i64 %1, %.promoted186
  br label %.lr.ph189

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %.lr.ph.preheader.i, label %.critedge.i135

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.o = sub nuw i64 %1, %.promoted186
  %i.p = add i64 %.promoted186, 8                 ; 2 uses
  %i.q = add i8 %i.j, -65
  %or.cond.i.i = icmp ult i8 %i.q, 26
  %i.r = or disjoint i8 %i.j, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.r, i8 %i.j
  %.not24.i = icmp eq i8 %spec.select.i.i, 105
  br i1 %.not24.i, label %bb.g, label %.lr.ph.preheader.i144

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.s = add nuw i64 %.promoted186, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !273   ; 3 uses
  %i.v = add i8 %i.u, -65
  %or.cond.i.i.1 = icmp ult i8 %i.v, 26
  %i.w = or disjoint i8 %i.u, 32
  %spec.select.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.w, i8 %i.u
  %.not24.i.1 = icmp eq i8 %spec.select.i.i.1, 110
  br i1 %.not24.i.1, label %bb.h, label %.lr.ph.preheader.i144

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.x = add i64 %.promoted186, 2                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.x, %1
  br i1 %exitcond.not.i.1, label %.critedge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !273   ; 3 uses
  %i.aa = add i8 %i.z, -65
  %or.cond.i.i.2 = icmp ult i8 %i.aa, 26
  %i.ab = or disjoint i8 %i.z, 32
  %spec.select.i.i.2 = select i1 %or.cond.i.i.2, i8 %i.ab, i8 %i.z
  %.not24.i.2 = icmp eq i8 %spec.select.i.i.2, 102
  br i1 %.not24.i.2, label %bb.i, label %.lr.ph.preheader.i144

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.ac = add i64 %.promoted186, 3                ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.ac, %1
  br i1 %exitcond.not.i.2, label %.critedge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !273 ; 3 uses
  %i.af = add i8 %i.ae, -65
  %or.cond.i.i.3 = icmp ult i8 %i.af, 26
  %i.ag = or disjoint i8 %i.ae, 32
  %spec.select.i.i.3 = select i1 %or.cond.i.i.3, i8 %i.ag, i8 %i.ae
  %.not24.i.3 = icmp eq i8 %spec.select.i.i.3, 105
  br i1 %.not24.i.3, label %bb.j, label %.lr.ph.preheader.i144

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.ah = add i64 %.promoted186, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not.i.3, label %.critedge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !273 ; 3 uses
  %i.ak = add i8 %i.aj, -65
  %or.cond.i.i.4 = icmp ult i8 %i.ak, 26
  %i.al = or disjoint i8 %i.aj, 32
  %spec.select.i.i.4 = select i1 %or.cond.i.i.4, i8 %i.al, i8 %i.aj
  %.not24.i.4 = icmp eq i8 %spec.select.i.i.4, 110
  br i1 %.not24.i.4, label %bb.k, label %.lr.ph.preheader.i144

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.am = add i64 %.promoted186, 5                ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.am, %1
  br i1 %exitcond.not.i.4, label %.critedge.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !273 ; 3 uses
  %i.ap = add i8 %i.ao, -65
  %or.cond.i.i.5 = icmp ult i8 %i.ap, 26
  %i.aq = or disjoint i8 %i.ao, 32
  %spec.select.i.i.5 = select i1 %or.cond.i.i.5, i8 %i.aq, i8 %i.ao
  %.not24.i.5 = icmp eq i8 %spec.select.i.i.5, 105
  br i1 %.not24.i.5, label %bb.l, label %.lr.ph.preheader.i144

bb.l:                                             ; preds = %.lr.ph.i.5
  %i.ar = add i64 %.promoted186, 6                ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not.i.5, label %.critedge.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !273 ; 3 uses
  %i.au = add i8 %i.at, -65
  %or.cond.i.i.6 = icmp ult i8 %i.au, 26
  %i.av = or disjoint i8 %i.at, 32
  %spec.select.i.i.6 = select i1 %or.cond.i.i.6, i8 %i.av, i8 %i.at
  %.not24.i.6 = icmp eq i8 %spec.select.i.i.6, 116
  br i1 %.not24.i.6, label %bb.m, label %.lr.ph.preheader.i144

bb.m:                                             ; preds = %.lr.ph.i.6
  %i.aw = add i64 %.promoted186, 7                ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %i.aw, %1
  br i1 %exitcond.not.i.6, label %.critedge.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !273 ; 3 uses
  %i.az = add i8 %i.ay, -65
  %or.cond.i.i.7 = icmp ult i8 %i.az, 26
  %i.ba = or disjoint i8 %i.ay, 32
  %spec.select.i.i.7 = select i1 %or.cond.i.i.7, i8 %i.ba, i8 %i.ay
  %.not24.i.7 = icmp eq i8 %spec.select.i.i.7, 121
  br i1 %.not24.i.7, label %bb.n, label %.lr.ph.preheader.i144

bb.n:                                             ; preds = %.lr.ph.i.7
  %exitcond.not.i.7 = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i.7, label %.critedge.i, label %.loopexit170

.critedge.i:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  switch i64 %i.o, label %.lr.ph.preheader.i144 [
    i64 8, label %.loopexit170
    i64 3, label %.loopexit170
  ]

.loopexit170:                                     ; preds = %.critedge.i, %.critedge.i, %bb.n
  %.01930.i = phi i64 [ %1, %.critedge.i ], [ %i.p, %bb.n ], [ %1, %.critedge.i ] ; 2 uses
  store i64 %.01930.i, ptr %2, align 8, !tbaa !245
  %spec.select165 = select i1 %i.h, i32 -2147483647, i32 2147483647
  br label %bb.t

.lr.ph.preheader.i144:                            ; preds = %.critedge.i, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.bb = sub nuw i64 %1, %.promoted186           ; 2 uses
  %scevgep.i145 = getelementptr i8, ptr @.str.34, i64 %i.bb
  %i.bc = add i64 %.promoted186, 5                ; 2 uses
  %i.bd = add i8 %i.j, -65
  %or.cond.i.i150 = icmp ult i8 %i.bd, 26
  %i.be = or disjoint i8 %i.j, 32
  %spec.select.i.i151 = select i1 %or.cond.i.i150, i8 %i.be, i8 %i.j
  %.not24.i152 = icmp eq i8 %spec.select.i.i151, 101
  br i1 %.not24.i152, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph.preheader.i144
  %i.bf = add nuw i64 %.promoted186, 1            ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i153, label %.critedge.i135.loopexit, label %.lr.ph.i146.1

.lr.ph.i146.1:                                    ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !273 ; 3 uses
  %i.bi = add i8 %i.bh, -65
  %or.cond.i.i150.1 = icmp ult i8 %i.bi, 26
  %i.bj = or disjoint i8 %i.bh, 32
  %spec.select.i.i151.1 = select i1 %or.cond.i.i150.1, i8 %i.bj, i8 %i.bh
  %.not24.i152.1 = icmp eq i8 %spec.select.i.i151.1, 112
  br i1 %.not24.i152.1, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph.i146.1
  %i.bk = add i64 %.promoted186, 2                ; 2 uses
  %exitcond.not.i153.1 = icmp eq i64 %i.bk, %1
  br i1 %exitcond.not.i153.1, label %.critedge.i135.loopexit, label %.lr.ph.i146.2

.lr.ph.i146.2:                                    ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !273 ; 3 uses
  %i.bn = add i8 %i.bm, -65
  %or.cond.i.i150.2 = icmp ult i8 %i.bn, 26
  %i.bo = or disjoint i8 %i.bm, 32
  %spec.select.i.i151.2 = select i1 %or.cond.i.i150.2, i8 %i.bo, i8 %i.bm
  %.not24.i152.2 = icmp eq i8 %spec.select.i.i151.2, 111
  br i1 %.not24.i152.2, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph.i146.2
  %i.bp = add i64 %.promoted186, 3                ; 2 uses
  %exitcond.not.i153.2 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i153.2, label %.critedge.i135.loopexit, label %.lr.ph.i146.3

.lr.ph.i146.3:                                    ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !273 ; 3 uses
  %i.bs = add i8 %i.br, -65
  %or.cond.i.i150.3 = icmp ult i8 %i.bs, 26
  %i.bt = or disjoint i8 %i.br, 32
  %spec.select.i.i151.3 = select i1 %or.cond.i.i150.3, i8 %i.bt, i8 %i.br
  %.not24.i152.3 = icmp eq i8 %spec.select.i.i151.3, 99
  br i1 %.not24.i152.3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph.i146.3
  %i.bu = add i64 %.promoted186, 4                ; 2 uses
  %exitcond.not.i153.3 = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not.i153.3, label %.critedge.i135.loopexit, label %.lr.ph.i146.4

.lr.ph.i146.4:                                    ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !273 ; 3 uses
  %i.bx = add i8 %i.bw, -65
  %or.cond.i.i150.4 = icmp ult i8 %i.bx, 26
  %i.by = or disjoint i8 %i.bw, 32
  %spec.select.i.i151.4 = select i1 %or.cond.i.i150.4, i8 %i.by, i8 %i.bw
  %.not24.i152.4 = icmp eq i8 %spec.select.i.i151.4, 104
  br i1 %.not24.i152.4, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph.i146.4
  %exitcond.not.i153.4 = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not.i153.4, label %.critedge.i135.loopexit, label %.loopexit

.critedge.i135.loopexit:                          ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bz = icmp eq i64 %i.bb, 5
  br label %.critedge.i135

.critedge.i135:                                   ; preds = %bb.f, %.critedge.i135.loopexit
  %.pre-phi216 = phi i1 [ %i.bz, %.critedge.i135.loopexit ], [ false, %bb.f ]
  %.019.lcssa.i136 = phi i64 [ %1, %.critedge.i135.loopexit ], [ %.promoted186, %bb.f ]
  %.018.lcssa.i137 = phi ptr [ %scevgep.i145, %.critedge.i135.loopexit ], [ @.str.34, %bb.f ]
  %.pr.i138 = load i8, ptr %.018.lcssa.i137, align 1, !tbaa !273
  %.not22.i139 = icmp eq i8 %.pr.i138, 0
  %or.cond166 = select i1 %.not22.i139, i1 true, i1 %.pre-phi216
  br i1 %or.cond166, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %bb.s, %.critedge.i135
  %.01930.i143 = phi i64 [ %.019.lcssa.i136, %.critedge.i135 ], [ %i.bc, %bb.s ] ; 2 uses
  store i64 %.01930.i143, ptr %2, align 8, !tbaa !245
  br label %bb.t

bb.t:                                             ; preds = %.loopexit170, %.loopexit
  %.promoted182 = phi i64 [ %.01930.i143, %.loopexit ], [ %.01930.i, %.loopexit170 ] ; 3 uses
  %storemerge = phi i32 [ 0, %.loopexit ], [ %spec.select165, %.loopexit170 ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !165
  %i.ca = icmp ult i64 %.promoted182, %1
  br i1 %i.ca, label %.lr.ph183, label %.critedge2

.lr.ph183:                                        ; preds = %bb.t, %bb.u
  %i.cb = phi i64 [ %i.ce, %bb.u ], [ %.promoted182, %bb.t ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !273
  switch i8 %i.cd, label %.critedge2 [
    i8 32, label %bb.u
    i8 12, label %bb.u
    i8 11, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %2, align 8, !tbaa !245
  %exitcond210.not = icmp eq i64 %i.ce, %1
  br i1 %exitcond210.not, label %.critedge2, label %.lr.ph183, !llvm.loop !1597

.critedge2:                                       ; preds = %bb.u, %.lr.ph183, %bb.t
  %.lcssa = phi i64 [ %.promoted182, %bb.t ], [ %i.cb, %.lr.ph183 ], [ %1, %bb.u ]
  store i8 1, ptr %4, align 1, !tbaa !375
  %i.cf = icmp ne i64 %.lcssa, %1
  %i.cg = zext i1 %i.cf to i8
  br label %.critedge

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %bb.w
  %.0188 = phi i64 [ %i.cr, %bb.w ], [ 0, %.lr.ph189.preheader ] ; 2 uses
  %.0117187 = phi i32 [ %i.cq, %bb.w ], [ 0, %.lr.ph189.preheader ] ; 5 uses
  %i.ch = phi i64 [ %i.cs, %bb.w ], [ %.promoted186, %.lr.ph189.preheader ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !273 ; 2 uses
  %i.ck = add i8 %i.cj, -48
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.v, label %.critedge4

bb.v:                                             ; preds = %.lr.ph189
  %i.cm = icmp sgt i32 %.0117187, 99999999
  br i1 %i.cm, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = zext nneg i8 %i.cj to i32
  %i.co = mul nsw i32 %.0117187, 10
  %i.cp = add i32 %i.co, -48
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = add i64 %.0188, 1                       ; 2 uses
  %i.cs = add nuw i64 %i.ch, 1                    ; 2 uses
  store i64 %i.cs, ptr %2, align 8, !tbaa !245
  %exitcond211.not = icmp eq i64 %i.cr, %i.n
  br i1 %exitcond211.not, label %.critedge, label %.lr.ph189, !llvm.loop !1598

.critedge4:                                       ; preds = %.lr.ph189
  %i.ct = icmp ult i64 %.0188, 2
  %or.cond = and i1 %5, %i.ct
  br i1 %or.cond, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.critedge4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cv = sub nsw i32 0, %.0117187
  %spec.select = select i1 %i.h, i32 %i.cv, i32 %.0117187 ; 7 uses
  %i.cw = add nuw i64 %i.ch, 1
  store i64 %i.cw, ptr %2, align 8, !tbaa !245
  %i.cx = load i8, ptr %i.cu, align 1, !tbaa !273 ; 2 uses
  switch i8 %i.cx, label %.critedge [
    i8 92, label %bb.y
    i8 47, label %bb.y
    i8 45, label %bb.y
    i8 32, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.cy = call noundef zeroext i1 @_ZN6duckdb4Date16ParseDoubleDigitEPKcmRmRi(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.cy, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.cz = load i64, ptr %2, align 8, !tbaa !245   ; 3 uses
  %.not131 = icmp ult i64 %i.cz, %1
  br i1 %.not131, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.da = add nuw i64 %i.cz, 1                    ; 2 uses
  store i64 %i.da, ptr %2, align 8, !tbaa !245
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !273
  %.not132 = icmp eq i8 %i.dc, %i.cx
  %.not133 = icmp ult i64 %i.da, %1
  %or.cond134 = select i1 %.not132, i1 %.not133, i1 false
  br i1 %or.cond134, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.dd = call noundef zeroext i1 @_ZN6duckdb4Date16ParseDoubleDigitEPKcmRmRi(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.dd, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.de = load i64, ptr %2, align 8, !tbaa !245   ; 9 uses
  %i.df = sub i64 %1, %i.de
end_hunk_0
