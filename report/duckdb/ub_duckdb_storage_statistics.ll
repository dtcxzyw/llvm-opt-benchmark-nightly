inline.NumInlined: 3702
inline.NumDeleted: 1232
begin_hunk_0_@_ZN6duckdb12VariantStats8ToStringB5cxx11ERKNS_14BaseStatisticsE:bb.a

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.w
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %.body60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.er) #29
  br label %.body60

.body60:                                          ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.u
  %.pn21 = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.eq, %bb.ak ] ; 2 uses
  %i.eu = load ptr, ptr %10, align 8, !tbaa !105  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %.body60
  call void @_ZdlPv(ptr noundef %i.eu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %.body60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.aj
  %.pn21.pn = phi { ptr, i32 } [ %i.ep, %bb.aj ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %.pn21, %.body60 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #28
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.ai
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.eo, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ex = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.bs
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.ex) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ah
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ah ], [ %.pn21.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn21.pn.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i92, %bb.ac
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %12, align 8, !tbaa !105  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %.body89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.fb) #29
  br label %.body89

.body89:                                          ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.aa
  %.pn26 = phi { ptr, i32 } [ %i.do, %bb.aa ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.fa, %bb.an ] ; 2 uses
  %i.fe = load ptr, ptr %14, align 8, !tbaa !105  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %.body89
  call void @_ZdlPv(ptr noundef %i.fe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %.body89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.am
  %.pn26.pn = phi { ptr, i32 } [ %i.ez, %bb.am ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn26, %.body89 ]
  %i.fh = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.da
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  call void @_ZdlPv(ptr noundef %i.fh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ad
  %.pn30.pn = phi { ptr, i32 } [ %i.eh, %bb.ad ], [ %i.ei, %bb.ae ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn21.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  %i.fj = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.d
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.fj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  resume { ptr, i32 } %.pn30.pn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb14BaseStatistics6VerifyERNS_6VectorERKNS_15SelectionVectorEmb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = tail call noundef zeroext range(i8 0, 8) i8 @_ZN6duckdb14BaseStatistics12GetStatsTypeERKNS_11LogicalTypeE(ptr noundef nonnull readonly align 8 dereferenceable(128) %0)
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 5, label %bb.g
    i8 6, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit
    i8 7, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit
    i8 4, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12NumericStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  br label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb11StringStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  br label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb9ListStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  br label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit

bb.e:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1), !inline_history !288 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !292
  %.not147 = icmp eq ptr %i.d, %i.e
  br i1 %.not147, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0.i116 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.f ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %.0.i116
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.0.i116), !inline_history !288
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !288
  tail call void @_ZNK6duckdb14BaseStatistics6VerifyERNS_6VectorERKNS_15SelectionVectorEmb(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext true), !inline_history !288
  %i.k = add nuw i64 %.0.i116, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !292
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %bb.f, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit, !llvm.loop !293

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb10ArrayStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  br label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit: ; preds = %bb.f, %bb.e, %bb.a, %bb.a, %bb.a, %bb.g, %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !58, !range !59, !noundef !60
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !59
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond69 = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond69, label %bb.ap, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %.preheader unwind label %bb.ad

.preheader:                                       ; preds = %bb.h
  %.not148 = icmp eq i64 %3, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader
  %i.y = load ptr, ptr %2, align 8, !tbaa !294    ; 6 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !294 ; 7 uses
  %.not.i75 = icmp eq ptr %i.aa, null             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !311 ; 9 uses
  %.not.i77 = icmp eq ptr %i.ac, null
  %i.ad = load i8, ptr %i.v, align 1, !range !59
  %.fr149 = freeze i8 %i.ad
  %i.ae = trunc i8 %.fr149 to i1                  ; 3 uses
  %i.af = load i8, ptr %i.s, align 8, !range !59
  %.fr150 = freeze i8 %i.af
  %i.ag = trunc i8 %.fr150 to i1
  %or.cond = or i1 %4, %i.ag                      ; 4 uses
  br i1 %.not.i77, label %.lr.ph118.split.us.split, label %.lr.ph118.split

.lr.ph118.split.us.split:                         ; preds = %.lr.ph118
  br i1 %i.ae, label %._crit_edge, label %.split

.lr.ph118.split:                                  ; preds = %.lr.ph118
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.lr.ph118.split.split.us, label %.lr.ph118.split.split

.lr.ph118.split.split.us:                         ; preds = %.lr.ph118.split
  br i1 %i.ae, label %.lr.ph118.split.split.us.split.us, label %.lr.ph118.split.split.us.split.split.us

.lr.ph118.split.split.us.split.us:                ; preds = %.lr.ph118.split.split.us
  br i1 %or.cond, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us: ; preds = %.lr.ph118.split.split.us.split.us, %bb.i
  %.056117.us121.us = phi i64 [ %i.ah, %bb.i ], [ 0, %.lr.ph118.split.split.us.split.us ] ; 3 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us, label %bb.j

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us
  %i.ah = add nuw i64 %.056117.us121.us, 1        ; 2 uses
  %exitcond179.not.a = icmp eq i64 %i.ah, %3
  br i1 %exitcond179.not.a, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us, !llvm.loop !312

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.056117.us121.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us
  %i.al = phi i64 [ %i.ak, %bb.j ], [ %.056117.us121.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us ] ; 2 uses
  %i.am = lshr i64 %i.al, 6
  %i.an = and i64 %i.al, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !123
  %i.aq = shl nuw i64 1, %i.an
  %i.ar = and i64 %i.ap, %i.aq
  %.not158.a = icmp eq i64 %i.ar, 0
  br i1 %.not158.a, label %.split120, label %bb.i

.lr.ph118.split.split.us.split.split.us:          ; preds = %.lr.ph118.split.split.us
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us: ; preds = %.lr.ph118.split.split.us.split.split.us, %bb.l
  %.056117.us121.us143.us = phi i64 [ %i.ay, %bb.l ], [ 0, %.lr.ph118.split.split.us.split.split.us ] ; 3 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.056117.us121.us143.us
  %13 = load i32, ptr %12, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us
  %.056117.us121.us143 = phi i64 [ %14, %bb.k ], [ %.056117.us121.us143.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us ] ; 2 uses
  %i.as = lshr i64 %.056117.us121.us143, 6
  %i.at = and i64 %.056117.us121.us143, 63
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.av = load i64, ptr %i.au, align 8, !tbaa !123
  %i.aw = shl nuw i64 1, %i.at
  %i.ax = and i64 %i.av, %i.aw
  %.not156.a = icmp eq i64 %i.ax, 0
  br i1 %.not156.a, label %bb.l, label %.split

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142
  %i.ay = add nuw i64 %.056117.us121.us143.us, 1  ; 2 uses
  %exitcond177.not = icmp eq i64 %i.ay, %3
  br i1 %exitcond177.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.us, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122: ; preds = %.lr.ph118.split.split.us.split.split.us
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122
  %i.az = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ba = zext i32 %i.az to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123

_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122
  %i.bb = phi i64 [ %i.ba, %bb.m ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122 ] ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = and i64 %i.bb, 63
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bc
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !123
  %i.bg = shl nuw i64 1, %i.bd
  %i.bh = and i64 %i.bf, %i.bg
  %.not155.a = icmp eq i64 %i.bh, 0
  br i1 %.not155.a, label %.split120, label %.split

.lr.ph118.split.split:                            ; preds = %.lr.ph118.split
  br i1 %i.ae, label %.lr.ph118.split.split.split.us, label %.lr.ph118.split.split.split

.lr.ph118.split.split.split.us:                   ; preds = %.lr.ph118.split.split
  br i1 %or.cond, label %._crit_edge, label %.lr.ph118.split.split.split.us.split

.lr.ph118.split.split.split.us.split:             ; preds = %.lr.ph118.split.split.split.us
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138: ; preds = %.lr.ph118.split.split.split.us.split, %bb.n
  %.056117.us128.us139 = phi i64 [ %i.br, %bb.n ], [ 0, %.lr.ph118.split.split.split.us.split ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us128.us139
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = and i64 %i.bk, 63
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bl
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !123
  %i.bp = shl nuw i64 1, %i.bm
  %i.bq = and i64 %i.bo, %i.bp
  %.not154.a = icmp eq i64 %i.bq, 0
  br i1 %.not154.a, label %.split120, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138
  %i.br = add nuw i64 %.056117.us128.us139, 1     ; 2 uses
  %exitcond176.not = icmp eq i64 %i.br, %3
  br i1 %exitcond176.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127: ; preds = %.lr.ph118.split.split.split.us.split, %bb.o
  %.056117.us128 = phi i64 [ %i.ce, %bb.o ], [ 0, %.lr.ph118.split.split.split.us.split ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us128
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = and i64 %i.bx, 63
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.by
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !123
  %i.cc = shl nuw i64 1, %i.bz
  %i.cd = and i64 %i.cb, %i.cc
  %.not153 = icmp eq i64 %i.cd, 0
  br i1 %.not153, label %.split120, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127
  %i.ce = add nuw i64 %.056117.us128, 1           ; 2 uses
  %exitcond175.not = icmp eq i64 %i.ce, %3
  br i1 %exitcond175.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127, !llvm.loop !312

.lr.ph118.split.split.split:                      ; preds = %.lr.ph118.split.split
  br i1 %or.cond, label %.lr.ph118.split.split.split.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.lr.ph118.split.split.split.split.us:             ; preds = %.lr.ph118.split.split.split
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us: ; preds = %.lr.ph118.split.split.split.split.us, %bb.p
  %.056117.us134.us = phi i64 [ %i.co, %bb.p ], [ 0, %.lr.ph118.split.split.split.split.us ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us134.us
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 6
  %i.cj = and i64 %i.ch, 63
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !123
  %i.cm = shl nuw i64 1, %i.cj
  %i.cn = and i64 %i.cl, %i.cm
  %.not152 = icmp eq i64 %i.cn, 0
  br i1 %.not152, label %bb.p, label %.split

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us
  %i.co = add nuw i64 %.056117.us134.us, 1        ; 2 uses
  %exitcond174.not = icmp eq i64 %i.co, %3
  br i1 %exitcond174.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133: ; preds = %.lr.ph118.split.split.split.split.us, %bb.q
  %.056117.us134 = phi i64 [ %i.db, %bb.q ], [ 0, %.lr.ph118.split.split.split.split.us ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us134
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 6
  %i.cw = and i64 %i.cu, 63
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123
  %i.cz = shl nuw i64 1, %i.cw
  %i.da = and i64 %i.cy, %i.cz
  %.not = icmp eq i64 %i.da, 0
  br i1 %.not, label %bb.q, label %.split

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133
  %i.db = add nuw i64 %.056117.us134, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %3
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133, !llvm.loop !312

._crit_edge:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.i, %.lr.ph118.split.split.split.us, %.lr.ph118.split.split.us.split.us, %.lr.ph118.split.us.split, %.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.de, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !39
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28, !inline_history !313
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28, !inline_history !313
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.u ], [ %i.dr, %bb.v ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.w, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !44

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s, %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dv, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !39
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28, !inline_history !314
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28, !inline_history !314
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ab:                                            ; preds = %bb.z
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dy, %bb.aa ], [ %i.ei, %bb.ab ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ej, label %bb.ac, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !44

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.h
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph118.split.split.split
  %i.el = load i32, ptr %i.y, align 4, !tbaa !3
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76

_ZNK6duckdb15SelectionVector9get_indexEm.exit76:  ; preds = %bb.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.eq = phi i64 [ %i.ep, %bb.ae ], [ %i.em, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.er = lshr i64 %i.eq, 6
  %i.es = and i64 %i.eq, 63
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.er
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !123
  %i.ev = shl nuw i64 1, %i.es
  %i.ew = and i64 %i.eu, %i.ev
  %.not151 = icmp eq i64 %i.ew, 0
  br i1 %.not151, label %.split120, label %.split

.split:                                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142, %.lr.ph118.split.us.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76
  %i.ex = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.af:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK6duckdb6Vector8ToStringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ar unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %.split
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.042 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fa = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.fa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fd = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.af
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fh = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.fh) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fd) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.042, label %bb.aj, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.042, label %bb.aj, label %bb.aq

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread
  %.pn.pn90.ph = phi { ptr, i32 } [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn.pn90 = phi { ptr, i32 } [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn.pn90.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ex) #28
  br label %bb.aq

.split120:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123
  %i.fk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread

bb.ak:                                            ; preds = %.split120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNK6duckdb6Vector8ToStringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ar unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread: ; preds = %.split120
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split210

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fn = load ptr, ptr %11, align 8, !tbaa !105  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fq = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread: ; preds = %bb.ak
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fu = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %.sink.split210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread
  call void @_ZdlPv(ptr noundef %i.fu) #29
  br label %.sink.split210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.fq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %.0, label %bb.ao, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %.0, label %bb.ao, label %bb.aq

.sink.split210:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread
  %.pn60.pn102.ph = phi { ptr, i32 } [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn60.pn102 = phi { ptr, i32 } [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn60.pn102.ph, %.sink.split210 ]
  call void @__cxa_free_exception(ptr %i.fk) #28
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  ret void

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.ad
  %.pn60.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.ad ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn60.pn102, %bb.ao ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn.pn90, %bb.aj ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn.pn

bb.ar:                                            ; preds = %bb.am, %bb.ah
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12NumericStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  switch i8 %i.b, label %bb.n [
    i8 1, label %bb.u
    i8 3, label %bb.b
    i8 5, label %bb.c
    i8 7, label %bb.d
    i8 9, label %bb.e
    i8 2, label %bb.f
    i8 4, label %bb.g
    i8 6, label %bb.h
    i8 8, label %bb.i
    i8 -52, label %bb.j
    i8 -53, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12NumericStats15TemplatedVerifyIaEEvRKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  br label %bb.u

end_hunk_0
