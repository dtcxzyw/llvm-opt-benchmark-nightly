Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@"_ZZN5osgeo4proj2io16PROJStringParser7Private10buildDatumERNS1_4StepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERKN7dropbox6oxygen2nnISt10shared_ptrINS0_5datum22GeodeticReferenceFrameEEEE":bb.a
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2109, !nonnull !222, !align !371 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !164, !noalias !2110 ; 2 uses
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !164, !noalias !2110
  %i.bw = sub i64 4611686018427387903, %i.bv
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc18 unwind label %bb.aa

.noexc18:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.s
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !163, !noalias !2110
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.by, i64 noundef %i.bu)
          to label %.noexc19 unwind label %bb.aa  ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !160, !alias.scope !2110
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !163 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.u:                                             ; preds = %.noexc19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !164 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.noexc19
  store ptr %i.cb, ptr %5, align 8, !tbaa !163, !alias.scope !2110
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !166
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !166, !alias.scope !2110
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i17 = load i64, ptr %.phi.trans.insert.i16, align 8, !tbaa !164
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.u
  %i.cj = phi i64 [ %i.cf, %bb.u ], [ %.pre.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !164, !alias.scope !2110
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !163
  store i64 0, ptr %i.ck, align 8, !tbaa !164
  store i8 0, ptr %i.cc, align 8, !tbaa !166
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %2, align 8, !tbaa !351   ; 2 uses
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj5datum22GeodeticReferenceFrame9ellipsoidEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cn) #45
  %i.cp = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj5datum5Datum16anchorDefinitionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %1, align 8, !tbaa !2105, !nonnull !222, !align !371
  invoke void @_ZN5osgeo4proj5datum22GeodeticReferenceFrame6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_9EllipsoidEEEERKNS3_8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS9_ISA_INS1_13PrimeMeridianEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.195") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ca
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.y
  %i.ct = load i64, ptr %i.ca, align 8, !tbaa !166
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cv = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.bf, align 8, !tbaa !166
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cz = load ptr, ptr %7, align 8, !tbaa !163   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.an
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.db = load i64, ptr %i.an, align 8, !tbaa !166
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEEC2ERKS8_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.ca
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.ab
  %i.di = load i64, ptr %i.ca, align 8, !tbaa !166
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.df, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bf
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.dm = load i64, ptr %i.bf, align 8, !tbaa !166
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !163   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.an
  br i1 %i.dp, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.p
  %.sink = phi ptr [ %i.az, %bb.p ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %i.dq = load i64, ptr %i.an, align 8, !tbaa !166
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dr) #44
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ac

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEEC2ERKS8_.exit: ; preds = %bb.l, %bb.k, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void

bb.ac:                                            ; preds = %.body, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.af, %bb.m ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io16PROJStringParser7Private15processAxisSwapERNS1_4StepERKNS0_6common13UnitOfMeasureEiNS3_8AxisTypeEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.322") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %13 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.289", align 16 ; 8 uses
  %15 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 8 uses
  %16 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %19 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.289", align 16 ; 10 uses
  %21 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 9 uses
  %22 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %23 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 10 uses
  %24 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 10 uses
  %25 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %28 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %31 = alloca [2 x %"class.dropbox::oxygen::nn.292"], align 16 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::vector.702", align 8  ; 11 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = tail call noundef i32 @_ZNK5osgeo4proj6common13UnitOfMeasure4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #45
  %i.n = icmp eq i32 %i.m, 2                      ; 17 uses
  br i1 %i.n, label %bb.b, label %.loopexit784

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !582  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !582  ; 2 uses
  %.not36.i = icmp eq ptr %i.p, %i.r
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.i
  %.sroa.027.037.i = phi ptr [ %i.t, %.critedge.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.s = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.037.i, ptr noundef nonnull @.str.513) #41
  br i1 %i.s, label %.noexc.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.027.037.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !582  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !582  ; 2 uses
  %.not3338.i = icmp eq ptr %i.v, %i.x
  br i1 %.not3338.i, label %.loopexit784, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i, %.critedge22.i
  %.sroa.023.039.i = phi ptr [ %i.z, %.critedge22.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %i.y = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.039.i, ptr noundef nonnull @.str.513) #41
  br i1 %i.y, label %.noexc.i, label %.critedge22.i

