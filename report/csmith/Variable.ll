Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8Variable31is_partial_volatile_after_derefEi:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125  ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !206

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.09 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %._crit_edge ], [ false, %bb.c ]
  ret i1 %.09
}

declare noundef zeroext i1 @_ZNK12CVQualifiers23is_volatile_after_derefEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4Type24is_volatile_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK8Variable14get_collectiveEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(200) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8Variable14is_array_fieldEv.exit, label %tailrecurse.i

_ZNK8Variable14is_array_fieldEv.exit:             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.z

.preheader:                                       ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %bb.b
  %.pn29 = phi ptr [ %.024, %bb.b ], [ %0, %_ZNK8Variable14is_array_fieldEv.exit ]
  %.024.in = getelementptr inbounds nuw i8, ptr %.pn29, i64 88
  %.024 = load ptr, ptr %.024.in, align 8, !tbaa !89 ; 8 uses
  %.not = icmp eq ptr %.024, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.024, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97, !range !98, !noundef !99
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %.preheader, !llvm.loop !207

.critedge:                                        ; preds = %.preheader, %bb.b
  %i.i = load ptr, ptr %.024, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(200) %.024)
  %i.m = icmp eq ptr %i.l, %.024
  br i1 %i.m, label %bb.z, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.n = load ptr, ptr %.024, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(200) %.024) ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34   ; 5 uses
  %.not78 = icmp eq i64 %i.t, 0
  br i1 %.not78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !41
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.e, %bb.d
  %.1.i.i.in = phi i64 [ %i.t, %bb.d ], [ %.1.i.i, %bb.e ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.1.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %memchr.char0cmp.not = icmp eq i8 %i.w, 93
  br i1 %memchr.char0cmp.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e, %bb.c
  %.012.i.i = phi i64 [ -1, %bb.c ], [ -1, %bb.e ], [ %.1.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.x = icmp ugt i64 %.012.i.i, %i.t
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i64 noundef %.012.i.i, i64 noundef %i.t) #26, !noalias !215
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !31, !alias.scope !215
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !41, !noalias !215
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.012.i.i ; 2 uses
  %i.ab = sub nuw i64 %i.t, %.012.i.i             ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %.noexc10.i.i, label %bb.h

.noexc10.i.i:                                     ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !93

.noexc11.i.i:                                     ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24 ; 2 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !41, !alias.scope !215
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !35, !alias.scope !215
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ah = phi ptr [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.ab, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !35
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.aj, align 8, !tbaa !34, !alias.scope !215
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.ak, align 1, !tbaa !35
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !34 ; 3 uses
  %.not.i.i30.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.i30.not, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !41    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %i.ao = ptrtoint ptr %i.an to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32:   ; preds = %bb.k, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ %i.at, %bb.k ]
  %.02740.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.ar, %bb.k ]
  %i.ap = call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #25 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.ap, null
  br i1 %.not34.i.i, label %._crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32
  %lhsc = load i8, ptr %i.ap, align 1
  %i.aq = icmp eq i8 %lhsc, 46
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.ao, %i.as                    ; 2 uses
  %.not33.i.i = icmp eq i64 %i.at, 0
  br i1 %.not33.i.i, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32, !llvm.loop !6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %.not27104 = icmp eq i64 %i.aw, -1
  br i1 %.not27104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.022106 = phi i64 [ %i.aw, %.lr.ph ], [ %.1.i.i3476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.023105 = phi ptr [ %i.q, %.lr.ph ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.az = add nuw i64 %.022106, 1                 ; 3 uses
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !34 ; 7 uses
  %.not.i.i33 = icmp ult i64 %i.az, %i.ba
  br i1 %.not.i.i33, label %.lr.ph.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46.thread

.lr.ph.i.i36:                                     ; preds = %bb.l
  %i.bb = load ptr, ptr %1, align 8, !tbaa !41    ; 4 uses
  %i.bc = sub nuw i64 %i.ba, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  %i.bf = ptrtoint ptr %i.bd to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41:   ; preds = %bb.m, %.lr.ph.i.i36
  %.041.i.i37 = phi i64 [ %i.bc, %.lr.ph.i.i36 ], [ %i.bo, %bb.m ]
  %.02740.i.i38 = phi ptr [ %i.be, %.lr.ph.i.i36 ], [ %i.bm, %bb.m ]
  %i.bg = call ptr @memchr(ptr noundef nonnull %.02740.i.i38, i32 noundef 46, i64 noundef %.041.i.i37) #25 ; 4 uses
  %.not34.i.i42 = icmp eq ptr %i.bg, null
  br i1 %.not34.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41
  %lhsc79 = load i8, ptr %i.bg, align 1
  %i.bh = icmp eq i8 %lhsc79, 46
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46, label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bf, %i.bn                    ; 2 uses
  %.not33.i.i45 = icmp eq i64 %i.bo, 0
  br i1 %.not33.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41, !llvm.loop !6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46.thread: ; preds = %bb.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46
  %i.bp = add i64 %.022106, 2                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bq = icmp ugt i64 %i.bp, %i.ba
  br i1 %i.bq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47

.invoke:                                          ; preds = %bb.n
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i64 noundef %i.bp, i64 noundef %i.ba) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47: ; preds = %bb.n
  store ptr %i.ax, ptr %2, align 8, !tbaa !31, !alias.scope !216
  %i.br = load ptr, ptr %1, align 8, !tbaa !41, !noalias !216
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp ; 2 uses
  %i.bt = sub nuw i64 %i.ba, %i.bp                ; 8 uses
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %bb.o, label %._crit_edge.i.i.i48

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47
  %i.bv = icmp slt i64 %i.bt, 0
  br i1 %i.bv, label %.noexc10.i.i51.invoke, label %bb.p

.noexc10.i.i51.invoke:                            ; preds = %bb.s, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
          to label %.noexc10.i.i51.cont unwind label %.loopexit.split-lp

.noexc10.i.i51.cont:                              ; preds = %.noexc10.i.i51.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bw = add nuw i64 %i.bt, 1                    ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %.noexc11.i.i50.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i49, !prof !93

.noexc11.i.i50.invoke:                            ; preds = %bb.t, %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc11.i.i50.cont unwind label %.loopexit.split-lp

.noexc11.i.i50.cont:                              ; preds = %.noexc11.i.i50.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i49: ; preds = %bb.p
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24
          to label %.noexc54 unwind label %.loopexit ; 2 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i49
  store ptr %i.by, ptr %2, align 8, !tbaa !41, !alias.scope !216
  store i64 %i.bt, ptr %i.ax, align 8, !tbaa !35, !alias.scope !216
  br label %._crit_edge.i.i.i48

._crit_edge.i.i.i48:                              ; preds = %.noexc54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47
  %i.bz = phi ptr [ %i.by, %.noexc54 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47 ] ; 3 uses
  switch i64 %i.bt, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i48
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !35
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55

bb.r:                                             ; preds = %._crit_edge.i.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55: ; preds = %._crit_edge.i.i.i48, %bb.q, %bb.r
  store i64 %i.bt, ptr %i.ay, align 8, !tbaa !34, !alias.scope !216
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt
  store i8 0, ptr %i.cb, align 1, !tbaa !35
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit46
  %3 = add nuw i64 %.022106, 2                    ; 2 uses
  %reass.sub = sub i64 %i.bk, %.022106
  %i.cc = add i64 %reass.sub, -2
  store ptr %i.ax, ptr %2, align 8, !tbaa !31, !alias.scope !217
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %3 ; 2 uses
  %i.ce = sub nuw i64 %i.ba, %3
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce) ; 8 uses
  %i.cf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cf, label %bb.s, label %._crit_edge.i.i.i57

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56
  %i.cg = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.cg, label %.noexc10.i.i51.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %.noexc11.i.i50.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58, !prof !93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58: ; preds = %bb.t
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #24
          to label %.noexc64 unwind label %.loopexit ; 2 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58
  store ptr %i.cj, ptr %2, align 8, !tbaa !41, !alias.scope !217
  store i64 %spec.select.i.i.i, ptr %i.ax, align 8, !tbaa !35, !alias.scope !217
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56
  %i.ck = phi ptr [ %i.cj, %.noexc64 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56 ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i57
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !35
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65

bb.v:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %i.cd, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65: ; preds = %._crit_edge.i.i.i57, %bb.u, %bb.v
  store i64 %spec.select.i.i.i, ptr %i.ay, align 8, !tbaa !34, !alias.scope !217
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %spec.select.i.i.i
  store i8 0, ptr %i.cm, align 1, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55
  %.1.i.i3476 = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65 ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55 ] ; 2 uses
  %i.cn = invoke noundef i32 @_ZN11StringUtils7str2intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.023105, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !91
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ax
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.cv = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not27 = icmp eq i64 %.1.i.i3476, -1
  br i1 %.not27, label %._crit_edge, label %bb.l, !llvm.loop !214

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

