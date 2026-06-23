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
  %.not150 = icmp eq ptr %i.d, %i.e
  br i1 %.not150, label %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit, label %.lr.ph

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
  %.not151.a = icmp eq i64 %3, 0
  br i1 %.not151.a, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader
  %i.y = load ptr, ptr %2, align 8, !tbaa !294    ; 6 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !294 ; 7 uses
  %.not.i75 = icmp eq ptr %i.aa, null             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !311 ; 9 uses
  %.not.i77 = icmp eq ptr %i.ac, null
  %i.ad = load i8, ptr %i.v, align 1, !range !59
  %.fr152 = freeze i8 %i.ad
  %i.ae = trunc i8 %.fr152 to i1                  ; 3 uses
  %i.af = load i8, ptr %i.s, align 8, !range !59
  %.fr153 = freeze i8 %i.af
  %i.ag = trunc i8 %.fr153 to i1
  %or.cond = or i1 %4, %i.ag                      ; 4 uses
  br i1 %.not.i77, label %.lr.ph118.split.us.split, label %.lr.ph118.split

.lr.ph118.split.us.split:                         ; preds = %.lr.ph118
  br i1 %i.ae, label %._crit_edge, label %.split

.lr.ph118.split:                                  ; preds = %.lr.ph118
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.lr.ph118.split.split.us, label %.lr.ph118.split.split

.lr.ph118.split.split.us:                         ; preds = %.lr.ph118.split
  br i1 %i.ae, label %.lr.ph118.split.split.us.split.us, label %.lr.ph118.split.split.us.split.a

.lr.ph118.split.split.us.split.us:                ; preds = %.lr.ph118.split.split.us
  br i1 %or.cond, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us: ; preds = %.lr.ph118.split.split.us.split.us, %bb.i
  %.056117.us121.us = phi i64 [ %i.ah, %bb.i ], [ 0, %.lr.ph118.split.split.us.split.us ] ; 3 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us, label %bb.j

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us
  %i.ah = add nuw i64 %.056117.us121.us, 1        ; 2 uses
  %exitcond182.not = icmp eq i64 %i.ah, %3
  br i1 %exitcond182.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us, !llvm.loop !312

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
  %.not160 = icmp eq i64 %i.ar, 0
  br i1 %.not160, label %.split120, label %bb.i

.lr.ph118.split.split.us.split.a:                 ; preds = %.lr.ph118.split.split.us
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a: ; preds = %.lr.ph118.split.split.us.split.a, %bb.l
  %.056117.us121.us143.a = phi i64 [ %i.az, %bb.l ], [ 0, %.lr.ph118.split.split.us.split.a ] ; 3 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us144, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.056117.us121.us143.a
  %13 = load i32, ptr %12, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us144

_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us144: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a
  %i.as = phi i64 [ %14, %bb.k ], [ %.056117.us121.us143.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a ] ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = and i64 %i.as, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !123
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = and i64 %i.aw, %i.ax
  %.not159 = icmp eq i64 %i.ay, 0
  br i1 %.not159, label %bb.l, label %.split

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us144
  %i.az = add nuw i64 %.056117.us121.us143.a, 1   ; 2 uses
  %exitcond181.not = icmp eq i64 %i.az, %3
  br i1 %exitcond181.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122.us142.a, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122: ; preds = %.lr.ph118.split.split.us.split.a
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123

_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122
  %i.bc = phi i64 [ %i.bb, %bb.m ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us122 ] ; 2 uses
  %i.bd = lshr i64 %i.bc, 6
  %i.be = and i64 %i.bc, 63
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bd
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !123
  %i.bh = shl nuw i64 1, %i.be
  %i.bi = and i64 %i.bg, %i.bh
  %.not158 = icmp eq i64 %i.bi, 0
  br i1 %.not158, label %.split120, label %.split

.lr.ph118.split.split:                            ; preds = %.lr.ph118.split
  br i1 %i.ae, label %.lr.ph118.split.split.split.us, label %.lr.ph118.split.split.split

.lr.ph118.split.split.split.us:                   ; preds = %.lr.ph118.split.split
  br i1 %or.cond, label %._crit_edge, label %.lr.ph118.split.split.split.us.split

