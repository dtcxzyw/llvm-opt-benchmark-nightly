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
  br i1 %.not, label %.thread260, label %.lr.ph

.thread260:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !17, !alias.scope !44
  store i32 0, ptr %i.e, align 8, !tbaa !14
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = select i1 %2, ptr @.str.2, ptr @.str.3   ; 2 uses
  %wcslen.i.i.i34 = select i1 %2, i64 2, i64 1    ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl nuw nsw i64 %wcslen.i.i.i34, 2
  %i.j = select i1 %2, ptr @.str, ptr @.str.1     ; 2 uses
  %wcslen.i.i.i = select i1 %2, i64 1, i64 2      ; 4 uses
  %i.k = shl nuw nsw i64 %wcslen.i.i.i, 2
  %i.l = load i32, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.e

._crit_edge:                                      ; preds = %bb.ch
  %.pre209 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !44 ; 4 uses
  %.pre210 = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !44 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !12, !alias.scope !44
  %.idx.i.i = shl nuw nsw i64 %.pre210, 2         ; 3 uses
  %i.ai = icmp ugt i64 %.pre210, 3
  br i1 %i.ai, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %._crit_edge
  %i.aj = icmp ugt i64 %.pre210, 1152921504606846975
  br i1 %i.aj, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.noexc unwind label %bb.cj

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.b
  %i.ak = add nuw nsw i64 %.idx.i.i, 4
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #19
          to label %.noexc31 unwind label %bb.cj  ; 2 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.al, ptr %0, align 8, !tbaa !18, !alias.scope !44
  store i64 %.pre210, ptr %i.ah, align 8, !tbaa !19, !alias.scope !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc31, %._crit_edge
  %.pre8.i.i.i = phi ptr [ %i.al, %.noexc31 ], [ %i.ah, %._crit_edge ] ; 3 uses
  switch i64 %.pre210, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.ci
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i32, ptr %.pre209, align 4, !tbaa !14
  store i32 %i.am, ptr %.pre8.i.i.i, align 4, !tbaa !14
  br label %bb.ci

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %.pre209, i64 %.idx.i.i, i1 false)
  br label %bb.ci

bb.e:                                             ; preds = %.lr.ph, %bb.ch
  %.0205 = phi i64 [ 0, %.lr.ph ], [ %i.mt, %bb.ch ] ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0205
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14 ; 5 uses
  switch i32 %i.ap, label %bb.ak [
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
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.ar = sub i64 1152921504606846975, %i.aq
  %i.as = icmp ult i64 %i.ar, %wcslen.i.i.i
  br i1 %i.as, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i

.invoke:                                          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i157, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.k
  %i.at = phi ptr [ @.str.20, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i157 ], [ @.str.21, %bb.ah ], [ @.str.21, %bb.k ], [ @.str.21, %bb.p ], [ @.str.21, %bb.s ], [ @.str.21, %bb.v ], [ @.str.21, %bb.y ], [ @.str.21, %bb.ab ], [ @.str.21, %bb.ae ], [ @.str.21, %bb.f ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.at) #17
          to label %.cont unwind label %.loopexit.split-lp172

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.au = add i64 %i.aq, %wcslen.i.i.i            ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ax = icmp ult i64 %i.aq, 4
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.az = phi i64 [ %i.ay, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.au, %i.az
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aq ; 2 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.l, ptr %i.ba, align 4, !tbaa !14
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, ptr noundef nonnull align 4 dereferenceable(1) @.str.1, i64 %i.k, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aq, i64 noundef 0, ptr noundef nonnull %i.j, i64 noundef %wcslen.i.i.i)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit unwind label %.loopexit171

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit:  ; preds = %bb.j, %bb.h, %bb.i
  store i64 %i.au, ptr %i.b, align 8, !tbaa !17
  %i.bb = load ptr, ptr %3, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.au
  store i32 0, ptr %i.bc, align 4, !tbaa !14
  br label %bb.ch

.loopexit171:                                     ; preds = %bb.j, %bb.o, %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i158
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp172:                            ; preds = %.invoke
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.k:                                             ; preds = %bb.e
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.be = sub i64 1152921504606846975, %i.bd
  %i.bf = icmp ult i64 %i.be, %wcslen.i.i.i34
  br i1 %i.bf, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35: ; preds = %bb.k
  %i.bg = add i64 %i.bd, %wcslen.i.i.i34          ; 3 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35
  %i.bj = icmp ult i64 %i.bd, 4
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i35
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal21jsonnet_string_escapeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb:bb.a
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i101
  %i.ed = icmp ult i64 %i.dx, 4
  call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i101
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i102 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i107 ]
  %.not.i.i.i104 = icmp ugt i64 %i.ea, %i.ef
  br i1 %.not.i.i.i104, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dx
  store i64 498216206428, ptr %i.eg, align 4
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i103
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dx, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110 unwind label %.loopexit171

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit110: ; preds = %bb.ag, %bb.af
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !17
  %i.eh = load ptr, ptr %3, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ea
  store i32 0, ptr %i.ei, align 4, !tbaa !14
  br label %bb.ch