.loopexit.split-lp:                               ; preds = %.noexc11.i.i50.invoke, %.noexc10.i.i51.invoke, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ax
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.y
  %i.da = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.y, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %.pn = phi { ptr, i32 } [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dc = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.y
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.de = load i64, ptr %i.y, align 8, !tbaa !35
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.023.lcssa = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32 ], [ %i.q, %bb.k ]
  %i.dg = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.y
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %._crit_edge
  %i.di = load i64, ptr %i.y, align 8, !tbaa !35
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.critedge
  %.1 = phi ptr [ %0, %.critedge ], [ %.023.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %0, %_ZNK8Variable14is_array_fieldEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK8Variable13get_named_varEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !218

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %.0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(200) %.0)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK8Variable9get_arrayERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8Variable14is_array_fieldEv.exit, label %tailrecurse.i

_ZNK8Variable14is_array_fieldEv.exit:             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.q

.preheader:                                       ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %bb.b
  %.pn = phi ptr [ %.09, %bb.b ], [ %0, %_ZNK8Variable14is_array_fieldEv.exit ]
  %.09.in = getelementptr inbounds nuw i8, ptr %.pn, i64 88
  %.09 = load ptr, ptr %.09.in, align 8, !tbaa !89 ; 4 uses
  %.not = icmp eq ptr %.09, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97, !range !98, !noundef !99
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %.preheader, !llvm.loop !219