.critedge22.i:                                    ; preds = %.lr.ph41.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 72 ; 2 uses
  %.not33.i = icmp eq ptr %i.z, %i.x
  br i1 %.not33.i, label %.loopexit784, label %.lr.ph41.i

.noexc.i:                                         ; preds = %.lr.ph.i, %.lr.ph41.i
  %.sroa.023.039.lcssa.sink.i = phi ptr [ %.sroa.023.039.i, %.lr.ph41.i ], [ %.sroa.027.037.i, %.lr.ph.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.023.039.lcssa.sink.i, i64 64
  store i8 1, ptr %i.aa, align 8, !tbaa !584
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ab, ptr %11, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  store i64 24, ptr %i.l, align 8, !tbaa !165
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !163
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !165 ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ac, ptr noundef nonnull align 1 dereferenceable(24) @.str.514, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !164
  %i.af = load ptr, ptr %11, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ah, ptr %12, align 8, !tbaa !160
  store i8 86, ptr %i.ah, align 8, !tbaa !166
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.ai, align 8, !tbaa !164
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.aj, align 1, !tbaa !166
  br label %.critedge292

.loopexit784:                                     ; preds = %.critedge22.i, %bb.a, %._crit_edge.i
  %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E = phi ptr [ @_ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, %bb.a ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %._crit_edge.i ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %.critedge22.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ak, ptr %11, align 8, !tbaa !160
  %i.al = load ptr, ptr %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, align 8, !tbaa !163 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  store i64 %i.an, ptr %i.k, align 8, !tbaa !165
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i346, label %._crit_edge.i.i345

.noexc.i346:                                      ; preds = %.loopexit784
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %11, align 8, !tbaa !163
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !165
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !166
  br label %._crit_edge.i.i345

._crit_edge.i.i345:                               ; preds = %.noexc.i346, %.loopexit784
  %i.ar = phi ptr [ %i.ap, %.noexc.i346 ], [ %i.ak, %.loopexit784 ] ; 2 uses
  switch i64 %i.an, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.critedge290
  ]

bb.c:                                             ; preds = %._crit_edge.i.i345
  %i.as = load i8, ptr %i.al, align 1, !tbaa !166
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !166
  br label %.critedge290

bb.d:                                             ; preds = %._crit_edge.i.i345
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %.critedge290

.critedge290:                                     ; preds = %._crit_edge.i.i345, %bb.c, %bb.d
  %i.at = load i64, ptr %i.k, align 8, !tbaa !165 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !164
  %i.av = load ptr, ptr %11, align 8, !tbaa !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %37, ptr %12, align 8, !tbaa !160
  %_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, align 8
  %_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E, align 8
  %38 = select i1 %i.n, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E.val, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E.val ; 2 uses
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, i64 8), align 8
  %.val769 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E, i64 8), align 8
  %39 = select i1 %i.n, i64 %.val, i64 %.val769   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  store i64 %39, ptr %i.j, align 8, !tbaa !165
  %i.ax = icmp ugt i64 %39, 15
  br i1 %i.ax, label %.noexc.i353, label %._crit_edge.i.i352

.noexc.i353:                                      ; preds = %.critedge290
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc354 unwind label %bb.dw ; 2 uses

.noexc354:                                        ; preds = %.noexc.i353
  store ptr %i.ay, ptr %12, align 8, !tbaa !163
  %i.az = load i64, ptr %i.j, align 8, !tbaa !165
  store i64 %i.az, ptr %37, align 8, !tbaa !166
  br label %._crit_edge.i.i352

._crit_edge.i.i352:                               ; preds = %.noexc354, %.critedge290
  %i.ba = phi ptr [ %i.ay, %.noexc354 ], [ %37, %.critedge290 ] ; 2 uses
  switch i64 %39, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i352
  %i.bb = load i8, ptr %38, align 1, !tbaa !166
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !166
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i352
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %38, i64 %39, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i352
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !165 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !164
  %i.be = load ptr, ptr %12, align 8, !tbaa !163
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  br label %.critedge292

