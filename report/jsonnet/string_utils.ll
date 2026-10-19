Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/string_utils?download=true
inline.NumInlined: 345
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7jsonnet8internal22jsonnet_string_unparseERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb:bb.a
  %i.ap = shl nuw nsw i64 %i.am, 1                ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ad, %i.ap
  br i1 %i.aq, label %bb.l, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34

bb.l:                                             ; preds = %bb.k
  %spec.store.select.i.i41 = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i35 = phi i64 [ %spec.store.select.i.i41, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ar = shl nuw nsw i64 %.0.i35, 2
  %i.as = add nuw nsw i64 %i.ar, 4
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #19
          to label %.noexc44 unwind label %bb.t   ; 4 uses

.noexc44:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34
  switch i64 %i.ac, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %.noexc44
  %i.au = load i32, ptr %i.ab, align 4, !tbaa !14
  store i32 %i.au, ptr %i.at, align 4, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38

bb.n:                                             ; preds = %.noexc44
  %i.av = shl nuw nsw i64 %i.ac, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ab, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38: ; preds = %.noexc44, %bb.m, %bb.n
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i40, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i39

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i40: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38
  %i.aw = icmp samesign ult i64 %i.ac, 4
  call void @llvm.assume(i1 %i.aw)
  br label %.noexc16

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i39: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i38
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ay = shl i64 %i.ax, 2
  %i.az = add i64 %i.ay, 4
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.az) #18
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i39, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i40
  store ptr %i.at, ptr %3, align 8, !tbaa !18
  store i64 %.0.i35, ptr %i.a, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %.noexc16, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13.thread
  %i.ba = phi ptr [ %i.at, %.noexc16 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13.thread ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ac
  store i32 %i.c, ptr %i.bb, align 4, !tbaa !14
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ad
  store i32 0, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !12, !alias.scope !30
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2            ; 3 uses
  %i.be = icmp ugt i64 %i.ad, 3
  br i1 %i.be, label %bb.p, label %._crit_edge.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.bf, label %.invoke, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.p
  %i.bg = add nuw nsw i64 %.idx.i.i, 4
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19
          to label %.noexc19 unwind label %bb.t   ; 2 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.bh, ptr %0, align 8, !tbaa !18, !alias.scope !30
  store i64 %i.ad, ptr %i.bd, align 8, !tbaa !19, !alias.scope !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread, %.noexc19, %bb.o
  %.idx.i.i63 = phi i64 [ %.idx.i.i, %.noexc19 ], [ %.idx.i.i, %bb.o ], [ %.idx.i.i62, %.thread ] ; 2 uses
  %i.bi = phi ptr [ %i.ba, %.noexc19 ], [ %i.ba, %bb.o ], [ %i.ab, %.thread ] ; 4 uses
  %.pre8.i.i.i = phi ptr [ %i.bh, %.noexc19 ], [ %i.bd, %bb.o ], [ %i.aj, %.thread ] ; 3 uses
  switch i64 %i.ad, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  store i32 %i.bj, ptr %.pre8.i.i.i, align 4, !tbaa !14
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr nonnull align 4 %i.bi, i64 %.idx.i.i63, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.bk, align 8, !tbaa !17, !alias.scope !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i63
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  %i.bm = icmp eq ptr %i.bi, %i.a
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i21, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i21: ; preds = %bb.s
  %i.bn = icmp samesign ult i64 %i.ad, 4
  call void @llvm.assume(i1 %i.bn)
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.s
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !19
  %i.bp = shl i64 %i.bo, 2
  %i.bq = add i64 %i.bp, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bq) #18
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

_ZN7jsonnet8internal13UStringStreamD2Ev.exit:     ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i21, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.t:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24

bb.v:                                             ; preds = %bb.h, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.by = shl i64 %i.bx, 2
  %i.bz = add i64 %i.by, 4
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i22, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i22 ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24, %bb.t
  %.pn8 = phi { ptr, i32 } [ %i.br, %bb.t ], [ %.pn, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit24 ]
  %i.ca = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i25: ; preds = %bb.w
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19
  %i.cd = shl i64 %i.cc, 2
  %i.ce = add i64 %i.cd, 4
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit27

_ZN7jsonnet8internal13UStringStreamD2Ev.exit27:   ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet8internal21jsonnet_string_escapeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.jsonnet::internal::UStringStream", align 8 ; 40 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 30 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i32 0, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread266, label %.lr.ph

