Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial21geometryInvalidReasonB5cxx11EPKN4geos4geom8GeometryE:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc41 unwind label %bb.ae

.noexc41:                                         ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !168
  %i.dj = load ptr, ptr %14, align 8, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !40
  store ptr %i.dj, ptr %2, align 16, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %switch.load, ptr %i.dn, align 16, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %switch.ext, ptr %i.do, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dq = load double, ptr %12, align 8, !tbaa !44, !noalias !168
  store double %i.dq, ptr %i.dp, align 16, !tbaa !41, !noalias !168
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ds = load double, ptr %i.di, align 8, !tbaa !44, !noalias !168
  store double %i.ds, ptr %i.dr, align 16, !tbaa !41, !noalias !168
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.13, i64 25, i64 43741, ptr nonnull %2)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !168
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dt, ptr %0, align 8, !tbaa !42
  %i.du = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !40 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dt, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.ea, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68: ; preds = %bb.ab
  store ptr %i.du, ptr %0, align 8, !tbaa !39
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !41
  store i64 %i.eb, ptr %i.dt, align 8, !tbaa !41
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre98 = load i64, ptr %.phi.trans.insert97, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68
  %i.ec = phi i64 [ %i.dy, %bb.ac ], [ %.pre98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !40
  store ptr %i.dv, ptr %13, align 8, !tbaa !39
  store i64 0, ptr %i.ed, align 8, !tbaa !40
  store i8 0, ptr %i.dv, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ef, align 8, !tbaa !145
  %i.eg = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !41
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ah

bb.ad:                                            ; preds = %switch.lookup
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.af:                                            ; preds = %.noexc41
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.af
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !41
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.em, %bb.ae ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.en, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.el, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.p
  %i.et = load ptr, ptr %i.bm, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !170
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #27
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit:    ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.al

bb.aj:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.ag, %bb.r
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.r ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn.pn, %bb.ag ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ez = load ptr, ptr %i.bm, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i79, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !170
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #27
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80:  ; preds = %bb.ak, %bb.aj, %bb.q
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %.pn27.pn.pn, %bb.aj ], [ %.pn27.pn.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.am

bb.al:                                            ; preds = %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i: ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #27
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit

_ZN4geos9operation5valid9IsValidOpD2Ev.exit:      ; preds = %bb.al, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.an

bb.am:                                            ; preds = %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.i
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn27.pn.pn.pn, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80 ], [ %i.ao, %bb.i ]
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !171 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i81, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit83, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82: ; preds = %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 32) #27
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit83

_ZN4geos9operation5valid9IsValidOpD2Ev.exit83:    ; preds = %bb.am, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn32.pn.pn

bb.an:                                            ; preds = %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, %bb.b
  ret void
}

declare noundef ptr @_ZN4geos9operation5valid9IsValidOp18getValidationErrorEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK4geos9operation5valid23TopologyValidationError10getMessageB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp8isSimpleEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions10geospatial25validateLatitudeLongitudeEdd(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, double noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.161", align 16 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ogt double %5, 9.000000e+01
  %6 = tail call double @llvm.fabs.f64(double %2)
  %7 = fcmp ogt double %6, 1.800000e+02
  %or.cond5 = or i1 %or.cond, %7
  %i.a = fcmp uno double %2, %1
  %or.cond12 = or i1 %i.a, %or.cond5
  br i1 %or.cond12, label %.critedge, label %bb.d, !prof !176

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !177
  store double -9.000000e+01, ptr %3, align 16, !tbaa !41, !noalias !177
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 9.000000e+01, ptr %i.b, align 16, !tbaa !41, !noalias !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double -1.800000e+02, ptr %i.c, align 16, !tbaa !41, !noalias !177
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double 1.800000e+02, ptr %i.d, align 16, !tbaa !41, !noalias !177
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %1, ptr %i.e, align 16, !tbaa !41, !noalias !177
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %2, ptr %i.f, align 16, !tbaa !41, !noalias !177
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.14, i64 110, i64 11184810, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !177
  invoke void @_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.g = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !41
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !180, !alias.scope !181
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.157", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !184
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr %i.a, i64 %i.c, i64 0, ptr nonnull %3), !noalias !184
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !39, !noalias !184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !41, !noalias !184
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !39, !noalias !184 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !41, !noalias !184
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !184
  resume { ptr, i32 } %i.i