.critedge292:                                     ; preds = %bb.g, %.noexc.i
  %i.bg = phi i1 [ false, %bb.g ], [ true, %.noexc.i ] ; 3 uses
  %i.bh = icmp ne i32 %5, 1                       ; 3 uses
  %i.bi = icmp eq i32 %5, 2                       ; 2 uses
  %_ZN5osgeo4proj2cs13AxisDirection5NORTHE._ZN5osgeo4proj2cs13AxisDirection4EASTE = select i1 %i.bi, ptr @_ZN5osgeo4proj2cs13AxisDirection5NORTHE, ptr @_ZN5osgeo4proj2cs13AxisDirection4EASTE
  %i.bj = select i1 %i.bh, ptr %_ZN5osgeo4proj2cs13AxisDirection5NORTHE._ZN5osgeo4proj2cs13AxisDirection4EASTE, ptr @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  %i.bk = select i1 %i.n, ptr @_ZN5osgeo4proj2cs13AxisDirection4EASTE, ptr %i.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.bl = add i32 %5, -3
  %or.cond = icmp ult i32 %i.bl, -2
  %or.cond294.not = or i1 %or.cond, %i.n          ; 3 uses
  br i1 %or.cond294.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.critedge292
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef 9.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.i unwind label %bb.dx

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.j unwind label %bb.dy

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %15, align 16, !tbaa !208
  store <2 x ptr> %i.bo, ptr %14, align 16, !tbaa !208
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !213
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.n:                                             ; preds = %.critedge292
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.bv = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.bv, ptr %14, align 16, !tbaa !208
  %.not.i.i.i356 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i356, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i357 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i357, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !213
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41, !noalias !2123
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc359 unwind label %bb.dz

.noexc359:                                        ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.r unwind label %bb.s, !noalias !2123

bb.r:                                             ; preds = %.noexc359
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc359
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41, !noalias !2123
  br label %.body

bb.t:                                             ; preds = %bb.r
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41, !noalias !2123
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !209 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cf, align 8, !tbaa !211
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !212
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #41, !inline_history !41
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #41, !inline_history !41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i360 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i360, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.ci, %bb.x ], [ %i.cs, %bb.y ]
  %i.ct = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ct, label %bb.z, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  br i1 %or.cond294.not, label %.critedge298, label %.critedge296

.critedge296:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i361 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i361, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge296
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cw, align 8, !tbaa !211
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !212
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !156
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #41, !inline_history !42
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !156
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #41, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i362 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i362, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i = phi i32 [ %i.cz, %bb.ad ], [ %i.dj, %bb.ae ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.af, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit, !prof !214

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit: ; preds = %.critedge296, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.af
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %.critedge298

.critedge298:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %40 = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %40, ptr %17, align 8, !tbaa !160
  br i1 %i.bg, label %.noexc.i364, label %bb.ag

.noexc.i364:                                      ; preds = %.critedge298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  store i64 23, ptr %i.i, align 8, !tbaa !165
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc365 unwind label %bb.ee ; 2 uses

.noexc365:                                        ; preds = %.noexc.i364
  store ptr %i.dl, ptr %17, align 8, !tbaa !163
  %i.dm = load i64, ptr %i.i, align 8, !tbaa !165 ; 3 uses
  store i64 %i.dm, ptr %40, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.dl, ptr noundef nonnull align 1 dereferenceable(23) @.str.516, i64 23, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !164
  %i.do = load ptr, ptr %17, align 8, !tbaa !163
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.dq, ptr %18, align 8, !tbaa !160
  store i8 85, ptr %i.dq, align 8, !tbaa !166
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.dr, align 8, !tbaa !164
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.ds, align 1, !tbaa !166
  br label %.critedge303

bb.ag:                                            ; preds = %.critedge298
  %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, align 8
  %_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, align 8
  %41 = select i1 %i.n, ptr %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val, ptr %_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E.val ; 2 uses
  %.val770 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, i64 8), align 8
  %.val771 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, i64 8), align 8
  %42 = select i1 %i.n, i64 %.val770, i64 %.val771 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  store i64 %42, ptr %i.h, align 8, !tbaa !165
  %i.dt = icmp ugt i64 %42, 15
  br i1 %i.dt, label %.noexc.i368, label %._crit_edge.i.i367

.noexc.i368:                                      ; preds = %bb.ag
  %i.du = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc369 unwind label %bb.ed ; 2 uses

