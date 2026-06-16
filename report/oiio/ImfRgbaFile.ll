inline.NumInlined: 405
inline.NumDeleted: 157
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca14setFrameBufferEPNS_4RgbaEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.d
  %.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.cm, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

bb.q:                                             ; preds = %bb.j, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit33
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cs = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ap
  br i1 %i.ct, label %.body31, label %.body31.sink.split

.body31.sink.split:                               ; preds = %bb.q, %bb.i
  %.sink104 = phi ptr [ %i.bb, %bb.i ], [ %i.cs, %bb.q ]
  %.pn15.ph = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %i.cr, %bb.q ]
  %i.cu = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink104, i64 noundef %i.cv) #25
  br label %.body31

.body31:                                          ; preds = %.body31.sink.split, %bb.q, %bb.i
  %.pn15 = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %i.cr, %bb.q ], [ %.pn15.ph, %.body31.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ab

bb.r:                                             ; preds = %bb.n, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit47
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.cx = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bo
  br i1 %i.cy, label %.body45, label %.body45.sink.split

.body45.sink.split:                               ; preds = %bb.r, %bb.m
  %.sink107 = phi ptr [ %i.ca, %bb.m ], [ %i.cx, %bb.r ]
  %.pn17.ph = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.cw, %bb.r ]
  %i.cz = load i64, ptr %i.bo, align 8, !tbaa !75
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.sink107, i64 noundef %i.da) #25
  br label %.body45

.body45:                                          ; preds = %.body45.sink.split, %bb.r, %bb.m
  %.pn17 = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.cw, %bb.r ], [ %.pn17.ph, %.body45.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ab

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.db = load ptr, ptr %4, align 8, !tbaa !76, !noalias !151
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !73, !noalias !151 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.dd, ptr %12, align 8, !tbaa !70, !alias.scope !154
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 0, ptr %i.de, align 8, !tbaa !73, !alias.scope !154
  store i8 0, ptr %i.dd, align 8, !tbaa !75, !alias.scope !154
  %i.df = add i64 %i.dc, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.df)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !73, !alias.scope !154
  %i.dh = sub i64 4611686018427387903, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.dc
  br i1 %i.di, label %.invoke.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i63: ; preds = %bb.t
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.db, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i64 unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i63
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !73, !alias.scope !154
  %i.dl = icmp eq i64 %i.dk, 4611686018427387903
  br i1 %i.dl, label %.invoke.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i65

.invoke.i.i66:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i64, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
          to label %.cont.i.i67 unwind label %bb.u

.cont.i.i67:                                      ; preds = %.invoke.i.i66
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i64
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit70 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i65, %.invoke.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i63, %bb.s
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %12, align 8, !tbaa !76, !alias.scope !154 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dd
  br i1 %i.dp, label %.body68, label %.body68.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.dr = load i32, ptr %i.aa, align 4, !tbaa !123
  %i.ds = sub nsw i32 13, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %13, i32 noundef 1, ptr noundef nonnull %i.dv, i64 noundef 8, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 1.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit70
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(50) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.dw = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dd
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.w
  %i.dy = load i64, ptr %i.dd, align 8, !tbaa !75
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !127, !nonnull !27, !align !28
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ec)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #26
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ac

bb.z:                                             ; preds = %bb.v, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit70
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.eg = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dd
  br i1 %i.eh, label %.body68, label %.body68.sink.split

.body68.sink.split:                               ; preds = %bb.z, %bb.u
  %.sink110 = phi ptr [ %i.do, %bb.u ], [ %i.eg, %bb.z ]
  %.pn19.ph = phi { ptr, i32 } [ %i.dn, %bb.u ], [ %i.ef, %bb.z ]
  %i.ei = load i64, ptr %i.dd, align 8, !tbaa !75
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %.sink110, i64 noundef %i.ej) #25
  br label %.body68

