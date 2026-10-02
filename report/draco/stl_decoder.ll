Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/stl_decoder?download=true
inline.NumInlined: 161
inline.NumDeleted: 105
begin_hunk_0_@_ZN5draco10StlDecoder16DecodeFromBufferEPNS_13DecoderBufferE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5draco6StatusD2Ev.exit
  %i.av = load i64, ptr %i.i, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5draco6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.z

bb.h:                                             ; preds = %.noexc.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.i:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5draco6StatusD2Ev.exit35

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !16  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.o
  br i1 %i.bb, label %_ZN5draco6StatusD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.j
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #10
  br label %_ZN5draco6StatusD2Ev.exit35

_ZN5draco6StatusD2Ev.exit35:                      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33 ], [ %i.az, %bb.j ] ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.i
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZN5draco6StatusD2Ev.exit35
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZN5draco6StatusD2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %_ZN5draco6StatusD2Ev.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.aa

_ZN5draco13DecoderBuffer6DecodeEPvm.exit:         ; preds = %bb.a
  %i.bi = add nsw i64 %i.f, 80                    ; 2 uses
  store i64 %i.bi, ptr %i.e, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !45
  %i.bl = add i64 %i.f, 84                        ; 2 uses
  %i.bm = icmp sge i64 %i.bk, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds i8, ptr %i.d, i64 %i.bi
  %.0.copyload45 = load i32, ptr %i.bn, align 1   ; 3 uses
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  invoke void @_ZN5draco23TriangleSoupMeshBuilder5StartEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %.0.copyload45)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit
  %i.bo = invoke noundef i32 @_ZN5draco23TriangleSoupMeshBuilder12AddAttributeENS_17GeometryAttribute4TypeEaNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i8 noundef signext 3, i32 noundef 9)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = invoke noundef i32 @_ZN5draco23TriangleSoupMeshBuilder12AddAttributeENS_17GeometryAttribute4TypeEaNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1, i8 noundef signext 3, i32 noundef 9)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %bb.l
  %.not51 = icmp eq i32 %.0.copyload45, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.p

._crit_edge:                                      ; preds = %bb.t, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  invoke void @_ZN5draco23TriangleSoupMeshBuilder8FinalizeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit unwind label %bb.x

bb.m:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.o:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %.lr.ph, %bb.t
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %bb.t ] ; 3 uses
  %i.bx = load i64, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %i.by = load i64, ptr %i.e, align 8, !tbaa !44  ; 3 uses
  %i.bz = add i64 %i.by, 48                       ; 3 uses
  %.not48 = icmp slt i64 %i.bx, %i.bz
  br i1 %.not48, label %_ZN5draco13DecoderBuffer6DecodeEPvm.exit39, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %2, align 8, !tbaa !43
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.by ; 8 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cf = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 1
  store i64 %i.bz, ptr %i.e, align 8, !tbaa !44
  br label %_ZN5draco13DecoderBuffer6DecodeEPvm.exit39

_ZN5draco13DecoderBuffer6DecodeEPvm.exit39:       ; preds = %bb.p, %bb.q
  %i.cg = phi i64 [ %i.bz, %bb.q ], [ %i.by, %bb.p ]
  %.sroa.15.0 = phi float [ %.sroa.15.0.copyload, %bb.q ], [ undef, %bb.p ]
  %.sroa.12.0 = phi float [ %.sroa.12.0.copyload, %bb.q ], [ undef, %bb.p ]
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.q ], [ undef, %bb.p ]
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.q ], [ undef, %bb.p ]
  %i.ch = phi <2 x float> [ %i.cd, %bb.q ], [ undef, %bb.p ]
  %i.ci = phi <2 x float> [ %i.ce, %bb.q ], [ undef, %bb.p ]
  %i.cj = phi <2 x float> [ %i.cf, %bb.q ], [ undef, %bb.p ]
  %i.ck = phi <2 x float> [ %i.cc, %bb.q ], [ undef, %bb.p ]
  %i.cl = add i64 %i.cg, 2                        ; 2 uses
  %.not49 = icmp slt i64 %i.bx, %i.cl
  br i1 %.not49, label %_ZN5draco13DecoderBuffer6DecodeEPvm.exit40, label %bb.r

bb.r:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit39
  store i64 %i.cl, ptr %i.e, align 8, !tbaa !44
  br label %_ZN5draco13DecoderBuffer6DecodeEPvm.exit40