_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions10geospatial31getMinimalTilesCoveringGeometryERKN4geos4geom8GeometryEih(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.32", align 8    ; 7 uses
  %5 = alloca %"class.folly::Expected", align 8   ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke fastcc void @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEi(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit unwind label %bb.g

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !47     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.g = trunc i32 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5folly15expected_detail15ExpectedStorageISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit
  %.sroa.8.044 = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %_ZN5folly15expected_detail15ExpectedStorageISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.8.044, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN8facebook5velox12BingTileType16bingTileChildrenB5cxx11Emhh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %5, i64 noundef %i.n, i8 noundef zeroext %i.g, i8 noundef zeroext %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.h, align 8, !tbaa !53
  switch i8 %i.o, label %bb.k [
    i8 2, label %bb.d
    i8 1, label %bb.l
  ], !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10geospatial31getMinimalTilesCoveringGeometryERKN4geos4geom8GeometryEihE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6) #25
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt5stackIlSt6vectorIlSaIlEEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit27

bb.i:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.w = load i64, ptr %i.u, align 8, !tbaa !41
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions10geospatial22computeSphericalExcessERKN4geos4geom7PolygonE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.012.lcssa = phi double [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ], [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ]
  ret double %.012.lcssa

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !251    ; 3 uses
  %.not.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #26, !inline_history !248
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ 0, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.01225 = phi double [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.v = load ptr, ptr %2, align 8, !tbaa !251
  %i.w = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  %i.y = fsub double %.01225, %i.x                ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !251    ; 3 uses
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #26, !inline_history !248
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !249

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !251   ; 3 uses
  %.not.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22: ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #26, !inline_history !248
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17
  %.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23 ], [ %i.m, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !252 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.e)
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.n = load <2 x double>, ptr %i.i, align 8
  %i.o = load <2 x double>, ptr %i.m, align 8
  %i.p = fcmp oeq <2 x double> %i.n, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.0.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select = select i1 %.0.i.i, i64 %i.e, i64 %i.d ; 3 uses
  %i.s = icmp ult i64 %spec.select, 3
  br i1 %i.s, label %bb.b, label %.peel.begin, !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceEE18veloxCheckFailArgs, ptr noundef nonnull @.str.39) #25
  unreachable

.peel.begin:                                      ; preds = %bb.a
  %i.t = add i64 %spec.select, -1
  %i.u = load ptr, ptr %0, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.t)
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !44
  %i.z = fmul <2 x double> %i.y, splat (double f0x400921FB54442D18)
  %i.aa = fdiv <2 x double> %i.z, splat (double 1.800000e+02) ; 3 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  %i.ac = tail call double @sin(double noundef %i.ab) #26
  %i.ad = tail call double @cos(double noundef %i.ab) #26 ; 2 uses
  %i.ae = fmul double %i.ab, 5.000000e-01
  %i.af = tail call double @tan(double noundef %i.ae) #26 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.ak = load <2 x double>, ptr %i.aj, align 8
  %i.al = fmul <2 x double> %i.ak, splat (double f0x400921FB54442D18)
  %i.am = fdiv <2 x double> %i.al, splat (double 1.800000e+02) ; 4 uses
  %i.an = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = tail call double @tan(double noundef %i.ao) #26 ; 3 uses
  %i.aq = fcmp une <2 x double> %i.am, %i.aa
  %i.ar = bitcast <2 x i1> %i.aq to i2
  %or.cond.i.peel = icmp eq i2 %i.ar, 0
  br i1 %or.cond.i.peel, label %.loopexit, label %.peel.next, !prof !114