bb.ah:                                            ; preds = %bb.e
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.ek = add i64 %i.ej, -1152921504606846970
  %i.el = icmp ult i64 %i.ek, 6
  br i1 %i.el, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112: ; preds = %bb.ah
  %i.em = add i64 %i.ej, 6                        ; 3 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.a
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112
  %i.ep = icmp ult i64 %i.ej, 4
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i112
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118
  %i.er = phi i64 [ %i.eq, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i113 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i118 ]
  %.not.i.i.i115 = icmp ugt i64 %i.em, %i.er
  br i1 %.not.i.i.i115, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.es, ptr noundef nonnull align 4 dereferenceable(24) @.str.10, i64 24, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i114
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ej, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 6)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121 unwind label %.loopexit171

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit121: ; preds = %bb.aj, %bb.ai
  store i64 %i.em, ptr %i.b, align 8, !tbaa !17
  %i.et = load ptr, ptr %3, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.em
  store i32 0, ptr %i.eu, align 4, !tbaa !14
  br label %bb.ch

bb.ak:                                            ; preds = %bb.e
  %i.ev = icmp ult i32 %i.ap, 32
  %i.ew = add i32 %i.ap, -127
  %or.cond = icmp ult i32 %i.ew, 33
  %or.cond30 = or i1 %i.ev, %or.cond
  br i1 %or.cond30, label %bb.al, label %bb.cb

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.am unwind label %bb.bx

bb.am:                                            ; preds = %bb.al
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %bb.an unwind label %.loopexit176 ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ey = load ptr, ptr %i.m, align 8, !tbaa !46  ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -24    ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %i.m, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !55
  %i.fe = and i32 %i.fd, -75
  %i.ff = or disjoint i32 %i.fe, 8
  store i32 %i.ff, ptr %i.fc, align 8, !tbaa !56
  %i.fg = load i64, ptr %i.ez, align 8
  %i.fh = getelementptr inbounds i8, ptr %i.m, i64 %i.fg ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 225 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !64, !range !65, !noundef !66
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc124 unwind label %.loopexit.split-lp177

.noexc124:                                        ; preds = %bb.ap
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !73
  %.not.i1.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i.i.i, label %bb.aq, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
          to label %.noexc125 unwind label %.loopexit176

.noexc125:                                        ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef signext i8 %i.fr(ptr noundef nonnull align 8 dereferenceable(570) %i.fm, i8 noundef signext 32)
          to label %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %.loopexit176, !inline_history !34 ; 0 uses

.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc125
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !46
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc125._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.ey, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.fi, align 1, !tbaa !64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ft = phi ptr [ %i.ey, %bb.an ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  store i8 48, ptr %i.fu, align 8, !tbaa !74
  %i.fv = getelementptr i8, ptr %i.ft, i64 -24
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr %i.m, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 4, ptr %i.fy, align 8, !tbaa !75
  %i.fz = zext nneg i32 %i.ap to i64
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.fz)
          to label %_ZNSolsEm.exit unwind label %.loopexit176 ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  store ptr %i.n, ptr %6, align 8, !tbaa !22, !alias.scope !78
  store i64 0, ptr %i.o, align 8, !tbaa !24, !alias.scope !78
  store i8 0, ptr %i.n, align 8, !tbaa !19, !alias.scope !78
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !78 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.gb, null
  %i.gc = load ptr, ptr %i.q, align 8, !noalias !78 ; 2 uses
  %i.gd = icmp ugt ptr %i.gb, %i.gc
  %.08.i.i.i = select i1 %i.gd, ptr %i.gb, ptr %i.gc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZNSolsEm.exit
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !81, !noalias !78 ; 2 uses
  %i.gf = ptrtoint ptr %.08.i.i.i to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ge, i64 noundef %i.gh)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %6, align 8, !tbaa !25, !alias.scope !78 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.n
  br i1 %i.gl, label %.body, label %.body.sink.split