.critedge:                                        ; preds = %.preheader, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 8 uses
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d, %bb.c
  %.1.i.i.in = phi i64 [ %i.k, %bb.c ], [ %.1.i.i, %bb.d ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35
  %memchr.char0cmp.not = icmp eq i8 %i.n, 93
  br i1 %memchr.char0cmp.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %.critedge
  %i.o = phi i64 [ 0, %.critedge ], [ 0, %bb.d ], [ %.1.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 3 uses
  %.not.i.i10 = icmp ult i64 %i.o, %i.k
  br i1 %.not.i.i10, label %.lr.ph.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.q = sub nuw i64 %i.k, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %i.t = ptrtoint ptr %i.r to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12:   ; preds = %bb.f, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.ab, %bb.f ]
  %.02740.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.z, %bb.f ]
  %i.u = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #25 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.u, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12
  %lhsc = load i8, ptr %i.u, align 1
  %i.v = icmp eq i8 %lhsc, 46
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = sub i64 %i.w, %i.x
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.t, %i.aa                     ; 2 uses
  %.not33.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12, !llvm.loop !6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, %bb.e
  %.1.i.i11 = phi i64 [ %i.y, %bb.e ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ], [ -1, %bb.f ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ac = icmp ugt i64 %.1.i.i11, %i.k
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i64 noundef %.1.i.i11, i64 noundef %i.k) #26, !noalias !222
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !31, !alias.scope !222
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !41, !noalias !222
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i.i11 ; 2 uses
  %i.ag = sub nuw i64 %i.k, %.1.i.i11             ; 8 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %.noexc10.i.i, label %bb.i

.noexc10.i.i:                                     ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !93

.noexc11.i.i:                                     ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.i
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #24 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !41, !alias.scope !222
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !35, !alias.scope !222
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.am = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.ag, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.an = load i8, ptr %i.af, align 1, !tbaa !35
  store i8 %i.an, ptr %i.am, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !34, !alias.scope !222
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  %i.aq = load ptr, ptr %1, align 8, !tbaa !41    ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  %i.at = load ptr, ptr %2, align 8, !tbaa !41    ; 5 uses
end_hunk_0