.noexc369:                                        ; preds = %.noexc.i368
  store ptr %i.du, ptr %17, align 8, !tbaa !163
  %i.dv = load i64, ptr %i.h, align 8, !tbaa !165
  store i64 %i.dv, ptr %40, align 8, !tbaa !166
  br label %._crit_edge.i.i367

._crit_edge.i.i367:                               ; preds = %.noexc369, %bb.ag
  %i.dw = phi ptr [ %i.du, %.noexc369 ], [ %40, %bb.ag ] ; 2 uses
  switch i64 %42, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %.critedge301
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i367
  %i.dx = load i8, ptr %41, align 1, !tbaa !166
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !166
  br label %.critedge301

bb.ai:                                            ; preds = %._crit_edge.i.i367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %41, i64 %42, i1 false)
  br label %.critedge301

.critedge301:                                     ; preds = %._crit_edge.i.i367, %bb.ah, %bb.ai
  %i.dy = load i64, ptr %i.h, align 8, !tbaa !165 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !164
  %i.ea = load ptr, ptr %17, align 8, !tbaa !163
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %43, ptr %18, align 8, !tbaa !160
  %_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, align 8
  %_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E, align 8
  %44 = select i1 %i.n, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E.val, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E.val ; 2 uses
  %.val772 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, i64 8), align 8
  %.val773 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E, i64 8), align 8
  %45 = select i1 %i.n, i64 %.val772, i64 %.val773 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i64 %45, ptr %i.g, align 8, !tbaa !165
  %i.ec = icmp ugt i64 %45, 15
  br i1 %i.ec, label %.noexc.i376, label %._crit_edge.i.i375

.noexc.i376:                                      ; preds = %.critedge301
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc377 unwind label %bb.ef ; 2 uses

.noexc377:                                        ; preds = %.noexc.i376
  store ptr %i.ed, ptr %18, align 8, !tbaa !163
  %i.ee = load i64, ptr %i.g, align 8, !tbaa !165
  store i64 %i.ee, ptr %43, align 8, !tbaa !166
  br label %._crit_edge.i.i375

._crit_edge.i.i375:                               ; preds = %.noexc377, %.critedge301
  %i.ef = phi ptr [ %i.ed, %.noexc377 ], [ %43, %.critedge301 ] ; 2 uses
  switch i64 %45, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i375
  %i.eg = load i8, ptr %44, align 1, !tbaa !166
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !166
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i375
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %44, i64 %45, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i375
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !165 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !164
  %i.ej = load ptr, ptr %18, align 8, !tbaa !163
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %.critedge303

.critedge303:                                     ; preds = %bb.al, %.noexc365
  %i.el = or i1 %i.bh, %i.n
  %i.em = select i1 %i.el, ptr @_ZN5osgeo4proj2cs13AxisDirection5NORTHE, ptr @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  br i1 %i.n, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.critedge303
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.eo = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.eo, ptr %20, align 16, !tbaa !208
  %.not.i.i.i379 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i379, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i380 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i380, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !213
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.ap:                                            ; preds = %bb.an
  %i.et = atomicrmw volatile add ptr %i.ep, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.aq:                                            ; preds = %.critedge303
  br i1 %i.bh, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %22, double noundef 1.800000e+02, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.as unwind label %bb.eg

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.at unwind label %bb.eh

bb.at:                                            ; preds = %bb.as
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ev = load <2 x ptr>, ptr %21, align 16, !tbaa !208
  store ptr null, ptr %i.eu, align 8, !tbaa !209
  store <2 x ptr> %i.ev, ptr %20, align 16, !tbaa !208
  store ptr null, ptr %21, align 16, !tbaa !402
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.au:                                            ; preds = %bb.aq
  br i1 %i.bi, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %24, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.aw unwind label %.split.thread

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.ax unwind label %.split.thread766

