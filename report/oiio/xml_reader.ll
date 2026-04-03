begin_hunk_0
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::allocator.7", align 1 ; 4 uses
  %18 = alloca %"class.photos_editing_formats::image_io::Message", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.bv, label %bb.b
end_hunk_0
begin_hunk_1
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.u, label %19

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN22photos_editing_formats8image_io11DataLineMap13FindDataLinesERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(25) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %19 unwind label %bb.i

19:                                               ; preds = %bb.u, %bb.t
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !72
  %22 = sub i64 %21, %1                           ; 2 uses
  %.not220 = icmp eq i64 %22, 0
  br i1 %.not220, label %.critedge75, label %.lr.ph

.lr.ph:                                           ; preds = %19
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124
  %.020221 = phi i64 [ %22, %.lr.ph ], [ %.222, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124 ] ; 4 uses
  %i.de = load ptr, ptr %i.bf, align 8, !tbaa !55
  %i.df = load ptr, ptr %i.bh, align 8, !tbaa !55 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df                ; 2 uses
  %i.dh = load i8, ptr %i.a, align 8, !range !53
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond = select i1 %i.dg, i1 true, i1 %i.di
  br i1 %or.cond, label %.critedge, label %bb.w

end_hunk_1
begin_hunk_2
  call void @_ZN22photos_editing_formats8image_io11DataContextD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #15
  br label %.body

.loopexit186:                                     ; preds = %bb.ad, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108, %bb.ag, %bb.au
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp.a:                             ; preds = %bb.ar
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ad:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_15DataMatchResultERKNS0_11DataContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121 unwind label %.loopexit186

bb.ae:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.ef = load i8, ptr %i.cw, align 4, !tbaa !107, !range !53, !noundef !54
end_hunk_2
begin_hunk_3

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc95 unwind label %.loopexit186

.noexc95:                                         ; preds = %bb.ag, %bb.af
  %i.ei = load i32, ptr %9, align 8, !tbaa !44    ; 2 uses
end_hunk_3
begin_hunk_4
  %i.ek = load i64, ptr %i.da, align 8, !tbaa !7
  %i.el = add i64 %i.ek, %i.ej
  store i64 %i.el, ptr %i.da, align 8, !tbaa !7
  %i.em = sub i64 %.020221, %i.ej                 ; 2 uses
  %i.en = load i64, ptr %4, align 8, !tbaa !85
  %i.eo = add i64 %i.en, %i.ej
  store i64 %i.eo, ptr %4, align 8, !tbaa !85
  %i.ep = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.eq = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ep)
          to label %bb.aj unwind label %.loopexit186

bb.aj:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit
  br i1 %i.eq, label %bb.ak, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121
end_hunk_4
begin_hunk_5
  br label %bb.bg

bb.ar:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.critedge74 unwind label %.loopexit.split-lp.a

.critedge74:                                      ; preds = %bb.ar
  %23 = load i64, ptr %i.cz, align 8, !tbaa !103
  %24 = load i64, ptr %i.da, align 8, !tbaa !7
  %25 = add i64 %24, %23
  store i64 %25, ptr %i.da, align 8, !tbaa !7
  %i.gm = load ptr, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dd
  br i1 %i.gn, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101: ; preds = %.critedge74
  %i.go = load i64, ptr %i.dd, align 8, !tbaa !39
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #16
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103: ; preds = %.critedge74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.bt

bb.as:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.gq = load i8, ptr %i.cw, align 4, !tbaa !107, !range !53, !noundef !54
end_hunk_5
begin_hunk_6

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc107 unwind label %.loopexit186

.noexc107:                                        ; preds = %bb.au, %bb.at
  %i.gt = load i32, ptr %9, align 8, !tbaa !44    ; 2 uses
end_hunk_6
begin_hunk_7
  %i.gv = load i64, ptr %i.da, align 8, !tbaa !7
  %i.gw = add i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.da, align 8, !tbaa !7
  %i.gx = sub i64 %.020221, %i.gu                 ; 3 uses
  %i.gy = load i64, ptr %4, align 8, !tbaa !85
  %i.gz = add i64 %i.gy, %i.gu
  store i64 %i.gz, ptr %4, align 8, !tbaa !85
  %i.ha = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.hb = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ha)
          to label %bb.ax unwind label %.loopexit186

bb.ax:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108
  br i1 %i.hb, label %bb.ay, label %bb.bf
end_hunk_7
begin_hunk_8
  call void %i.ji(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jf) #15
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120, %bb.bf, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %bb.ad, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit, %bb.aj, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115
  %.222 = phi i64 [ %i.gx, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115 ], [ %.020221, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit ], [ %.020221, %bb.ad ], [ %i.em, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit ], [ %i.em, %bb.aj ], [ %i.gx, %bb.bf ], [ %i.gx, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120 ] ; 2 uses
  %i.jj = load ptr, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.dd
  br i1 %i.jk, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i122
end_hunk_8
begin_hunk_9

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %.not = icmp eq i64 %.222, 0
  br i1 %.not, label %.critedge75, label %bb.v, !llvm.loop !137

bb.bg:                                            ; preds = %.loopexit186, %.loopexit.split-lp.a, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit100
  %.pn55 = phi { ptr, i32 } [ %.pn51, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118 ], [ %.pn53, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit100 ], [ %lpad.loopexit, %.loopexit186 ], [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp.a ] ; 2 uses
  %i.jn = load ptr, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.dd
  br i1 %i.jo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i125
end_hunk_9
begin_hunk_10
  br label %bb.bu

.critedge:                                        ; preds = %bb.v
  br i1 %i.dg, label %bb.bh, label %.critedge75

bb.bh:                                            ; preds = %.critedge
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull %4)
end_hunk_10
begin_hunk_11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bu

.critedge75:                                      ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124, %19, %.critedge
  %i.lm = load i8, ptr %i.a, align 8, !tbaa !50, !range !53, !noundef !54
  %i.ln = trunc nuw i8 %i.lm to i1
  %26 = xor i1 %i.ln, true
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %.critedge75, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit87, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit
  %.3 = phi i1 [ false, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit87 ], [ false, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %26, %.critedge75 ], [ true, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103 ]
  %i.lo = load ptr, ptr %i.j, align 8, !tbaa !97  ; 2 uses
  %.not8.i.i.i149 = icmp eq ptr %i.lo, %i.j
  br i1 %.not8.i.i.i149, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156, label %.lr.ph.i.i.i150
end_hunk_11