.peel.next:                                       ; preds = %.peel.begin
  %foldExtExtBinop50.a = fsub <2 x double> %i.am, %i.aa
  %i.as = extractelement <2 x double> %foldExtExtBinop50.a, i64 0 ; 3 uses
  %i.at = fmul double %i.as, 5.000000e-01
  %i.au = tail call double @tan(double noundef %i.at) #26
  %i.av = fadd double %i.af, %i.ap
  %i.aw = fmul double %i.av, %i.au
  %i.ax = fmul double %i.af, %i.ap
  %i.ay = fadd double %i.ax, 1.000000e+00
  %i.az = tail call double @atan2(double noundef %i.aw, double noundef %i.ay) #26
  %i.ba = fmul double %i.az, 2.000000e+00
  %i.bb = fadd double %i.ba, 0.000000e+00
  %i.bc = tail call double @cos(double noundef %i.an) #26 ; 3 uses
  %i.bd = tail call double @sin(double noundef %i.an) #26 ; 2 uses
  %i.be = tail call double @sin(double noundef %i.as) #26 ; 2 uses
  %i.bf = tail call double @cos(double noundef %i.as) #26 ; 2 uses
  %i.bg = fmul double %i.bc, %i.be
  %i.bh = fmul double %i.ad, %i.bd                ; 2 uses
  %i.bi = fmul double %i.ac, %i.bc                ; 2 uses
  %i.bj = fmul double %i.bi, %i.bf
  %i.bk = fsub double %i.bh, %i.bj
  %i.bl = tail call double @atan2(double noundef %i.bg, double noundef %i.bk) #26
  %i.bm = fadd double %i.bl, f0x401921FB54442D18
  %i.bn = tail call double @fmod(double noundef %i.bm, double noundef f0x401921FB54442D18) #26 ; 2 uses
  %i.bo = fneg double %i.be
  %i.bp = fmul double %i.ad, %i.bo
  %i.bq = fmul double %i.bh, %i.bf
  %i.br = fsub double %i.bi, %i.bq
  %i.bs = tail call double @atan2(double noundef %i.bp, double noundef %i.br) #26
  %i.bt = fadd double %i.bs, f0x400921FB54442D18
  %i.bu = tail call double @fmod(double noundef %i.bt, double noundef f0x401921FB54442D18) #26 ; 2 uses
  %i.bv = fsub double %i.bu, %i.bn
  %i.bw = fadd double %i.bv, f0x4022D97C7F3321D2
  %i.bx = tail call double @fmod(double noundef %i.bw, double noundef f0x401921FB54442D18) #26
  %i.by = fadd double %i.bx, f0xC00921FB54442D18
  br label %bb.c

_ZN12_GLOBAL__N_125SphericalExcessCalculator22computeSphericalExcessEv.exit: ; preds = %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit
  %i.bz = fsub double %i.bn, %i.dv
  %i.ca = fadd double %i.bz, f0x4022D97C7F3321D2
  %i.cb = tail call double @fmod(double noundef %i.ca, double noundef f0x401921FB54442D18) #26
  %i.cc = fadd double %i.cb, f0xC00921FB54442D18
  %i.cd = fadd double %i.ef, %i.cc
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp olt double %i.ce, f0x3FE921FB54442D18
  %i.cg = tail call double @llvm.fabs.f64(double %i.dc)
  %i.ch = fadd double %i.cg, f0xC01921FB54442D18
  %.sroa.0.1 = select i1 %i.cf, double %i.ch, double %i.dc
  ret double %.sroa.0.1