.thread266:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !17, !alias.scope !45
  store i32 0, ptr %i.e, align 8, !tbaa !14
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = select i1 %2, ptr @.str.2, ptr @.str.3
  %wcslen.i.i.i34 = select i1 %2, i64 2, i64 1    ; 4 uses
  %i.h = shl nuw nsw i64 %wcslen.i.i.i34, 2
  %i.i = select i1 %2, ptr @.str, ptr @.str.1
  %wcslen.i.i.i = select i1 %2, i64 1, i64 2      ; 4 uses
  %i.j = shl nuw nsw i64 %wcslen.i.i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.e

._crit_edge:                                      ; preds = %bb.ce
  %.pre215 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !45 ; 4 uses
  %.pre216 = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !45 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !12, !alias.scope !45
  %.idx.i.i = shl nuw nsw i64 %.pre216, 2         ; 3 uses
  %i.ag = icmp ugt i64 %.pre216, 3
  br i1 %i.ag, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %._crit_edge
  %i.ah = icmp ugt i64 %.pre216, 1152921504606846975
  br i1 %i.ah, label %.invoke, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.idx.i.i, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #19
          to label %.noexc31 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.aj, ptr %0, align 8, !tbaa !18, !alias.scope !45
  store i64 %.pre216, ptr %i.af, align 8, !tbaa !19, !alias.scope !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc31, %._crit_edge
  %.pre8.i.i.i = phi ptr [ %i.aj, %.noexc31 ], [ %i.af, %._crit_edge ] ; 3 uses
  switch i64 %.pre216, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.cf
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i32, ptr %.pre215, align 4, !tbaa !14
  store i32 %i.ak, ptr %.pre8.i.i.i, align 4, !tbaa !14
  br label %bb.cf

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %.pre215, i64 %.idx.i.i, i1 false)
  br label %bb.cf

bb.e:                                             ; preds = %.lr.ph, %bb.ce
  %.0205 = phi i64 [ 0, %.lr.ph ], [ %i.mr, %bb.ce ] ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0205
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14 ; 5 uses
  switch i32 %i.an, label %bb.ak [
    i32 34, label %bb.f
    i32 39, label %bb.k
    i32 92, label %bb.p
    i32 8, label %bb.s
    i32 12, label %bb.v
    i32 10, label %bb.y
    i32 13, label %bb.ab
    i32 9, label %bb.ae
    i32 0, label %bb.ah
  ]

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.ap = sub i64 1152921504606846975, %i.ao
  %i.aq = icmp ult i64 %i.ap, %wcslen.i.i.i
  br i1 %i.aq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.ar = add i64 %i.ao, %wcslen.i.i.i            ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i
  %i.au = icmp ult i64 %i.ao, 4
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aw = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ao ; 2 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 34, ptr %i.ax, align 4, !tbaa !14
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ax, ptr noundef nonnull align 4 dereferenceable(1) @.str.1, i64 %i.j, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ao, i64 noundef 0, ptr noundef nonnull %i.i, i64 noundef %wcslen.i.i.i)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit:  ; preds = %bb.j, %bb.h, %bb.i
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !17
  %i.ay = load ptr, ptr %3, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ar
  store i32 0, ptr %i.az, align 4, !tbaa !14
  br label %bb.ce

.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i158, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.j, %.invoke, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit.split-lp290 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

bb.k:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.bb = sub i64 1152921504606846975, %i.ba
  %i.bc = icmp ult i64 %i.bb, %wcslen.i.i.i34
  br i1 %i.bc, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35: ; preds = %bb.k
  %i.bd = add i64 %i.ba, %wcslen.i.i.i34          ; 3 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35
  %i.bg = icmp ult i64 %i.ba, 4
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41 ]
  %.not.i.i.i38 = icmp ugt i64 %i.bd, %i.bi
  br i1 %.not.i.i.i38, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  br i1 %2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 39, ptr %i.bj, align 4, !tbaa !14
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit44

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bj, ptr noundef nonnull align 4 dereferenceable(1) @.str.2, i64 %i.h, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit44

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ba, i64 noundef 0, ptr noundef nonnull %i.g, i64 noundef %wcslen.i.i.i34)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit44 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit44: ; preds = %bb.o, %bb.m, %bb.n
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !17
  %i.bk = load ptr, ptr %3, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bd
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  br label %bb.ce

