Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/targainput?download=true
inline.NumInlined: 3090
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_18TGAInput13get_thumbnailERNS0_8ImageBufEi:bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.as) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66: ; preds = %bb.o, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i65
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !93 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i67 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not4.i.i.i.i67, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i73, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66, %.lr.ph.i.i.i.i68
  %.05.i.i.i.i69 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i68 ], [ %i.dj, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66 ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i69) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i69, i64 40 ; 2 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i.i.i70, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i71, label %.lr.ph.i.i.i.i68, !llvm.loop !97

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i71: ; preds = %.lr.ph.i.i.i.i68
  %.pr.i.i72 = load ptr, ptr %i.di, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i73

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i73: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i71, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66
  %i.dn = phi ptr [ %.pr.i.i72, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i71 ], [ %i.dj, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit66 ] ; 3 uses
  %.not.i.i1.i.i74 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i.i74, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i73
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !95
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75: ; preds = %bb.aj, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i73
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !87 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !88 ; 2 uses
  %.not4.i.i.i1.i76 = icmp eq ptr %i.du, %i.dw
  br i1 %.not4.i.i.i1.i76, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84, label %.lr.ph.i.i.i2.i77

.lr.ph.i.i.i2.i77:                                ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80
  %.05.i.i.i3.i78 = phi ptr [ %i.ec, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80 ], [ %i.du, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75 ] ; 3 uses
  %i.dx = load ptr, ptr %.05.i.i.i3.i78, align 8, !tbaa !60 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i78, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i79: ; preds = %.lr.ph.i.i.i2.i77
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80: ; preds = %.lr.ph.i.i.i2.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i79
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i78, i64 32 ; 2 uses
  %.not.i.i.i4.i81 = icmp eq ptr %i.ec, %i.dw
  br i1 %.not.i.i.i4.i81, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82, label %.lr.ph.i.i.i2.i77, !llvm.loop !91

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80
  %.pr.i5.i83 = load ptr, ptr %i.dt, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75
  %i.ed = phi ptr [ %.pr.i5.i83, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82 ], [ %i.du, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i75 ] ; 3 uses
  %.not.i.i1.i6.i85 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i1.i6.i85, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !89
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86: ; preds = %bb.ak, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i7.i87 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i7.i87, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit89, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !85
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #29
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit89

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit89:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit89, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %.4 = phi i1 [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit89 ], [ %.252., %bb.ai ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ao

bb.an:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, %bb.h
  %.pn58 = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aq

bb.ao:                                            ; preds = %bb.d, %bb.am
  %.5 = phi i1 [ %.4, %bb.am ], [ false, %bb.d ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #33
  unreachable

bb.aq:                                            ; preds = %bb.an, %bb.e
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.an ], [ %i.j, %bb.e ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit90 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #33
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit90: ; preds = %bb.aq
  resume { ptr, i32 } %.pn58.pn

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.ao, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ %.5, %bb.ao ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.b = load i8, ptr %i.a, align 2, !tbaa !65
  switch i8 %i.b, label %bb.n [
    i8 1, label %bb.b
    i8 9, label %bb.b
    i8 2, label %bb.h
    i8 10, label %bb.h
    i8 3, label %bb.m
    i8 11, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %4, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07375.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.07375.epil = phi i32 [ %.07375.epil.init, %.lr.ph.epil.preheader ], [ %i.j, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil to i32
  %i.h = shl i32 %indvars.iv.tr.epil, 3
  %i.i = shl i32 %i.g, %i.h
  %i.j = or i32 %i.i, %.07375.epil                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !144

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %.073.lcssa = phi i32 [ 0, %bb.b ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.l = load i16, ptr %i.k, align 4, !tbaa !146
  %i.m = zext i16 %i.l to i32
  %i.n = add i32 %.073.lcssa, %i.m
  %i.o = mul i32 %i.n, %5                         ; 10 uses
  %i.p = add i32 %i.o, %5
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ult i64 %6, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.07375 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i32
  %i.v = or i32 %.07375, %i.u
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.z = shl i32 %indvars.iv.tr.1, 3
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = or i32 %i.aa, %i.v
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %indvars.iv.tr.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.af = shl i32 %indvars.iv.tr.2, 3
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, %i.ab
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %indvars.iv.tr.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.al = shl i32 %indvars.iv.tr.3, 3
  %i.am = shl i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %i.ah                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !147

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38)
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge
  switch i32 %5, label %bb.n [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = add i32 %i.o, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16  ; 2 uses
  %i.as = shl i8 %i.ar, 1
  %i.at = and i8 %i.as, -8
  %i.au = lshr i8 %i.ar, 4
  %i.av = and i8 %i.au, 7
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %2, align 1, !tbaa !16
  %i.ax = zext i32 %i.o to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.bc = shl i8 %i.bb, 3
  %i.bd = and i8 %i.bc, 24
  %i.be = or disjoint i8 %i.bd, %i.ba             ; 2 uses
  %i.bf = shl nuw i8 %i.be, 3
  %i.bg = lshr i8 %i.be, 2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %i.bk = shl i8 %i.bj, 3
  %i.bl = lshr i8 %i.bj, 2
  %i.bm = and i8 %i.bl, 7
  %i.bn = or disjoint i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.bp = add i32 %i.o, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  store i8 %i.bs, ptr %2, align 1, !tbaa !16
  %i.bt = add i32 %i.o, 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = zext i32 %i.o to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.cc = add i32 %i.o, 2
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  store i8 %i.cf, ptr %2, align 1, !tbaa !16
  %i.cg = add i32 %i.o, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = zext i32 %i.o to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = add i32 %i.o, 3
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  br label %bb.n

bb.h:                                             ; preds = %bb.a, %bb.a
  switch i32 %4, label %bb.n [
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16  ; 2 uses
  %i.cw = shl i8 %i.cv, 1
  %i.cx = and i8 %i.cw, -8
  %i.cy = lshr i8 %i.cv, 4
  %i.cz = and i8 %i.cy, 7
  %i.da = or disjoint i8 %i.cz, %i.cx
  store i8 %i.da, ptr %2, align 1, !tbaa !16
  %i.db = load i8, ptr %1, align 1, !tbaa !16
  %i.dc = lshr i8 %i.db, 5
  %i.dd = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.de = shl i8 %i.dd, 3
  %i.df = and i8 %i.de, 24
  %i.dg = or disjoint i8 %i.df, %i.dc             ; 2 uses
  %i.dh = shl nuw i8 %i.dg, 3
  %i.di = lshr i8 %i.dg, 2
  %i.dj = or disjoint i8 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !16
  %i.dl = load i8, ptr %1, align 1, !tbaa !16     ; 2 uses
  %i.dm = shl i8 %i.dl, 3
  %i.dn = lshr i8 %i.dl, 2
  %i.do = and i8 %i.dn, 7
  %i.dp = or disjoint i8 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !71
  %i.dt = icmp sgt i32 %i.ds, 3
  br i1 %i.dt, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %1, align 1, !tbaa !16
  %.lobit = ashr i8 %i.du, 7
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %.lobit, ptr %i.dv, align 1, !tbaa !16
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  store i8 %i.dx, ptr %2, align 1, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !16
  %i.eb = load i8, ptr %1, align 1, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !16
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  store i8 %i.ee, ptr %2, align 1, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !16
  %i.ei = load i8, ptr %1, align 1, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.el, ptr %i.em, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.en = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %i.en, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.g, %bb.f, %bb.e, %bb.d, %bb.i, %bb.j, %bb.l, %bb.k, %bb.h, %bb.c
  %.074 = phi i1 [ false, %bb.c ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.m ], [ true, %bb.a ]
  ret i1 %.074
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0201 = alloca i32, align 4               ; 64 uses
  %i.a = alloca [4 x i8], align 4                 ; 16 uses
  %i.b = alloca [5 x i8], align 1                 ; 9 uses
  %.sroa.0 = alloca i32, align 4                  ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.d = load i8, ptr %i.c, align 2, !tbaa !66    ; 2 uses
  %i.e = icmp eq i8 %i.d, 15
  %i.f = lshr i8 %i.d, 3
  %narrow = select i1 %i.e, i8 2, i8 %i.f         ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i8, ptr %i.g, align 8, !tbaa !67    ; 2 uses
  %i.i = icmp eq i8 %i.h, 15
  %i.j = lshr i8 %i.h, 3
  %narrow326 = select i1 %i.i, i8 2, i8 %i.j      ; 5 uses
  %i.k = zext nneg i8 %narrow326 to i32           ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 235
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.n, i1 noundef zeroext false) #30
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #32
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.s = load i8, ptr %i.r, align 1, !tbaa !64
  %.not327 = icmp eq i8 %i.s, 0
  br i1 %.not327, label %bb.j, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 1
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200

bb.d:                                             ; preds = %bb.c
  %i.x = extractvalue { ptr, i32 } %i.t, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #30 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_end_catch()
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200 unwind label %bb.ci

bb.g:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !139
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, %i.k             ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #32
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161 unwind label %bb.i ; 4 uses

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161: ; preds = %bb.g
  %i.ak = zext nneg i8 %narrow326 to i64
  %i.al = load i16, ptr %i.ae, align 2, !tbaa !139
  %i.am = zext i16 %i.al to i64
  %i.an = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.aj, i64 noundef %i.ak, i64 noundef %i.am)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161
  br i1 %i.an, label %bb.j, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161, %bb.g
  %.sroa.0289.0 = phi ptr [ %i.aj, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161 ], [ null, %bb.g ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.j:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %.sroa.0289.1 = phi ptr [ %i.aj, %bb.h ], [ null, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ] ; 30 uses
  %.0120 = phi i32 [ %i.ah, %bb.h ], [ 0, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0201)
  store i32 0, ptr %.sroa.0201, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !65
  %i.ar = icmp ult i8 %i.aq, 9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.at = load i32, ptr %i.as, align 8, !tbaa !148 ; 2 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %.critedge154, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.av = add nsw i32 %i.at, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ay = zext nneg i8 %narrow to i64             ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.not330 = icmp eq i8 %narrow, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.pre446 = load i32, ptr %i.ax, align 4, !tbaa !149
  %.sroa.0201.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx522 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx536 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %xtraiter509 = and i64 %i.ay, 3                 ; 3 uses
  %i.bd = icmp samesign ult i8 %narrow, 4
  %unroll_iter514 = and i64 %i.ay, 28
  %lcmp.mod511.not = icmp eq i64 %xtraiter509, 0
  %lcmp.mod513 = icmp ne i64 %xtraiter509, 0
  %.sroa.0201.1..sroa_idx523 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx537 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx550 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %.sroa.0201.1..sroa_idx524 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx538 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx525 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx539 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.be = phi i32 [ %.pre446, %.preheader.lr.ph ], [ %i.fy, %.critedge ] ; 2 uses
  %.0119383 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.fz, %.critedge ] ; 3 uses
  %.not145380 = icmp sgt i32 %i.be, 0
  br i1 %.not145380, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %.preheader, %bb.aa
  %.0118381 = phi i64 [ %i.fv, %bb.aa ], [ 0, %.preheader ] ; 2 uses
  %i.bf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef %i.ay, i64 noundef 1)
          to label %bb.l unwind label %.loopexit333

bb.l:                                             ; preds = %.lr.ph382
  br i1 %i.bf, label %bb.n, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit

.loopexit333:                                     ; preds = %.lr.ph382
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit333
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit333 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.cg

bb.n:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.ap, align 2, !tbaa !65
  switch i8 %i.bg, label %bb.aa [
    i8 1, label %bb.o
    i8 9, label %bb.o
    i8 2, label %bb.u
    i8 10, label %bb.u
    i8 3, label %bb.z
    i8 11, label %bb.z
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod511.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07375.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.co, %._crit_edge.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod513)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.07375.i.epil = phi i32 [ %i.bm, %.lr.ph.i.epil ], [ %.07375.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter510 = phi i64 [ %epil.iter510.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.epil
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = zext i8 %i.bi to i32
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil to i32
  %i.bk = shl i32 %indvars.iv.tr.i.epil, 3
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = or i32 %i.bl, %.07375.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter510.next = add i64 %epil.iter510, 1   ; 2 uses
  %epil.iter510.cmp.not = icmp eq i64 %epil.iter510.next, %xtraiter509
  br i1 %epil.iter510.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !150

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.o
  %.073.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.co, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.i.epil ]
  %i.bn = load i16, ptr %i.bc, align 4, !tbaa !146
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add i32 %.073.lcssa.i, %i.bo
  %i.bq = mul i32 %i.bp, %i.k                     ; 10 uses
  %i.br = add i32 %i.bq, %i.k
  %i.bs = icmp ult i32 %.0120, %i.br
  br i1 %i.bs, label %bb.p, label %bb.q

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.07375.i = phi i32 [ %i.co, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter515 = phi i64 [ %niter515.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !16
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or i32 %.07375.i, %i.bv
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = zext i8 %i.by to i32
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %i.ca = shl i32 %indvars.iv.tr.i.1, 3
  %i.cb = shl i32 %i.bz, %i.ca
  %i.cc = or i32 %i.cb, %i.bw
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.1
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !16
  %i.cf = zext i8 %i.ce to i32
  %indvars.iv.tr.i.2 = trunc i64 %indvars.iv.next.i.1 to i32
  %i.cg = shl i32 %indvars.iv.tr.i.2, 3
  %i.ch = shl i32 %i.cf, %i.cg
  %i.ci = or i32 %i.ch, %i.cc
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %indvars.iv.tr.i.3 = trunc i64 %indvars.iv.next.i.2 to i32
  %i.cm = shl i32 %indvars.iv.tr.i.3, 3
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = or i32 %i.cn, %i.ci                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter515.next.3 = add i64 %niter515, 4         ; 2 uses
  %niter515.ncmp.3 = icmp eq i64 %niter515.next.3, %unroll_iter514
  br i1 %niter515.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !147

bb.p:                                             ; preds = %._crit_edge.i
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull @.str.38)
          to label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge.i
  switch i8 %narrow326, label %bb.aa [
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.cp = add i32 %i.bq, 1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16  ; 3 uses
  %i.ct = shl i8 %i.cs, 1
  %i.cu = and i8 %i.ct, -8
  %i.cv = lshr i8 %i.cs, 4
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %.sroa.0201, align 4, !tbaa !16
  %i.cy = zext i32 %i.bq to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16  ; 3 uses
  %i.db = lshr i8 %i.da, 5
  %i.dc = shl i8 %i.cs, 3
  %i.dd = and i8 %i.dc, 24
  %i.de = or disjoint i8 %i.db, %i.dd             ; 2 uses
  %i.df = shl nuw i8 %i.de, 3
  %i.dg = lshr i8 %i.de, 2
  %i.dh = or disjoint i8 %i.dg, %i.df
  store i8 %i.dh, ptr %.sroa.0201.1..sroa_idx525, align 1, !tbaa !16
  %i.di = shl i8 %i.da, 3
  %i.dj = lshr i8 %i.da, 2
  %i.dk = and i8 %i.dj, 7
  %i.dl = or disjoint i8 %i.dk, %i.di
  store i8 %i.dl, ptr %.sroa.0201.2..sroa_idx539, align 2, !tbaa !16
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.dm = add i32 %i.bq, 2
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  store i8 %i.dp, ptr %.sroa.0201, align 4, !tbaa !16
  %i.dq = add i32 %i.bq, 1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  store i8 %i.dt, ptr %.sroa.0201.1..sroa_idx524, align 1, !tbaa !16
  %i.du = zext i32 %i.bq to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  store i8 %i.dw, ptr %.sroa.0201.2..sroa_idx538, align 2, !tbaa !16
  br label %bb.aa

bb.t:                                             ; preds = %bb.q
  %i.dx = add i32 %i.bq, 2
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16
  store i8 %i.ea, ptr %.sroa.0201, align 4, !tbaa !16
  %i.eb = add i32 %i.bq, 1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  store i8 %i.ee, ptr %.sroa.0201.1..sroa_idx523, align 1, !tbaa !16
  %i.ef = zext i32 %i.bq to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16
  store i8 %i.eh, ptr %.sroa.0201.2..sroa_idx537, align 2, !tbaa !16
  %i.ei = add i32 %i.bq, 3
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  store i8 %i.el, ptr %.sroa.0201.3..sroa_idx550, align 1, !tbaa !16
  br label %bb.aa

bb.u:                                             ; preds = %bb.n, %bb.n
  switch i8 %narrow, label %bb.aa [
    i8 2, label %bb.v
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.em = load i8, ptr %i.ba, align 1, !tbaa !16  ; 3 uses
  %i.en = shl i8 %i.em, 1
  %i.eo = and i8 %i.en, -8
  %i.ep = lshr i8 %i.em, 4
  %i.eq = and i8 %i.ep, 7
  %i.er = or disjoint i8 %i.eq, %i.eo
  store i8 %i.er, ptr %.sroa.0201, align 4, !tbaa !16
  %i.es = load i8, ptr %i.a, align 4, !tbaa !16   ; 4 uses
  %i.et = lshr i8 %i.es, 5
  %i.eu = shl i8 %i.em, 3
  %i.ev = and i8 %i.eu, 24
  %i.ew = or disjoint i8 %i.et, %i.ev             ; 2 uses
  %i.ex = shl nuw i8 %i.ew, 3
  %i.ey = lshr i8 %i.ew, 2
  %i.ez = or disjoint i8 %i.ey, %i.ex
  store i8 %i.ez, ptr %.sroa.0201.1..sroa_idx522, align 1, !tbaa !16
  %i.fa = shl i8 %i.es, 3
  %i.fb = lshr i8 %i.es, 2
  %i.fc = and i8 %i.fb, 7
  %i.fd = or disjoint i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %.sroa.0201.2..sroa_idx536, align 2, !tbaa !16
  %i.fe = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.ff = icmp sgt i32 %i.fe, 3
  br i1 %i.ff, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.lobit.i = ashr i8 %i.es, 7
  store i8 %.lobit.i, ptr %.sroa.0201.3..sroa_idx, align 1, !tbaa !16
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.fg = load i8, ptr %i.az, align 2, !tbaa !16
  store i8 %i.fg, ptr %.sroa.0201, align 4, !tbaa !16
  %i.fh = load i8, ptr %i.ba, align 1, !tbaa !16
  store i8 %i.fh, ptr %.sroa.0201.1..sroa_idx, align 1, !tbaa !16
  %i.fi = load i8, ptr %i.a, align 4, !tbaa !16
  store i8 %i.fi, ptr %.sroa.0201.2..sroa_idx, align 2, !tbaa !16
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.fj = load <4 x i8>, ptr %i.a, align 4, !tbaa !16
  %i.fk = shufflevector <4 x i8> %i.fj, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.fk, ptr %.sroa.0201, align 4, !tbaa !16
  br label %bb.aa

bb.z:                                             ; preds = %bb.n, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0201, ptr nonnull align 4 %i.a, i64 %i.ay, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %bb.u, %bb.x, %bb.y, %bb.w, %bb.v, %bb.q, %bb.r, %bb.s, %bb.t, %bb.z
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.fm = load i32, ptr %i.ax, align 4, !tbaa !149
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul nsw i64 %.0119383, %i.fn
  %i.fp = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.fq = sext i32 %i.fp to i64                   ; 3 uses
  %i.fr = mul nsw i64 %i.fo, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.fl, i64 %i.fr
  %i.ft = mul nsw i64 %.0118381, %i.fq
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr nonnull align 4 %.sroa.0201, i64 %i.fq, i1 false)
  %i.fv = add nuw nsw i64 %.0118381, 1            ; 2 uses
  %i.fw = load i32, ptr %i.ax, align 4, !tbaa !149 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %.not145 = icmp slt i64 %i.fv, %i.fx
  br i1 %.not145, label %.lr.ph382, label %.critedge, !llvm.loop !151

.critedge:                                        ; preds = %bb.aa, %.preheader
  %i.fy = phi i32 [ %i.be, %.preheader ], [ %i.fw, %bb.aa ]
  %i.fz = add nsw i64 %.0119383, -1
  %i.ga = icmp slt i64 %.0119383, 1
  br i1 %i.ga, label %.critedge154, label %.preheader, !llvm.loop !152

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit: ; preds = %bb.l, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.gb = load i32, ptr %i.as, align 8, !tbaa !148 ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %.critedge156, label %.preheader343.lr.ph

.preheader343.lr.ph:                              ; preds = %bb.ab
  %i.gd = add nsw i32 %i.gb, -1
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %narrow331 = add nuw nsw i8 %narrow, 1
  %i.gg = zext nneg i8 %narrow331 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 19 uses
  %i.gi = zext nneg i8 %narrow to i64             ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %.not328 = icmp eq i8 %narrow, 0                ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %.pre = load i32, ptr %i.gf, align 4, !tbaa !149
  %.sroa.0201.1..sroa_idx526 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx540 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx527 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx541 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx551 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %xtraiter = and i64 %i.gi, 3                    ; 3 uses
  %i.gn = icmp samesign ult i8 %narrow, 4
  %unroll_iter = and i64 %i.gi, 28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod501 = icmp ne i64 %xtraiter, 0
  %.sroa.0201.1..sroa_idx528 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx542 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx552 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %.sroa.0201.1..sroa_idx529 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx543 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx530 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx544 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx531 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx545 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx532 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx546 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx553 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %xtraiter502 = and i64 %i.gi, 3                 ; 3 uses
  %i.go = icmp samesign ult i8 %narrow, 4
  %unroll_iter507 = and i64 %i.gi, 28
  %lcmp.mod504.not = icmp eq i64 %xtraiter502, 0
  %lcmp.mod506 = icmp ne i64 %xtraiter502, 0
  %.sroa.0201.1..sroa_idx533 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx547 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx554 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %.sroa.0201.1..sroa_idx534 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx548 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx535 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx549 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  br label %.preheader343

.preheader343:                                    ; preds = %.preheader343.lr.ph, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175
  %i.gp = phi i32 [ %.pre, %.preheader343.lr.ph ], [ %i.qs, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175 ] ; 2 uses
  %.0108379 = phi i64 [ %i.ge, %.preheader343.lr.ph ], [ %i.qt, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175 ] ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175

.lr.ph:                                           ; preds = %.preheader343, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189
  %.099378 = phi i64 [ %i.qo, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ], [ 0, %.preheader343 ] ; 2 uses
  %.1109377 = phi i64 [ %.8116, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ], [ %.0108379, %.preheader343 ] ; 2 uses
  %i.gr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.b, i64 noundef %i.gg, i64 noundef 1)
          to label %bb.ac unwind label %.loopexit345

bb.ac:                                            ; preds = %.lr.ph
  br i1 %i.gr, label %bb.ad, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307

.loopexit345:                                     ; preds = %.lr.ph
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp346:                            ; preds = %bb.af
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.ac
  %i.gs = load i8, ptr %i.b, align 1, !tbaa !16   ; 2 uses
  %i.gt = and i8 %i.gs, 127
  %i.gu = zext nneg i8 %i.gt to i32               ; 4 uses
  %i.gv = load i8, ptr %i.ap, align 2, !tbaa !65
  switch i8 %i.gv, label %thread-pre-split [
    i8 1, label %bb.ae
    i8 9, label %bb.ae
    i8 2, label %bb.ak
    i8 10, label %bb.ak
    i8 3, label %bb.ap
    i8 11, label %bb.ap
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  br i1 %.not328, label %._crit_edge.i164, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %bb.ae
  br i1 %i.gn, label %.lr.ph.i168.epil.preheader, label %.lr.ph.i168

._crit_edge.i164.loopexit.unr-lcssa:              ; preds = %.lr.ph.i168
  br i1 %lcmp.mod.not, label %._crit_edge.i164, label %.lr.ph.i168.epil.preheader

.lr.ph.i168.epil.preheader:                       ; preds = %._crit_edge.i164.loopexit.unr-lcssa, %.lr.ph.i168.preheader
  %indvars.iv.i169.epil.init = phi i64 [ 0, %.lr.ph.i168.preheader ], [ %indvars.iv.next.i172.3, %._crit_edge.i164.loopexit.unr-lcssa ]
  %.07375.i170.epil.init = phi i32 [ 0, %.lr.ph.i168.preheader ], [ %i.id, %._crit_edge.i164.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %.lr.ph.i168.epil

.lr.ph.i168.epil:                                 ; preds = %.lr.ph.i168.epil, %.lr.ph.i168.epil.preheader
  %indvars.iv.i169.epil = phi i64 [ %indvars.iv.next.i172.epil, %.lr.ph.i168.epil ], [ %indvars.iv.i169.epil.init, %.lr.ph.i168.epil.preheader ] ; 3 uses
  %.07375.i170.epil = phi i32 [ %i.hb, %.lr.ph.i168.epil ], [ %.07375.i170.epil.init, %.lr.ph.i168.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i168.epil ], [ 0, %.lr.ph.i168.epil.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i169.epil
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !16
  %i.gy = zext i8 %i.gx to i32
  %indvars.iv.tr.i171.epil = trunc i64 %indvars.iv.i169.epil to i32
  %i.gz = shl i32 %indvars.iv.tr.i171.epil, 3
  %i.ha = shl i32 %i.gy, %i.gz
  %i.hb = or i32 %i.ha, %.07375.i170.epil         ; 2 uses
  %indvars.iv.next.i172.epil = add nuw nsw i64 %indvars.iv.i169.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i164, label %.lr.ph.i168.epil, !llvm.loop !153

._crit_edge.i164:                                 ; preds = %._crit_edge.i164.loopexit.unr-lcssa, %.lr.ph.i168.epil, %bb.ae
  %.073.lcssa.i165 = phi i32 [ 0, %bb.ae ], [ %i.id, %._crit_edge.i164.loopexit.unr-lcssa ], [ %i.hb, %.lr.ph.i168.epil ]
  %i.hc = load i16, ptr %i.gm, align 4, !tbaa !146
  %i.hd = zext i16 %i.hc to i32
  %i.he = add i32 %.073.lcssa.i165, %i.hd
  %i.hf = mul i32 %i.he, %i.k                     ; 10 uses
  %i.hg = add i32 %i.hf, %i.k
  %i.hh = icmp ult i32 %.0120, %i.hg
  br i1 %i.hh, label %bb.af, label %bb.ag

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i172.3, %.lr.ph.i168 ], [ 0, %.lr.ph.i168.preheader ] ; 5 uses
  %.07375.i170 = phi i32 [ %i.id, %.lr.ph.i168 ], [ 0, %.lr.ph.i168.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i168 ], [ 0, %.lr.ph.i168.preheader ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i169
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !16
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or i32 %.07375.i170, %i.hk
  %indvars.iv.next.i172 = or disjoint i64 %indvars.iv.i169, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i172
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !16
  %i.ho = zext i8 %i.hn to i32
  %indvars.iv.tr.i171.1 = trunc i64 %indvars.iv.next.i172 to i32
  %i.hp = shl i32 %indvars.iv.tr.i171.1, 3
  %i.hq = shl i32 %i.ho, %i.hp
  %i.hr = or i32 %i.hq, %i.hl
  %indvars.iv.next.i172.1 = or disjoint i64 %indvars.iv.i169, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i172.1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !16
  %i.hu = zext i8 %i.ht to i32
  %indvars.iv.tr.i171.2 = trunc i64 %indvars.iv.next.i172.1 to i32
  %i.hv = shl i32 %indvars.iv.tr.i171.2, 3
  %i.hw = shl i32 %i.hu, %i.hv
  %i.hx = or i32 %i.hw, %i.hr
  %indvars.iv.next.i172.2 = or disjoint i64 %indvars.iv.i169, 3 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i172.2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = zext i8 %i.hz to i32
  %indvars.iv.tr.i171.3 = trunc i64 %indvars.iv.next.i172.2 to i32
  %i.ib = shl i32 %indvars.iv.tr.i171.3, 3
  %i.ic = shl i32 %i.ia, %i.ib
  %i.id = or i32 %i.ic, %i.hx                     ; 3 uses
  %indvars.iv.next.i172.3 = add nuw nsw i64 %indvars.iv.i169, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i164.loopexit.unr-lcssa, label %.lr.ph.i168, !llvm.loop !147

bb.af:                                            ; preds = %._crit_edge.i164
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull @.str.38)
          to label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307 unwind label %.loopexit.split-lp346

bb.ag:                                            ; preds = %._crit_edge.i164
  switch i8 %narrow326, label %thread-pre-split [
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ie = add i32 %i.hf, 1
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16  ; 3 uses
  %i.ii = shl i8 %i.ih, 1
  %i.ij = and i8 %i.ii, -8
  %i.ik = lshr i8 %i.ih, 4
  %i.il = and i8 %i.ik, 7
  %i.im = or disjoint i8 %i.il, %i.ij
  store i8 %i.im, ptr %.sroa.0201, align 4, !tbaa !16
  %i.in = zext i32 %i.hf to i64
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !16  ; 3 uses
  %i.iq = lshr i8 %i.ip, 5
  %i.ir = shl i8 %i.ih, 3
  %i.is = and i8 %i.ir, 24
  %i.it = or disjoint i8 %i.iq, %i.is             ; 2 uses
  %i.iu = shl nuw i8 %i.it, 3
  %i.iv = lshr i8 %i.it, 2
  %i.iw = or disjoint i8 %i.iv, %i.iu
  store i8 %i.iw, ptr %.sroa.0201.1..sroa_idx530, align 1, !tbaa !16
  %i.ix = shl i8 %i.ip, 3
  %i.iy = lshr i8 %i.ip, 2
  %i.iz = and i8 %i.iy, 7
  %i.ja = or disjoint i8 %i.iz, %i.ix
  store i8 %i.ja, ptr %.sroa.0201.2..sroa_idx544, align 2, !tbaa !16
  br label %thread-pre-split

bb.ai:                                            ; preds = %bb.ag
  %i.jb = add i32 %i.hf, 2
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !16
  store i8 %i.je, ptr %.sroa.0201, align 4, !tbaa !16
  %i.jf = add i32 %i.hf, 1
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !16
  store i8 %i.ji, ptr %.sroa.0201.1..sroa_idx529, align 1, !tbaa !16
  %i.jj = zext i32 %i.hf to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !16
  store i8 %i.jl, ptr %.sroa.0201.2..sroa_idx543, align 2, !tbaa !16
  br label %thread-pre-split

bb.aj:                                            ; preds = %bb.ag
  %i.jm = add i32 %i.hf, 2
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  store i8 %i.jp, ptr %.sroa.0201, align 4, !tbaa !16
  %i.jq = add i32 %i.hf, 1
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !16
  store i8 %i.jt, ptr %.sroa.0201.1..sroa_idx528, align 1, !tbaa !16
  %i.ju = zext i32 %i.hf to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !16
  store i8 %i.jw, ptr %.sroa.0201.2..sroa_idx542, align 2, !tbaa !16
  %i.jx = add i32 %i.hf, 3
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !16
  store i8 %i.ka, ptr %.sroa.0201.3..sroa_idx552, align 1, !tbaa !16
  br label %thread-pre-split

bb.ak:                                            ; preds = %bb.ad, %bb.ad
  switch i8 %narrow, label %thread-pre-split [
    i8 2, label %bb.al
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.kb = load i8, ptr %i.gk, align 1, !tbaa !16  ; 3 uses
  %i.kc = shl i8 %i.kb, 1
  %i.kd = and i8 %i.kc, -8
  %i.ke = lshr i8 %i.kb, 4
  %i.kf = and i8 %i.ke, 7
  %i.kg = or disjoint i8 %i.kf, %i.kd
  store i8 %i.kg, ptr %.sroa.0201, align 4, !tbaa !16
  %i.kh = load i8, ptr %i.gh, align 1, !tbaa !16  ; 4 uses
  %i.ki = lshr i8 %i.kh, 5
  %i.kj = shl i8 %i.kb, 3
  %i.kk = and i8 %i.kj, 24
  %i.kl = or disjoint i8 %i.ki, %i.kk             ; 2 uses
  %i.km = shl nuw i8 %i.kl, 3
  %i.kn = lshr i8 %i.kl, 2
  %i.ko = or disjoint i8 %i.kn, %i.km
  store i8 %i.ko, ptr %.sroa.0201.1..sroa_idx527, align 1, !tbaa !16
  %i.kp = shl i8 %i.kh, 3
  %i.kq = lshr i8 %i.kh, 2
  %i.kr = and i8 %i.kq, 7
  %i.ks = or disjoint i8 %i.kr, %i.kp
  store i8 %i.ks, ptr %.sroa.0201.2..sroa_idx541, align 2, !tbaa !16
  %i.kt = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.ku = icmp sgt i32 %i.kt, 3
  br i1 %i.ku, label %bb.am, label %thread-pre-split

bb.am:                                            ; preds = %bb.al
  %.lobit.i163 = ashr i8 %i.kh, 7
  store i8 %.lobit.i163, ptr %.sroa.0201.3..sroa_idx551, align 1, !tbaa !16
  br label %thread-pre-split

bb.an:                                            ; preds = %bb.ak
  %i.kv = load i8, ptr %i.gj, align 1, !tbaa !16
  store i8 %i.kv, ptr %.sroa.0201, align 4, !tbaa !16
  %i.kw = load i8, ptr %i.gk, align 1, !tbaa !16
  store i8 %i.kw, ptr %.sroa.0201.1..sroa_idx526, align 1, !tbaa !16
  %i.kx = load i8, ptr %i.gh, align 1, !tbaa !16
  store i8 %i.kx, ptr %.sroa.0201.2..sroa_idx540, align 2, !tbaa !16
  br label %thread-pre-split

bb.ao:                                            ; preds = %bb.ak
  %i.ky = load <4 x i8>, ptr %i.gh, align 1, !tbaa !16
  %i.kz = shufflevector <4 x i8> %i.ky, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.kz, ptr %.sroa.0201, align 4, !tbaa !16
  br label %thread-pre-split

bb.ap:                                            ; preds = %bb.ad, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0201, ptr nonnull align 1 %i.gh, i64 %i.gi, i1 false)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ak, %bb.an, %bb.ao, %bb.am, %bb.al, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ap, %bb.ad
  %.not = icmp sgt i8 %i.gs, -1
  br i1 %.not, label %.preheader334, label %.preheader340

.preheader340:                                    ; preds = %thread-pre-split, %bb.at
  %.098373 = phi i32 [ %i.lq, %bb.at ], [ 0, %thread-pre-split ] ; 3 uses
  %.1100372 = phi i64 [ %.2101, %bb.at ], [ %.099378, %thread-pre-split ] ; 3 uses
  %.2110371 = phi i64 [ %.3111, %bb.at ], [ %.1109377, %thread-pre-split ] ; 5 uses
  %i.la = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.lb = load i32, ptr %i.gf, align 4, !tbaa !149
  %i.lc = sext i32 %i.lb to i64
  %i.ld = mul nsw i64 %.2110371, %i.lc
  %i.le = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.lf = sext i32 %i.le to i64                   ; 3 uses
  %i.lg = mul nsw i64 %i.ld, %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.la, i64 %i.lg
  %i.li = mul nsw i64 %.1100372, %i.lf
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 %i.li
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr nonnull align 4 %.sroa.0201, i64 %i.lf, i1 false)
  %i.lk = icmp samesign ult i32 %.098373, %i.gu
  br i1 %i.lk, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.preheader340
  %i.ll = add nsw i64 %.1100372, 1                ; 2 uses
  %i.lm = load i32, ptr %i.gf, align 4, !tbaa !149
  %i.ln = sext i32 %i.lm to i64
  %.not144 = icmp slt i64 %i.ll, %i.ln
  br i1 %.not144, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lo = icmp sgt i64 %.2110371, 0
  br i1 %i.lo, label %bb.as, label %.critedge156

bb.as:                                            ; preds = %bb.ar
  %i.lp = add nsw i64 %.2110371, -1
  br label %bb.at

bb.at:                                            ; preds = %.preheader340, %bb.as, %bb.aq
  %.3111 = phi i64 [ %i.lp, %bb.as ], [ %.2110371, %bb.aq ], [ %.2110371, %.preheader340 ] ; 2 uses
  %.2101 = phi i64 [ 0, %bb.as ], [ %i.ll, %bb.aq ], [ %.1100372, %.preheader340 ] ; 2 uses
  %i.lq = add nuw nsw i32 %.098373, 1
  %exitcond.not = icmp eq i32 %.098373, %i.gu
  br i1 %exitcond.not, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, label %.preheader340, !llvm.loop !154

.preheader334:                                    ; preds = %thread-pre-split, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread
  %.097376 = phi i32 [ %i.qn, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ 0, %thread-pre-split ] ; 3 uses
  %.4103375 = phi i64 [ %.6105, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.099378, %thread-pre-split ] ; 3 uses
  %.4112374 = phi i64 [ %.6114, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.1109377, %thread-pre-split ] ; 5 uses
  %i.lr = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.ls = load i32, ptr %i.gf, align 4, !tbaa !149
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %.4112374, %i.lt
  %i.lv = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.lw = sext i32 %i.lv to i64                   ; 3 uses
  %i.lx = mul nsw i64 %i.lu, %i.lw
  %i.ly = getelementptr inbounds i8, ptr %i.lr, i64 %i.lx
  %i.lz = mul nsw i64 %.4103375, %i.lw
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr nonnull align 4 %.sroa.0201, i64 %i.lw, i1 false)
  %i.mb = icmp samesign ult i32 %.097376, %i.gu
  br i1 %i.mb, label %bb.au, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.au:                                            ; preds = %.preheader334
  %i.mc = add nsw i64 %.4103375, 1                ; 2 uses
  %i.md = load i32, ptr %i.gf, align 4, !tbaa !149
  %i.me = sext i32 %i.md to i64
  %.not141 = icmp slt i64 %i.mc, %i.me
  br i1 %.not141, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mf = icmp sgt i64 %.4112374, 0
  br i1 %i.mf, label %bb.aw, label %.critedge156

bb.aw:                                            ; preds = %bb.av
  %i.mg = add nsw i64 %.4112374, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.5113 = phi i64 [ %i.mg, %bb.aw ], [ %.4112374, %bb.au ] ; 11 uses
  %.5104 = phi i64 [ 0, %bb.aw ], [ %i.mc, %bb.au ] ; 11 uses
  %i.mh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.gh, i64 noundef %i.gi, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit335

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.mh, label %bb.az, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307

.loopexit335:                                     ; preds = %bb.ax
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp336:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.az:                                            ; preds = %bb.ay
  %i.mi = load i8, ptr %i.ap, align 2, !tbaa !65
  switch i8 %i.mi, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread [
    i8 1, label %bb.ba
    i8 9, label %bb.ba
    i8 2, label %bb.bg
    i8 10, label %bb.bg
    i8 3, label %bb.bl
    i8 11, label %bb.bl
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  br i1 %.not328, label %._crit_edge.i178, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.ba
  br i1 %i.go, label %.lr.ph.i182.epil.preheader, label %.lr.ph.i182

._crit_edge.i178.loopexit.unr-lcssa:              ; preds = %.lr.ph.i182
  br i1 %lcmp.mod504.not, label %._crit_edge.i178, label %.lr.ph.i182.epil.preheader

.lr.ph.i182.epil.preheader:                       ; preds = %._crit_edge.i178.loopexit.unr-lcssa, %.lr.ph.i182.preheader
  %indvars.iv.i183.epil.init = phi i64 [ 0, %.lr.ph.i182.preheader ], [ %indvars.iv.next.i186.3, %._crit_edge.i178.loopexit.unr-lcssa ]
  %.07375.i184.epil.init = phi i32 [ 0, %.lr.ph.i182.preheader ], [ %i.nq, %._crit_edge.i178.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod506)
  br label %.lr.ph.i182.epil

.lr.ph.i182.epil:                                 ; preds = %.lr.ph.i182.epil, %.lr.ph.i182.epil.preheader
  %indvars.iv.i183.epil = phi i64 [ %indvars.iv.next.i186.epil, %.lr.ph.i182.epil ], [ %indvars.iv.i183.epil.init, %.lr.ph.i182.epil.preheader ] ; 3 uses
  %.07375.i184.epil = phi i32 [ %i.mo, %.lr.ph.i182.epil ], [ %.07375.i184.epil.init, %.lr.ph.i182.epil.preheader ]
  %epil.iter503 = phi i64 [ %epil.iter503.next, %.lr.ph.i182.epil ], [ 0, %.lr.ph.i182.epil.preheader ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i183.epil
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !16
  %i.ml = zext i8 %i.mk to i32
  %indvars.iv.tr.i185.epil = trunc i64 %indvars.iv.i183.epil to i32
  %i.mm = shl i32 %indvars.iv.tr.i185.epil, 3
  %i.mn = shl i32 %i.ml, %i.mm
  %i.mo = or i32 %i.mn, %.07375.i184.epil         ; 2 uses
  %indvars.iv.next.i186.epil = add nuw nsw i64 %indvars.iv.i183.epil, 1
  %epil.iter503.next = add i64 %epil.iter503, 1   ; 2 uses
  %epil.iter503.cmp.not = icmp eq i64 %epil.iter503.next, %xtraiter502
  br i1 %epil.iter503.cmp.not, label %._crit_edge.i178, label %.lr.ph.i182.epil, !llvm.loop !155

._crit_edge.i178:                                 ; preds = %._crit_edge.i178.loopexit.unr-lcssa, %.lr.ph.i182.epil, %bb.ba
  %.073.lcssa.i179 = phi i32 [ 0, %bb.ba ], [ %i.nq, %._crit_edge.i178.loopexit.unr-lcssa ], [ %i.mo, %.lr.ph.i182.epil ]
  %i.mp = load i16, ptr %i.gm, align 4, !tbaa !146
  %i.mq = zext i16 %i.mp to i32
  %i.mr = add i32 %.073.lcssa.i179, %i.mq
  %i.ms = mul i32 %i.mr, %i.k                     ; 10 uses
  %i.mt = add i32 %i.ms, %i.k
  %i.mu = icmp ult i32 %.0120, %i.mt
  br i1 %i.mu, label %bb.bb, label %bb.bc

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182
  %indvars.iv.i183 = phi i64 [ %indvars.iv.next.i186.3, %.lr.ph.i182 ], [ 0, %.lr.ph.i182.preheader ] ; 5 uses
  %.07375.i184 = phi i32 [ %i.nq, %.lr.ph.i182 ], [ 0, %.lr.ph.i182.preheader ]
  %niter508 = phi i64 [ %niter508.next.3, %.lr.ph.i182 ], [ 0, %.lr.ph.i182.preheader ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i183
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !16
  %i.mx = zext i8 %i.mw to i32
  %i.my = or i32 %.07375.i184, %i.mx
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i183, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i186
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !16
  %i.nb = zext i8 %i.na to i32
  %indvars.iv.tr.i185.1 = trunc i64 %indvars.iv.next.i186 to i32
  %i.nc = shl i32 %indvars.iv.tr.i185.1, 3
  %i.nd = shl i32 %i.nb, %i.nc
  %i.ne = or i32 %i.nd, %i.my
  %indvars.iv.next.i186.1 = or disjoint i64 %indvars.iv.i183, 2 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i186.1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !16
  %i.nh = zext i8 %i.ng to i32
  %indvars.iv.tr.i185.2 = trunc i64 %indvars.iv.next.i186.1 to i32
  %i.ni = shl i32 %indvars.iv.tr.i185.2, 3
  %i.nj = shl i32 %i.nh, %i.ni
  %i.nk = or i32 %i.nj, %i.ne
  %indvars.iv.next.i186.2 = or disjoint i64 %indvars.iv.i183, 3 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i186.2
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !16
  %i.nn = zext i8 %i.nm to i32
  %indvars.iv.tr.i185.3 = trunc i64 %indvars.iv.next.i186.2 to i32
  %i.no = shl i32 %indvars.iv.tr.i185.3, 3
  %i.np = shl i32 %i.nn, %i.no
  %i.nq = or i32 %i.np, %i.nk                     ; 3 uses
  %indvars.iv.next.i186.3 = add nuw nsw i64 %indvars.iv.i183, 4 ; 2 uses
  %niter508.next.3 = add i64 %niter508, 4         ; 2 uses
  %niter508.ncmp.3 = icmp eq i64 %niter508.next.3, %unroll_iter507
  br i1 %niter508.ncmp.3, label %._crit_edge.i178.loopexit.unr-lcssa, label %.lr.ph.i182, !llvm.loop !147

bb.bb:                                            ; preds = %._crit_edge.i178
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull @.str.38)
          to label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307 unwind label %.loopexit.split-lp336

bb.bc:                                            ; preds = %._crit_edge.i178
  switch i8 %narrow326, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread [
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.nr = add i32 %i.ms, 1
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !16  ; 3 uses
  %i.nv = shl i8 %i.nu, 1
  %i.nw = and i8 %i.nv, -8
  %i.nx = lshr i8 %i.nu, 4
  %i.ny = and i8 %i.nx, 7
  %i.nz = or disjoint i8 %i.ny, %i.nw
  store i8 %i.nz, ptr %.sroa.0201, align 4, !tbaa !16
  %i.oa = zext i32 %i.ms to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !16  ; 3 uses
  %i.od = lshr i8 %i.oc, 5
  %i.oe = shl i8 %i.nu, 3
  %i.of = and i8 %i.oe, 24
  %i.og = or disjoint i8 %i.od, %i.of             ; 2 uses
  %i.oh = shl nuw i8 %i.og, 3
  %i.oi = lshr i8 %i.og, 2
  %i.oj = or disjoint i8 %i.oi, %i.oh
  store i8 %i.oj, ptr %.sroa.0201.1..sroa_idx535, align 1, !tbaa !16
  %i.ok = shl i8 %i.oc, 3
  %i.ol = lshr i8 %i.oc, 2
  %i.om = and i8 %i.ol, 7
  %i.on = or disjoint i8 %i.om, %i.ok
  store i8 %i.on, ptr %.sroa.0201.2..sroa_idx549, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.be:                                            ; preds = %bb.bc
  %i.oo = add i32 %i.ms, 2
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !16
  store i8 %i.or, ptr %.sroa.0201, align 4, !tbaa !16
  %i.os = add i32 %i.ms, 1
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !16
  store i8 %i.ov, ptr %.sroa.0201.1..sroa_idx534, align 1, !tbaa !16
  %i.ow = zext i32 %i.ms to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !16
  store i8 %i.oy, ptr %.sroa.0201.2..sroa_idx548, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bf:                                            ; preds = %bb.bc
  %i.oz = add i32 %i.ms, 2
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !16
  store i8 %i.pc, ptr %.sroa.0201, align 4, !tbaa !16
  %i.pd = add i32 %i.ms, 1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !16
  store i8 %i.pg, ptr %.sroa.0201.1..sroa_idx533, align 1, !tbaa !16
  %i.ph = zext i32 %i.ms to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !16
  store i8 %i.pj, ptr %.sroa.0201.2..sroa_idx547, align 2, !tbaa !16
  %i.pk = add i32 %i.ms, 3
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !16
  store i8 %i.pn, ptr %.sroa.0201.3..sroa_idx554, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bg:                                            ; preds = %bb.az, %bb.az
  switch i8 %narrow, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread [
    i8 2, label %bb.bh
    i8 3, label %bb.bj
    i8 4, label %bb.bk
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.po = load i8, ptr %i.gk, align 1, !tbaa !16  ; 3 uses
  %i.pp = shl i8 %i.po, 1
  %i.pq = and i8 %i.pp, -8
  %i.pr = lshr i8 %i.po, 4
  %i.ps = and i8 %i.pr, 7
  %i.pt = or disjoint i8 %i.ps, %i.pq
  store i8 %i.pt, ptr %.sroa.0201, align 4, !tbaa !16
  %i.pu = load i8, ptr %i.gh, align 1, !tbaa !16  ; 4 uses
  %i.pv = lshr i8 %i.pu, 5
  %i.pw = shl i8 %i.po, 3
  %i.px = and i8 %i.pw, 24
  %i.py = or disjoint i8 %i.pv, %i.px             ; 2 uses
  %i.pz = shl nuw i8 %i.py, 3
  %i.qa = lshr i8 %i.py, 2
  %i.qb = or disjoint i8 %i.qa, %i.pz
  store i8 %i.qb, ptr %.sroa.0201.1..sroa_idx532, align 1, !tbaa !16
  %i.qc = shl i8 %i.pu, 3
  %i.qd = lshr i8 %i.pu, 2
  %i.qe = and i8 %i.qd, 7
  %i.qf = or disjoint i8 %i.qe, %i.qc
  store i8 %i.qf, ptr %.sroa.0201.2..sroa_idx546, align 2, !tbaa !16
  %i.qg = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.qh = icmp sgt i32 %i.qg, 3
  br i1 %i.qh, label %bb.bi, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bi:                                            ; preds = %bb.bh
  %.lobit.i177 = ashr i8 %i.pu, 7
  store i8 %.lobit.i177, ptr %.sroa.0201.3..sroa_idx553, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bj:                                            ; preds = %bb.bg
  %i.qi = load i8, ptr %i.gj, align 1, !tbaa !16
  store i8 %i.qi, ptr %.sroa.0201, align 4, !tbaa !16
  %i.qj = load i8, ptr %i.gk, align 1, !tbaa !16
  store i8 %i.qj, ptr %.sroa.0201.1..sroa_idx531, align 1, !tbaa !16
  %i.qk = load i8, ptr %i.gh, align 1, !tbaa !16
  store i8 %i.qk, ptr %.sroa.0201.2..sroa_idx545, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bk:                                            ; preds = %bb.bg
  %i.ql = load <4 x i8>, ptr %i.gh, align 1, !tbaa !16
  %i.qm = shufflevector <4 x i8> %i.ql, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.qm, ptr %.sroa.0201, align 4, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bl:                                            ; preds = %bb.az, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0201, ptr nonnull align 1 %i.gh, i64 %i.gi, i1 false)
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread: ; preds = %bb.bl, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bh, %bb.bi, %bb.bk, %bb.bj, %bb.bg, %bb.az, %.preheader334
  %.6114 = phi i64 [ %.4112374, %.preheader334 ], [ %.5113, %bb.az ], [ %.5113, %bb.bg ], [ %.5113, %bb.bj ], [ %.5113, %bb.bk ], [ %.5113, %bb.bi ], [ %.5113, %bb.bh ], [ %.5113, %bb.bc ], [ %.5113, %bb.bd ], [ %.5113, %bb.be ], [ %.5113, %bb.bf ], [ %.5113, %bb.bl ] ; 2 uses
  %.6105 = phi i64 [ %.4103375, %.preheader334 ], [ %.5104, %bb.az ], [ %.5104, %bb.bg ], [ %.5104, %bb.bj ], [ %.5104, %bb.bk ], [ %.5104, %bb.bi ], [ %.5104, %bb.bh ], [ %.5104, %bb.bc ], [ %.5104, %bb.bd ], [ %.5104, %bb.be ], [ %.5104, %bb.bf ], [ %.5104, %bb.bl ] ; 2 uses
  %i.qn = add nuw nsw i32 %.097376, 1
  %exitcond402.not = icmp eq i32 %.097376, %i.gu
  br i1 %exitcond402.not, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, label %.preheader334, !llvm.loop !156

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread
  %.8116 = phi i64 [ %.6114, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.3111, %bb.at ] ; 2 uses
  %.8107 = phi i64 [ %.6105, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.2101, %bb.at ]
  %i.qo = add nsw i64 %.8107, 1                   ; 2 uses
  %i.qp = load i32, ptr %i.gf, align 4, !tbaa !149 ; 2 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %i.qo, %i.qq
  br i1 %i.qr, label %.lr.ph, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, !llvm.loop !157

bb.bm:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %.loopexit345, %.loopexit.split-lp346
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp348, %.loopexit.split-lp346 ], [ %lpad.loopexit347, %.loopexit345 ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.cg

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175: ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, %.preheader343
  %i.qs = phi i32 [ %i.gp, %.preheader343 ], [ %i.qp, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ]
  %.9117314 = phi i64 [ %.0108379, %.preheader343 ], [ %.8116, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ] ; 2 uses
  %i.qt = add nsw i64 %.9117314, -1
  %i.qu = icmp slt i64 %.9117314, 1
  br i1 %i.qu, label %.critedge156, label %.preheader343, !llvm.loop !158

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307: ; preds = %bb.ac, %bb.ay, %bb.bb, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.critedge154:                                     ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bn

.critedge156:                                     ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, %bb.ar, %bb.av, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge156, %.critedge154
  %i.qv = load i8, ptr %i.l, align 1, !tbaa !68
  %i.qw = and i8 %i.qv, 16
  %.not146 = icmp eq i8 %i.qw, 0
  br i1 %.not146, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !148 ; 2 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph388, label %._crit_edge389

.lr.ph388:                                        ; preds = %bb.bo
  %i.rc = load i32, ptr %i.qy, align 4, !tbaa !149 ; 2 uses
end_hunk_0
