inline.NumInlined: 2359
inline.NumDeleted: 890
begin_hunk_0_@_ZNK5osgeo4proj5datum13PrimeMeridian13_exportToJSONEPNS0_2io13JSONFormatterE:._crit_edge.i.i
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter9AddObjKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZN5osgeo4proj2io13JSONFormatter17MakeObjectContextEPKcb.exit
  %i.bm = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bj
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.m
  %i.bo = load i64, ptr %i.bj, align 8, !tbaa !43
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.bq = call noundef double @_ZNK5osgeo4proj6common7Measure5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #31
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter3AddEdi(ptr noundef nonnull align 8 dereferenceable(153) %i.b, double noundef %i.bq, i32 noundef 15)
          to label %._crit_edge.i.i81 unwind label %bb.r

._crit_edge.i.i81:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.br, ptr %8, align 8, !tbaa !41
  store i32 1953066613, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.bs, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.bt, align 4, !tbaa !43
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter9AddObjKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %._crit_edge.i.i81
  %i.bu = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.n
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !43
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  invoke void @_ZNK5osgeo4proj6common13UnitOfMeasure13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZN5osgeo4proj2io13JSONFormatter17MakeObjectContextEPKcb.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bj
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.q
  %i.cc = load i64, ptr %i.bj, align 8, !tbaa !43
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i81
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.br
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.s
  %i.ci = load i64, ptr %i.br, align 8, !tbaa !43
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn44 = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.t ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.z

bb.v:                                             ; preds = %bb.f, %bb.o
  %i.ck = invoke noundef zeroext i1 @_ZNK5osgeo4proj2io13JSONFormatter8outputIdEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %bb.k

bb.w:                                             ; preds = %bb.v
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK5osgeo4proj6common16IdentifiedObject8formatIDEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
          to label %bb.y unwind label %bb.k

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cl = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.y
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.u, %bb.k, %bb.i
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.bi, %bb.k ], [ %.pn44.pn, %bb.u ] ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.z
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.h
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.bb, %bb.h ], [ %.pn47.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn
}

declare hidden void @_ZNK5osgeo4proj6common13UnitOfMeasure13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj2io13JSONFormatter8outputIdEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare hidden void @_ZNK5osgeo4proj6common16IdentifiedObject8formatIDEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden void @_ZThn48_NK5osgeo4proj5datum13PrimeMeridian13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48
  tail call void @_ZNK5osgeo4proj5datum13PrimeMeridian13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj5datum13PrimeMeridian26getPROJStringWellKnownNameB5cxx11ERKNS0_6common5AngleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !42
  store i8 0, ptr %i.b, align 8, !tbaa !43
  %i.d = invoke ptr @proj_context_create()
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = invoke ptr @proj_list_prime_meridians()
          to label %.preheader unwind label %bb.e ; 3 uses

.preheader:                                       ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.lr.ph

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.h = load ptr, ptr %2, align 8, !tbaa !134
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.lr.ph, !llvm.loop !136

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !137
  %i.n = invoke noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef %i.d, ptr noundef %i.m, ptr noundef null)
          to label %.critedge unwind label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %i.o = fsub double %i.a, %i.n
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp uge double %i.p, 1.000000e-10
  br i1 %i.q, label %bb.c, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !42
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #32
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull %i.r, i64 noundef %i.t)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c, %.preheader, %bb.f
  %i.v = invoke ptr @proj_context_destroy(ptr noundef %i.d)
          to label %bb.h unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.b, align 8, !tbaa !43
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare ptr @proj_context_create() local_unnamed_addr #1

declare ptr @proj_list_prime_meridians() local_unnamed_addr #1

declare noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

declare ptr @proj_context_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj5datum13PrimeMeridian19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = tail call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  %i.d = fcmp une double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZN5osgeo4proj5datum13PrimeMeridian26getPROJStringWellKnownNameB5cxx11ERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.j = call noundef double @_ZNK5osgeo4proj6common7Measure13convertToUnitERKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE) #31
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, double noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.h, %bb.d ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !43
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden void @_ZThn40_NK5osgeo4proj5datum13PrimeMeridian19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZNK5osgeo4proj5datum13PrimeMeridian19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj5datum13PrimeMeridian15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !46
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj5datum13PrimeMeridianE, i64 88)
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK5osgeo4proj6common16IdentifiedObject15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = tail call noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i32 noundef %2, double noundef 1.000000e-08)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi i1 [ %i.i, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj6common16IdentifiedObject15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden noundef zeroext i1 @_ZThn16_NK5osgeo4proj5datum13PrimeMeridian15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZNK5osgeo4proj5datum13PrimeMeridian15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !46
  %i.d = icmp eq ptr %i.c, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj5datum13PrimeMeridianE, i64 88)
  br i1 %i.d, label %bb.c, label %_ZNK5osgeo4proj5datum13PrimeMeridian15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK5osgeo4proj6common16IdentifiedObject15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !138
  br i1 %i.e, label %bb.d, label %_ZNK5osgeo4proj5datum13PrimeMeridian15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit
end_hunk_0
begin_hunk_1_@_ZNK5osgeo4proj5datum9Ellipsoid13_exportToJSONEPNS0_2io13JSONFormatterE:._crit_edge.i.i
  %i.eu = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.er
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.am
  %i.ew = load i64, ptr %i.er, align 8, !tbaa !43
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  invoke void @_ZNK5osgeo4proj6common13UnitOfMeasure13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull %1)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit120.thread

bb.ao:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZN5osgeo4proj2io13JSONFormatter17MakeObjectContextEPKcb.exit142
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ej
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.ap
  %i.fc = load i64, ptr %i.ej, align 8, !tbaa !43
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.as

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i150
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.er
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ar
  %i.fi = load i64, ptr %i.er, align 8, !tbaa !43
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn72 = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ]
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %bb.as ], [ %i.ey, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ax

_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit120.thread: ; preds = %bb.ab, %.split172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ah, %bb.an, %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit120
  %i.fk = invoke noundef zeroext i1 @_ZNK5osgeo4proj2io13JSONFormatter8outputIdEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.au unwind label %bb.p

bb.au:                                            ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit120.thread
  br i1 %i.fk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK5osgeo4proj6common16IdentifiedObject8formatIDEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
          to label %bb.aw unwind label %bb.p

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.ax:                                            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.at, %bb.aj, %bb.z, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.y, %bb.d ], [ %i.bl, %bb.p ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn63.pn, %bb.z ], [ %i.dq, %bb.af ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.ei, %bb.aj ], [ %.pn72.pn, %bb.at ]
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn81.pn.pn
}

