inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE:bb.a
  %.sroa.2.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store ptr %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i33, align 8, !tbaa !62
  br label %_ZN14SwapAndRestoreIbED2Ev.exit

_ZN14SwapAndRestoreIbED2Ev.exit:                  ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit42, %bb.k, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, %bb.z, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15ClosureTypeNameEJRNS0_9NodeArrayER10StringViewEEEPNS0_4NodeEDpOT0_.exit
  %.4.i = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit ], [ %i.du, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15ClosureTypeNameEJRNS0_9NodeArrayER10StringViewEEEPNS0_4NodeEDpOT0_.exit ], [ null, %bb.z ], [ null, %bb.k ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit42 ]
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !150
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %i.dy = add i8 %i.e, -49
  %or.cond = icmp ult i8 %i.dy, 9
  br i1 %or.cond, label %bb.ad, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread

bb.ad:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27
  %i.dz = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseSourceNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27
  %i.ea = icmp ult i64 %i.d, 2
  br i1 %i.ea, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread
  %i.eb = load i16, ptr %.val20, align 1
  %i.ec = icmp ne i16 17220, %i.eb
  %i.ed = zext i1 %i.ec to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.ae, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread.thread

bb.ae:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val20, i64 2
  store ptr %i.ee, ptr %0, align 16, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !27
  %i.ei = load ptr, ptr %i.ef, align 16, !tbaa !26
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseSourceNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %.not.not123 = icmp eq ptr %i.em, null
  br i1 %.not.not123, label %.critedge.thread, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph124, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit
  %i.ep = phi ptr [ %i.em, %.lr.ph124 ], [ %i.fq, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit ]
  %i.eq = load ptr, ptr %i.eg, align 8, !tbaa !27 ; 3 uses
  %i.er = load ptr, ptr %i.en, align 16, !tbaa !28
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.ag, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