bb.ax:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !209 ; 2 uses
  %i.ey = load <2 x ptr>, ptr %23, align 16, !tbaa !208
  store <2 x ptr> %i.ey, ptr %20, align 16, !tbaa !208
  %.not.i.i.i382 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i382, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 3 uses
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i383 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i383, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !213
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.ba:                                            ; preds = %bb.ay
  %i.fd = atomicrmw volatile add ptr %i.ez, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.bb:                                            ; preds = %bb.au
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.ff = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.ff, ptr %20, align 16, !tbaa !208
  %.not.i.i.i385 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i385, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i386 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i386, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !213
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.be:                                            ; preds = %bb.bc
  %i.fk = atomicrmw volatile add ptr %i.fg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.ap, %bb.ao, %bb.am, %bb.at
  %.0184 = phi i1 [ false, %bb.ba ], [ true, %bb.at ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.be ] ; 3 uses
  %.0175 = phi i1 [ true, %bb.ba ], [ false, %bb.at ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.ao ], [ true, %bb.ax ], [ true, %bb.az ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !2124
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc388 unwind label %bb.ei

.noexc388:                                        ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bf unwind label %bb.bg, !noalias !2124

bb.bf:                                            ; preds = %.noexc388
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.noexc388
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !2124
  br label %.body389

bb.bh:                                            ; preds = %bb.bf
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !2124
  %i.fn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !209 ; 8 uses
  %.not.i.i392 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i392, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.fp, align 8, !tbaa !211
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !212
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !156
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #41, !inline_history !41
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !156
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #41, !inline_history !41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396

bb.bk:                                            ; preds = %bb.bi
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i393 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i393, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394

bb.bm:                                            ; preds = %bb.bk
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i395 = phi i32 [ %i.fs, %bb.bl ], [ %i.gc, %bb.bm ]
  %i.gd = icmp eq i32 %.0.i.i.i.i395, 1
  br i1 %i.gd, label %bb.bn, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396, !prof !214

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396

_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396: ; preds = %bb.bh, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394, %bb.bn
  br i1 %.0175, label %.critedge305, label %.critedge307

.critedge305:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i397 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i397, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401, label %bb.bo

bb.bo:                                            ; preds = %.critedge305
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.gg, align 8, !tbaa !211
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !212
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !156
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #41, !inline_history !42
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !156
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #41, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401

bb.bq:                                            ; preds = %bb.bo
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i398 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i398, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399

bb.bs:                                            ; preds = %bb.bq
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i400 = phi i32 [ %i.gj, %bb.br ], [ %i.gt, %bb.bs ]
  %i.gu = icmp eq i32 %.0.i.i.i.i.i400, 1
  br i1 %i.gu, label %bb.bt, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401, !prof !214

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401: ; preds = %.critedge305, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399, %bb.bt
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %.critedge307

.critedge307:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401
  br i1 %.0184, label %.critedge309, label %.critedge311

.critedge309:                                     ; preds = %.critedge307
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i402 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i402, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406, label %bb.bu

bb.bu:                                            ; preds = %.critedge309
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.gx, align 8, !tbaa !211
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !212
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !156
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #41, !inline_history !42
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !156
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #41, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406

bb.bw:                                            ; preds = %bb.bu
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i403 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i403, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i404

bb.by:                                            ; preds = %bb.bw
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i404

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i404: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i405 = phi i32 [ %i.ha, %bb.bx ], [ %i.hk, %bb.by ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i405, 1
  br i1 %i.hl, label %bb.bz, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406, !prof !214

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i404
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406: ; preds = %.critedge309, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i404, %bb.bz
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %.critedge311

.critedge311:                                     ; preds = %.critedge307, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit406
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %46, ptr %26, align 8, !tbaa !160
  br i1 %i.bg, label %.noexc.i408, label %bb.ca

.noexc.i408:                                      ; preds = %.critedge311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i64 24, ptr %i.f, align 8, !tbaa !165
  %i.hm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc409 unwind label %.split736 ; 2 uses

.noexc409:                                        ; preds = %.noexc.i408
  store ptr %i.hm, ptr %26, align 8, !tbaa !163
  %i.hn = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  store i64 %i.hn, ptr %46, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hm, ptr noundef nonnull align 1 dereferenceable(24) @.str.514, i64 24, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !164
  %i.hp = load ptr, ptr %26, align 8, !tbaa !163
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hn
  store i8 0, ptr %i.hq, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.hr, ptr %27, align 8, !tbaa !160
  store i8 86, ptr %i.hr, align 8, !tbaa !166
  %i.hs = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.hs, align 8, !tbaa !164
  %i.ht = getelementptr inbounds nuw i8, ptr %27, i64 17
  store i8 0, ptr %i.ht, align 1, !tbaa !166
  br label %bb.ci

bb.ca:                                            ; preds = %.critedge311
  %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, align 8
  %_ZN5osgeo4proj2cs8AxisName7WestingB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName7WestingB5cxx11E, align 8
  %47 = select i1 %i.n, ptr %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E.val, ptr %_ZN5osgeo4proj2cs8AxisName7WestingB5cxx11E.val ; 2 uses
  %.val774 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, i64 8), align 8
  %.val775 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName7WestingB5cxx11E, i64 8), align 8
  %48 = select i1 %i.n, i64 %.val774, i64 %.val775 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i64 %48, ptr %i.e, align 8, !tbaa !165
  %i.hu = icmp ugt i64 %48, 15
  br i1 %i.hu, label %.noexc.i412, label %._crit_edge.i.i411

