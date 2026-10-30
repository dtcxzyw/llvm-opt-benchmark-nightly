Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial21geometryInvalidReasonB5cxx11EPKN4geos4geom8GeometryE:bb.a
          to label %.noexc41 unwind label %bb.ad

.noexc41:                                         ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !168
  %i.di = load ptr, ptr %14, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40
  store ptr %i.di, ptr %2, align 16, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %switch.load, ptr %i.dm, align 16, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %switch.ext, ptr %i.dn, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dp = load double, ptr %12, align 8, !tbaa !44, !noalias !168
  store double %i.dp, ptr %i.do, align 16, !tbaa !41, !noalias !168
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dr = load double, ptr %i.dh, align 8, !tbaa !44, !noalias !168
  store double %i.dr, ptr %i.dq, align 16, !tbaa !41, !noalias !168
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.13, i64 25, i64 43741, ptr nonnull %2)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !168
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ds, ptr %0, align 8, !tbaa !42
  %i.dt = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !40 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.dz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68: ; preds = %bb.aa
  store ptr %i.dt, ptr %0, align 8, !tbaa !39
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !41
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !41
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre98 = load i64, ptr %.phi.trans.insert97, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68
  %i.eb = phi i64 [ %i.dx, %bb.ab ], [ %.pre98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i68 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !40
  store ptr %i.du, ptr %13, align 8, !tbaa !39
  store i64 0, ptr %i.ec, align 8, !tbaa !40
  store i8 0, ptr %i.du, align 8, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ee, align 8, !tbaa !145
  %i.ef = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !41
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ag

bb.ac:                                            ; preds = %switch.lookup
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ae:                                            ; preds = %.noexc41
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ae
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !41
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ad ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.em, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.ek, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.p
  %i.es = load ptr, ptr %i.bm, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !170
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #27
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit:    ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ak

bb.ai:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.af
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn.pn, %bb.af ] ; 2 uses
  %i.ey = load ptr, ptr %i.bm, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i79, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !170
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #27
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80:  ; preds = %bb.aj, %bb.ai, %bb.q
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %.pn27.pn.pn, %bb.ai ], [ %.pn27.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i: ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef 32) #27
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit

_ZN4geos9operation5valid9IsValidOpD2Ev.exit:      ; preds = %bb.ak, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.am

bb.al:                                            ; preds = %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.i
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn27.pn.pn.pn, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit80 ], [ %i.ao, %bb.i ]
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !171 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i81, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit83, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82: ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #27
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit83

_ZN4geos9operation5valid9IsValidOpD2Ev.exit83:    ; preds = %bb.al, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn32.pn.pn

