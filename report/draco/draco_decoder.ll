Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/draco_decoder?download=true
inline.NumInlined: 364
inline.NumDeleted: 227
begin_hunk_0_@main:bb.a
  %puts118 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.cm

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN5draco13DecoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !38
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  invoke void @_ZN5draco13DecoderBuffer4InitEPKcm(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef %i.bx, i64 noundef %i.cb)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN5draco7Decoder22GetEncodedGeometryTypeEPNS_13DecoderBufferE(ptr dead_on_unwind nonnull writable sret(%"class.draco::StatusOr") align 8 %6, ptr noundef nonnull %4)
          to label %bb.o unwind label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread

bb.o:                                             ; preds = %bb.n
  %i.cc = load i32, ptr %6, align 8, !tbaa !41
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val125 = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %.val125) ; 0 uses
  br label %bb.ci

bb.q:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.r:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread: ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154

bb.s:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !43
  switch i32 %i.ck, label %.thread [
    i32 1, label %bb.t
    i32 0, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5draco10DracoTimer5StartEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cp, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store i32 0, ptr %i.cq, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.cr, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 0, ptr %i.cu, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN5draco7Decoder20DecodeMeshFromBufferEPNS_13DecoderBufferE(ptr dead_on_unwind nonnull writable sret(%"class.draco::StatusOr.11") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull %4)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cv = load i32, ptr %8, align 8, !tbaa !41
  %i.cw = icmp eq i32 %i.cv, 0                    ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val124 = load ptr, ptr %i.cx, align 8, !tbaa !20
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %.val124) ; 0 uses
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134

bb.x:                                             ; preds = %bb.ac, %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.y:                                             ; preds = %bb.u
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !27 ; 2 uses
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  store ptr null, ptr %i.db, align 8, !tbaa !27
  invoke void @_ZN5draco10DracoTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(216) %i.dd) #18, !inline_history !0
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134: ; preds = %bb.z, %bb.w
  %.172 = phi i32 [ -1, %bb.w ], [ 0, %bb.z ]     ; 2 uses
  %.1 = phi ptr [ null, %bb.w ], [ %i.dd, %bb.z ] ; 3 uses
  call void @_ZN5draco8StatusOrISt10unique_ptrINS_4MeshESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN5draco7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.cw, label %bb.ak, label %bb.ci

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i, %bb.aa
  call void @_ZN5draco8StatusOrISt10unique_ptrINS_4MeshESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #18
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, %bb.y
  %.pn88.pn = phi { ptr, i32 } [ %i.de, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit ], [ %i.da, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN5draco7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.cj

bb.ac:                                            ; preds = %bb.s
  invoke void @_ZN5draco10DracoTimer5StartEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ad unwind label %bb.x

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.di, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.dj, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !46
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.dm, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr null, ptr %i.do, align 8, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 0, ptr %i.dr, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN5draco7Decoder26DecodePointCloudFromBufferEPNS_13DecoderBufferE(ptr dead_on_unwind nonnull writable sret(%"class.draco::StatusOr.20") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %10, align 8, !tbaa !41
  %i.dt = icmp eq i32 %i.ds, 0                    ; 2 uses
  br i1 %i.dt, label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val = load ptr, ptr %i.du, align 8, !tbaa !20
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %.val) ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5draco8StatusOrISt10unique_ptrINS_10PointCloudESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #18
  br label %bb.aj

_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31 ; 2 uses
  store ptr null, ptr %i.dy, align 8, !tbaa !31
  invoke void @_ZN5draco10DracoTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ai unwind label %bb.ah

bb.ai:                                            ; preds = %bb.af, %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit
  %.sroa.0164.2 = phi ptr [ %i.dz, %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit ], [ null, %bb.af ] ; 2 uses
  %.273 = phi i32 [ 0, %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EEaSEOS4_.exit ], [ -1, %bb.af ] ; 2 uses
  call void @_ZN5draco8StatusOrISt10unique_ptrINS_10PointCloudESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN5draco7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %i.dt, label %bb.ak, label %bb.ci

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0164.3.a = phi ptr [ %i.dz, %bb.ah ], [ null, %bb.ag ]
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.ah ], [ %i.dw, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN5draco7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cj

bb.ak:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134
  %.sroa.0164.4 = phi ptr [ %.sroa.0164.2, %bb.ai ], [ %.1, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 ] ; 6 uses
  %.374 = phi i32 [ %.273, %bb.ai ], [ %.172, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 ]
  %.2 = phi ptr [ null, %bb.ai ], [ %.1, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 ] ; 6 uses
  %.not.i135 = icmp eq ptr %.sroa.0164.4, null
  br i1 %.not.i135, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.s, %bb.ak
  %puts117 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.ci

bb.al:                                            ; preds = %bb.ak
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.7)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %11) #18 ; 0 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.pr = load i64, ptr %i.e, align 8, !tbaa !17
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cj

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al
  %i.ej = phi i64 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ea, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ek = icmp ugt i64 %i.ej, 3
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.el = add i64 %i.ej, -4
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.el, i64 noundef -1)
          to label %bb.as unwind label %bb.az

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %bb.ar, %bb.aq
  invoke void @_ZN5draco6parser7ToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.at unwind label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.at
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !18
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.er = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.8)
          to label %bb.au unwind label %bb.bb

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  br i1 %i.er, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN5draco10ObjEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %14)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %.not103 = icmp eq ptr %.2, null
  br i1 %.not103, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.es = invoke noundef zeroext i1 @_ZN5draco10ObjEncoder12EncodeToFileERKNS_4MeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(256) %14, ptr noundef nonnull align 8 dereferenceable(216) %.2, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.es, label %.thread183, label %bb.bg

