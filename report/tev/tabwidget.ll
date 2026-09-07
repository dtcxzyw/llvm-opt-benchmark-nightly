Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tabwidget?download=true
inline.NumInlined: 1242
inline.NumDeleted: 651
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7nanogui13TabWidgetBaseC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE:bb.a
  br i1 %i.bt, label %.sink.split.i.i12, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.not.i.i11 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i11, label %_ZNSt3__18functionIFviEED2Ev.exit, label %.sink.split.i.i12

.sink.split.i.i12:                                ; preds = %bb.k, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.sink2.i.i13 = phi i64 [ 32, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit ], [ 40, %bb.k ]
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink2.i.i13
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit

_ZNSt3__18functionIFviEED2Ev.exit:                ; preds = %bb.k, %.sink.split.i.i12
  %i.bx = load ptr, ptr %i.z, align 16, !tbaa !69 ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.y
  br i1 %i.by, label %.sink.split.i.i15, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit
  %.not.i.i14 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i14, label %_ZNSt3__18functionIFviEED2Ev.exit17, label %.sink.split.i.i15

.sink.split.i.i15:                                ; preds = %bb.l, %_ZNSt3__18functionIFviEED2Ev.exit
  %.sink2.i.i16 = phi i64 [ 32, %_ZNSt3__18functionIFviEED2Ev.exit ], [ 40, %bb.l ]
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink2.i.i16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit17