bb.au:                                            ; preds = %_ZNSolsEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.at

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.au, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  store ptr %i.t, ptr %5, align 8, !tbaa !12, !alias.scope !82
  store i64 0, ptr %i.u, align 8, !tbaa !17, !alias.scope !82
  store i32 0, ptr %i.t, align 8, !tbaa !14, !alias.scope !82
  %i.gm = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !82 ; 2 uses
  %.not.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gn = load i64, ptr %i.b, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.bo
  %i.go = phi i64 [ %i.jv, %bb.bo ], [ %i.gm, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 5 uses
  %i.gp = phi ptr [ %.pre208, %bb.bo ], [ %i.t, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 6 uses
  %i.gq = phi i64 [ %i.ja, %bb.bo ], [ 0, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 6 uses
  %storemerge8.i.a = phi i64 [ %i.jy, %bb.bo ], [ 0, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 11 uses
  %.val.i = load ptr, ptr %6, align 8, !tbaa !25, !noalias !82 ; 7 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %storemerge8.i.a
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !19  ; 2 uses
  %i.gt = sext i8 %i.gs to i32                    ; 7 uses
  %i.gu = icmp sgt i8 %i.gs, -1
  br i1 %i.gu, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.gv = and i32 %i.gt, 224
  %i.gw = icmp eq i32 %i.gv, 192
  br i1 %i.gw, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gx = add nuw i64 %storemerge8.i.a, 1         ; 3 uses
  %.not46.i.i = icmp ult i64 %i.gx, %i.go
  br i1 %.not46.i.i, label %bb.ax, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !19
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = and i32 %i.ha, 192
  %.not47.i.i = icmp eq i32 %i.hb, 128
  %i.hc = shl nsw i32 %i.gt, 6
  %i.hd = and i32 %i.hc, 1984
  %i.he = and i32 %i.ha, 63
  %i.hf = or disjoint i32 %i.he, %i.hd
  %.0.i.i = select i1 %.not47.i.i, i32 %i.hf, i32 65533
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.hg = and i32 %i.gt, 240
  %i.hh = icmp eq i32 %i.hg, 224
  br i1 %i.hh, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.hi = add i64 %storemerge8.i.a, 2             ; 4 uses
  %.not43.i.i = icmp ult i64 %i.hi, %i.go
  br i1 %.not43.i.i, label %bb.ba, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.hj = add nuw i64 %storemerge8.i.a, 1         ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !19
  %i.hm = sext i8 %i.hl to i32                    ; 2 uses
  %i.hn = and i32 %i.hm, 192
  %.not44.i.i = icmp eq i32 %i.hn, 128
  br i1 %.not44.i.i, label %bb.bb, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.hi
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !19
  %i.hq = zext i8 %i.hp to i32                    ; 2 uses
  %i.hr = and i32 %i.hq, 192
  %.not45.i.i = icmp eq i32 %i.hr, 128
  br i1 %.not45.i.i, label %bb.bc, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.hs = shl nsw i32 %i.gt, 12
  %i.ht = and i32 %i.hs, 61440
  %i.hu = shl nsw i32 %i.hm, 6
  %i.hv = and i32 %i.hu, 4032
  %i.hw = or disjoint i32 %i.hv, %i.ht
  %i.hx = and i32 %i.hq, 63
  %i.hy = or disjoint i32 %i.hw, %i.hx
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bd:                                            ; preds = %bb.ay
  %i.hz = and i32 %i.gt, 248
  %i.ia = icmp eq i32 %i.hz, 240
  %i.ib = add i64 %storemerge8.i.a, 3             ; 4 uses
  %.not.i.i128 = icmp ult i64 %i.ib, %i.go
  %or.cond.i.i = and i1 %.not.i.i128, %i.ia
  br i1 %or.cond.i.i, label %bb.be, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.ic = add nuw i64 %storemerge8.i.a, 1         ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !19
  %i.if = sext i8 %i.ie to i32                    ; 2 uses
  %i.ig = and i32 %i.if, 192
  %.not40.i.i = icmp eq i32 %i.ig, 128
  br i1 %.not40.i.i, label %bb.bf, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ih = add i64 %storemerge8.i.a, 2             ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !19
  %i.ik = sext i8 %i.ij to i32                    ; 2 uses
  %i.il = and i32 %i.ik, 192
  %.not41.i.i = icmp eq i32 %i.il, 128
  br i1 %.not41.i.i, label %bb.bg, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.im = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ib
  %i.in = load i8, ptr %i.im, align 1, !tbaa !19
  %i.io = zext i8 %i.in to i32                    ; 2 uses
  %i.ip = and i32 %i.io, 192
  %.not42.i.i = icmp eq i32 %i.ip, 128
  br i1 %.not42.i.i, label %bb.bh, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.iq = shl nsw i32 %i.gt, 18
  %i.ir = and i32 %i.iq, 1835008
  %i.is = shl nsw i32 %i.if, 12
  %i.it = and i32 %i.is, 258048
  %i.iu = or disjoint i32 %i.it, %i.ir
  %i.iv = shl nsw i32 %i.ik, 6
  %i.iw = and i32 %i.iv, 4032
  %i.ix = or disjoint i32 %i.iu, %i.iw
  %i.iy = and i32 %i.io, 63
  %i.iz = or disjoint i32 %i.ix, %i.iy
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %.lr.ph.i
  %.0.i = phi i64 [ %storemerge8.i.a, %.lr.ph.i ], [ %i.gx, %bb.ax ], [ %storemerge8.i.a, %bb.aw ], [ %i.hi, %bb.bc ], [ %i.hi, %bb.bb ], [ %i.hj, %bb.ba ], [ %storemerge8.i.a, %bb.az ], [ %i.ib, %bb.bh ], [ %i.ib, %bb.bg ], [ %i.ih, %bb.bf ], [ %i.ic, %bb.be ], [ %storemerge8.i.a, %bb.bd ]
  %.6.i.i = phi i32 [ %i.gt, %.lr.ph.i ], [ %.0.i.i, %bb.ax ], [ 65533, %bb.aw ], [ %i.hy, %bb.bc ], [ 65533, %bb.bb ], [ 65533, %bb.ba ], [ 65533, %bb.az ], [ %i.iz, %bb.bh ], [ 65533, %bb.bg ], [ 65533, %bb.bf ], [ 65533, %bb.be ], [ 65533, %bb.bd ]
  %i.ja = add i64 %i.gq, 1                        ; 12 uses
  %i.jb = icmp eq ptr %i.gp, %i.t                 ; 2 uses
  br i1 %i.jb, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i
  %i.jc = icmp samesign ult i64 %i.gq, 4
  call void @llvm.assume(i1 %i.jc)
  %i.jd = icmp samesign ugt i64 %i.ja, 3
  br i1 %i.jd, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %bb.bo

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit.i
  %i.je = load i64, ptr %i.t, align 8, !tbaa !19, !alias.scope !82
  %i.jf = icmp ugt i64 %i.ja, %i.je
  br i1 %i.jf, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151, label %bb.bo

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread
  %i.jg = load i64, ptr %i.t, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151
  %i.jh = phi i64 [ %i.jg, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i151 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ] ; 2 uses
  %i.ji = icmp ugt i64 %i.ja, 1152921504606846975
  br i1 %i.ji, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.noexc154 unwind label %.loopexit.split-lp

.noexc154:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.jj = icmp ugt i64 %i.ja, %i.jh
  br i1 %i.jj, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.jk = shl nuw nsw i64 %i.jh, 1                ; 2 uses
  %i.jl = icmp samesign ult i64 %i.ja, %i.jk
  br i1 %i.jl, label %bb.bl, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

bb.bl:                                            ; preds = %bb.bk
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.jk, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i152 = phi i64 [ %spec.store.select.i.i, %bb.bl ], [ %i.ja, %bb.bk ], [ %i.ja, %bb.bj ] ; 2 uses
  %i.jm = shl nuw nsw i64 %.0.i152, 2
  %i.jn = add nuw nsw i64 %i.jm, 4
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #19
          to label %.noexc155 unwind label %.loopexit ; 4 uses

.noexc155:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i
  switch i64 %i.gq, label %bb.bn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
    i64 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %.noexc155
  %i.jp = load i32, ptr %i.gp, align 4, !tbaa !14
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

bb.bn:                                            ; preds = %.noexc155
  %i.jq = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jo, ptr align 4 %i.gp, i64 %i.jq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i: ; preds = %.noexc155, %bb.bm, %bb.bn
  br i1 %i.jb, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.jr = icmp samesign ult i64 %i.gq, 4
  call void @llvm.assume(i1 %i.jr)
  br label %.noexc.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.js = load i64, ptr %i.t, align 8, !tbaa !19
  %i.jt = shl i64 %i.js, 2
  %i.ju = add i64 %i.jt, 4
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.ju) #18
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29.i
  store ptr %i.jo, ptr %5, align 8, !tbaa !18
  store i64 %.0.i152, ptr %i.t, align 8, !tbaa !19
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !82
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread, %.noexc.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i
  %i.jv = phi i64 [ %.pre.i, %.noexc.i ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ] ; 2 uses
  %.pre208 = phi ptr [ %i.jo, %.noexc.i ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.thread ] ; 4 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.pre208, i64 %i.gq
  store i32 %.6.i.i, ptr %i.jw, align 4, !tbaa !14
  store i64 %i.ja, ptr %i.u, align 8, !tbaa !17, !alias.scope !82
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.pre208, i64 %i.ja
  store i32 0, ptr %i.jx, align 4, !tbaa !14
  %i.jy = add i64 %.0.i, 1                        ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jv
  br i1 %i.jz, label %.lr.ph.i, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !41

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ka = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !82 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.t
  br i1 %i.kb, label %.body129, label %.body129.sink.split

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bo
  %i.kc = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.kd = sub i64 1152921504606846975, %i.kc
  %i.ke = icmp ult i64 %i.kd, %i.ja
  br i1 %i.ke, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.bq:                                            ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc131 unwind label %.loopexit.split-lp182

.noexc131:                                        ; preds = %bb.bq
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.kf = phi ptr [ %i.t, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.pre208, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.kg = phi i64 [ %i.gn, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.kc, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.kh = phi i64 [ 0, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.ja, %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %i.ki = add i64 %i.kh, %i.kg                    ; 3 uses
  %i.kj = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.a
  br i1 %i.kk, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.kl = icmp ult i64 %i.kg, 4
  call void @llvm.assume(i1 %i.kl)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.km = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.kn = phi i64 [ %i.km, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ki, %i.kn
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not8.i.i.i.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kg ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.kh, 1
  br i1 %cond.i.i.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kp = load i32, ptr %i.kf, align 4, !tbaa !14
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !14
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.kq = shl i64 %i.kh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ko, ptr nonnull align 4 %i.kf, i64 %i.kq, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kg, i64 noundef 0, ptr noundef nonnull %i.kf, i64 noundef %i.kh)
          to label %bb.bw unwind label %.loopexit181

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bv
  store i64 %i.ki, ptr %i.b, align 8, !tbaa !17
  %i.kr = load ptr, ptr %3, align 8, !tbaa !18
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ki
  store i32 0, ptr %i.ks, align 4, !tbaa !14
  %i.kt = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.t
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.bw
  %i.kv = load i64, ptr %i.t, align 8, !tbaa !19
  %i.kw = shl i64 %i.kv, 2
  %i.kx = add i64 %i.kw, 4
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #18
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  %i.ky = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.n
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.la = load i64, ptr %i.n, align 8, !tbaa !19
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  store ptr %i.v, ptr %4, align 8, !tbaa !46
  %i.lc = load i64, ptr %i.x, align 8
  %i.ld = getelementptr inbounds i8, ptr %4, i64 %i.lc
  store ptr %i.w, ptr %i.ld, align 8, !tbaa !46
  store ptr %i.y, ptr %i.m, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !46
  %i.le = load ptr, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.aa
  br i1 %i.lf, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lg = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !46
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #16
  store ptr %i.ac, ptr %4, align 8, !tbaa !46
  %i.li = load i64, ptr %i.ae, align 8
  %i.lj = getelementptr inbounds i8, ptr %4, i64 %i.li
  store ptr %i.ad, ptr %i.lj, align 8, !tbaa !46
  store i64 0, ptr %i.af, align 8, !tbaa !84
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ag) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ch

bb.bx:                                            ; preds = %bb.al
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit176:                                     ; preds = %bb.am, %bb.aq, %.noexc125, %bb.ar
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp177:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit181:                                     ; preds = %bb.bv
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp182:                            ; preds = %bb.bq
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp182, %.loopexit181
  %lpad.phi185 = phi { ptr, i32 } [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ] ; 2 uses
  %i.ll = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.t
  br i1 %i.lm, label %.body129, label %.body129.sink.split

.body129.sink.split:                              ; preds = %bb.by, %bb.bp
  %.sink = phi ptr [ %i.ka, %bb.bp ], [ %i.ll, %bb.by ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.bp ], [ %lpad.phi185, %bb.by ]
  %i.ln = load i64, ptr %i.t, align 8, !tbaa !19
  %i.lo = shl i64 %i.ln, 2
  %i.lp = add i64 %i.lo, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lp) #18
  br label %.body129

.body129:                                         ; preds = %.body129.sink.split, %bb.by, %bb.bp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bp ], [ %lpad.phi185, %bb.by ], [ %.pn.ph, %.body129.sink.split ] ; 2 uses
  %i.lq = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.n
  br i1 %i.lr, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body129, %bb.at
  %.sink270 = phi ptr [ %i.gk, %bb.at ], [ %i.lq, %.body129 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.gj, %bb.at ], [ %.pn, %.body129 ]
  %i.ls = load i64, ptr %i.n, align 8, !tbaa !19
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %.sink270, i64 noundef %i.lt) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body129, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.at ], [ %.pn, %.body129 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bz
end_hunk_1