bb.az:                                            ; preds = %bb.ar, %bb.aq
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ba:                                            ; preds = %bb.as
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ba
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !18
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.az
  %.pn91 = phi { ptr, i32 } [ %i.et, %bb.az ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.eu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.bb:                                            ; preds = %bb.ce, %bb.bs, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bc:                                            ; preds = %bb.av
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %bb.be, %bb.ax
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5draco10ObjEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %14) #18
  br label %bb.bh

bb.be:                                            ; preds = %bb.aw
  %i.fd = invoke noundef zeroext i1 @_ZN5draco10ObjEncoder12EncodeToFileERKNS_10PointCloudERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(256) %14, ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0164.4, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  br i1 %i.fd, label %.thread183, label %bb.bg

.thread183:                                       ; preds = %bb.bf, %bb.ay
  call void @_ZN5draco10ObjEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ce

bb.bg:                                            ; preds = %bb.bf, %bb.ay
  %str.6.sink = phi ptr [ @str.7, %bb.ay ], [ @str.6, %bb.bf ]
  %puts104 = call i32 @puts(ptr nonnull dereferenceable(1) %str.6.sink) ; 0 uses
  call void @_ZN5draco10ObjEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.cg

bb.bh:                                            ; preds = %bb.bd, %bb.bc
  %.pn105 = phi { ptr, i32 } [ %i.fc, %bb.bd ], [ %i.fb, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ch

bb.bi:                                            ; preds = %bb.au
  %i.fe = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7)
          to label %bb.bj unwind label %bb.bb

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fe, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN5draco10PlyEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not100 = icmp eq ptr %.2, null
  br i1 %.not100, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ff = invoke noundef zeroext i1 @_ZN5draco10PlyEncoder12EncodeToFileERKNS_4MeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(216) %.2, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ff, label %.thread187, label %bb.br

bb.bo:                                            ; preds = %bb.bp, %bb.bm, %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ch

bb.bp:                                            ; preds = %bb.bl
  %i.fh = invoke noundef zeroext i1 @_ZN5draco10PlyEncoder12EncodeToFileERKNS_10PointCloudERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0164.4, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.fh, label %.thread187, label %bb.br