bb.am:                                            ; preds = %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, %bb.b
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
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %2, i64 1
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b)
  %5 = fcmp ugt <2 x double> %i.c, <double 9.000000e+01, double 1.800000e+02>
  %i.d = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %i.d, 0
  br i1 %.not, label %bb.d, label %.critedge, !prof !176

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !177
  store double -9.000000e+01, ptr %3, align 16, !tbaa !41, !noalias !177
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 9.000000e+01, ptr %i.e, align 16, !tbaa !41, !noalias !177
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double -1.800000e+02, ptr %i.f, align 16, !tbaa !41, !noalias !177
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double 1.800000e+02, ptr %i.g, align 16, !tbaa !41, !noalias !177
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %1, ptr %i.h, align 16, !tbaa !41, !noalias !177
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %2, ptr %i.i, align 16, !tbaa !41, !noalias !177
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.14, i64 110, i64 11184810, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !177
  invoke void @_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.j = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !41
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !41
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.o

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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
end_hunk_0
begin_hunk_1_@llvm.fabs.v2f64
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!128 = distinct !{!128, i1 true, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!129 = distinct !{!129, !128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!130 = distinct !{!130, !27}
!131 = !{!129}
!132 = !{!20, !18, i64 56}
!133 = distinct !{!133, i1 true, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!134 = distinct !{!134, !133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!135 = !{!134}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!138 = distinct !{!138, !137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!139 = distinct !{null}
!140 = distinct !{!140, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!141 = distinct !{!141, !140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_"}
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
!164 = !{!163, !35, i64 8}
!165 = !{!163, !35, i64 9}
!166 = !{!163, !35, i64 10}
!167 = !{!141}
!168 = !{!143}
!169 = !{!159, !158, i64 0}
!170 = !{!159, !158, i64 16}
!171 = !{!146, !146, i64 0}
!172 = distinct !{!172, i1 true, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!173 = distinct !{!173, !172, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZN8facebook5velox6Status2OKEv"}
!175 = distinct !{!175, !174, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!176 = !{!"branch_weights", i32 -569676999, i32 11189848}
!177 = !{!173}
!178 = !{!"p1 _ZTSN8facebook5velox6Status5StateE", !11, i64 0}
!179 = !{!"_ZTSN8facebook5velox6StatusE", !178, i64 0}
!180 = !{!179, !178, i64 0}
!181 = !{!175}
!182 = distinct !{!182, i1 true, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!183 = distinct !{!183, !182, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!184 = !{!183}
!185 = distinct !{!185, !27}
!186 = distinct !{!186, i1 true, !"_ZN4geos4geom4prep23PreparedGeometryFactory7prepareEPKNS0_8GeometryE"}
!187 = distinct !{!187, !186, !"_ZN4geos4geom4prep23PreparedGeometryFactory7prepareEPKNS0_8GeometryE: argument 0"}
!188 = distinct !{!188, i1 true, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv"}
!189 = distinct !{!189, !188, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv: argument 0"}
!190 = distinct !{null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!191 = distinct !{null, null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!192 = distinct !{ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!193 = distinct !{!193, !27}
!194 = distinct !{null, null}
!195 = !{!187}
!196 = !{!70, !68, i64 16}
!197 = !{!189}
!198 = distinct !{!198, !27}
!199 = distinct !{!199, !27}
!200 = !{!"branch_weights", i32 4002000, i32 1}
!201 = distinct !{!201, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!202 = distinct !{!202, !201, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!203 = distinct !{!203, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!204 = distinct !{!204, !203, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!205 = distinct !{!205, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!206 = distinct !{!206, !205, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!207 = distinct !{!207, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!208 = distinct !{!208, !207, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!209 = !{!202}
!210 = !{!204}
!211 = !{!206}
!212 = !{!208}
!213 = distinct !{!213, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!214 = distinct !{!214, !213, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!215 = distinct !{!215, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!216 = distinct !{!216, !215, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!217 = distinct !{!217, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!218 = distinct !{!218, !217, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!219 = distinct !{!219, i1 true, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!220 = distinct !{!220, !219, !"_ZN3fmt3v116formatIJRKdS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!221 = distinct !{!221, !27}
!222 = !{!214}
!223 = !{!216}
!224 = !{!218}
!225 = !{!220}
!226 = !{!118, !115, i64 0}
!227 = !{!118, !116, i64 16}
!228 = !{!118, !116, i64 24}
!229 = !{!118, !17, i64 32}
!230 = !{!116, !116, i64 0}
!231 = distinct !{!231, i1 true, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aISt5tupleIJiiEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!234 = !{!232}
!235 = !{!233}
!236 = distinct !{!236, !27}
!237 = distinct !{!237, i1 true, !"_ZN3fmt3v116formatIJRdS2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_"}
!238 = distinct !{!238, !237, !"_ZN3fmt3v116formatIJRdS2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!239 = !{!238}
!240 = distinct !{!240, !27}
!241 = distinct !{null, null}
!242 = distinct !{!242, !27}
!243 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !11, i64 0}
!244 = !{!243, !243, i64 0}
!245 = distinct !{null}
!246 = distinct !{!246, !27, !247}
!247 = !{!"llvm.loop.peeled.count", i32 1}
!248 = distinct !{!248, !27}
!249 = !{!20, !18, i64 16}
!250 = distinct !{!250, i1 true, !"_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_114tileToEnvelopeEl"}
!251 = distinct !{!251, !250, !"_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_114tileToEnvelopeEl: argument 0"}
!252 = distinct !{!252, i1 true, !"_ZSt11make_uniqueIN4geos4geom8EnvelopeEJRdS3_S3_S3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!253 = distinct !{!253, !252, !"_ZSt11make_uniqueIN4geos4geom8EnvelopeEJRdS3_S3_S3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!254 = distinct !{null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!255 = distinct !{!255, !27}
!256 = !{!"_ZTSZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiE3$_0", !78, i64 0, !80, i64 8, !82, i64 16, !84, i64 24}
!257 = !{!256, !78, i64 0}
!258 = !{!251}
!259 = !{!253}
!260 = !{!253, !251}
!261 = !{!256, !80, i64 8}
!262 = !{i64 8}
!263 = !{!256, !82, i64 16}
!264 = !{!256, !84, i64 24}
!265 = !{!70, !68, i64 64}
!266 = !{i64 0, i64 8, !79, i64 8, i64 8, !81, i64 16, i64 8, !83, i64 24, i64 8, !85}
!267 = distinct !{null, null}
!268 = distinct !{!268, i1 true, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE5beginEv"}
!269 = distinct !{!269, !268, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE5beginEv: argument 0"}
!270 = distinct !{!270, i1 true, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv"}
!271 = distinct !{!271, !270, !"_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE3endEv: argument 0"}
!272 = distinct !{null, null, null, null, null, null, null, ptr @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev, null, null}
!273 = distinct !{!273, !27}
!274 = distinct !{!274, !27}
!275 = distinct !{!275, !27}
!276 = !{!269}
!277 = !{!271}
!278 = distinct !{!278, !27, !287, !288}
!279 = distinct !{!279, !27, !287, !288}
!280 = distinct !{!280, !27, !287}
!281 = distinct !{!281, !27, !287, !288}
!282 = distinct !{!282, !27, !287, !288}
!283 = distinct !{!283, !27, !287}
!284 = distinct !{!284, !27, !287, !288}
!285 = distinct !{!285, !27, !287, !288}
!286 = distinct !{!286, !27, !287}
!287 = !{!"llvm.loop.isvectorized", i32 1}
!288 = !{!"llvm.loop.unroll.runtime.disable"}
!289 = !{!"branch_weights", i32 4, i32 12}
!290 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!291 = distinct !{!291, !27}
!292 = distinct !{!292, !27}
!293 = distinct !{!293, !27}
!294 = distinct !{!294, !27}
!295 = !{!117, !116, i64 24}
!296 = !{!117, !116, i64 16}
!297 = distinct !{!297, !27}
end_hunk_1