bb.c:                                             ; preds = %.peel.next, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.8.040 = phi double [ %i.by, %.peel.next ], [ %i.ef, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.0.038 = phi double [ %i.bb, %.peel.next ], [ %i.dc, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.31.035 = phi double [ %i.ap, %.peel.next ], [ %i.cs, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.28.034 = phi double [ %i.bd, %.peel.next ], [ %i.de, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.25.033 = phi double [ %i.bc, %.peel.next ], [ %i.dd, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.19.031 = phi double [ %i.bu, %.peel.next ], [ %i.dv, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %i.ci = phi <2 x double> [ %i.am, %.peel.next ], [ %i.cp, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 3 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %indvars.iv)
  %i.cn = load <2 x double>, ptr %i.cm, align 8
  %i.co = fmul <2 x double> %i.cn, splat (double f0x400921FB54442D18)
  %i.cp = fdiv <2 x double> %i.co, splat (double 1.800000e+02) ; 5 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 1 ; 3 uses
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = tail call double @tan(double noundef %i.cr) #26 ; 3 uses
  %1 = fcmp oeq <2 x double> %i.cp, %i.ci
  %2 = fcmp oeq <2 x double> %i.cp, %i.ci
  %shift52 = shufflevector <2 x i1> %2, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = and <2 x i1> %1, %shift52
  %or.cond.i = extractelement <2 x i1> %foldExtExtBinop53, i64 0
  br i1 %or.cond.i, label %.loopexit, label %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit, !prof !114

.loopexit:                                        ; preds = %bb.c, %.peel.begin
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.44) #25
  unreachable

_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit: ; preds = %bb.c
  %foldExtExtBinop55 = fsub <2 x double> %i.cp, %i.ci
  %i.ct = extractelement <2 x double> %foldExtExtBinop55, i64 0 ; 3 uses
  %i.cu = fmul double %i.ct, 5.000000e-01
  %i.cv = tail call double @tan(double noundef %i.cu) #26
  %i.cw = fadd double %.sroa.31.035, %i.cs
  %i.cx = fmul double %i.cw, %i.cv
  %i.cy = fmul double %.sroa.31.035, %i.cs
  %i.cz = fadd double %i.cy, 1.000000e+00
  %i.da = tail call double @atan2(double noundef %i.cx, double noundef %i.cz) #26
  %i.db = fmul double %i.da, 2.000000e+00
  %i.dc = fadd double %.sroa.0.038, %i.db         ; 3 uses
  %i.dd = tail call double @cos(double noundef %i.cq) #26 ; 3 uses
  %i.de = tail call double @sin(double noundef %i.cq) #26 ; 2 uses
  %i.df = tail call double @sin(double noundef %i.ct) #26 ; 2 uses
  %i.dg = tail call double @cos(double noundef %i.ct) #26 ; 2 uses
  %i.dh = fmul double %i.dd, %i.df
  %i.di = fmul double %.sroa.25.033, %i.de        ; 2 uses
  %i.dj = fmul double %.sroa.28.034, %i.dd        ; 2 uses
  %i.dk = fmul double %i.dj, %i.dg
  %i.dl = fsub double %i.di, %i.dk
  %i.dm = tail call double @atan2(double noundef %i.dh, double noundef %i.dl) #26
  %i.dn = fadd double %i.dm, f0x401921FB54442D18
  %i.do = tail call double @fmod(double noundef %i.dn, double noundef f0x401921FB54442D18) #26 ; 2 uses
  %i.dp = fneg double %i.df
  %i.dq = fmul double %.sroa.25.033, %i.dp
  %i.dr = fmul double %i.di, %i.dg
  %i.ds = fsub double %i.dj, %i.dr
  %i.dt = tail call double @atan2(double noundef %i.dq, double noundef %i.ds) #26
  %i.du = fadd double %i.dt, f0x400921FB54442D18
  %i.dv = tail call double @fmod(double noundef %i.du, double noundef f0x401921FB54442D18) #26 ; 3 uses
  %i.dw = fsub double %i.do, %.sroa.19.031
  %i.dx = fadd double %i.dw, f0x4022D97C7F3321D2
  %i.dy = tail call double @fmod(double noundef %i.dx, double noundef f0x401921FB54442D18) #26
  %i.dz = fadd double %i.dy, f0xC00921FB54442D18
  %i.ea = fadd double %.sroa.8.040, %i.dz
  %i.eb = fsub double %i.dv, %i.do
  %i.ec = fadd double %i.eb, f0x4022D97C7F3321D2
  %i.ed = tail call double @fmod(double noundef %i.ec, double noundef f0x401921FB54442D18) #26
  %i.ee = fadd double %i.ed, f0xC00921FB54442D18
  %i.ef = fadd double %i.ea, %i.ee                ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %spec.select
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_125SphericalExcessCalculator22computeSphericalExcessEv.exit, label %bb.c, !llvm.loop !253
}

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !28
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load i64, ptr %i.d, align 8, !tbaa !28
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !255

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #26 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !26
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #27
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !0

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #25
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #26 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !23
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !28
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !31
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !26  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !31
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !26 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !34
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !256
  %i.ar = and i64 %1, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !21
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}
end_hunk_1
begin_hunk_2_@"_ZZN8facebook5velox9functions10geospatial33getDissolvedTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEll":bb.a
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d
  %i.o = sub i64 %i.i, %i.k
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.p = icmp slt i32 %.0.i.i, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %.pre.pre, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.t = load i64, ptr %i.q, align 8, !tbaa !41
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !41
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ab = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.aa

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  ret i1 %.0
}

declare void @_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJOS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.162", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !39
  %i.i = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.i, ptr %i.a, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.l, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !42
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !39
  %i.s = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.s, ptr %i.o, align 8, !tbaa !41
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !40
  store ptr %i.a, ptr %2, align 8, !tbaa !39
  store i64 0, ptr %i.m, align 8, !tbaa !40
  store i8 0, ptr %i.a, align 8, !tbaa !41
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  unreachable

bb.e:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27, !inline_history !127
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %1) #26, !inline_history !127
  %i.z = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"any p3 pointer", !14, i64 0}