.noexc.i412:                                      ; preds = %bb.ca
  %i.hv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc413 unwind label %.split736 ; 2 uses

.noexc413:                                        ; preds = %.noexc.i412
  store ptr %i.hv, ptr %26, align 8, !tbaa !163
  %i.hw = load i64, ptr %i.e, align 8, !tbaa !165
  store i64 %i.hw, ptr %46, align 8, !tbaa !166
  br label %._crit_edge.i.i411

._crit_edge.i.i411:                               ; preds = %.noexc413, %bb.ca
  %i.hx = phi ptr [ %i.hv, %.noexc413 ], [ %46, %bb.ca ] ; 2 uses
  switch i64 %48, label %bb.cc [
    i64 1, label %bb.cb
    i64 0, label %bb.cd
  ]

bb.cb:                                            ; preds = %._crit_edge.i.i411
  %i.hy = load i8, ptr %47, align 1, !tbaa !166
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !166
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i.i411
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr align 1 %47, i64 %48, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i.i411, %bb.cb, %bb.cc
  %i.hz = load i64, ptr %i.e, align 8, !tbaa !165 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !164
  %i.ib = load ptr, ptr %26, align 8, !tbaa !163
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  store i8 0, ptr %i.ic, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.id, ptr %27, align 8, !tbaa !160
  br i1 %i.n, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.ie = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, align 8, !tbaa !163 ; 2 uses
  %i.if = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, i64 8), align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i64 %i.if, ptr %i.d, align 8, !tbaa !165
  %i.ig = icmp ugt i64 %i.if, 15
  br i1 %i.ig, label %.noexc.i420, label %._crit_edge.i.i419

.noexc.i420:                                      ; preds = %bb.ce
  %i.ih = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc421 unwind label %.split733 ; 2 uses

.noexc421:                                        ; preds = %.noexc.i420
  store ptr %i.ih, ptr %27, align 8, !tbaa !163
  %i.ii = load i64, ptr %i.d, align 8, !tbaa !165
  store i64 %i.ii, ptr %i.id, align 8, !tbaa !166
  br label %._crit_edge.i.i419

._crit_edge.i.i419:                               ; preds = %.noexc421, %bb.ce
  %i.ij = phi ptr [ %i.ih, %.noexc421 ], [ %i.id, %bb.ce ] ; 2 uses
  switch i64 %i.if, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit422
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i419
  %i.ik = load i8, ptr %i.ie, align 1, !tbaa !166
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit422

bb.cg:                                            ; preds = %._crit_edge.i.i419
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.ie, i64 %i.if, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit422: ; preds = %._crit_edge.i.i419, %bb.cf, %bb.cg
  %i.il = load i64, ptr %i.d, align 8, !tbaa !165 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !164
  %i.in = load ptr, ptr %27, align 8, !tbaa !163
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.ip = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.ip, align 8, !tbaa !164
  store i8 0, ptr %i.id, align 8, !tbaa !166
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit422, %.noexc409, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41, !noalias !2125
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc423 unwind label %bb.em

.noexc423:                                        ; preds = %bb.ci
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.cj unwind label %bb.ck, !noalias !2125

bb.cj:                                            ; preds = %.noexc423
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2cs13AxisDirection4WESTE, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) @_ZN5osgeo4proj2ioL12nullMeridianE)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.noexc423
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41, !noalias !2125
  br label %.body424

