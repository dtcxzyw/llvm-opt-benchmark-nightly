inline.NumInlined: 374
inline.NumDeleted: 162
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile14setFrameBufferEPNS_4RgbaEmm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !75, !noalias !185
  %i.bz = load i64, ptr %i.r, align 8, !tbaa !72, !noalias !185 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !69, !alias.scope !188
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !72, !alias.scope !188
  store i8 0, ptr %i.ca, align 8, !tbaa !74, !alias.scope !188
  %i.cc = add i64 %i.bz, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.cc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !72, !alias.scope !188
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.bz
  br i1 %i.cf, label %.invoke.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i67: ; preds = %bb.s
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.by, i64 noundef %i.bz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i68 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i67
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !72, !alias.scope !188
  %i.ci = icmp eq i64 %i.ch, 4611686018427387903
  br i1 %i.ci, label %.invoke.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i69

.invoke.i.i70:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i68, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.cont.i.i71 unwind label %bb.t

.cont.i.i71:                                      ; preds = %.invoke.i.i70
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i68
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit74 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i69, %.invoke.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %11, align 8, !tbaa !75, !alias.scope !188 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ca
  br i1 %i.cm, label %.body72, label %.body72.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i69
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 6
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %12, i32 noundef 1, ptr noundef nonnull %i.cn, i64 noundef %i.i, i64 noundef %i.j, i32 noundef 1, i32 noundef 1, double noundef 1.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit74
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(50) %12)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.co = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ca
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.v
  %i.cq = load i64, ptr %i.ca, align 8, !tbaa !74
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !136
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.cu)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #23
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ae

bb.y:                                             ; preds = %bb.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cy = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.t
  br i1 %i.cz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.y, %bb.h
  %.sink = phi ptr [ %i.ae, %bb.h ], [ %i.cy, %bb.y ]
  %.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.cx, %bb.y ]
  %i.da = load i64, ptr %i.t, align 8, !tbaa !74
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.db) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.y, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.cx, %bb.y ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ad

bb.z:                                             ; preds = %bb.m, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit46
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.dd = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.am
  br i1 %i.de, label %.body44, label %.body44.sink.split

.body44.sink.split:                               ; preds = %bb.z, %bb.l
  %.sink120 = phi ptr [ %i.ax, %bb.l ], [ %i.dd, %bb.z ]
  %.pn26.ph = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.dc, %bb.z ]
  %i.df = load i64, ptr %i.am, align 8, !tbaa !74
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink120, i64 noundef %i.dg) #21
  br label %.body44

.body44:                                          ; preds = %.body44.sink.split, %bb.z, %bb.l
  %.pn26 = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.dc, %bb.z ], [ %.pn26.ph, %.body44.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit60
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.di = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bg
  br i1 %i.dj, label %.body58, label %.body58.sink.split

.body58.sink.split:                               ; preds = %bb.aa, %bb.p
  %.sink123 = phi ptr [ %i.br, %bb.p ], [ %i.di, %bb.aa ]
  %.pn28.ph = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %i.dh, %bb.aa ]
  %i.dk = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %.sink123, i64 noundef %i.dl) #21
  br label %.body58

.body58:                                          ; preds = %.body58.sink.split, %bb.aa, %bb.p
  %.pn28 = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %i.dh, %bb.aa ], [ %.pn28.ph, %.body58.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ad

bb.ab:                                            ; preds = %bb.u, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit74
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.dn = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ca
  br i1 %i.do, label %.body72, label %.body72.sink.split

.body72.sink.split:                               ; preds = %bb.ab, %bb.t
  %.sink126 = phi ptr [ %i.cl, %bb.t ], [ %i.dn, %bb.ab ]
  %.pn30.ph = phi { ptr, i32 } [ %i.ck, %bb.t ], [ %i.dm, %bb.ab ]
  %i.dp = load i64, ptr %i.ca, align 8, !tbaa !74
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %.sink126, i64 noundef %i.dq) #21
  br label %.body72

.body72:                                          ; preds = %.body72.sink.split, %bb.ab, %bb.t
  %.pn30 = phi { ptr, i32 } [ %i.ck, %bb.t ], [ %i.dm, %bb.ab ], [ %.pn30.ph, %.body72.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.body72, %.body58, %.body44, %.body
  %.pn32 = phi { ptr, i32 } [ %i.dr, %bb.ac ], [ %.pn30, %.body72 ], [ %.pn28, %.body58 ], [ %.pn26, %.body44 ], [ %.pn, %.body ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.ae:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit, %bb.d
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.e
  %.pn34 = phi { ptr, i32 } [ %i.g, %bb.e ], [ %.pn32, %bb.ad ]
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile12setLayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::FrameBuffer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYaD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #21
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYaD2Ev.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYaD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 120) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYaD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.i = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  call fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119prefixFromLayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(49) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %2, align 8, !tbaa !75     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.p, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.p, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  switch i64 %i.r, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.n, align 1, !tbaa !74
  store i8 %i.t, ptr %i.k, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.v, align 8, !tbaa !72
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.j, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !74
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !74
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !74
  store ptr %i.n, ptr %i.j, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !74
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.k, ptr %2, align 8, !tbaa !75
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %2, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %4 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.k, %bb.h ], [ %i.o, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !72
  store i8 0, ptr %4, align 1, !tbaa !74
  %i.ag = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.am = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.am)
  %i.ao = call fastcc noundef range(i32 0, 32) i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112rgbaChannelsERKNS_11ChannelListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j)
  %.not = icmp samesign ult i32 %i.ao, 16
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20 ; 3 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !136
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYaC1ERNS_14TiledInputFileE(ptr noundef nonnull align 8 dereferenceable(120) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !139
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 120) #21
  br label %bb.q

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.as, ptr %i.au, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.as, ptr %i.av, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !136
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ay)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.p:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.ar, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile8fileNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret ptr %i.c
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile13displayWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile16pixelAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !23
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile18screenWindowCenterEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2.8") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !23
  store <2 x float> %i.e, ptr %0, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile17screenWindowWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !23
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile9lineOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile11compressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile7versionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile7versionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile7versionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile10isCompleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