_ZNSt3__18functionIFviEED2Ev.exit17:              ; preds = %bb.l, %.sink.split.i.i15
  %i.cc = load ptr, ptr %i.r, align 16, !tbaa !73 ; 4 uses
  %.not.i.i18 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit17
  store ptr %i.cc, ptr %i.ae, align 8, !tbaa !72
  %i.cd = load ptr, ptr %i.af, align 16, !tbaa !77
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__18functionIFviEED2Ev.exit17, %bb.m
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !73  ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i19, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ch, ptr %i.ci, align 16, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !77
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cn) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, %bb.n
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #22
  %i.co = load i8, ptr %i.a, align 8
  %i.cp = trunc i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.o:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cs = load i64, ptr %i.a, align 8
  %i.ct = and i64 %i.cs, -2
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.ct) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %i.bl, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20 ], [ %i.bl, %bb.o ]
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #22
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load i64, ptr %i.d, align 8
  %i.j = and i64 %i.i, -2
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #21
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #21
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui13TabWidgetBase10remove_tabEi(ptr noundef nonnull align 16 dereferenceable(464) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !72  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !73   ; 3 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.0914.i = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0914.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !71
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = add nuw i64 %.0914.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.d:                                             ; preds = %._crit_edge.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #22
  resume { ptr, i32 } %i.p

_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit:     ; preds = %.lr.ph.i
  %i.q = trunc i64 %.0914.i to i32                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81
  %i.t = icmp eq i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !78
  %sext = shl i64 %.0914.i, 32
  %i.w = ashr exact i64 %sext, 32                 ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.x, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit ] ; 5 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.z, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit ] ; 4 uses
  %i.ac = load i8, ptr %storemerge9.i.i.i.i.i.i, align 8
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = load i64, ptr %storemerge9.i.i.i.i.i.i, align 8
  %i.ah = and i64 %i.ag, -2
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !82
  store i8 0, ptr %.08.i.i.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.al = ptrtoint ptr %i.ak to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit
  %.pre-phi = phi i64 [ %i.al, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i ], [ %i.y, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit ]
  %i.am = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i ], [ %i.ab, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit.i ], [ %i.x, %_ZNK7nanogui13TabWidgetBase9tab_indexEi.exit ] ; 2 uses
  %i.an = sub i64 %.pre-phi, %i.y
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 %i.an
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.am
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.ap, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i ], [ %i.am, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = load i64, ptr %i.ap, align 8
  %i.av = and i64 %i.au, -2
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #21
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.ap
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE.exit, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.i
  store ptr %i.ao, ptr %i.aa, align 8, !tbaa !79
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.w ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.az = load ptr, ptr %i.d, align 16, !tbaa !72 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne180100ENS_11__wrap_iterIPKiEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ax, ptr nonnull align 4 %i.ay, i64 %i.bc, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne180100ENS_11__wrap_iterIPKiEE.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne180100ENS_11__wrap_iterIPKiEE.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE.exit, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  store ptr %i.bd, ptr %i.d, align 16, !tbaa !72
  %i.be = load i32, ptr %i.r, align 4, !tbaa !81  ; 2 uses
  %.not = icmp slt i32 %i.be, %i.q
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne180100ENS_11__wrap_iterIPKiEE.exit
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %.sroa.speculated = add nsw i32 %i.bf, -1
  store i32 %.sroa.speculated, ptr %i.r, align 4, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne180100ENS_11__wrap_iterIPKiEE.exit
  %i.bg = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !100
  tail call void @_ZN7nanogui13TabWidgetBase14perform_layoutEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !69 ; 3 uses
  %.not17 = icmp eq ptr %i.bk, null
  br i1 %.not17, label %bb.j, label %_ZNKSt3__18functionIFviEEclEi.exit

_ZNKSt3__18functionIFviEEclEi.exit:               ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.b, align 4, !tbaa !71
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__18functionIFviEEclEi.exit, %bb.i
  br i1 %i.t, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !69 ; 3 uses
  %.not18 = icmp eq ptr %i.bp, null
  br i1 %.not18, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.br = load ptr, ptr %i.d, align 16, !tbaa !72
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt3__18functionIFviEEclEi.exit8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !81
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !71
  br label %_ZNKSt3__18functionIFviEEclEi.exit8

_ZNKSt3__18functionIFviEEclEi.exit8:              ; preds = %bb.m, %bb.l
  %i.bx = phi i32 [ %i.bw, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !71
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = load ptr, ptr %0, align 16, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 16 dereferenceable(464) %0)
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt3__18functionIFviEEclEi.exit8, %bb.k, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ce, align 16, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK7nanogui13TabWidgetBase9tab_indexEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(464) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !72  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0914 = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0914
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.0914, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #22
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %.lr.ph
  %i.o = trunc i64 %.0914 to i32
  ret i32 %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui13TabWidgetBase14perform_layoutEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(464) initializes((232, 240)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %i.d = load ptr, ptr %i.b, align 16, !tbaa !73
  store ptr %i.d, ptr %i.c, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.k = select i1 %i.g, ptr %i.i, ptr %i.j
  tail call void @nvgFontFace(ptr noundef %1, ptr noundef %i.k)
  %i.l = tail call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.m = sitofp i32 %i.l to float
  tail call void @nvgFontSize(ptr noundef %1, float noundef %i.m)
  tail call void @nvgTextAlign(ptr noundef %1, i32 noundef 9)
  %i.n = load ptr, ptr %i.b, align 16, !tbaa !73  ; 2 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !78  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %.not38 = icmp eq ptr %i.p, %i.r
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.g

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.w = phi ptr [ %i.n, %bb.a ], [ %.0.i23, %bb.n ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.n ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !77  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr %i.w, align 4, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne180100ERKi.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.b, align 16, !tbaa !73
  %i.ac = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 2
end_hunk_0
begin_hunk_1_@_ZN7nanogui9TabWidget10insert_tabEiNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEPNS_6WidgetE:bb.a
  br i1 %i.p, label %bb.d, label %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19
  unreachable

_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.c
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub i64 %i.q, %i.l                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.r, 9223372036854775792
  %i.s = ashr exact i64 %i.r, 3
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.o)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 1152921504606846975 ; 4 uses
  %i.t = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ugt i64 %.0.i.i.i, 1152921504606846975
  br i1 %i.u, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #19
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i
  %i.v = shl nuw i64 %.0.i.i.i, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 5 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.0.i.i.i
  store i32 %i.a, ptr %i.x, align 8, !tbaa !142
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %4, ptr %i.z, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !139 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 16, !tbaa !138 ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not14.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.x, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ]
  %.sroa.19.015.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.19.015.i.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !145
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i
  %.sroa.2.0.copyload.i.i.i.i = phi ptr [ %i.x, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.b, align 16, !tbaa !144
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !144
  %i.ag = load ptr, ptr %i.e, align 16, !tbaa !144
  store ptr %i.y, ptr %i.e, align 16, !tbaa !144
  %.not.i6.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i6.i.i, label %_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.aj) #21
  br label %_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit

_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit: ; preds = %bb.b, %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.f
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.aa, %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.aa, %bb.f ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !139
  %i.ak = load ptr, ptr %0, align 16, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 16 dereferenceable(489) %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN7nanogui9TabWidget10append_tabENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(489) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr noundef initializes((104, 105)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 0, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !78
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call noundef i32 @_ZN7nanogui13TabWidgetBase10insert_tabEiNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(464) %0, i32 noundef %i.j, ptr readonly %1, i64 %2) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !144 ; 2 uses
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.n, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.l, align 16, !tbaa !138
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 4
  %i.y = add nsw i64 %i.x, 1                      ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1152921504606846975
  br i1 %i.z, label %bb.d, label %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #19
  unreachable

_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ab, 9223372036854775792
  %i.ac = ashr exact i64 %i.ab, 3
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.y)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 1152921504606846975 ; 4 uses
  %i.ad = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ugt i64 %.0.i.i.i, 1152921504606846975
  br i1 %i.ae, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #19
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit.i.i
  %i.af = shl nuw i64 %.0.i.i.i, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #20 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.w ; 5 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.0.i.i.i
  store i32 %i.k, ptr %i.ah, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %3, ptr %i.aj, align 8, !tbaa !143
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !139 ; 2 uses
  %i.am = load ptr, ptr %i.l, align 16, !tbaa !138 ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not14.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i, %.lr.ph.i.i.i.i
  %i.an = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ]
  %.sroa.19.015.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.al, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.19.015.i.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !145
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.am
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i
  %.sroa.2.0.copyload.i.i.i.i = phi ptr [ %i.ah, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4pairIiPN7nanogui6WidgetEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.l, align 16, !tbaa !144
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !144
  %i.aq = load ptr, ptr %i.o, align 16, !tbaa !144
  store ptr %i.ai, ptr %i.o, align 16, !tbaa !144
  %.not.i6.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i6.i.i, label %_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.at) #21
  br label %_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit

_ZNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE12emplace_backIJRiRS4_EEERS5_DpOT_.exit: ; preds = %bb.b, %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.f
  %.0.i = phi ptr [ %i.s, %bb.b ], [ %i.ak, %_ZNSt3__114__split_bufferINS_4pairIiPN7nanogui6WidgetEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.ak, %bb.f ]
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !139
  %i.au = load ptr, ptr %0, align 16, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 16 dereferenceable(489) %0)
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui9TabWidget10remove_tabEi(ptr noundef nonnull align 16 dereferenceable(489) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7nanogui13TabWidgetBase10remove_tabEi(ptr noundef nonnull align 16 dereferenceable(464) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !138 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  %.not1218 = icmp eq ptr %i.b, %i.d
  br i1 %.not1218, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.05.019 = phi ptr [ %i.t, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = load i32, ptr %.sroa.05.019, align 8, !tbaa !142
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.019, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = ptrtoint ptr %.sroa.05.019 to i64        ; 2 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not7.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = load i32, ptr %.08.i.i.i.i.i.i, align 4, !tbaa !71
  store i32 %i.n, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !143
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !225

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.019, i64 16 ; 2 uses
  %.not12 = icmp eq ptr %i.t, %i.d
  br i1 %.not12, label %.thread, label %.lr.ph, !llvm.loop !226

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %2 = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i.i to i64
  %i.u = sub i64 %2, %i.i
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !139
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.x = load i8, ptr %i.w, align 8, !tbaa !137, !range !104, !noundef !105
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7nanogui6Widget12remove_childEPKS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull %i.h)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui13TabWidgetBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7nanogui13TabWidgetBaseE, i64 16), ptr %0, align 16, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !70  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink2.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink2.i.i
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !0
  br label %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit

_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit: ; preds = %bb.b, %.sink.split.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !69  ; 4 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %.sink.split.i.i2, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__18functionIFviEED2Ev.exit, label %.sink.split.i.i2

.sink.split.i.i2:                                 ; preds = %bb.c, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.sink2.i.i3 = phi i64 [ 32, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit ], [ 40, %bb.c ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink2.i.i3
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit

_ZNSt3__18functionIFviEED2Ev.exit:                ; preds = %bb.c, %.sink.split.i.i2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !69  ; 4 uses
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %.sink.split.i.i5, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit
  %.not.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i4, label %_ZNSt3__18functionIFviEED2Ev.exit7, label %.sink.split.i.i5

.sink.split.i.i5:                                 ; preds = %bb.d, %_ZNSt3__18functionIFviEED2Ev.exit
  %.sink2.i.i6 = phi i64 [ 32, %_ZNSt3__18functionIFviEED2Ev.exit ], [ 40, %bb.d ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink2.i.i6
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit7

_ZNSt3__18functionIFviEED2Ev.exit7:               ; preds = %bb.d, %.sink.split.i.i5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !73  ; 4 uses
  %.not.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i8, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.w, ptr %i.x, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !77
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ac) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__18functionIFviEED2Ev.exit7, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i9, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit10, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ak) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit10

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit10: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !78 ; 5 uses
  %.not.i.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i.i11, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ap, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i ], [ %i.ao, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = load i64, ptr %i.ap, align 8
  %i.av = and i64 %i.au, -2
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #21
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.ap
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.al, align 16, !tbaa !78
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.g
  %i.aw = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.am, %bb.g ] ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !80
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bb) #21
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit10, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = trunc i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bh = load i64, ptr %i.bc, align 8
  %i.bi = and i64 %i.bh, -2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bi) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit, %bb.i
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui13TabWidgetBaseD0Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN7nanogui13TabWidgetBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(464) dereferenceable(464) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #21
  ret void
}

declare void @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare void @_ZN7nanogui6Widget9add_childEiPS0_(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget11focus_eventEb(ptr noundef nonnull align 8 dereferenceable(148), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget14keyboard_eventEiiii(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget24keyboard_character_eventEj(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef) unnamed_addr #1

end_hunk_1