.body68:                                          ; preds = %.body68.sink.split, %bb.z, %bb.u
  %.pn19 = phi { ptr, i32 } [ %i.dn, %bb.u ], [ %i.ef, %bb.z ], [ %.pn19.ph, %.body68.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body68, %.body45, %.body31, %.body
  %.pn21 = phi { ptr, i32 } [ %i.ek, %bb.aa ], [ %.pn19, %.body68 ], [ %.pn17, %.body45 ], [ %.pn15, %.body31 ], [ %.pn, %.body ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn21

bb.ac:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !132
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %2, ptr %i.el, align 8, !tbaa !157
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %3, ptr %i.em, align 8, !tbaa !158
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #2

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.speculated16 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %1, i32 %2) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %.preheader24

.preheader:                                       ; preds = %bb.a, %.preheader
  %.01027 = phi i32 [ %i.d, %.preheader ], [ %.sroa.speculated16, %bb.a ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %.01027)
  %i.d = add nsw i32 %.01027, 1                   ; 2 uses
  %.not11 = icmp sgt i32 %i.d, %.sroa.speculated
  br i1 %.not11, label %.loopexit, label %.preheader, !llvm.loop !159

.preheader24:                                     ; preds = %bb.a, %.preheader24
  %.026 = phi i32 [ %i.e, %.preheader24 ], [ %.sroa.speculated, %bb.a ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %.026)
  %i.e = add nsw i32 %.026, -1                    ; 2 uses
  %.not = icmp slt i32 %i.e, %.sroa.speculated16
  br i1 %.not, label %.loopexit, label %.preheader24, !llvm.loop !160

.loopexit:                                        ; preds = %.preheader24, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.10, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127, !nonnull !27, !align !28
  %i.i = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart8fileNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.i)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %bb.d
  %i.l = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.af unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !126  ; 2 uses
  %i.q = sub nsw i32 %1, %i.p                     ; 9 uses
  %i.r = add i32 %i.q, 28
  %i.s = icmp ult i32 %i.r, 57
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10rotateBuf1Ei(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.q)
  %i.t = add nsw i32 %i.q, 2
  %i.u = icmp ult i32 %i.t, 5
  br i1 %i.u, label %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10rotateBuf2Ei.exit, label %.thread

_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10rotateBuf2Ei.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa !38
  %isneg = icmp slt i32 %i.q, 0
  %.neg.i = select i1 %isneg, i32 3, i32 0
  %i.w = add nsw i32 %.neg.i, %i.q
  %.lhs.trunc = trunc nsw i32 %i.w to i8          ; 3 uses
  %i.x = srem i8 %.lhs.trunc, 3
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !38
  %.lhs.trunc95 = add nsw i8 %.lhs.trunc, 1
  %i.ab = srem i8 %.lhs.trunc95, 3
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !38
  %.lhs.trunc97 = add nsw i8 %.lhs.trunc, 2
  %i.ag = urem i8 %.lhs.trunc97, 3
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.thread

.thread:                                          ; preds = %bb.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10rotateBuf2Ei.exit, %bb.j
  %i.al = icmp slt i32 %i.q, 0
  br i1 %i.al, label %bb.k, label %bb.u

bb.k:                                             ; preds = %.thread
  %i.am = sub i32 0, %i.q                         ; 2 uses
  %i.an = add nsw i32 %1, -14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.am, i32 29)
  %umin114 = zext nneg i32 %i.av to i64
  %i.aw = sext i32 %i.an to i64
  br label %bb.l

.lr.ph105:                                        ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 3)
  %wide.trip.count = zext nneg i32 %i.ba to i64
  br label %bb.q