bb.ag:                                            ; preds = %bb.af
  %i.et = load ptr, ptr %i.ef, align 16, !tbaa !26 ; 5 uses
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 6 uses
  %i.ex = ashr exact i64 %i.ew, 2
  %i.ey = icmp eq ptr %i.et, %i.eo
  %i.ez = shl i64 %i.ew, 1                        ; 2 uses
  br i1 %i.ey, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ez) #21 ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fc = icmp sgt i64 %i.ew, 8
  br i1 %i.fc, label %bb.ak, label %bb.al, !prof !109

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %i.et, i64 %i.ew, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fd = icmp eq i64 %i.ew, 8
  br i1 %i.fd, label %bb.am, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !71
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %i.fa, ptr %i.ef, align 16, !tbaa !26
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.an:                                            ; preds = %bb.ag
  %i.ff = tail call ptr @realloc(ptr noundef %i.et, i64 noundef %i.ez) #22 ; 3 uses
  store ptr %i.ff, ptr %i.ef, align 16, !tbaa !26
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ao, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.an, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.fh = phi ptr [ %i.ff, %bb.an ], [ %i.fa, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ew
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ex
  store ptr %i.fj, ptr %i.en, align 16, !tbaa !28
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.af, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.fk = phi ptr [ %i.fi, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.eq, %bb.af ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fl, ptr %i.eg, align 8, !tbaa !27
  store ptr %i.ep, ptr %i.fk, align 8, !tbaa !71
  %i.fm = load ptr, ptr %0, align 16, !tbaa !11   ; 3 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !25
  %.not.i31 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i31, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !7
  %i.fp = icmp eq i8 %i.fo, 69
  br i1 %i.fp, label %bb.aq, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit: ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.ap
  %i.fq = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseSourceNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %.not.not = icmp eq ptr %i.fq, null
  br i1 %.not.not, label %.critedge.thread, label %bb.af, !llvm.loop !153

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store ptr %i.fs, ptr %0, align 16, !tbaa !11
  %i.ft = load ptr, ptr %i.ef, align 16, !tbaa !26
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.el
  %i.fv = tail call fastcc { ptr, i64 } @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13makeNodeArrayIPPNS0_4NodeEEENS0_9NodeArrayET_SA_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %i.fu, ptr noundef nonnull %i.fr) ; 2 uses
  %i.fw = load ptr, ptr %i.ef, align 16, !tbaa !26
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.el
  store ptr %i.fx, ptr %i.eg, align 8, !tbaa !27
  %i.fy = extractvalue { ptr, i64 } %i.fv, 0
  %i.fz = extractvalue { ptr, i64 } %i.fv, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 16, !tbaa !38 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !57 ; 2 uses
  %i.ge = add i64 %i.gd, -4048
  %i.gf = icmp ult i64 %i.ge, -4080
  br i1 %i.gf, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.gg = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.as, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.ar
  store ptr %i.gb, ptr %i.gg, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 0, ptr %i.gi, align 8, !tbaa !57
  store ptr %i.gg, ptr %i.ga, align 16, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i, %bb.aq
  %i.gj = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.gd, %bb.aq ] ; 2 uses
  %i.gk = phi ptr [ %i.gg, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.gb, %bb.aq ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = add nsw i64 %i.gj, 32
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !57
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gj ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store <4 x i8> <i8 41, i8 1, i8 1, i8 1>, ptr %i.gp, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle21StructuredBindingNameE, i64 16), ptr %i.go, align 8, !tbaa !47
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.fy, ptr %i.gq, align 8, !tbaa !84
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store i64 %i.fz, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !43
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread117

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread.thread: ; preds = %bb.a, %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread
  %i.gr = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseOperatorNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit: ; preds = %_ZN14SwapAndRestoreIbED2Ev.exit, %bb.ad, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread.thread
  %.115 = phi ptr [ %i.gr, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit27.thread.thread ], [ %i.dz, %bb.ad ], [ %.4.i, %_ZN14SwapAndRestoreIbED2Ev.exit ] ; 2 uses
  %.not = icmp eq ptr %.115, null
  br i1 %.not, label %.critedge.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread117

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread117: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15UnnamedTypeNameEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit, %.critedge, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit
  %.115120 = phi ptr [ %.115, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit ], [ %i.aj, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15UnnamedTypeNameEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit ], [ %i.go, %.critedge ]
  %i.gs = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE12parseAbiTagsEPNS0_4NodeE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull %.115120)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit, %bb.b, %bb.ae, %_ZNK10StringView10startsWithES_.exit.i54, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit78, %bb.f, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread117
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit ], [ null, %bb.b ], [ %i.gs, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread117 ], [ null, %bb.f ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit78 ], [ null, %_ZNK10StringView10startsWithES_.exit.i54 ], [ null, %bb.ae ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle8NameType9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !62 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp eq ptr %.sroa.2.0.copyload, %.sroa.0.0.copyload
  br i1 %i.e, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = add i64 %i.g, %i.d                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i64 %i.h, %i.j
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i64 %i.j, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.h) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.i, align 8
  %i.l = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !45
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.f, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.o = phi ptr [ %.pre.i, %bb.b ], [ %i.l, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.sroa.0.0.copyload, i64 %i.d, i1 false)
  %i.q = load i64, ptr %i.f, align 8, !tbaa !44
  %i.r = add i64 %i.q, %i.d
  store i64 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %bb.a, %_ZN12OutputStream4growEm.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4llvh16itanium_demangle8NameType11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle8NameTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle10NestedName9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !50
  %.not.i = icmp eq i8 %i.g, 1
  br i1 %.not.i, label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  br label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit

