Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/string_utils?download=true
inline.NumInlined: 345
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7jsonnet8internal22jsonnet_string_unparseERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb:bb.a
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.al = icmp ugt i64 %i.ad, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i33, label %bb.o

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13.thread, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13
  %i.am = phi i64 [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i13.thread ] ; 2 uses
  %i.an = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.an, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i33
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i33
  %i.ao = icmp ugt i64 %i.ad, %i.am
  br i1 %i.ao, label %bb.k, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i34

bb.k:                                             ; preds = %bb.j
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
  %6 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 13 uses
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
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal21jsonnet_string_escapeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb:bb.a
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i101
  %i.ea = icmp ult i64 %i.du, 4
  call void @llvm.assume(i1 %i.ea)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i101
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107
  %i.ec = phi i64 [ %i.eb, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107 ]
  %.not.i.i.i104 = icmp ugt i64 %i.dx, %i.ec
  br i1 %.not.i.i.i104, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.du
  store i64 498216206428, ptr %i.ed, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.du, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110: ; preds = %bb.ag, %bb.af
  store i64 %i.dx, ptr %i.b, align 8, !tbaa !17
  %i.ee = load ptr, ptr %3, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dx
  store i32 0, ptr %i.ef, align 4, !tbaa !14
  br label %bb.ce

bb.ah:                                            ; preds = %bb.e
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.eh = add i64 %i.eg, -1152921504606846970
  %i.ei = icmp ult i64 %i.eh, 6
  br i1 %i.ei, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112: ; preds = %bb.ah
  %i.ej = add i64 %i.eg, 6                        ; 3 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.a
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112
  %i.em = icmp ult i64 %i.eg, 4
  call void @llvm.assume(i1 %i.em)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112
  %i.en = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118
  %i.eo = phi i64 [ %i.en, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118 ]
  %.not.i.i.i115 = icmp ugt i64 %i.ej, %i.eo
  br i1 %.not.i.i.i115, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ep, ptr noundef nonnull align 4 dereferenceable(24) @.str.10, i64 24, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eg, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 6)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121: ; preds = %bb.aj, %bb.ai
  store i64 %i.ej, ptr %i.b, align 8, !tbaa !17
  %i.eq = load ptr, ptr %3, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ej
  store i32 0, ptr %i.er, align 4, !tbaa !14
  br label %bb.ce

bb.ak:                                            ; preds = %bb.e
  %i.es = icmp ult i32 %i.an, 32
  %i.et = add i32 %i.an, -127
  %or.cond = icmp ult i32 %i.et, 33
  %or.cond30 = or i1 %i.es, %or.cond
  br i1 %or.cond30, label %bb.al, label %bb.by

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.am unwind label %bb.bw

bb.am:                                            ; preds = %bb.al
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %bb.an unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !47  ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24    ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.k, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !56
  %i.fb = and i32 %i.fa, -75
  %i.fc = or disjoint i32 %i.fb, 8
  store i32 %i.fc, ptr %i.ez, align 8, !tbaa !57
  %i.fd = load i64, ptr %i.ew, align 8
  %i.fe = getelementptr inbounds i8, ptr %i.k, i64 %i.fd ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 225 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !65, !range !66, !noundef !67
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !68 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc124 unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %bb.ap
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !74
  %.not.i1.i.i.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i1.i.i.i.i, label %bb.aq, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fj)
          to label %.noexc125 unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.aq
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef signext i8 %i.fo(ptr noundef nonnull align 8 dereferenceable(570) %i.fj, i8 noundef signext 32)
          to label %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35 ; 0 uses