!16 = !{!"p3 _ZTSN4geos4geom8GeometryE", !15, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p2 _ZTSN4geos4geom8GeometryE", !14, i64 0}
!19 = !{!"_ZTSSt15_Deque_iteratorIPKN4geos4geom8GeometryERS4_PS4_E", !18, i64 0, !18, i64 8, !18, i64 16, !16, i64 24}
!20 = !{!"_ZTSNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_Deque_impl_dataE", !16, i64 0, !17, i64 8, !19, i64 16, !19, i64 48}
!21 = !{!20, !18, i64 48}
!22 = !{!20, !18, i64 64}
!23 = !{!20, !16, i64 0}
!24 = !{!20, !16, i64 40}
!25 = !{!20, !16, i64 72}
!26 = !{!18, !18, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !17, i64 8}
!29 = !{!19, !18, i64 0}
!30 = !{!19, !18, i64 8}
!31 = !{!19, !16, i64 24}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!19, !18, i64 16}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !17, i64 8, !7, i64 16}
!39 = !{!38, !36, i64 0}
!40 = !{!38, !17, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!37, !36, i64 0}
!43 = !{!"double", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 long", !11, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 8}
!49 = !{!46, !45, i64 16}
!50 = !{!17, !17, i64 0}
!51 = !{!"_ZTSN5folly15expected_detail5WhichE", !7, i64 0}
!52 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!53 = !{!52, !51, i64 32}
!54 = !{!"branch_weights", i32 1000, i32 2001000, i32 -292967296}
!55 = !{!45, !45, i64 0}
!56 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!57 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!58 = !{!57, !45, i64 0}
!59 = !{!57, !45, i64 16}
!60 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !11, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIlSaIlEEE", !7, i64 0, !35, i64 24}
!63 = !{!62, !35, i64 24}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!67 = !{!"p2 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !14, i64 0}
!68 = !{!"p1 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !11, i64 0}
!69 = !{!"_ZTSSt15_Deque_iteratorIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryERS5_PS5_E", !68, i64 0, !68, i64 8, !68, i64 16, !67, i64 24}
!70 = !{!"_ZTSNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE16_Deque_impl_dataE", !67, i64 0, !17, i64 8, !69, i64 16, !69, i64 48}
!71 = !{!70, !17, i64 8}
!72 = !{!70, !67, i64 0}
!73 = !{!68, !68, i64 0}
!74 = !{!69, !67, i64 24}
!75 = !{!69, !68, i64 8}
!76 = !{!69, !68, i64 16}
!77 = !{!70, !68, i64 48}
!78 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEE", !11, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"p2 _ZTSN4geos4geom8EnvelopeE", !14, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom4prep16PreparedGeometryESt14default_deleteIS3_EE", !11, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p1 _ZTSSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!69, !68, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !60, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !87, i64 0}
!89 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !91, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !12, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8GeometryESt14default_deleteIS2_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8GeometryESt14default_deleteIS2_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !97, i64 0}
!99 = !{!"_ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !17, i64 0, !92, i64 8, !98, i64 16}
!100 = !{!99, !17, i64 0}
!101 = !{!70, !67, i64 72}
!102 = !{!"p1 _ZTSN4geos4geom4prep16PreparedGeometryE", !11, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"_ZTSN4geos4geom8EnvelopeE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!107 = !{!106, !43, i64 16}
!108 = !{!106, !43, i64 8}
!109 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!110 = !{!109, !51, i64 32}
!111 = !{!106, !43, i64 24}
!112 = !{!106, !43, i64 0}
!113 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!114 = !{!"branch_weights", i32 1, i32 4001}
!115 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!116 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!117 = !{!"_ZTSSt18_Rb_tree_node_base", !115, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!118 = !{!"_ZTSSt15_Rb_tree_header", !117, i64 0, !17, i64 32}
!119 = !{!118, !116, i64 8}
!120 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!121 = !{!8, !8, i64 0}
!122 = !{!"_ZTSN8facebook5velox9functions10geospatial14CartesianPointE", !43, i64 0, !43, i64 8, !43, i64 16}
!123 = !{!122, !43, i64 16}
!124 = !{!122, !43, i64 0}
!125 = !{!122, !43, i64 8}
!126 = !{!70, !67, i64 40}
!127 = !{ptr @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!128 = distinct !{!128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!129 = distinct !{!129, !128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!130 = distinct !{!130, !27}
!131 = !{!129}
!132 = !{!20, !18, i64 56}
!133 = distinct !{!133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!134 = distinct !{!134, !133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!135 = !{!134}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!138 = distinct !{!138, !137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!139 = distinct !{null}
!140 = distinct !{!140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!141 = distinct !{!141, !140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!142 = distinct !{!142, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!143 = distinct !{!143, !142, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!144 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !35, i64 32}
!145 = !{!144, !35, i64 32}
!146 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !11, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !146, i64 0}
!148 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !147, i64 0}
!149 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !151, i64 0}
!153 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !12, i64 0, !35, i64 8, !152, i64 16}
!154 = !{!153, !12, i64 0}
!155 = !{!153, !35, i64 8}
!156 = !{!147, !146, i64 0}
!157 = !{!138}
!158 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!160 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !159, i64 0}
!161 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !160, i64 0}
!162 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !161, i64 0}
!163 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !12, i64 0, !35, i64 8, !35, i64 9, !35, i64 10, !162, i64 16, !35, i64 40}
end_hunk_2