_ZN5draco13DecoderBuffer6DecodeEPvm.exit40:       ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit39, %bb.r
  store i32 %.050, ptr %6, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store <2 x float> %i.ck, ptr %7, align 8, !tbaa !49
  store float %.sroa.6.0, ptr %i.bq, align 8, !tbaa !49
  invoke void @_ZN5draco23TriangleSoupMeshBuilder31SetPerFaceAttributeValueForFaceEiNS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPKv(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.bp, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef nonnull %7)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  store i32 %.050, ptr %8, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store <2 x float> %i.ch, ptr %9, align 8, !tbaa !49
  store float %.sroa.9.0, ptr %i.br, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store <2 x float> %i.ci, ptr %10, align 8, !tbaa !49
  store float %.sroa.12.0, ptr %i.bs, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store <2 x float> %i.cj, ptr %11, align 8, !tbaa !49
  store float %.sroa.15.0, ptr %i.bt, align 8, !tbaa !49
  invoke void @_ZN5draco23TriangleSoupMeshBuilder25SetAttributeValuesForFaceEiNS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPKvS5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.bo, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.cm = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %.0.copyload45
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !35

bb.u:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeEPvm.exit40
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.y

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge
  store i32 0, ptr %0, align 8, !tbaa !21, !alias.scope !54
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !12, !alias.scope !54
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cr, align 8, !tbaa !18, !alias.scope !54
  store i8 0, ptr %i.cq, align 8, !tbaa !17, !alias.scope !54
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = load i64, ptr %12, align 8, !tbaa !25
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(216) %i.cv) #9, !inline_history !38
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit
  %i.cz = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZN5draco23TriangleSoupMeshBuilderD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #10
  br label %_ZN5draco23TriangleSoupMeshBuilderD2Ev.exit

_ZN5draco23TriangleSoupMeshBuilderD2Ev.exit:      ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.v, %bb.n, %bb.x, %bb.o, %bb.m
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.m ], [ %i.bv, %bb.n ], [ %i.bw, %bb.o ], [ %i.df, %bb.x ], [ %i.co, %bb.v ], [ %i.cn, %bb.u ]
  call void @_ZN5draco23TriangleSoupMeshBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aa

bb.z:                                             ; preds = %_ZN5draco23TriangleSoupMeshBuilderD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.y ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare void @_ZN5draco23TriangleSoupMeshBuilder5StartEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5draco23TriangleSoupMeshBuilder12AddAttributeENS_17GeometryAttribute4TypeEaNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare void @_ZN5draco23TriangleSoupMeshBuilder31SetPerFaceAttributeValueForFaceEiNS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPKv(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4), ptr noundef) local_unnamed_addr #2

declare void @_ZN5draco23TriangleSoupMeshBuilder25SetAttributeValuesForFaceEiNS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPKvS5_S5_(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5draco23TriangleSoupMeshBuilder8FinalizeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco23TriangleSoupMeshBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(216) %i.b) #9, !inline_history !55
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #10
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5draco13DecoderBuffer10BitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"_ZTSN5draco6Status4CodeE", !5, i64 0}
!20 = !{!"_ZTSN5draco6StatusE", !19, i64 0, !15, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!"p1 _ZTSN5draco4MeshE", !9, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN5draco4MeshELb0EE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!22, !22, i64 0}
!26 = !{!"vtable pointer", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!29 = !{!28, !10, i64 0}
!30 = !{!28, !10, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!32 = !{!31, !10, i64 0}
!33 = !{!31, !10, i64 8}
!34 = !{!31, !10, i64 16}
!35 = distinct !{!35, !50}
!38 = distinct !{ptr @_ZN5draco23TriangleSoupMeshBuilderD2Ev, null, null}
!39 = !{!"_ZTSN5draco13DecoderBuffer10BitDecoderE", !10, i64 0, !10, i64 8, !13, i64 16}
!40 = !{!"bool", !5, i64 0}
!41 = !{!"short", !5, i64 0}
!42 = !{!"_ZTSN5draco13DecoderBufferE", !10, i64 0, !13, i64 8, !13, i64 16, !39, i64 24, !40, i64 48, !41, i64 50}
!43 = !{!42, !10, i64 0}
!44 = !{!42, !13, i64 16}
!45 = !{!42, !13, i64 8}
!46 = !{!"_ZTSN5draco9IndexTypeIjNS_19FaceIndex_tag_type_EEE", !6, i64 0}
!47 = !{!46, !6, i64 0}
!48 = !{!"float", !5, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, i1 false, !"_ZN5draco8OkStatusEv"}
!53 = distinct !{!53, !52, !"_ZN5draco8OkStatusEv: argument 0"}
!54 = !{!53}
!55 = distinct !{null, null}
end_hunk_0