bb.cl:                                            ; preds = %bb.cj
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41, !noalias !2125
  %i.is = load ptr, ptr %27, align 8, !tbaa !163  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cl
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !166
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  %i.ix = load ptr, ptr %26, align 8, !tbaa !163  ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy                ; 2 uses
  br i1 %i.bg, label %.critedge313, label %.critedge314

.critedge313:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.iz, label %.critedge316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %.critedge313
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !166
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #44
  br label %.critedge316

.critedge314:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.iz, label %.critedge317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %.critedge314
  %i.jc = load i64, ptr %i.iy, align 8, !tbaa !166
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jd) #44
  br label %.critedge317

.critedge316:                                     ; preds = %.critedge313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.je = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.je, ptr %29, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i64 23, ptr %i.c, align 8, !tbaa !165
  %i.jf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc435 unwind label %.split742 ; 2 uses

.noexc435:                                        ; preds = %.critedge316
  store ptr %i.jf, ptr %29, align 8, !tbaa !163
  %i.jg = load i64, ptr %i.c, align 8, !tbaa !165 ; 3 uses
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.jf, ptr noundef nonnull align 1 dereferenceable(23) @.str.516, i64 23, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !164
  %i.ji = load ptr, ptr %29, align 8, !tbaa !163
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jg
  store i8 0, ptr %i.jj, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.jk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.jk, ptr %30, align 8, !tbaa !160
  store i8 85, ptr %i.jk, align 8, !tbaa !166
  %i.jl = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.jm, align 1, !tbaa !166
  br label %bb.ct

.critedge317:                                     ; preds = %.critedge314, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %49, ptr %29, align 8, !tbaa !160
  %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val776 = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, align 8
  %_ZN5osgeo4proj2cs8AxisName8SouthingB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8SouthingB5cxx11E, align 8
  %50 = select i1 %i.n, ptr %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val776, ptr %_ZN5osgeo4proj2cs8AxisName8SouthingB5cxx11E.val ; 2 uses
  %.val777 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, i64 8), align 8
  %.val778 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8SouthingB5cxx11E, i64 8), align 8
  %51 = select i1 %i.n, i64 %.val777, i64 %.val778 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 %51, ptr %i.b, align 8, !tbaa !165
  %i.jn = icmp ugt i64 %51, 15
  br i1 %i.jn, label %.noexc.i438, label %._crit_edge.i.i437

.noexc.i438:                                      ; preds = %.critedge317
  %i.jo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc439 unwind label %.split742 ; 2 uses

.noexc439:                                        ; preds = %.noexc.i438
  store ptr %i.jo, ptr %29, align 8, !tbaa !163
  %i.jp = load i64, ptr %i.b, align 8, !tbaa !165
  store i64 %i.jp, ptr %49, align 8, !tbaa !166
  br label %._crit_edge.i.i437

._crit_edge.i.i437:                               ; preds = %.noexc439, %.critedge317
  %i.jq = phi ptr [ %i.jo, %.noexc439 ], [ %49, %.critedge317 ] ; 2 uses
  switch i64 %51, label %bb.cn [
    i64 1, label %bb.cm
    i64 0, label %bb.co
  ]

bb.cm:                                            ; preds = %._crit_edge.i.i437
  %i.jr = load i8, ptr %50, align 1, !tbaa !166
  store i8 %i.jr, ptr %i.jq, align 1, !tbaa !166
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i437
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr align 1 %50, i64 %51, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge.i.i437, %bb.cm, %bb.cn
  %i.js = load i64, ptr %i.b, align 8, !tbaa !165 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !164
  %i.ju = load ptr, ptr %29, align 8, !tbaa !163
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  store i8 0, ptr %i.jv, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.jw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  store ptr %i.jw, ptr %30, align 8, !tbaa !160
  br i1 %i.n, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.jx = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, align 8, !tbaa !163 ; 2 uses
  %i.jy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, i64 8), align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.jy, ptr %i.a, align 8, !tbaa !165
  %i.jz = icmp ugt i64 %i.jy, 15
  br i1 %i.jz, label %.noexc.i446, label %._crit_edge.i.i445