_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i64 %i.m, %i.o
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit
  %i.p = shl i64 %i.o, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.m) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.n, align 8
  %i.q = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !45
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.k, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit
  %i.s = phi i64 [ %i.l, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.t = phi ptr [ %.pre.i, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit ], [ %i.q, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i16 14906, ptr %i.u, align 1
  %i.v = load i64, ptr %i.k, align 8, !tbaa !44
  %i.w = add i64 %i.v, 2
  store i64 %i.w, ptr %i.k, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119  ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !50
  %.not.i4 = icmp eq i8 %i.ad, 1
  br i1 %.not.i4, label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5, label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStream4growEm.exit.i
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  br label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5

_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5: ; preds = %_ZN12OutputStream4growEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4llvh16itanium_demangle10NestedName11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle10NestedNameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA5_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 captures(none) dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !38  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = add i64 %i.d, -4048
  %i.f = icmp ult i64 %i.e, -4080
  br i1 %i.f, label %bb.b, label %_ZN12_GLOBAL__N_116DefaultAllocator8makeNodeIN4llvh16itanium_demangle8NameTypeEJRA5_KcEEEPT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i: ; preds = %bb.b
  store ptr %i.b, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !57
  store ptr %i.g, ptr %i.a, align 16, !tbaa !38
  br label %_ZN12_GLOBAL__N_116DefaultAllocator8makeNodeIN4llvh16itanium_demangle8NameTypeEJRA5_KcEEEPT_DpOT0_.exit

end_hunk_0
begin_hunk_1_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE16parseExprPrimaryEv:bb.a
bb.ci:                                            ; preds = %bb.ch
  %i.jy = load i8, ptr %i.jv, align 1, !tbaa !7   ; 4 uses
  %i.jz = sext i8 %i.jy to i32
  %isdigittmp.i = add nsw i32 %i.jz, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i.preheader, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.ci
  %i.ka = sext i8 %i.jy to i32
  %isdigittmp2.i192 = add nsw i32 %i.ka, -48
  %isdigit3.i193 = icmp ult i32 %isdigittmp2.i192, 10
  br i1 %isdigit3.i193, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph
  %.pr = load i8, ptr %i.kd, align 1, !tbaa !7    ; 2 uses
  %i.kb = sext i8 %.pr to i32
  %isdigittmp2.i = add nsw i32 %i.kb, -48
  %isdigit3.i = icmp ult i32 %isdigittmp2.i, 10
  br i1 %isdigit3.i, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.ithread-pre-split
  %i.kc = phi ptr [ %i.kd, %.lr.ph.ithread-pre-split ], [ %i.jv, %.lr.ph.i.preheader ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1 ; 5 uses
  store ptr %i.kd, ptr %0, align 16, !tbaa !11
  %.not.i150 = icmp eq ptr %i.jw, %i.kd
  br i1 %.not.i150, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !63

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i.preheader
  %.lcssa190 = phi i8 [ %i.jy, %.lr.ph.i.preheader ], [ %.pr, %.lr.ph.ithread-pre-split ]
  %.lcssa = phi ptr [ %i.jv, %.lr.ph.i.preheader ], [ %i.kd, %.lr.ph.ithread-pre-split ] ; 3 uses
  %i.ke = icmp eq ptr %i.jv, %.lcssa
  br i1 %i.ke, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %i.kf = icmp eq i8 %.lcssa190, 69
  br i1 %i.kf, label %bb.ck, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

bb.ck:                                            ; preds = %bb.cj
  %i.kg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  store ptr %i.kg, ptr %0, align 16, !tbaa !11
  %i.kh = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15IntegerCastExprEJRPNS0_4NodeER10StringViewEEES8_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr nonnull %i.jt, ptr nonnull %i.jv, ptr nonnull %.lcssa)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %.pr185 = load i8, ptr %i.jv, align 1, !tbaa !7
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split, %bb.ci
  %i.ki = phi i8 [ %.pr185, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split ], [ %i.jy, %bb.ci ]
  %i.kj = icmp eq i8 %i.ki, 69
  br i1 %i.kj, label %bb.cl, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

bb.cl:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store ptr %i.kk, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit: ; preds = %.lr.ph, %bb.ch, %bb.e, %bb.g, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread, %bb.cj, %bb.ce, %bb.cf, %bb.cd, %bb.cc, %_ZNK10StringView10startsWithES_.exit.i74, %bb.a, %bb.b, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread, %bb.cl, %bb.ck, %bb.cg, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIeEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.by, %.critedge.i68, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIdEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.az, %.critedge.i30, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIfEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.ae, %.critedge.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.d
  %.3 = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ %i.x, %bb.f ], [ %i.ai, %bb.h ], [ null, %bb.cj ], [ %i.ak, %bb.i ], [ %i.am, %bb.j ], [ %i.ao, %bb.k ], [ %i.aq, %bb.l ], [ %i.as, %bb.m ], [ %i.au, %bb.n ], [ %i.aw, %bb.o ], [ %i.ay, %bb.p ], [ %i.ba, %bb.q ], [ %i.bc, %bb.r ], [ %i.be, %bb.s ], [ %i.bg, %bb.t ], [ %i.bi, %bb.u ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit ], [ null, %bb.w ], [ null, %bb.aj ], [ null, %bb.be ], [ %i.jn, %bb.cg ], [ null, %bb.ch ], [ null, %bb.v ], [ %i.dd, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIfEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ai ], [ %i.fy, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIdEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i30 ], [ null, %bb.az ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.bd ], [ %i.jf, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIeEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i68 ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bw ], [ null, %bb.bv ], [ null, %bb.bu ], [ null, %bb.bt ], [ null, %bb.bs ], [ null, %bb.br ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.bo ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %bb.cc ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread ], [ %i.kh, %bb.ck ], [ null, %bb.ce ], [ %i.jt, %bb.cl ], [ null, %bb.b ], [ null, %_ZNK10StringView10startsWithES_.exit.i74 ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.g ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread ], [ null, %bb.e ], [ null, %.lr.ph ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE18parseFunctionParamEv(ptr noundef nonnull align 16 captures(none) dereferenceable(4864) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !11    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 15 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.a
  %i.h = load i16, ptr %i.a, align 1
  %i.i = icmp ne i16 28774, %i.h
  %i.j = zext i1 %i.i to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.b, label %_ZNK10StringView10startsWithES_.exit.i9

bb.b:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 5 uses
  store ptr %i.k, ptr %0, align 16, !tbaa !11
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7
  %i.m = icmp eq i8 %i.l, 114
  br i1 %i.m, label %bb.d, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.n, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %.not.i1.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i1.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = icmp eq i8 %i.p, 86
  br i1 %i.q, label %bb.f, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i: ; preds = %bb.f, %bb.e, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.o, %bb.e ], [ %i.o, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i ] ; 5 uses
  %.not.i4.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i4.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %i.u = icmp eq i8 %i.t, 75
  br i1 %i.u, label %bb.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.v, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i, %bb.g, %bb.h
  %i.w = phi ptr [ %i.s, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i ], [ %i.s, %bb.g ], [ %i.v, %bb.h ] ; 7 uses
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit
  %i.y = load i8, ptr %i.w, align 1, !tbaa !7
  %i.z = sext i8 %i.y to i32
  %isdigittmp.i = add nsw i32 %i.z, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.val911.i = phi ptr [ %i.ac, %bb.j ], [ %i.w, %bb.i ] ; 4 uses
  %i.aa = load i8, ptr %.val911.i, align 1, !tbaa !7
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp2.i = add nsw i32 %i.ab, -48
  %isdigit3.i = icmp ult i32 %isdigittmp2.i, 10
  br i1 %isdigit3.i, label %bb.j, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val911.i, i64 1 ; 5 uses
  store ptr %i.ac, ptr %0, align 16, !tbaa !11
  %.not.i = icmp eq ptr %i.c, %i.ac
  br i1 %.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, label %.lr.ph.i, !llvm.loop !63

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit: ; preds = %.lr.ph.i, %bb.j, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit, %bb.i
  %i.ad = phi ptr [ %i.w, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ %i.w, %bb.i ], [ %i.ac, %bb.j ], [ %.val911.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ null, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ null, %bb.i ], [ %i.ac, %bb.j ], [ %.val911.i, %.lr.ph.i ] ; 2 uses
  %.not.i6 = icmp eq ptr %i.ad, %i.c
  br i1 %.not.i6, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = icmp eq i8 %i.ae, 95
  br i1 %i.af, label %bb.l, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ag, ptr %0, align 16, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !38 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %i.al = add i64 %i.ak, -4048
  %i.am = icmp ult i64 %i.al, -4080
  br i1 %i.am, label %bb.m, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.m
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !57
  store ptr %i.an, ptr %i.ah, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

_ZNK10StringView10startsWithES_.exit.i9:          ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.aq = load i16, ptr %i.a, align 1
  %i.ar = icmp ne i16 19558, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i11 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i11, label %bb.o, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.o:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i9
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %.ptr, ptr %0, align 16, !tbaa !11
  %i.at = icmp eq ptr %i.c, %.ptr
  br i1 %i.at, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i8, ptr %.ptr, align 1, !tbaa !7
  %i.av = sext i8 %i.au to i32
  %isdigittmp.i16 = add nsw i32 %i.av, -48
  %isdigit.i17 = icmp ult i32 %isdigittmp.i16, 10
  br i1 %isdigit.i17, label %.lr.ph.i22.preheader, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

.lr.ph.i22.preheader:                             ; preds = %bb.p
  %.val911.i23.ptr131 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aw = load i8, ptr %.val911.i23.ptr131, align 1, !tbaa !7
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp2.i24132 = add nsw i32 %i.ax, -48
  %isdigit3.i25133 = icmp ult i32 %isdigittmp2.i24132, 10
  br i1 %isdigit3.i25133, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

.lr.ph.i22:                                       ; preds = %.lr.ph
  %.val911.i23.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.ay = load i8, ptr %.val911.i23.ptr, align 1, !tbaa !7
  %i.az = sext i8 %i.ay to i32
  %isdigittmp2.i24 = add nsw i32 %i.az, -48
  %isdigit3.i25 = icmp ult i32 %isdigittmp2.i24, 10
  br i1 %isdigit3.i25, label %.lr.ph, label %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22
  %.val911.i23.idx134 = phi i64 [ %.val911.i23.add, %.lr.ph.i22 ], [ 2, %.lr.ph.i22.preheader ]
  %.val911.i23.add = add nuw i64 %.val911.i23.idx134, 1 ; 7 uses
  %.ptr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  store ptr %.ptr80, ptr %0, align 16, !tbaa !11
  %exitcond = icmp eq i64 %.val911.i23.add, %i.f
  br i1 %exitcond, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, label %.lr.ph.i22, !llvm.loop !63

.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge: ; preds = %.lr.ph.i22
  %.ptr80.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.ba = icmp eq i64 %.val911.i23.add, 2
  br i1 %i.ba, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit: ; preds = %.lr.ph
  %.ptr80.le141 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge
  %i.bb = phi ptr [ %.ptr80.le141, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit ], [ %.ptr80.le, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ] ; 4 uses
  %.not.i28 = icmp eq ptr %i.bb, %i.c
  br i1 %.not.i28, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = icmp eq i8 %i.bc, 112
  br i1 %i.bd, label %bb.r, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 5 uses
  store ptr %i.be, ptr %0, align 16, !tbaa !11
  %.not.i.i31 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i31, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = icmp eq i8 %i.bf, 114
  br i1 %i.bg, label %bb.t, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  store ptr %i.bh, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32: ; preds = %bb.t, %bb.s, %bb.r
  %i.bi = phi ptr [ %i.bh, %bb.t ], [ %i.be, %bb.s ], [ %i.be, %bb.r ] ; 5 uses
  %.not.i1.i34 = icmp eq ptr %i.bi, %i.c
  br i1 %.not.i1.i34, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  %i.bk = icmp eq i8 %i.bj, 86
  br i1 %i.bk, label %bb.v, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bl, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35: ; preds = %bb.v, %bb.u, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32
  %i.bm = phi ptr [ %i.bl, %bb.v ], [ %i.bi, %bb.u ], [ %i.bi, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32 ] ; 5 uses
  %.not.i4.i37 = icmp eq ptr %i.bm, %i.c
  br i1 %.not.i4.i37, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = icmp eq i8 %i.bn, 75
  br i1 %i.bo, label %bb.x, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bp, ptr %0, align 16, !tbaa !11
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35, %bb.w, %bb.x
  %i.bq = phi ptr [ %i.bm, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35 ], [ %i.bm, %bb.w ], [ %i.bp, %bb.x ] ; 7 uses
  %i.br = icmp eq ptr %i.c, %i.bq
  br i1 %i.br, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bt = sext i8 %i.bs to i32
  %isdigittmp.i41 = add nsw i32 %i.bt, -48
  %isdigit.i42 = icmp ult i32 %isdigittmp.i41, 10
  br i1 %isdigit.i42, label %.lr.ph.i47, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52

.lr.ph.i47:                                       ; preds = %bb.y, %bb.z
  %.val911.i48 = phi ptr [ %i.bw, %bb.z ], [ %i.bq, %bb.y ] ; 4 uses
  %i.bu = load i8, ptr %.val911.i48, align 1, !tbaa !7
  %i.bv = sext i8 %i.bu to i32
  %isdigittmp2.i49 = add nsw i32 %i.bv, -48
  %isdigit3.i50 = icmp ult i32 %isdigittmp2.i49, 10
  br i1 %isdigit3.i50, label %bb.z, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52

bb.z:                                             ; preds = %.lr.ph.i47
  %i.bw = getelementptr inbounds nuw i8, ptr %.val911.i48, i64 1 ; 5 uses
  store ptr %i.bw, ptr %0, align 16, !tbaa !11
  %.not.i51 = icmp eq ptr %i.c, %i.bw
  br i1 %.not.i51, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, label %.lr.ph.i47, !llvm.loop !63

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52: ; preds = %.lr.ph.i47, %bb.z, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39, %bb.y
  %i.bx = phi ptr [ %i.bq, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ %i.bq, %bb.y ], [ %i.bw, %bb.z ], [ %.val911.i48, %.lr.ph.i47 ] ; 3 uses
  %.sroa.0.0.i43 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ null, %bb.y ], [ %i.bq, %bb.z ], [ %i.bq, %.lr.ph.i47 ] ; 2 uses
  %.sroa.3.0.i44 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ null, %bb.y ], [ %i.bw, %bb.z ], [ %.val911.i48, %.lr.ph.i47 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.bx, %i.c
  br i1 %.not.i53, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !7
  %i.bz = icmp eq i8 %i.by, 95
  br i1 %i.bz, label %bb.ab, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.ca, ptr %0, align 16, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !38 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !57 ; 2 uses
  %i.cf = add i64 %i.ce, -4048
  %i.cg = icmp ult i64 %i.cf, -4080
  br i1 %i.cg, label %bb.ac, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.ch = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ad, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57: ; preds = %bb.ac
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !57
  store ptr %i.ch, ptr %i.cb, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split: ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57, %bb.ab, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i, %bb.l
  %.sink127 = phi ptr [ %i.ai, %bb.l ], [ %i.an, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.ch, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %i.cc, %bb.ab ] ; 2 uses
  %.sink126 = phi i64 [ %i.ak, %bb.l ], [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %i.ce, %bb.ab ] ; 2 uses
  %.sroa.0.0.i43.sink = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %.sroa.0.0.i43, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %.sroa.0.0.i43, %bb.ab ]
  %.sroa.3.0.i44.sink = phi ptr [ %.sroa.3.0.i, %bb.l ], [ %.sroa.3.0.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %.sroa.3.0.i44, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %.sroa.3.0.i44, %bb.ab ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink127, i64 8
  %i.cl = add nsw i64 %.sink126, 32
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink127, i64 16
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.sink126 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store <4 x i8> <i8 54, i8 1, i8 1, i8 1>, ptr %i.co, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle13FunctionParamE, i64 16), ptr %i.cn, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.sroa.0.0.i43.sink, ptr %i.cp, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %.sroa.3.0.i44.sink, ptr %.sroa.2.0..sroa_idx.i.i.i56, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %.lr.ph.i22.preheader, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split, %bb.a, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, %bb.aa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73, %bb.q, %bb.p, %bb.o, %_ZNK10StringView10startsWithES_.exit.i9, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, %bb.k, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit ], [ null, %bb.p ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52 ], [ null, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ], [ null, %bb.aa ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73 ], [ null, %bb.a ], [ null, %bb.k ], [ null, %_ZNK10StringView10startsWithES_.exit.i9 ], [ null, %bb.o ], [ null, %bb.q ], [ %i.cn, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split ], [ null, %.lr.ph.i22.preheader ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13parseFoldExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !11    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7
  %i.e = icmp eq i8 %i.d, 102
  br i1 %i.e, label %bb.c, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 16, !tbaa !11
  %i.g = ptrtoint ptr %i.c to i64
  %.not.i22.not = icmp eq ptr %i.c, %i.f
  br i1 %.not.i22.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit: ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  switch i8 %i.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread [
    i8 108, label %bb.d
    i8 76, label %bb.d
    i8 114, label %.fold.split
    i8 82, label %.fold.split
  ]

.fold.split:                                      ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %.fold.split
  %storemerge = phi i8 [ 1, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit ], [ 1, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit ], [ 0, %.fold.split ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 33 uses
  store ptr %i.i, ptr %0, align 16, !tbaa !11
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.g, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.d
  %i.m = load i16, ptr %i.i, align 1
  %i.n = icmp ne i16 24929, %i.m
  %i.o = zext i1 %i.n to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i25

_ZNK10StringView10startsWithES_.exit.i25:         ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.p = load i16, ptr %i.i, align 1
  %i.q = icmp ne i16 28257, %i.p
  %i.r = zext i1 %i.q to i32
  %.not9.i.i.i.i.i.i27 = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i.i27, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i32

_ZNK10StringView10startsWithES_.exit.i32:         ; preds = %_ZNK10StringView10startsWithES_.exit.i25
  %i.s = load i16, ptr %i.i, align 1
  %i.t = icmp ne i16 20065, %i.s
  %i.u = zext i1 %i.t to i32
  %.not9.i.i.i.i.i.i34 = icmp eq i32 %i.u, 0
  br i1 %.not9.i.i.i.i.i.i34, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i39

_ZNK10StringView10startsWithES_.exit.i39:         ; preds = %_ZNK10StringView10startsWithES_.exit.i32
  %i.v = load i16, ptr %i.i, align 1
  %i.w = icmp ne i16 21345, %i.v
  %i.x = zext i1 %i.w to i32
  %.not9.i.i.i.i.i.i41 = icmp eq i32 %i.x, 0
  br i1 %.not9.i.i.i.i.i.i41, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i46

_ZNK10StringView10startsWithES_.exit.i46:         ; preds = %_ZNK10StringView10startsWithES_.exit.i39
  %i.y = load i16, ptr %i.i, align 1
  %i.z = icmp ne i16 28003, %i.y
  %i.aa = zext i1 %i.z to i32
  %.not9.i.i.i.i.i.i48 = icmp eq i32 %i.aa, 0
  br i1 %.not9.i.i.i.i.i.i48, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %.thread198

.thread198:                                       ; preds = %_ZNK10StringView10startsWithES_.exit.i46
  %i.ab = load i16, ptr %i.i, align 1
  %i.ac = icmp ne i16 29540, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %.not9.i.i.i.i.i.i201 = icmp eq i32 %i.ad, 0
  br i1 %.not9.i.i.i.i.i.i201, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %.thread198.thread

.thread198.thread:                                ; preds = %.thread198
  %i.ae = load i16, ptr %i.i, align 1
  %i.af = icmp ne i16 30308, %i.ae
  %i.ag = zext i1 %i.af to i32
  %.not9.i.i.i.i.i.i204 = icmp eq i32 %i.ag, 0
  br i1 %.not9.i.i.i.i.i.i204, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.e

bb.e:                                             ; preds = %.thread198.thread
  %i.ah = load i16, ptr %i.i, align 1
  %i.ai = icmp ne i16 22116, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not9.i.i.i.i.i.i210 = icmp eq i32 %i.aj, 0
  br i1 %.not9.i.i.i.i.i.i210, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i16, ptr %i.i, align 1
  %i.al = icmp ne i16 28517, %i.ak
  %i.am = zext i1 %i.al to i32
  %.not9.i.i.i.i.i.i216 = icmp eq i32 %i.am, 0
  br i1 %.not9.i.i.i.i.i.i216, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i16, ptr %i.i, align 1
  %i.ao = icmp ne i16 20325, %i.an
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.i.i.i.i.i222 = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.i.i.i.i.i222, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i16, ptr %i.i, align 1
  %i.ar = icmp ne i16 29029, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i228 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i228, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i16, ptr %i.i, align 1
  %i.au = icmp ne i16 25959, %i.at
  %i.av = zext i1 %i.au to i32
  %.not9.i.i.i.i.i.i234 = icmp eq i32 %i.av, 0
  br i1 %.not9.i.i.i.i.i.i234, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i16, ptr %i.i, align 1
  %i.ax = icmp ne i16 29799, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %.not9.i.i.i.i.i.i240 = icmp eq i32 %i.ay, 0
  br i1 %.not9.i.i.i.i.i.i240, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i16, ptr %i.i, align 1
  %i.ba = icmp ne i16 25964, %i.az
  %i.bb = zext i1 %i.ba to i32
  %.not9.i.i.i.i.i.i246 = icmp eq i32 %i.bb, 0
  br i1 %.not9.i.i.i.i.i.i246, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i16, ptr %i.i, align 1
  %i.bd = icmp ne i16 29548, %i.bc
  %i.be = zext i1 %i.bd to i32
  %.not9.i.i.i.i.i.i252 = icmp eq i32 %i.be, 0
  br i1 %.not9.i.i.i.i.i.i252, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i16, ptr %i.i, align 1
  %i.bg = icmp ne i16 21356, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %.not9.i.i.i.i.i.i258 = icmp eq i32 %i.bh, 0
  br i1 %.not9.i.i.i.i.i.i258, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i16, ptr %i.i, align 1
  %i.bj = icmp ne i16 29804, %i.bi
  %i.bk = zext i1 %i.bj to i32
  %.not9.i.i.i.i.i.i264 = icmp eq i32 %i.bk, 0
  br i1 %.not9.i.i.i.i.i.i264, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load i16, ptr %i.i, align 1
  %i.bm = icmp ne i16 26989, %i.bl
  %i.bn = zext i1 %i.bm to i32
  %.not9.i.i.i.i.i.i270 = icmp eq i32 %i.bn, 0
  br i1 %.not9.i.i.i.i.i.i270, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i16, ptr %i.i, align 1
  %i.bp = icmp ne i16 18797, %i.bo
  %i.bq = zext i1 %i.bp to i32
  %.not9.i.i.i.i.i.i276 = icmp eq i32 %i.bq, 0
  br i1 %.not9.i.i.i.i.i.i276, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i16, ptr %i.i, align 1
  %i.bs = icmp ne i16 27757, %i.br
  %i.bt = zext i1 %i.bs to i32
  %.not9.i.i.i.i.i.i282 = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i.i.i.i.i282, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load i16, ptr %i.i, align 1
  %i.bv = icmp ne i16 19565, %i.bu
  %i.bw = zext i1 %i.bv to i32
  %.not9.i.i.i.i.i.i288 = icmp eq i32 %i.bw, 0
  br i1 %.not9.i.i.i.i.i.i288, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load i16, ptr %i.i, align 1
  %i.by = icmp ne i16 25966, %i.bx
  %i.bz = zext i1 %i.by to i32
  %.not9.i.i.i.i.i.i294 = icmp eq i32 %i.bz, 0
  br i1 %.not9.i.i.i.i.i.i294, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_1