.thread187:                                       ; preds = %bb.bq, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ce

bb.br:                                            ; preds = %bb.bq, %bb.bn
  %str.4.sink = phi ptr [ @str.5, %bb.bn ], [ @str.4, %bb.bq ]
  %puts101 = call i32 @puts(ptr nonnull dereferenceable(1) %str.4.sink) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cg

bb.bs:                                            ; preds = %bb.bj
  %i.fi = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.13)
          to label %bb.bt unwind label %bb.bb

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.fi, label %bb.bu, label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN5draco10StlEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %.not94 = icmp eq ptr %.2, null
  br i1 %.not94, label %.thread190, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN5draco10StlEncoder12EncodeToFileERKNS_4MeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.draco::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(216) %.2, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.fj = load i32, ptr %17, align 8, !tbaa !41
  %.not98 = icmp eq i32 %i.fj, 0                  ; 2 uses
  br i1 %.not98, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %puts99 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bw
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx, %bb.by
  %.677 = phi i32 [ -1, %bb.by ], [ %.374, %bb.bx ]
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !20 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cb
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !18
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

.thread190:                                       ; preds = %bb.bv
  %puts95 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.not98, label %bb.ce, label %bb.cg

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.pn96 = phi { ptr, i32 } [ %i.fl, %bb.ca ], [ %i.fk, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.ch

bb.cd:                                            ; preds = %bb.bt
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.cg

bb.ce:                                            ; preds = %.thread187, %.thread183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ft = invoke noundef i64 @_ZN5draco10DracoTimer7GetInMsEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.cf unwind label %bb.bb

bb.cf:                                            ; preds = %bb.ce
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %i.fs, i64 noundef %i.ft) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.thread190, %bb.br, %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.cf, %bb.cd
  %.879 = phi i32 [ 0, %bb.cf ], [ -1, %bb.bg ], [ -1, %bb.br ], [ %.677, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ -1, %bb.cd ], [ -1, %.thread190 ]
  %i.fv = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.cg
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !18
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc, %bb.bo, %bb.bh, %bb.bb
  %.pn108 = phi { ptr, i32 } [ %i.fa, %bb.bb ], [ %.pn105, %bb.bh ], [ %i.fg, %bb.bo ], [ %.pn96, %bb.cc ] ; 2 uses
  %i.ga = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.ch
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !18
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pn108.pn = phi { ptr, i32 } [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn108, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cj

bb.ci:                                            ; preds = %bb.p, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ai, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134
  %.sroa.0164.5 = phi ptr [ null, %.thread ], [ %.sroa.0164.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.1, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 ], [ %.sroa.0164.2, %bb.ai ], [ null, %bb.p ] ; 3 uses
  %.1081 = phi i32 [ -1, %.thread ], [ %.879, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.172, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 ], [ %.273, %bb.ai ], [ -1, %bb.p ]
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ci
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !18
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #19
  br label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit

_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i148 = icmp eq ptr %.sroa.0164.5, null
  br i1 %.not.i148, label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i: ; preds = %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit
  %i.gl = load ptr, ptr %.sroa.0164.5, align 8, !tbaa !29
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0164.5) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit, %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN5draco13DecoderBuffer10BitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.go) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.cm

bb.cj:                                            ; preds = %bb.x, %bb.ab, %bb.aj, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %.sroa.0164.6.a = phi ptr [ %.sroa.0164.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.sroa.0164.4, %bb.ao ], [ null, %bb.ab ], [ null, %bb.x ], [ %.sroa.0164.3.a, %bb.aj ] ; 3 uses
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.ei, %bb.ao ], [ %.pn88.pn, %bb.ab ], [ %i.cz, %bb.x ], [ %.pn, %bb.aj ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !20 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149: ; preds = %bb.cj
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !18
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #19
  br label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151

_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i152 = icmp eq ptr %.sroa.0164.6.a, null
  br i1 %.not.i152, label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154, label %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i153

_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i153: ; preds = %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151
  %i.gv = load ptr, ptr %.sroa.0164.6.a, align 8, !tbaa !29
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0164.6.a) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154