.noexc.i446:                                      ; preds = %bb.cp
  %i.ka = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc447 unwind label %.split739 ; 2 uses

.noexc447:                                        ; preds = %.noexc.i446
  store ptr %i.ka, ptr %30, align 8, !tbaa !163
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.kb, ptr %i.jw, align 8, !tbaa !166
  br label %._crit_edge.i.i445

._crit_edge.i.i445:                               ; preds = %.noexc447, %bb.cp
  %i.kc = phi ptr [ %i.ka, %.noexc447 ], [ %i.jw, %bb.cp ] ; 2 uses
  switch i64 %i.jy, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit448
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i445
  %i.kd = load i8, ptr %i.jx, align 1, !tbaa !166
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit448

bb.cr:                                            ; preds = %._crit_edge.i.i445
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr align 1 %i.jx, i64 %i.jy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit448: ; preds = %._crit_edge.i.i445, %bb.cq, %bb.cr
  %i.ke = load i64, ptr %i.a, align 8, !tbaa !165 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !164
  %i.kg = load ptr, ptr %30, align 8, !tbaa !163
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ke
  store i8 0, ptr %i.kh, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ct

bb.cs:                                            ; preds = %bb.co
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.ki, align 8, !tbaa !164
  store i8 0, ptr %i.jw, align 8, !tbaa !166
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit448, %.noexc435, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !2126
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc449 unwind label %bb.en

.noexc449:                                        ; preds = %bb.ct
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cu unwind label %bb.cv, !noalias !2126

bb.cu:                                            ; preds = %.noexc449
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) @_ZN5osgeo4proj2ioL12nullMeridianE)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.noexc449
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !2126
  br label %.body450

bb.cw:                                            ; preds = %bb.cu
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !2126
  %i.kl = load ptr, ptr %30, align 8, !tbaa !163  ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %bb.cw
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !166
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  %i.kq = load ptr, ptr %29, align 8, !tbaa !163  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %.critedge322, label %.critedge322.sink.split

.critedge322.sink.split:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !166
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #44
  br label %.critedge322

.critedge322:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %.critedge322.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  %i.kv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !209 ; 2 uses
  %i.ky = load <2 x ptr>, ptr %13, align 16, !tbaa !208
  store <2 x ptr> %i.ky, ptr %31, align 16, !tbaa !208
  %.not.i.i.i.i462 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i462, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit, label %bb.cx

bb.cx:                                            ; preds = %.critedge322
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 3 uses
  %i.la = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i = icmp eq i8 %i.la, 0
  br i1 %.not.i.i.i.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !213
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !213
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.ld = atomicrmw volatile add ptr %i.kz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit: ; preds = %.critedge322, %bb.cy, %bb.cz
  %i.le = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !209 ; 2 uses
  %i.lh = load <2 x ptr>, ptr %19, align 16, !tbaa !208
  store <2 x ptr> %i.lh, ptr %i.le, align 16, !tbaa !208
  %.not.i.i.i.i463 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i463, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit465, label %bb.da

bb.da:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 3 uses
  %i.lj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i464 = icmp eq i8 %i.lj, 0
  br i1 %.not.i.i.i.i.i464, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !213
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %i.li, align 4, !tbaa !213
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit465

bb.dc:                                            ; preds = %bb.da
  %i.lm = atomicrmw volatile add ptr %i.li, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit465

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit465: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit, %bb.db, %bb.dc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ln = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %.noexc3.i unwind label %.body466 ; 6 uses

.noexc3.i:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEC2ERKS8_.exit465
  store ptr %i.ln, ptr %0, align 8, !tbaa !425
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !421
  %i.lq = load ptr, ptr %i.kv, align 8, !tbaa !209 ; 2 uses
  %i.lr = load <2 x ptr>, ptr %31, align 16, !tbaa !208
  store <2 x ptr> %i.lr, ptr %i.ln, align 8, !tbaa !208
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc3.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 3 uses
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lu = load i32, ptr %i.ls, align 4, !tbaa !213
  %i.lv = add nsw i32 %i.lu, 1
  store i32 %i.lv, ptr %i.ls, align 4, !tbaa !213
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.lw = atomicrmw volatile add ptr %i.ls, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.df, %bb.de, %.noexc3.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !209 ; 3 uses
end_hunk_0