bb.p:                                             ; preds = %bb.e
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.bn = and i64 %i.bm, -2
  %i.bo = icmp eq i64 %i.bn, 1152921504606846974
  br i1 %i.bo, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i46

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i46: ; preds = %bb.p
  %i.bp = add i64 %i.bm, 2                        ; 3 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i46
  %i.bs = icmp ult i64 %i.bm, 4
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i46
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i52
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i47 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i52 ]
  %.not.i.i.i49 = icmp ugt i64 %i.bp, %i.bu
  br i1 %.not.i.i.i49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i48
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bm
  store i64 395136991324, ptr %i.bv, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit55

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i48
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bm, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit55 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit55: ; preds = %bb.r, %bb.q
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !17
  %i.bw = load ptr, ptr %3, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bp
  store i32 0, ptr %i.bx, align 4, !tbaa !14
  br label %bb.ce

bb.s:                                             ; preds = %bb.e
  %i.by = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.bz = and i64 %i.by, -2
  %i.ca = icmp eq i64 %i.bz, 1152921504606846974
  br i1 %i.ca, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i57

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i57: ; preds = %bb.s
  %i.cb = add i64 %i.by, 2                        ; 3 uses
  %i.cc = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i57
  %i.ce = icmp ult i64 %i.by, 4
  call void @llvm.assume(i1 %i.ce)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i57
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i58, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i63
  %i.cg = phi i64 [ %i.cf, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i58 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i63 ]
  %.not.i.i.i60 = icmp ugt i64 %i.cb, %i.cg
  br i1 %.not.i.i.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i59
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.by
  store i64 420906795100, ptr %i.ch, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit66

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i59
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit66 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit66: ; preds = %bb.u, %bb.t
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !17
  %i.ci = load ptr, ptr %3, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cb
  store i32 0, ptr %i.cj, align 4, !tbaa !14
  br label %bb.ce

bb.v:                                             ; preds = %bb.e
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.cl = and i64 %i.ck, -2
  %i.cm = icmp eq i64 %i.cl, 1152921504606846974
  br i1 %i.cm, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i68

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i68: ; preds = %bb.v
  %i.cn = add i64 %i.ck, 2                        ; 3 uses
  %i.co = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i74: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i68
  %i.cq = icmp ult i64 %i.ck, 4
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i69: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i68
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i69, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i74
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i69 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i74 ]
  %.not.i.i.i71 = icmp ugt i64 %i.cn, %i.cs
  br i1 %.not.i.i.i71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i70
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ck
  store i64 438086664284, ptr %i.ct, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit77

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i70
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ck, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit77 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit77: ; preds = %bb.x, %bb.w
  store i64 %i.cn, ptr %i.b, align 8, !tbaa !17
  %i.cu = load ptr, ptr %3, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cn
  store i32 0, ptr %i.cv, align 4, !tbaa !14
  br label %bb.ce

bb.y:                                             ; preds = %bb.e
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.cx = and i64 %i.cw, -2
  %i.cy = icmp eq i64 %i.cx, 1152921504606846974
  br i1 %i.cy, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i79

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i79: ; preds = %bb.y
  %i.cz = add i64 %i.cw, 2                        ; 3 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.a
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i85: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i79
  %i.dc = icmp ult i64 %i.cw, 4
  call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i79
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i85
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i80 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i85 ]
  %.not.i.i.i82 = icmp ugt i64 %i.cz, %i.de
  br i1 %.not.i.i.i82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i81
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cw
  store i64 472446402652, ptr %i.df, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit88

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i81
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cw, i64 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit88 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit88: ; preds = %bb.aa, %bb.z
  store i64 %i.cz, ptr %i.b, align 8, !tbaa !17
  %i.dg = load ptr, ptr %3, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cz
  store i32 0, ptr %i.dh, align 4, !tbaa !14
  br label %bb.ce

bb.ab:                                            ; preds = %bb.e
  %i.di = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.dj = and i64 %i.di, -2
  %i.dk = icmp eq i64 %i.dj, 1152921504606846974
  br i1 %i.dk, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i90

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i90: ; preds = %bb.ab
  %i.dl = add i64 %i.di, 2                        ; 3 uses
  %i.dm = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.a
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i90
  %i.do = icmp ult i64 %i.di, 4
  call void @llvm.assume(i1 %i.do)
end_hunk_0
