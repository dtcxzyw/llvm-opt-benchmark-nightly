inline.NumInlined: 10729
inline.NumDeleted: 3679
begin_hunk_0_@_ZN6duckdb19TupleDataCollection8ToStringB5cxx11Ev:bb.a

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

.loopexit90:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp91:                             ; preds = %bb.u
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp91, %.loopexit90
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ] ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bm
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ep) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ab, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %.pn20 = phi { ptr, i32 } [ %lpad.phi94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi94, %bb.ab ] ; 2 uses
  %i.er = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.bl
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @_ZdlPv(ptr noundef %i.er) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.aa
  %.pn20.pn = phi { ptr, i32 } [ %i.eo, %bb.aa ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.et = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bk
  br i1 %i.eu, label %.body49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @_ZdlPv(ptr noundef %i.et) #30
  br label %.body49

.body49:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.k
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.k ], [ %.pn20.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %i.ev = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.be
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.body49
  call void @_ZdlPv(ptr noundef %i.ev) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %.body49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.z
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.z ], [ %.pn20.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn20.pn.pn, %.body49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.y
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.em, %bb.y ] ; 2 uses
  %i.ex = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.ex) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ad:                                            ; preds = %bb.h
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.r) #31
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !430 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !431 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.fd
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i ], [ %i.fb, %bb.ad ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fe) #31
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.fd
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !432

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.fa, align 8, !tbaa !430
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ad
  %i.fg = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.fb, %bb.ad ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #30
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i:     ; preds = %bb.ae, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.fh = load ptr, ptr %5, align 8, !tbaa !430   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !431 ; 2 uses
  %.not4.i.i.i.i1.i.i = icmp eq ptr %i.fh, %i.fj
  br i1 %.not4.i.i.i.i1.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i, label %.lr.ph.i.i.i.i2.i.i

.lr.ph.i.i.i.i2.i.i:                              ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i, %.lr.ph.i.i.i.i2.i.i
  %.05.i.i.i.i3.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i2.i.i ], [ %i.fh, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fk) #31
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.fl, %i.fj
  br i1 %.not.i.i.i.i4.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i, label %.lr.ph.i.i.i.i2.i.i, !llvm.loop !432

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i: ; preds = %.lr.ph.i.i.i.i2.i.i
  %.pr.i.i6.i.i = load ptr, ptr %5, align 8, !tbaa !430
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i
  %i.fm = phi ptr [ %.pr.i.i6.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i ], [ %i.fh, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i ] ; 2 uses
  %.not.i.i1.i.i8.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i1.i.i8.i.i, label %_ZN6duckdb18TupleDataScanStateD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #30
  br label %_ZN6duckdb18TupleDataScanStateD2Ev.exit

_ZN6duckdb18TupleDataScanStateD2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ac, %.body32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.w
  %.pn20.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.ek, %bb.w ], [ %i.el, %bb.x ], [ %.pn20.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.az, %.body32 ], [ %.pn20.pn.pn.pn.pn, %bb.ac ]
  call void @_ZN6duckdb18TupleDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(560) dereferenceable(560) %5) #31
  br label %.body

.body:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn20.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.s, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.v
  %.pn20.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn.pn, %.body ], [ %i.ej, %bb.v ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn20.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartitionedTupleData5PrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN6duckdb20PartitionedTupleData8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.a) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.e) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.d
}

declare void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TupleDataBlockC2ERNS_13BufferManagerENS_9MemoryTagEm(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::BufferHandle", align 16 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !497
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.h = load <2 x ptr>, ptr %4, align 16, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 8 uses
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !43
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31, !inline_history !504
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31, !inline_history !504
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i5.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit, !prof !48

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #31
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.l:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !505
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !505
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14TupleDataBlockC2EOS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !43
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !506
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !506
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  store ptr null, ptr %1, align 8, !tbaa !507
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !45   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !45
  %.not.i.i.i.i4.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !43
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31, !inline_history !506
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31, !inline_history !506
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i7.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i7.i, 1
  br i1 %i.ai, label %bb.m, label %_ZSt4swapIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !48

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !92
  %i.an = load i64, ptr %i.al, align 8, !tbaa !92
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !92
  store i64 %i.am, ptr %i.al, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !92
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !92
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !92
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #33
end_hunk_0