.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc125
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !47
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.ev, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.ff, align 1, !tbaa !65
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.fq = phi ptr [ %i.ev, %bb.an ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 224
  store i8 48, ptr %i.fr, align 8, !tbaa !75
  %i.fs = getelementptr i8, ptr %i.fq, i64 -24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.k, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 4, ptr %i.fv, align 8, !tbaa !76
  %i.fw = zext nneg i32 %i.an to i64
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.fw)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store ptr %i.l, ptr %6, align 8, !tbaa !22, !alias.scope !79
  store i64 0, ptr %i.m, align 8, !tbaa !24, !alias.scope !79
  store i8 0, ptr %i.l, align 8, !tbaa !19, !alias.scope !79
  %i.fy = load ptr, ptr %i.n, align 8, !tbaa !81, !noalias !79 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fy, null
  %i.fz = load ptr, ptr %i.o, align 8, !noalias !79 ; 2 uses
  %i.ga = icmp ugt ptr %i.fy, %i.fz
  %.08.i.i.i = select i1 %i.ga, ptr %i.fy, ptr %i.fz ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZNSolsEm.exit
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !82, !noalias !79 ; 2 uses
  %i.gc = ptrtoint ptr %.08.i.i.i to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.gb, i64 noundef %i.ge)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %6, align 8, !tbaa !25, !alias.scope !79 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.l
  br i1 %i.gi, label %.body, label %.body.sink.split