bb.l:                                             ; preds = %bb.k, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
  %indvars.iv115 = phi i64 [ %umin114, %bb.k ], [ %indvars.iv.next116, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit ] ; 2 uses
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 3 uses
  %i.bb = add nsw i64 %indvars.iv.next116, %i.aw  ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next116
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 2 uses
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !124 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %i.bb, %i.bf
  %i.bh = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp sgt i64 %i.bb, %i.bi
  %i.bk = add nsw i32 %i.bh, -1
  %i.bl = trunc nsw i64 %i.bb to i32
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 %i.bl
  %.010.i = select i1 %i.bg, i32 %i.be, i32 %spec.select.i ; 2 uses
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !127, !nonnull !27, !align !28
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef %.010.i)
  %i.bn = load i8, ptr %i.as, align 8, !tbaa !121, !range !52, !noundef !27
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !129 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.br = load ptr, ptr %i.au, align 8, !tbaa !131 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.bp to i64 ; 2 uses
  %xtraiter132 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.bp, 8
  br i1 %i.bs, label %.epil.preheader131, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter136 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.m ] ; 9 uses
  %niter137 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter137.next.7, %bb.m ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  store i16 0, ptr %i.bu, align 2, !tbaa !161
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 108
  store i16 0, ptr %i.bv, align 2, !tbaa !161
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  store i16 0, ptr %i.bx, align 2, !tbaa !161
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 116
  store i16 0, ptr %i.by, align 2, !tbaa !161
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  store i16 0, ptr %i.ca, align 2, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 124
  store i16 0, ptr %i.cb, align 2, !tbaa !161
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  store i16 0, ptr %i.cd, align 2, !tbaa !161
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 132
  store i16 0, ptr %i.ce, align 2, !tbaa !161
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  store i16 0, ptr %i.cg, align 2, !tbaa !161
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 140
  store i16 0, ptr %i.ch, align 2, !tbaa !161
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile15setPartAndLayerEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !73
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !75
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.q, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !75
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !75
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !75
  store ptr %i.u, ptr %i.q, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !75
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %3, align 8, !tbaa !76
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %3, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.r, %bb.m ], [ %i.v, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !73
  store i8 0, ptr %i.am, align 1, !tbaa !75
  %i.ao = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.au = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.au)
  %i.aw = call fastcc noundef range(i32 0, 64) i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112rgbaChannelsERKNS_11ChannelListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q) ; 2 uses
  %.not = icmp samesign ult i32 %i.aw, 32
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #24 ; 3 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !177
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYcaC2ERNS_9InputPartENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(392) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %i.aw)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !178
  br label %bb.s

bb.q:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #25
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 392) #25
  br label %bb.w

bb.s:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !51
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !177
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.bh)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.v:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.bk, %bb.v ], [ %i.ba, %bb.r ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7setPartEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !73
  store i8 0, ptr %i.a, align 8, !tbaa !75
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile15setPartAndLayerEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.c = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !75
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !75
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %.sroa.speculated16.i = tail call i32 @llvm.smin.i32(i32 %2, i32 %1) ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %1, i32 %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !128
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.preheader.i, label %.preheader24.i

.preheader.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc
  %.01027.i = phi i32 [ %i.h, %.noexc ], [ %.sroa.speculated16.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(392) %i.d, i32 noundef %.01027.i)
          to label %.noexc unwind label %.loopexit36

.noexc:                                           ; preds = %.preheader.i
  %i.h = add nsw i32 %.01027.i, 1                 ; 2 uses
  %.not11.i = icmp sgt i32 %i.h, %.sroa.speculated.i
  br i1 %.not11.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii.exit, label %.preheader.i, !llvm.loop !159

.preheader24.i:                                   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc30
  %.026.i = phi i32 [ %i.i, %.noexc30 ], [ %.sroa.speculated.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(392) %i.d, i32 noundef %.026.i)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %.preheader24.i
  %i.i = add nsw i32 %.026.i, -1                  ; 2 uses
  %.not.i = icmp slt i32 %i.i, %.sroa.speculated16.i
  br i1 %.not.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii.exit, label %.preheader24.i, !llvm.loop !160

_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii.exit: ; preds = %.noexc30, %.noexc
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  br label %.loopexit

.loopexit36:                                      ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.preheader24.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit36
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit36 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !177
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %1, i32 noundef %2)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.o = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = tail call fastcc noundef range(i32 0, 64) i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112rgbaChannelsERKNS_11ChannelListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q)
  %i.s = and i32 %i.r, 16
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !76, !noalias !229
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73, !noalias !229 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !70, !alias.scope !232
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  store i8 0, ptr %i.y, align 8, !tbaa !75, !alias.scope !232
  %i.aa = add i64 %i.x, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  %i.ac = sub i64 4611686018427387903, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.x
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.v, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !76, !alias.scope !232 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.y, align 8, !tbaa !75, !alias.scope !232
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.phi, %bb.d ], [ %i.ai, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.an = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ao = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.y
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !75
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.at = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.au = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.at) ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !235 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !235 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !236
  %i.ba = ptrtoint ptr %i.az to i64
  %.not2740 = icmp sgt i32 %1, %2
  br i1 %.not2740, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !240
  %.not2838 = icmp sgt i32 %i.av, %i.ax
  br i1 %.not2838, label %.loopexit, label %.lr.ph42.split