declare void @_ZN5osgeo4proj22CPLJSonStreamingWriter3AddEPKc(ptr noundef nonnull align 8 dereferenceable(153), ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden void @_ZThn48_NK5osgeo4proj5datum9Ellipsoid13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48
  tail call void @_ZNK5osgeo4proj5datum9Ellipsoid13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj5datum9Ellipsoid25lookForProjWellKnownEllpsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.osgeo::proj::common::Length", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 8 uses
  %i.f = tail call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !156, !range !16, !noalias !174, !noundef !17
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @_ZN5osgeo4proj6common6LengthC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !153, !range !16, !noalias !174, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = tail call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #31, !noalias !174
  %i.p = fdiv double 1.000000e+00, %i.o
  %i.q = fsub double 1.000000e+00, %i.p
  %i.r = tail call noundef double @_ZNK5osgeo4proj6common7Measure5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31, !noalias !174
  %i.s = fmul double %i.r, %i.q
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common7Measure4unitEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31, !noalias !174
  call void @_ZN5osgeo4proj6common6LengthC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN5osgeo4proj6common6LengthC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit

_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.u = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @_ZN5osgeo4proj6common6LengthD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !142  ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !153, !range !16, !noundef !17
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #31
  br label %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit

bb.g:                                             ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !156, !range !16, !noundef !17
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #31 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ag = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af) #31 ; 2 uses
  %i.ah = fcmp oeq double %i.ae, %i.ag
  %i.ai = fsub double %i.ae, %i.ag
  %i.aj = fdiv double %i.ae, %i.ai
  %i.ak = select i1 %i.ah, double 0.000000e+00, double %i.aj
  br label %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit

_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi double [ %i.aa, %bb.f ], [ %i.ak, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.al = call ptr @proj_list_ellps()             ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !177
  %.not144.not = icmp eq ptr %i.am, null
  br i1 %.not144.not, label %.critedge70, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 3 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !41
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !45
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.az, ptr %4, align 8, !tbaa !44
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.i
  %i.bb = phi ptr [ %i.az, %.noexc ], [ %i.an, %bb.i ] ; 2 uses
  switch i64 %i.ax, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !43
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !43
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  store i64 %i.bd, ptr %i.ao, align 8, !tbaa !42
  %i.be = load ptr, ptr %4, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.bg = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.u       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.an
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bj = load i64, ptr %i.an, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bl = fsub double %i.f, %i.bg
  %i.bm = call double @llvm.fabs.f64(double %i.bl)
  %i.bn = fmul double %i.bg, 1.000000e-10
  %i.bo = fcmp olt double %i.bm, %i.bn
  br i1 %i.bo, label %sub_0, label %.critedge

sub_0:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !180 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %.not147 = icmp eq i8 %i.br, 98
  br i1 %.not147, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 61
  br i1 %i.bu, label %bb.n, label %.tail.thread

bb.n:                                             ; preds = %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !180
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 3 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !41
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !45
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i72, label %._crit_edge.i.i71

.noexc.i72:                                       ; preds = %bb.n
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc73 unwind label %bb.v   ; 2 uses

.noexc73:                                         ; preds = %.noexc.i72
  store ptr %i.bz, ptr %5, align 8, !tbaa !44
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !45
  store i64 %i.ca, ptr %i.ar, align 8, !tbaa !43
  br label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %.noexc73, %bb.n
  %i.cb = phi ptr [ %i.bz, %.noexc73 ], [ %i.ar, %bb.n ] ; 2 uses
  switch i64 %i.bx, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i71
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !43
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !43
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bw, i64 %i.bx, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i71
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  store i64 %i.cd, ptr %i.as, align 8, !tbaa !42
  %i.ce = load ptr, ptr %5, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.cg = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ar
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.r
  %i.cj = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cl = fsub double %i.u, %i.cg
  %i.cm = call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fmul double %i.cg, 1.000000e-10
  %i.co = fcmp uge double %i.cm, %i.cn
  br i1 %i.co, label %.critedge, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !177 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cp) #32
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.cr, ptr noundef nonnull %i.cp, i64 noundef %i.cs) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !181 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !42
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #32
  %i.cz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull %i.cv, i64 noundef %i.cy) ; 0 uses
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !42 ; 2 uses
  %i.db = icmp ult i64 %i.da, 8
  br i1 %i.db, label %.critedge70, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.s
  %i.dc = load ptr, ptr %2, align 8, !tbaa !44
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = icmp ne i64 %i.dd, 3474589995674849863
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.critedge70.sink.split, label %.critedge70

bb.t:                                             ; preds = %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.u:                                             ; preds = %bb.l
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.an
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.u
  %i.dl = load i64, ptr %i.an, align 8, !tbaa !43
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.t
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.t ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.di, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ae

bb.v:                                             ; preds = %.noexc.i72
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.w:                                             ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ar
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.w
  %i.dr = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.v
  %.pn62 = phi { ptr, i32 } [ %i.dn, %bb.v ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.do, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ae

.tail.thread:                                     ; preds = %sub_0, %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.dt = load ptr, ptr %i.bp, align 8, !tbaa !180
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 3 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !41
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.dv, ptr %i.a, align 8, !tbaa !45
  %i.dw = icmp ugt i64 %i.dv, 15
  br i1 %i.dw, label %.noexc.i86, label %._crit_edge.i.i85

.noexc.i86:                                       ; preds = %.tail.thread
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc87 unwind label %bb.ac  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i86
  store ptr %i.dx, ptr %6, align 8, !tbaa !44
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.dy, ptr %i.ap, align 8, !tbaa !43
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %.noexc87, %.tail.thread
  %i.dz = phi ptr [ %i.dx, %.noexc87 ], [ %i.ap, %.tail.thread ] ; 2 uses
  switch i64 %i.dv, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i85
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !43
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !43
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.du, i64 %i.dv, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i85
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  store i64 %i.eb, ptr %i.aq, align 8, !tbaa !42
  %i.ec = load ptr, ptr %6, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ee = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.aa unwind label %bb.ad     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ap
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.aa
  %i.eh = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ej = fsub double %.0.i, %i.ee
  %i.ek = call double @llvm.fabs.f64(double %i.ej)
  %i.el = fmul double %i.ee, 1.000000e-10
  %i.em = fcmp uge double %i.ek, %i.el
  br i1 %i.em, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.en = load ptr, ptr %i.at, align 8, !tbaa !177 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !42
  %i.eq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #32
  %i.er = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ep, ptr noundef nonnull %i.en, i64 noundef %i.eq) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !181 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !42
  %i.ew = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #32
  %i.ex = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ev, ptr noundef nonnull %i.et, i64 noundef %i.ew) ; 0 uses
  %i.ey = load i64, ptr %i.eu, align 8, !tbaa !42 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 8
  br i1 %i.ez, label %.critedge70, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94: ; preds = %bb.ab
  %i.fa = load ptr, ptr %2, align 8, !tbaa !44
  %i.fb = load i64, ptr %i.fa, align 1
  %i.fc = icmp ne i64 %i.fb, 3474589995674849863
  %i.fd = zext i1 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.critedge70.sink.split, label %.critedge70