bb.au:                                            ; preds = %_ZNSolsEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.at

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.au, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  store ptr %i.r, ptr %5, align 8, !tbaa !12, !alias.scope !83
  store i64 0, ptr %i.s, align 8, !tbaa !17, !alias.scope !83
  store i32 0, ptr %i.r, align 8, !tbaa !14, !alias.scope !83
  %i.gj = load i64, ptr %i.m, align 8, !tbaa !24, !noalias !83 ; 3 uses
  %.not.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.val.i.pre214 = load ptr, ptr %6, align 8, !tbaa !25, !noalias !83
  br label %.lr.ph.i

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bo
  %i.gl = phi i64 [ %.pre.i219, %bb.bo ], [ %i.gj, %.lr.ph.i.preheader ] ; 3 uses
  %i.gm = phi ptr [ %.val.i215, %bb.bo ], [ %.val.i.pre214, %.lr.ph.i.preheader ] ; 10 uses
  %i.gn = phi i64 [ %i.js, %bb.bo ], [ %i.gj, %.lr.ph.i.preheader ] ; 5 uses
  %7 = phi ptr [ %.pre214, %bb.bo ], [ %i.r, %.lr.ph.i.preheader ] ; 6 uses
  %storemerge8.i.a = phi i64 [ %i.ix, %bb.bo ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %storemerge8.i = phi i64 [ %i.jv, %bb.bo ], [ 0, %.lr.ph.i.preheader ] ; 11 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %storemerge8.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19  ; 2 uses
  %i.gq = sext i8 %i.gp to i32                    ; 7 uses
  %i.gr = icmp sgt i8 %i.gp, -1
  br i1 %i.gr, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.gs = and i32 %i.gq, 224
  %i.gt = icmp eq i32 %i.gs, 192
  br i1 %i.gt, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gu = add nuw i64 %storemerge8.i, 1           ; 3 uses
  %.not46.i.i = icmp ult i64 %i.gu, %i.gn
  br i1 %.not46.i.i, label %bb.ax, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !19
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = and i32 %i.gx, 192
  %.not47.i.i = icmp eq i32 %i.gy, 128
  %i.gz = shl nsw i32 %i.gq, 6
  %i.ha = and i32 %i.gz, 1984
  %i.hb = and i32 %i.gx, 63
  %i.hc = or disjoint i32 %i.hb, %i.ha
  %.0.i.i = select i1 %.not47.i.i, i32 %i.hc, i32 65533
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.hd = and i32 %i.gq, 240
  %i.he = icmp eq i32 %i.hd, 224
  br i1 %i.he, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.hf = add i64 %storemerge8.i, 2               ; 4 uses
  %.not43.i.i = icmp ult i64 %i.hf, %i.gn
  br i1 %.not43.i.i, label %bb.ba, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.hg = add nuw i64 %storemerge8.i, 1           ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !19
  %i.hj = sext i8 %i.hi to i32                    ; 2 uses
  %i.hk = and i32 %i.hj, 192
  %.not44.i.i = icmp eq i32 %i.hk, 128
  br i1 %.not44.i.i, label %bb.bb, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hf
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !19
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = and i32 %i.hn, 192
  %.not45.i.i = icmp eq i32 %i.ho, 128
  br i1 %.not45.i.i, label %bb.bc, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.hp = shl nsw i32 %i.gq, 12
  %i.hq = and i32 %i.hp, 61440
  %i.hr = shl nsw i32 %i.hj, 6
  %i.hs = and i32 %i.hr, 4032
  %i.ht = or disjoint i32 %i.hs, %i.hq
  %i.hu = and i32 %i.hn, 63
  %i.hv = or disjoint i32 %i.ht, %i.hu
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bd:                                            ; preds = %bb.ay
  %i.hw = and i32 %i.gq, 248
  %i.hx = icmp eq i32 %i.hw, 240
  %i.hy = add i64 %storemerge8.i, 3               ; 4 uses
  %.not.i.i128 = icmp ult i64 %i.hy, %i.gn
  %or.cond.i.i = and i1 %.not.i.i128, %i.hx
  br i1 %or.cond.i.i, label %bb.be, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.hz = add nuw i64 %storemerge8.i, 1           ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !19
  %i.ic = sext i8 %i.ib to i32                    ; 2 uses
  %i.id = and i32 %i.ic, 192
  %.not40.i.i = icmp eq i32 %i.id, 128
  br i1 %.not40.i.i, label %bb.bf, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ie = add i64 %storemerge8.i, 2               ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !19
  %i.ih = sext i8 %i.ig to i32                    ; 2 uses
  %i.ii = and i32 %i.ih, 192
  %.not41.i.i = icmp eq i32 %i.ii, 128
  br i1 %.not41.i.i, label %bb.bg, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hy
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !19
  %i.il = zext i8 %i.ik to i32                    ; 2 uses
  %i.im = and i32 %i.il, 192
  %.not42.i.i = icmp eq i32 %i.im, 128
  br i1 %.not42.i.i, label %bb.bh, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.in = shl nsw i32 %i.gq, 18
  %i.io = and i32 %i.in, 1835008
  %i.ip = shl nsw i32 %i.ic, 12
  %i.iq = and i32 %i.ip, 258048
  %i.ir = or disjoint i32 %i.iq, %i.io
  %i.is = shl nsw i32 %i.ih, 6
  %i.it = and i32 %i.is, 4032
  %i.iu = or disjoint i32 %i.ir, %i.it
  %i.iv = and i32 %i.il, 63
  %i.iw = or disjoint i32 %i.iu, %i.iv
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %.lr.ph.i
  %.0.i = phi i64 [ %storemerge8.i, %.lr.ph.i ], [ %i.gu, %bb.ax ], [ %storemerge8.i, %bb.aw ], [ %i.hf, %bb.bc ], [ %i.hf, %bb.bb ], [ %i.hg, %bb.ba ], [ %storemerge8.i, %bb.az ], [ %i.hy, %bb.bh ], [ %i.hy, %bb.bg ], [ %i.ie, %bb.bf ], [ %i.hz, %bb.be ], [ %storemerge8.i, %bb.bd ]
  %.6.i.i = phi i32 [ %i.gq, %.lr.ph.i ], [ %.0.i.i, %bb.ax ], [ 65533, %bb.aw ], [ %i.hv, %bb.bc ], [ 65533, %bb.bb ], [ 65533, %bb.ba ], [ 65533, %bb.az ], [ %i.iw, %bb.bh ], [ 65533, %bb.bg ], [ 65533, %bb.bf ], [ 65533, %bb.be ], [ 65533, %bb.bd ]
  %i.ix = add i64 %storemerge8.i.a, 1             ; 12 uses
  %i.iy = icmp eq ptr %7, %i.r                    ; 2 uses
  br i1 %i.iy, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i
  %i.iz = icmp samesign ult i64 %storemerge8.i.a, 4
  call void @llvm.assume(i1 %i.iz)
  %i.ja = icmp samesign ugt i64 %i.ix, 3
  br i1 %i.ja, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %bb.bo

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i
  %i.jb = load i64, ptr %i.r, align 8, !tbaa !19, !alias.scope !83
  %i.jc = icmp ugt i64 %i.ix, %i.jb
  br i1 %i.jc, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151, label %bb.bo

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread
  %i.jd = load i64, ptr %i.r, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151
  %i.je = phi i64 [ %i.jd, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ] ; 2 uses
  %i.jf = icmp ugt i64 %i.ix, 1152921504606846975
  br i1 %i.jf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc154:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.jg = icmp ugt i64 %i.ix, %i.je
  br i1 %i.jg, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.jh = shl nuw nsw i64 %i.je, 1                ; 2 uses
  %i.ji = icmp samesign ult i64 %i.ix, %i.jh
  br i1 %i.ji, label %bb.bl, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

bb.bl:                                            ; preds = %bb.bk
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.jh, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i152 = phi i64 [ %spec.store.select.i.i, %bb.bl ], [ %i.ix, %bb.bk ], [ %i.ix, %bb.bj ] ; 2 uses
  %i.jj = shl nuw nsw i64 %.0.i152, 2
  %i.jk = add nuw nsw i64 %i.jj, 4
  %i.jl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #19
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc155:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i
  switch i64 %storemerge8.i.a, label %bb.bn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
    i64 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %.noexc155
  %i.jm = load i32, ptr %7, align 4, !tbaa !14
  store i32 %i.jm, ptr %i.jl, align 4, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

bb.bn:                                            ; preds = %.noexc155
  %i.jn = shl nuw nsw i64 %storemerge8.i.a, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jl, ptr align 4 %7, i64 %i.jn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i: ; preds = %.noexc155, %bb.bm, %bb.bn
  br i1 %i.iy, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.jo = icmp samesign ult i64 %storemerge8.i.a, 4
  call void @llvm.assume(i1 %i.jo)
  br label %.noexc.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.jp = load i64, ptr %i.r, align 8, !tbaa !19
  %i.jq = shl i64 %i.jp, 2
  %i.jr = add i64 %i.jq, 4
  call void @_ZdlPvm(ptr noundef %7, i64 noundef %i.jr) #18
  %.val.i.pre = load ptr, ptr %6, align 8, !tbaa !25, !noalias !83
  %.pre.i.pre = load i64, ptr %i.m, align 8, !tbaa !24, !noalias !83
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i
  %.pre.i = phi i64 [ %.pre.i.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i ] ; 2 uses
  %.val.i216 = phi ptr [ %.val.i.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i ]
  store ptr %i.jl, ptr %5, align 8, !tbaa !18
  store i64 %.0.i152, ptr %i.r, align 8, !tbaa !19
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread, %.noexc.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i
  %.pre.i219 = phi i64 [ %.pre.i, %.noexc.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ]
  %.val.i215 = phi ptr [ %.val.i216, %.noexc.i ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ]
  %i.js = phi i64 [ %.pre.i, %.noexc.i ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ] ; 2 uses
  %.pre214 = phi ptr [ %i.jl, %.noexc.i ], [ %7, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %7, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.pre214, i64 %storemerge8.i.a
  store i32 %.6.i.i, ptr %i.jt, align 4, !tbaa !14
  store i64 %i.ix, ptr %i.s, align 8, !tbaa !17, !alias.scope !83
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.pre214, i64 %i.ix
  store i32 0, ptr %i.ju, align 4, !tbaa !14
  %i.jv = add i64 %.0.i, 1                        ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.js
  br i1 %i.jw, label %.lr.ph.i, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !42

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i, %bb.bi
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !83 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.r
  br i1 %i.jy, label %.body129, label %.body129.sink.split

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bo
  %i.jz = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ka = sub i64 1152921504606846975, %i.jz
  %i.kb = icmp ult i64 %i.ka, %i.ix
  br i1 %i.kb, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.bp:                                            ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc131 unwind label %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %bb.bp
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.kc = phi ptr [ %i.r, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.pre214, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.kd = phi i64 [ %i.gk, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.jz, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.ke = phi i64 [ 0, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.ix, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %i.kf = add i64 %i.ke, %i.kd                    ; 3 uses
  %i.kg = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.a
  br i1 %i.kh, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ki = icmp ult i64 %i.kd, 4
  call void @llvm.assume(i1 %i.ki)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.kj = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.kk = phi i64 [ %i.kj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.kf, %i.kk
  br i1 %.not.i.i.i.i, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ke, 0
  br i1 %.not8.i.i.i.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.kd ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ke, 1
  br i1 %cond.i.i.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.km = load i32, ptr %i.kc, align 4, !tbaa !14
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !14
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.kn = shl i64 %i.ke, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kl, ptr nonnull align 4 %i.kc, i64 %i.kn, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kd, i64 noundef 0, ptr noundef nonnull %i.kc, i64 noundef %i.ke)
          to label %bb.bv unwind label %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bu
  store i64 %i.kf, ptr %i.b, align 8, !tbaa !17
  %i.ko = load ptr, ptr %3, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kf
  store i32 0, ptr %i.kp, align 4, !tbaa !14
  %i.kq = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.r
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.bv
  %i.ks = load i64, ptr %i.r, align 8, !tbaa !19
  %i.kt = shl i64 %i.ks, 2
  %i.ku = add i64 %i.kt, 4
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #18
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  %i.kv = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.l
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.kx = load i64, ptr %i.l, align 8, !tbaa !19
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  store ptr %i.t, ptr %4, align 8, !tbaa !47
  %i.kz = load i64, ptr %i.v, align 8
  %i.la = getelementptr inbounds i8, ptr %4, i64 %i.kz
  store ptr %i.u, ptr %i.la, align 8, !tbaa !47
  store ptr %i.w, ptr %i.k, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.x, align 8, !tbaa !47
  %i.lb = load ptr, ptr %i.q, align 8, !tbaa !25  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.y
  br i1 %i.lc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ld = load i64, ptr %i.y, align 8, !tbaa !19
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.x, align 8, !tbaa !47
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #16
  store ptr %i.aa, ptr %4, align 8, !tbaa !47
  %i.lf = load i64, ptr %i.ac, align 8
  %i.lg = getelementptr inbounds i8, ptr %4, i64 %i.lf
  store ptr %i.ab, ptr %i.lg, align 8, !tbaa !47
  store i64 0, ptr %i.ad, align 8, !tbaa !85
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ce

bb.bw:                                            ; preds = %bb.al
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %.noexc125, %bb.aq, %bb.am, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp177

.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %bb.bp
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.r
  br i1 %i.lj, label %.body129, label %.body129.sink.split

.body129.sink.split:                              ; preds = %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.jx, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.li, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp288, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp ]
  %i.lk = load i64, ptr %i.r, align 8, !tbaa !19
  %i.ll = shl i64 %i.lk, 2
  %i.lm = add i64 %i.ll, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lm) #18
  br label %.body129

.body129:                                         ; preds = %.body129.sink.split, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp288, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp ], [ %.pn.ph, %.body129.sink.split ] ; 2 uses
  %i.ln = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.l
  br i1 %i.lo, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body129, %bb.at
  %.sink285 = phi ptr [ %i.gh, %bb.at ], [ %i.ln, %.body129 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.gg, %bb.at ], [ %.pn, %.body129 ]
  %i.lp = load i64, ptr %i.l, align 8, !tbaa !19
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %.sink285, i64 noundef %i.lq) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body129, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.at ], [ %.pn, %.body129 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit.split-lp177

.loopexit.split-lp177:                            ; preds = %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #16
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp177, %bb.bw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.loopexit.split-lp177 ], [ %i.lh, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit.split-lp172

bb.by:                                            ; preds = %bb.ak
  %i.lr = load i64, ptr %i.b, align 8, !tbaa !17  ; 6 uses
  %i.ls = add i64 %i.lr, 1                        ; 9 uses
  %i.lt = load ptr, ptr %3, align 8, !tbaa !18    ; 6 uses
  %i.lu = icmp eq ptr %i.lt, %i.a                 ; 2 uses
  br i1 %i.lu, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i140.thread

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i140: ; preds = %bb.by
  %i.lv = icmp samesign ult i64 %i.lr, 4
  call void @llvm.assume(i1 %i.lv)
  %i.lw = icmp samesign ugt i64 %i.ls, 3
  br i1 %i.lw, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i157, label %_ZN7jsonnet8internal13UStringStreamlsEDi.exit
end_hunk_1