_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154: ; preds = %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread, %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151, %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i153
  %.pn108.pn.pn.pn.pn196 = phi { ptr, i32 } [ %i.ci, %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread ], [ %.pn108.pn.pn.pn, %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151 ], [ %.pn108.pn.pn.pn, %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154, %bb.r
  %.pn108.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn196, %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154 ], [ %i.ch, %bb.r ]
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN5draco13DecoderBuffer10BitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gy) #18
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.q
  %.pn108.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn, %bb.ck ], [ %i.cg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.co

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit, %bb.k, %bb.h
  %.1182 = phi i32 [ -1, %bb.k ], [ %.1081, %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit ], [ -1, %bb.h ]
  %i.gz = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !48
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #19
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.cq

bb.co:                                            ; preds = %bb.cl, %bb.i
  %.pn108.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %i.bs, %bb.i ]
  %i.hf = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIcSaIcEED2Ev.exit157, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !48
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #19
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit157

_ZNSt6vectorIcSaIcEED2Ev.exit157:                 ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.cr

bb.cq:                                            ; preds = %bb.d, %.critedge.thread, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.1283 = phi i32 [ 0, %bb.d ], [ %.1182, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ -1, %.critedge.thread ]
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.d
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158: ; preds = %bb.cq
  %i.hn = load i64, ptr %i.d, align 8, !tbaa !18
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
  %i.hp = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.a
  br i1 %i.hq, label %_ZN12_GLOBAL__N_17OptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hr = load i64, ptr %i.a, align 8, !tbaa !18
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #19
  br label %_ZN12_GLOBAL__N_17OptionsD2Ev.exit

_ZN12_GLOBAL__N_17OptionsD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.1283

bb.cr:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit157, %bb.e
  %.pn121 = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit157 ], [ %i.bq, %bb.e ]
  call fastcc void @_ZN12_GLOBAL__N_17OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN5draco16ReadFileToBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIcS4_E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @_ZN5draco13DecoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #2

declare void @_ZN5draco13DecoderBuffer4InitEPKcm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5draco7Decoder22GetEncodedGeometryTypeEPNS_13DecoderBufferE(ptr dead_on_unwind writable sret(%"class.draco::StatusOr") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN5draco10DracoTimer5StartEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN5draco7Decoder20DecodeMeshFromBufferEPNS_13DecoderBufferE(ptr dead_on_unwind writable sret(%"class.draco::StatusOr.11") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #2

declare void @_ZN5draco10DracoTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco8StatusOrISt10unique_ptrINS_4MeshESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(216) %i.b) #18, !inline_history !0
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5draco6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZN5draco6StatusD2Ev.exit

_ZN5draco6StatusD2Ev.exit:                        ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeIN5draco17GeometryAttribute4TypeESt4pairIKS2_NS0_7OptionsEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN5draco17GeometryAttribute4TypeENS0_7OptionsESt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZNSt3mapIN5draco17GeometryAttribute4TypeENS0_7OptionsESt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.g)
          to label %_ZN5draco12DracoOptionsINS_17GeometryAttribute4TypeEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN5draco17GeometryAttribute4TypeENS0_7OptionsESt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN5draco12DracoOptionsINS_17GeometryAttribute4TypeEED2Ev.exit: ; preds = %_ZNSt3mapIN5draco17GeometryAttribute4TypeENS0_7OptionsESt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit.i
  ret void
}

declare void @_ZN5draco7Decoder26DecodePointCloudFromBufferEPNS_13DecoderBufferE(ptr dead_on_unwind writable sret(%"class.draco::StatusOr.20") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco8StatusOrISt10unique_ptrINS_10PointCloudESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco10PointCloudEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_0