.lr.ph118.split.split.split.us.split:             ; preds = %.lr.ph118.split.split.split.us
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138: ; preds = %.lr.ph118.split.split.split.us.split, %bb.n
  %.056117.us128.us139 = phi i64 [ %i.bs, %bb.n ], [ 0, %.lr.ph118.split.split.split.us.split ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us128.us139
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = and i64 %i.bl, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !123
  %i.bq = shl nuw i64 1, %i.bn
  %i.br = and i64 %i.bp, %i.bq
  %.not157.a = icmp eq i64 %i.br, 0
  br i1 %.not157.a, label %.split120, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138
  %i.bs = add nuw i64 %.056117.us128.us139, 1     ; 2 uses
  %exitcond180.not = icmp eq i64 %i.bs, %3
  br i1 %exitcond180.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127: ; preds = %.lr.ph118.split.split.split.us.split, %bb.o
  %.056117.us128 = phi i64 [ %i.cf, %bb.o ], [ 0, %.lr.ph118.split.split.split.us.split ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us128
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = lshr i64 %i.by, 6
  %i.ca = and i64 %i.by, 63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !123
  %i.cd = shl nuw i64 1, %i.ca
  %i.ce = and i64 %i.cc, %i.cd
  %.not156 = icmp eq i64 %i.ce, 0
  br i1 %.not156, label %.split120, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127
  %i.cf = add nuw i64 %.056117.us128, 1           ; 2 uses
  %exitcond179.not = icmp eq i64 %i.cf, %3
  br i1 %exitcond179.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127, !llvm.loop !312

.lr.ph118.split.split.split:                      ; preds = %.lr.ph118.split.split
  br i1 %or.cond, label %.lr.ph118.split.split.split.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.lr.ph118.split.split.split.split.us:             ; preds = %.lr.ph118.split.split.split
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us: ; preds = %.lr.ph118.split.split.split.split.us, %bb.p
  %.056117.us134.us = phi i64 [ %i.cp, %bb.p ], [ 0, %.lr.ph118.split.split.split.split.us ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us134.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = and i64 %i.ci, 63
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !123
  %i.cn = shl nuw i64 1, %i.ck
  %i.co = and i64 %i.cm, %i.cn
  %.not155 = icmp eq i64 %i.co, 0
  br i1 %.not155, label %bb.p, label %.split

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us
  %i.cp = add nuw i64 %.056117.us134.us, 1        ; 2 uses
  %exitcond178.not.a = icmp eq i64 %i.cp, %3
  br i1 %exitcond178.not.a, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, !llvm.loop !312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133: ; preds = %.lr.ph118.split.split.split.split.us, %bb.q
  %.056117.us134 = phi i64 [ %i.dc, %bb.q ], [ 0, %.lr.ph118.split.split.split.split.us ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056117.us134
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = and i64 %i.cv, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !123
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.q, label %.split

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133
  %i.dc = add nuw i64 %.056117.us134, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %3
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133, !llvm.loop !312

._crit_edge:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.i, %.lr.ph118.split.split.split.us, %.lr.ph118.split.split.us.split.us, %.lr.ph118.split.us.split, %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.df, align 8, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !39
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #28, !inline_history !313
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #28, !inline_history !313
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.di, %bb.u ], [ %i.ds, %bb.v ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.w, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !44

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s, %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dw, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !39
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !40
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #28, !inline_history !314
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #28, !inline_history !314
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ab:                                            ; preds = %bb.z
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dz, %bb.aa ], [ %i.ej, %bb.ab ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ek, label %bb.ac, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !44

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph118.split.split.split
  %i.em = load i32, ptr %i.y, align 4, !tbaa !3
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  br i1 %.not.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76

_ZNK6duckdb15SelectionVector9get_indexEm.exit76:  ; preds = %bb.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.er = phi i64 [ %i.eq, %bb.ae ], [ %i.en, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = and i64 %i.er, 63
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.es
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !123
  %i.ew = shl nuw i64 1, %i.et
  %i.ex = and i64 %i.ev, %i.ew
  %.not154 = icmp eq i64 %i.ex, 0
  br i1 %.not154, label %.split120, label %.split

.split:                                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us144, %.lr.ph118.split.us.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.af:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK6duckdb6Vector8ToStringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ar unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %.split
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.042 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fb = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.fb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fe = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.af
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fi = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.fi) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fe) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.042, label %bb.aj, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.042, label %bb.aj, label %bb.aq

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread
  %.pn.pn90.ph = phi { ptr, i32 } [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn.pn90 = phi { ptr, i32 } [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn.pn90.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ey) #28
  br label %bb.aq

.split120:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us127.us138, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.us123
  %i.fl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread

bb.ak:                                            ; preds = %.split120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNK6duckdb6Vector8ToStringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ar unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread: ; preds = %.split120
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split210

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fo = load ptr, ptr %11, align 8, !tbaa !105  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.fo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fr = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread: ; preds = %bb.ak
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fv = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %.sink.split210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread
  call void @_ZdlPv(ptr noundef %i.fv) #29
  br label %.sink.split210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.fr) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %.0, label %bb.ao, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %.0, label %bb.ao, label %bb.aq

.sink.split210:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread
  %.pn60.pn102.ph = phi { ptr, i32 } [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.thread ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn60.pn102 = phi { ptr, i32 } [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn60.pn102.ph, %.sink.split210 ]
  call void @__cxa_free_exception(ptr %i.fl) #28
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  ret void

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.ad
  %.pn60.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.el, %bb.ad ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn60.pn102, %bb.ao ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn.pn90, %bb.aj ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
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
