Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/formatter?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1112
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7jsonnet8internal11SortImports13buildGroupASTERSt6vectorINS1_10ImportElemESaIS3_EEPNS0_3ASTERKS2_INS0_13FodderElementESaIS9_EE:bb.a
.body34.thread:                                   ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body34:                                          ; preds = %bb.e
  %.pr = load ptr, ptr %6, align 8, !tbaa !266    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %.body34
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.pr to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.at) #28
  br label %.body

bb.i:                                             ; preds = %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !266   ; 3 uses
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !265 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.au, %bb.i ] ; 2 uses
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i.i23, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.ax = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, %bb.j
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bc = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.k
  br i1 %i.bd, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit
  %i.be = load i64, ptr %i.k, align 8, !tbaa !49
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !68
  %i.bg = load ptr, ptr %4, align 8, !tbaa !33    ; 3 uses
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %.not4.i.i.i25 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i25, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i27 = phi ptr [ %i.by, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.bg, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i26, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.i26 ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i26
  %i.bs = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.i26 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #28
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 40 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i.i28, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i26, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i29 = load ptr, ptr %4, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %i.bz = phi ptr [ %.pr.i29, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bg, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ] ; 3 uses
  %.not.i.i1.i30 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #28
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ce = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  br i1 %i.ce, label %.invoke, label %._crit_edge.loopexit, !llvm.loop !391

bb.m:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.n:                                             ; preds = %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  br label %.body

.body:                                            ; preds = %.body34.thread, %bb.h, %.body34, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.n ], [ %i.am, %.body34 ], [ %i.am, %bb.h ], [ %i.ap, %.body34.thread ]
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %7) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ch = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.k
  br i1 %i.ci, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %.loopexit
  %i.cj = load i64, ptr %i.k, align 8, !tbaa !49
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit33

_ZN7jsonnet8internal13LocationRangeD2Ev.exit33:   ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit33, %bb.b
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit33 ], [ %i.ac, %bb.b ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN7jsonnet8internalL16fodder_push_backERSt6vectorINS0_13FodderElementESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::vector.14", align 8    ; 10 uses
  %.val19 = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 4 uses
  %i.e = icmp eq ptr %.val19, %.val20
  br i1 %i.e, label %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21.thread, label %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit

_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %.val20, i64 -40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = icmp ne i32 %i.g, 1
  %i.i = load i32, ptr %1, align 8                ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21

bb.b:                                             ; preds = %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 2, ptr %i.a, align 4, !tbaa !264
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindERKjS8_RKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !63
  %i.t = getelementptr inbounds i8, ptr %.val20, i64 -32
  store i32 %i.s, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61
  %i.w = getelementptr inbounds i8, ptr %.val20, i64 -36 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61
  %i.y = add i32 %i.x, %i.v
  store i32 %i.y, ptr %i.w, align 4, !tbaa !61
  br label %bb.j

_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21: ; preds = %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit
  %3 = icmp eq i32 %i.g, 1
  %4 = icmp eq i32 %i.i, 2
  %or.cond24 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond24, label %bb.e, label %bb.i

_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21.thread: ; preds = %bb.a
  %.old = load i32, ptr %1, align 8, !tbaa !41
  %.old23 = icmp eq i32 %.old, 2
  br i1 %.old23, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21, %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.aa = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindEiRKjS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %2, align 8, !tbaa !43    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21.thread, %_ZN7jsonnet8internalL24fodder_has_clean_endlineERKSt6vectorINS0_13FodderElementESaIS2_EE.exit21
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !262

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.o = phi ptr [ null, %bb.b ], [ %i.n, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !86
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.s, ptr %i.t, ptr noundef %i.o)
          to label %_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.v

_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit: ; preds = %bb.d
  store ptr %i.u, ptr %i.p, align 8, !tbaa !42
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindERKjS8_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !264
  %i.f = load i32, ptr %2, align 4, !tbaa !84
  %i.g = load i32, ptr %3, align 4, !tbaa !84
  store i32 %i.e, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.h, align 4, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.p, 9223372036854775776
  br i1 %i.q, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !262

.noexc.i.i.i:                                     ; preds = %bb.c
end_hunk_0