.lr.ph42.split:                                   ; preds = %.lr.ph42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !241 ; 5 uses
  %i.bf = sext i32 %i.av to i64                   ; 4 uses
  %4 = sext i32 %i.ax to i64                      ; 3 uses
  %i.bg = sext i32 %1 to i64
  %5 = sext i32 %2 to i64
  %6 = add nsw i64 %4, 1
  %7 = sub nsw i64 %6, %i.bf
  %8 = sub nsw i64 %4, %i.bf
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bh = icmp ult i64 %8, 3
  br label %.lr.ph

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.y
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.j
  %i.bl = load i64, ptr %i.y, align 8, !tbaa !75
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

.lr.ph:                                           ; preds = %.lr.ph42.split, %._crit_edge
  %indvars.iv46 = phi i64 [ %i.bg, %.lr.ph42.split ], [ %indvars.iv.next47, %._crit_edge ] ; 2 uses
  %i.bn = mul i64 %i.bc, %indvars.iv46
  %i.bo = add i64 %i.bn, %i.ba                    ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bf, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.bp = mul i64 %i.be, %indvars.iv.prol
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr               ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i16, ptr %i.br, align 2, !tbaa !161 ; 2 uses
  store i16 %i.bt, ptr %i.bs, align 2, !tbaa !161
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !161
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !242

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bf, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %.not27 = icmp sgt i64 %indvars.iv.next47, %5
  br i1 %.not27, label %.loopexit, label %.lr.ph, !llvm.loop !243

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvars.iv
  %i.bw = add i64 %i.bo, %i.bv
  %i.bx = inttoptr i64 %i.bw to ptr               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i16, ptr %i.bx, align 2, !tbaa !161 ; 2 uses
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !161
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !161
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cb = mul i64 %i.be, %indvars.iv.next
  %i.cc = add i64 %i.bo, %i.cb
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.cd, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cf, ptr %i.ce, align 2, !tbaa !161
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !161
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %i.ch = mul i64 %i.be, %indvars.iv.next.1
  %i.ci = add i64 %i.bo, %i.ch
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i16, ptr %i.cj, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cl, ptr %i.ck, align 2, !tbaa !161
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !161
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %i.cn = mul i64 %i.be, %indvars.iv.next.2
  %i.co = add i64 %i.bo, %i.cn
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i16, ptr %i.cp, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cr, ptr %i.cq, align 2, !tbaa !161
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !161
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %.not28.3 = icmp sgt i64 %indvars.iv.next.3, %4
  br i1 %.not28.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !244

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii.exit
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10isCompleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nuw nsw i32 %.057, 1                 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.g = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %.not = icmp slt i32 %i.e, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !245

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.057 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.i = tail call noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile12partCompleteEi(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %.057) ; 3 uses
  br i1 %i.i, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %.lr.ph ], [ %i.i, %bb.b ]
  ret i1 %.lcssa
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile12partCompleteEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile5partsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8fileNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart8fileNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile13displayWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile16pixelAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !32
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile18screenWindowCenterEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2.8") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !32
  store <2 x float> %i.e, ptr %0, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile17screenWindowWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !32
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile9lineOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11compressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7versionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart7versionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart7versionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesC1ERKN9Imath_3_14Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_517hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca9computeYwERKNS_14ChromaticitiesE(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Vec3") align 4, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

end_hunk_1