bb.ac:                                            ; preds = %.noexc.i86
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ad:                                            ; preds = %bb.z
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ap
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ad
  %i.fj = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ac
  %.pn60 = phi { ptr, i32 } [ %i.ff, %bb.ac ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.fg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ae

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv
  %7 = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fm = load ptr, ptr %7, align 8, !tbaa !177
  %.not.not = icmp eq ptr %i.fm, null
  br i1 %.not.not, label %.critedge70, label %bb.i, !llvm.loop !182

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %.pn62.pn

.critedge70.sink.split:                           ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %.sink = phi i64 [ %i.da, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %i.ey, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94 ]
  %i.fn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %.sink, ptr noundef nonnull @.str.17, i64 noundef 8) ; 0 uses
  br label %.critedge70

.critedge70:                                      ; preds = %.critedge, %.critedge70.sink.split, %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit, %bb.ab, %bb.s, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %.not114 = phi i1 [ true, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ true, %bb.ab ], [ true, %bb.s ], [ false, %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit ], [ true, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit94 ], [ true, %.critedge70.sink.split ], [ false, %.critedge ]
  ret i1 %.not114
}

declare ptr @proj_list_ellps() local_unnamed_addr #1

declare noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj5datum9Ellipsoid19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.osgeo::proj::common::Length", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = tail call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !42
  store i8 0, ptr %i.d, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !42
  store i8 0, ptr %i.f, align 8, !tbaa !43
  %i.h = invoke noundef zeroext i1 @_ZNK5osgeo4proj5datum9Ellipsoid25lookForProjWellKnownEllpsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !153, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = call noundef double @_ZNK5osgeo4proj6common7Measure5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #31
  %i.p = fcmp oeq double %i.o, 0.000000e+00
  br i1 %i.p, label %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = load i8, ptr %i.q, align 8, !tbaa !156, !range !16, !noundef !17
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit, label %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread

_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit:  ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.u = call noundef zeroext i1 @_ZNK5osgeo4proj6common7MeasureeqERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #31
  br i1 %i.u, label %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread, label %bb.g

_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread: ; preds = %bb.f, %.split, %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, double noundef %i.c)
          to label %bb.l unwind label %bb.d

bb.g:                                             ; preds = %.split, %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, double noundef %i.c)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !142  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !153, !range !16, !noundef !17
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit, label %.invoke

_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #31
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, double noundef %i.aa)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.invoke:                                          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !156, !range !16, !noalias !183, !noundef !17
  %i.ae = shl nuw nsw i8 %i.ad, 6
  %.idx = zext nneg i8 %i.ae to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  invoke void @_ZN5osgeo4proj6common6LengthC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit unwind label %bb.j

_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit: ; preds = %.invoke
  %i.ag = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  call void @_ZN5osgeo4proj6common6LengthD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, double noundef %i.ag)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.invoke
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv.exit.thread, %_ZNK5osgeo4proj5datum9Ellipsoid25computedInverseFlatteningEv.exit, %_ZNK5osgeo4proj5datum9Ellipsoid20computeSemiMinorAxisEv.exit, %bb.c
  %i.aj = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.al = load i64, ptr %i.f, align 8, !tbaa !43
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.an = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.d
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !43
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.d
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.ab, %bb.i ], [ %i.ai, %bb.k ], [ %i.ah, %bb.j ]
  %i.ar = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.m
  %i.at = load i64, ptr %i.f, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.av = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.d
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !43
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn14
}

; Function Attrs: uwtable
define hidden void @_ZThn40_NK5osgeo4proj5datum9Ellipsoid19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZNK5osgeo4proj5datum9Ellipsoid19_exportToPROJStringEPNS0_2io19PROJStringFormatterE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
