inline.NumInlined: 969
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp13XFileImporter34CreateDataRepresentationFromImportEP7aiScenePNS_5XFile5SceneE:bb.a
  store i8 0, ptr %i.p, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1144) #19
  br label %bb.aa

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.r = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.b ]
  tail call void @_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.s = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.t) #18
  br label %bb.aa

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %3, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %1)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23FlipWindingOrderProcessE, i64 16), ptr %4, align 8
  invoke void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.v, align 8
  %i.y = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.n unwind label %bb.s       ; 8 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 2, ptr %i.a, align 4
  %i.z = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.u ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.aa, align 8
  %i.ab = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.v ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %i.ac = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42 unwind label %bb.v ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  store <2 x float> splat (float 5.000000e-01), ptr %5, align 8
  store float 5.000000e-01, ptr %i.aa, align 8
  %i.ad = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44 unwind label %bb.v ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42
  %i.ae = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.v ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44
  %i.af = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
          to label %bb.p unwind label %bb.v       ; 2 uses

bb.p:                                             ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.af, ptr %i.ag, align 8
  store ptr %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.x

bb.q:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 16) #19
  br label %bb.y

bb.u:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.am, %bb.v ], [ %i.al, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.y

bb.x:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.y:                                             ; preds = %bb.s, %bb.t, %bb.w, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %.pn, %bb.w ], [ %i.ak, %bb.t ], [ %i.aj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.ah, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.z ], [ %i.u, %bb.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11XFileParserD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileImporter16ConvertMaterialsEP7aiSceneRSt6vectorINS_5XFile8MaterialESaIS5_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.aiString, align 4           ; 6 uses
  %4 = alloca %struct.aiString, align 4           ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %7 = alloca %struct.aiString, align 4           ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %2, align 8                ; 11 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 112                 ; 5 uses
  %.not177 = icmp eq ptr %i.d, %i.e
  br i1 %.not177, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %.lr.ph.preheader206, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 4294967295
  %i.m = icmp ugt i64 %i.j, 4294967295
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader206, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.i, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi202 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 480
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 816
  %i.ae = load i8, ptr %i.w, align 8, !range !5, !noundef !6
  %i.af = load i8, ptr %i.x, align 8, !range !5, !noundef !6
  %i.ag = load i8, ptr %i.y, align 8, !range !5, !noundef !6
  %i.ah = load i8, ptr %i.z, align 8, !range !5, !noundef !6
  %i.ai = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 3
  %i.am = load i8, ptr %i.aa, align 8, !range !5, !noundef !6
  %i.an = load i8, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ao = load i8, ptr %i.ac, align 8, !range !5, !noundef !6
  %i.ap = load i8, ptr %i.ad, align 8, !range !5, !noundef !6
  %i.aq = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 1
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 2
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 3
  %i.au = xor <4 x i8> %i.al, splat (i8 1)
  %i.av = xor <4 x i8> %i.at, splat (i8 1)
  %i.aw = zext nneg <4 x i8> %i.au to <4 x i32>
  %i.ax = zext nneg <4 x i8> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <4 x i32> %vec.phi202, %i.ax        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.098158.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %i.bc = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %.ph, %.lr.ph.preheader206 ] ; 2 uses
  %.099157 = phi i32 [ %spec.select, %.lr.ph ], [ %.098158.ph, %.lr.ph.preheader206 ]
  %i.bd = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !5, !noundef !6
  %i.bg = xor i8 %i.bf, 1
  %i.bh = zext nneg i8 %i.bg to i32
  %spec.select = add i32 %.099157, %i.bh          ; 2 uses
  %indvars.iv.next = add i64 %i.bc, 1             ; 2 uses
  %8 = and i64 %indvars.iv.next, 4294967295
  %i.bi = icmp ugt i64 %i.i, %8
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !11

bb.b:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = add i32 %i.bm, %spec.select.lcssa
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #21 ; 2 uses
  store ptr %i.bq, ptr %i.bj, align 8
  %.not129 = icmp eq ptr %i.bk, null
  br i1 %.not129, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = zext i32 %i.bm to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bk, i64 %i.bs, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #19
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  %i.bt = load ptr, ptr %i.c, align 8
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %.not178 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not178, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %._crit_edge.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.d

._crit_edge176:                                   ; preds = %bb.ak, %._crit_edge.thread
  ret void

bb.d:                                             ; preds = %.lr.ph175, %bb.ak
  %i.cd = phi ptr [ %i.bu, %.lr.ph175 ], [ %i.ih, %bb.ak ]
  %i.ce = phi i64 [ 0, %.lr.ph175 ], [ %i.if, %bb.ak ]
  %.0118173 = phi i32 [ 0, %.lr.ph175 ], [ %i.ie, %bb.ak ]
  %i.cf = getelementptr inbounds nuw [112 x i8], ptr %i.cd, i64 %i.ce ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !range !5, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.cj = load i32, ptr %i.cb, align 8
  %.not181 = icmp eq i32 %i.cj, 0
  br i1 %.not181, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader, %.critedge
  %.0122171 = phi i64 [ %i.cr, %.critedge ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.ck = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0122171
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %3) ; 0 uses
  %i.co = load ptr, ptr %i.cf, align 8
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cc, ptr noundef nonnull dereferenceable(1) %i.co) #22
  %.not144 = icmp eq i32 %i.cp, 0
  br i1 %.not144, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph172
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store i64 %.0122171, ptr %i.cq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cr = add nuw nsw i64 %.0122171, 1            ; 2 uses
  %i.cs = load i32, ptr %i.cb, align 8
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph172, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 104 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %.loopexit
  %i.cy = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA46_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull align 1 dereferenceable(46) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 1 dereferenceable(2) @.str.14)
  store i64 0, ptr %i.cv, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.d
  %i.cz = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 16 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.db = load i64, ptr %i.da, align 8            ; 4 uses
  %i.dc = icmp ugt i64 %i.db, 1023
  br i1 %i.dc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = trunc nuw nsw i64 %i.db to i32
  store i32 %i.dd, ptr %4, align 4
  %i.de = load ptr, ptr %i.cf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 1 %i.de, i64 %i.db, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.db
  store i8 0, ptr %i.df, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h, %bb.i
  %i.dg = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 52 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fptosi float %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = select i1 %i.dk, i32 2, i32 3
  store i32 %i.dl, ptr %i.b, align 4
  %i.dm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %i.do = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dn, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.dq = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dp, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ds = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dr, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dt = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %i.dh, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 80 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 5 uses
  %i.dx = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp eq i64 %i.ea, 40
  br i1 %i.eb, label %bb.j, label %.preheader150

.preheader150:                                    ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not179 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not179, label %.loopexit151, label %.lr.ph170

bb.j:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -32
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %.not143 = icmp eq i64 %i.ed, 0
  br i1 %.not143, label %.loopexit151, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = getelementptr inbounds i8, ptr %i.dw, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ef = trunc i64 %i.ed to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bz, i8 0, i64 1024, i1 false)
  %i.eg = and i64 %i.ed, 4294966272
  %.not.i = icmp eq i64 %i.eg, 0
  %spec.select.i = select i1 %.not.i, i32 %i.ef, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 1 %i.eh, i64 %i.ei, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ei
  store i8 0, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.el = load i8, ptr %i.ek, align 8, !range !5, !noundef !6
  %i.em = trunc nuw i8 %i.el to i1
  %. = select i1 %i.em, i32 6, i32 1
  %i.en = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i32 noundef %., i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit151

bb.l:                                             ; preds = %bb.g
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 16) #19
  br label %bb.al

.lr.ph170:                                        ; preds = %.preheader150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.ep = phi ptr [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.dx, %.preheader150 ]
  %i.eq = phi i64 [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 2 uses
  %.0100169 = phi i32 [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ]
  %.0101168 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0103167 = phi i32 [ %.2105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0106166 = phi i32 [ %.2108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0109165 = phi i32 [ %.2111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0112164 = phi i32 [ %.2114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0115163 = phi i32 [ %.2117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.eq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.bw, ptr %6, align 8
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.rh = extractelement <4 x float> %i.pf, i64 2
  %i.ri = extractelement <2 x float> %i.ow, i64 1
  %i.rj = fsub float %i.ri, %i.rh
  %i.rk = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.rj, i64 0
  %i.rl = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.rm = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.rn = fadd <4 x float> %i.rl, %i.rm
  %i.ro = shufflevector <4 x float> %i.rk, <4 x float> %i.rn, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.rp = insertelement <4 x float> poison, float %i.rf, i64 0
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rr = fdiv <4 x float> %i.ro, %i.rq
  %i.rs = fmul <4 x float> %i.ro, %i.rq
  %i.rt = shufflevector <4 x float> %i.rr, <4 x float> %i.rs, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ao:                                            ; preds = %bb.am
  %i.ru = fadd float %i.pq, 1.000000e+00
  %i.rv = fsub float %i.ru, %i.oq
  %i.rw = fsub float %i.rv, %i.po
  %i.rx = tail call noundef float @sqrtf(float noundef %i.rw) #18
  %i.ry = fmul float %i.rx, 2.000000e+00
  %i.rz = insertelement <2 x float> %i.ow, float %i.ph, i64 0
  %i.sa = extractelement <4 x float> %i.pf, i64 3
  %i.sb = extractelement <2 x float> %i.ow, i64 0
  %i.sc = fsub float %i.sb, %i.sa
  %i.sd = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.sc, i64 0
  %i.se = shufflevector <2 x float> %i.rz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.sg = fadd <4 x float> %i.se, %i.sf
  %i.sh = shufflevector <4 x float> %i.sd, <4 x float> %i.sg, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.si = insertelement <4 x float> poison, float %i.ry, i64 0
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sk = fdiv <4 x float> %i.sh, %i.sj
  %i.sl = fmul <4 x float> %i.sh, %i.sj
  %i.sm = shufflevector <4 x float> %i.sk, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162: ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %i.sn = phi <4 x float> [ %i.qe, %bb.aj ], [ %i.qz, %bb.al ], [ %i.rt, %bb.an ], [ %i.sm, %bb.ao ]
  %i.so = load ptr, ptr %i.bo, align 8
  %i.sp = getelementptr inbounds nuw [32 x i8], ptr %i.so, i64 %indvars.iv336
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store <4 x float> %i.sn, ptr %i.sq, align 8
  %i.sr = load ptr, ptr %i.bo, align 8
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.sr, i64 %indvars.iv336
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.su = load float, ptr %i.st, align 8
  %i.sv = fneg float %i.su
  store float %i.sv, ptr %i.st, align 8
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.sw = load i32, ptr %i.mk, align 8
  %i.sx = zext i32 %i.sw to i64
  %i.sy = icmp samesign ult i64 %indvars.iv.next337, %i.sx
  br i1 %i.sy, label %.lr.ph302, label %.loopexit280, !llvm.loop !25

.loopexit280:                                     ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162, %.loopexit281
  %i.sz = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.bm, i64 88 ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = load ptr, ptr %i.sz, align 8
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = ptrtoint ptr %i.tc to i64
  %i.tf = sub i64 %i.td, %i.te
  %i.tg = sdiv exact i64 %i.tf, 24                ; 2 uses
  %i.th = trunc i64 %i.tg to i32                  ; 2 uses
  store i32 %i.th, ptr %i.bp, align 8
  %.not148 = icmp eq i32 %i.th, 0
  br i1 %.not148, label %.loopexit279, label %bb.ap

bb.ap:                                            ; preds = %.loopexit280
  %i.ti = and i64 %i.tg, 4294967295               ; 2 uses
  %i.tj = mul nuw nsw i64 %i.ti, 24
  %i.tk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tj) #21
          to label %bb.aq unwind label %bb.w      ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %i.tk, i64 %i.ti
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %i.tm = phi ptr [ %i.tk, %bb.aq ], [ %i.to, %bb.ar ] ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tm, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.tn, align 4
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 24 ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.tl
  br i1 %i.tp, label %.lr.ph305.preheader, label %bb.ar

.lr.ph305.preheader:                              ; preds = %bb.ar
  store ptr %i.tk, ptr %i.bq, align 8
  br label %.lr.ph305

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %.lr.ph305
  %indvars.iv339 = phi i64 [ 0, %.lr.ph305.preheader ], [ %indvars.iv.next340, %.lr.ph305 ] ; 3 uses
  %i.tq = load ptr, ptr %i.sz, align 8
  %i.tr = getelementptr inbounds nuw [24 x i8], ptr %i.tq, i64 %indvars.iv339
  %i.ts = load ptr, ptr %i.bq, align 8
  %i.tt = getelementptr inbounds nuw [24 x i8], ptr %i.ts, i64 %indvars.iv339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.tr, i64 24, i1 false)
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.tu = load i32, ptr %i.bp, align 8
  %i.tv = zext i32 %i.tu to i64
  %i.tw = icmp samesign ult i64 %indvars.iv.next340, %i.tv
  br i1 %i.tw, label %.lr.ph305, label %.loopexit279, !llvm.loop !26

.loopexit279:                                     ; preds = %.lr.ph305, %.loopexit280
  %i.tx = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.ty = load ptr, ptr %i.kw, align 8
  %.not153 = icmp eq ptr %i.tx, %i.ty
  br i1 %.not153, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.loopexit279
  %i.tz = getelementptr inbounds i8, ptr %i.tx, i64 -24
  %i.ua = load double, ptr %i.t, align 8          ; 2 uses
  %i.ub = load double, ptr %i.tz, align 8         ; 2 uses
  %i.uc = fcmp olt double %i.ua, %i.ub
  %i.ud = select i1 %i.uc, double %i.ub, double %i.ua
  store double %i.ud, ptr %i.t, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit279
  %i.ue = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.uf = load ptr, ptr %i.mb, align 8
  %.not154 = icmp eq ptr %i.ue, %i.uf
  br i1 %.not154, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 -32
  %i.uh = load double, ptr %i.t, align 8          ; 2 uses
  %i.ui = load double, ptr %i.ug, align 8         ; 2 uses
  %i.uj = fcmp olt double %i.uh, %i.ui
  %i.uk = select i1 %i.uj, double %i.ui, double %i.uh
  store double %i.uk, ptr %i.t, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ul = load ptr, ptr %i.ta, align 8            ; 2 uses
  %i.um = load ptr, ptr %i.sz, align 8
  %.not155 = icmp eq ptr %i.ul, %i.um
  br i1 %.not155, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.un = getelementptr inbounds i8, ptr %i.ul, i64 -24
  %i.uo = load double, ptr %i.t, align 8          ; 2 uses
  %i.up = load double, ptr %i.un, align 8         ; 2 uses
  %i.uq = fcmp olt double %i.uo, %i.up
  %i.ur = select i1 %i.uq, double %i.up, double %i.uo
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.aw
  %.sink = phi double [ %i.ur, %bb.aw ], [ %i.fl, %._crit_edge ]
  store double %.sink, ptr %i.t, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.av
  %i.us = add i32 %.0133306, 1                    ; 2 uses
  %i.ut = zext i32 %i.us to i64                   ; 2 uses
  %i.uu = load ptr, ptr %i.p, align 8
  %i.uv = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = ashr exact i64 %i.uy, 3
  %i.va = icmp ugt i64 %i.uz, %i.ut
  br i1 %i.va, label %.lr.ph308, label %.loopexit285, !llvm.loop !27

.loopexit285:                                     ; preds = %bb.ax, %bb.k, %bb.b
  %.sroa.19264.2 = phi ptr [ %.sroa.19264.0309, %bb.b ], [ %.sroa.19264.5, %bb.k ], [ %.sroa.19264.5, %bb.ax ] ; 3 uses
  %.sroa.12259.1 = phi ptr [ %.sroa.12259.0310, %bb.b ], [ %.sroa.12259.2, %bb.k ], [ %.sroa.12259.2, %bb.ax ] ; 3 uses
  %.sroa.0252.2 = phi ptr [ %.sroa.0252.0311, %bb.b ], [ %.sroa.0252.5, %bb.k ], [ %.sroa.0252.5, %bb.ax ] ; 7 uses
  %i.vb = add i32 %.0127312, 1                    ; 2 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = load ptr, ptr %i.b, align 8
  %i.ve = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 3
  %i.vj = icmp ugt i64 %i.vi, %i.vc
  br i1 %i.vj, label %bb.b, label %._crit_edge315, !llvm.loop !28

bb.ay:                                            ; preds = %._crit_edge315
  %i.vk = trunc i64 %i.i to i32
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.vk, ptr %i.vl, align 8
  %i.vm = and i64 %i.h, 34359738360
  %i.vn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vm) #21
          to label %.lr.ph321.preheader unwind label %bb.az

.lr.ph321.preheader:                              ; preds = %bb.ay
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.vn, ptr %i.vo, align 8
  br label %.lr.ph321

bb.az:                                            ; preds = %bb.ay
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %i.vq = phi i64 [ 0, %.lr.ph321.preheader ], [ %indvars.iv.next343, %.lr.ph321 ] ; 3 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0252.2, i64 %i.vq
  %i.vs = load ptr, ptr %i.vr, align 8
  %i.vt = load ptr, ptr %i.vo, align 8
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vq
  store ptr %i.vs, ptr %i.vu, align 8
  %indvars.iv.next343 = add i64 %i.vq, 1          ; 2 uses
  %3 = and i64 %indvars.iv.next343, 4294967295
  %i.vv = icmp ugt i64 %i.i, %3
  br i1 %i.vv, label %.lr.ph321, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph321, %._crit_edge315
  %.not.i.i.i166 = icmp eq ptr %.sroa.0252.2, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.vw = ptrtoint ptr %.sroa.19264.2 to i64
  %i.vx = sub i64 %i.vw, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.2, i64 noundef %i.vx) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit

_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit:     ; preds = %bb.a, %.loopexit, %bb.ba
  ret void

bb.bb:                                            ; preds = %.loopexit286, %.loopexit.split-lp, %bb.w, %bb.az
  %.sroa.19264.4 = phi ptr [ %.sroa.19264.2, %bb.az ], [ %.sroa.19264.5, %bb.w ], [ %.sroa.19264.1.ph, %.loopexit286 ], [ %.sroa.12259.0310, %.loopexit.split-lp ]
  %.sroa.0252.4 = phi ptr [ %.sroa.0252.2, %bb.az ], [ %.sroa.0252.5, %bb.w ], [ %.sroa.0252.1.ph, %.loopexit286 ], [ %.sroa.0252.0311, %.loopexit.split-lp ] ; 3 uses
  %.pn149.pn.pn = phi { ptr, i32 } [ %i.vp, %bb.az ], [ %i.fm, %bb.w ], [ %lpad.loopexit, %.loopexit286 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i167 = icmp eq ptr %.sroa.0252.4, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168, label %.thread

.thread:                                          ; preds = %bb.bb
  %i.vy = ptrtoint ptr %.sroa.19264.4 to i64
  %i.vz = ptrtoint ptr %.sroa.0252.4 to i64
  %i.wa = sub i64 %i.vy, %i.vz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.4, i64 noundef %i.wa) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168

_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168:  ; preds = %bb.bb, %.thread
  resume { ptr, i32 } %.pn149.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %.lr.ph802

._crit_edge803:                                   ; preds = %.loopexit446
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = ptrtoint ptr %.sroa.12386.3 to i64
  %i.k = ptrtoint ptr %.sroa.0379.6 to i64        ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, %i.i                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  %i.p = shl i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #21
          to label %bb.eh unwind label %bb.ej     ; 2 uses

.lr.ph802:                                        ; preds = %bb.a, %.loopexit446
  %i.s = phi ptr [ %i.acz, %.loopexit446 ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = phi ptr [ %i.ada, %.loopexit446 ], [ %i.c, %bb.a ]
  %i.u = phi i64 [ %i.adc, %.loopexit446 ], [ 0, %bb.a ]
  %.0146801 = phi i32 [ %i.adb, %.loopexit446 ], [ 0, %bb.a ]
  %.sroa.0379.0800 = phi ptr [ %.sroa.0379.6, %.loopexit446 ], [ null, %bb.a ] ; 3 uses
  %.sroa.12386.0799 = phi ptr [ %.sroa.12386.3, %.loopexit446 ], [ null, %bb.a ] ; 2 uses
  %.sroa.19.0798 = phi ptr [ %.sroa.19.6, %.loopexit446 ], [ null, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 48 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit446, label %bb.b

bb.b:                                             ; preds = %.lr.ph802
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 552 ; 3 uses
  invoke void @_ZN6Assimp13XFileImporter16ConvertMaterialsEP7aiSceneRSt6vectorINS_5XFile8MaterialESaIS5_EE(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 112
  %i.ag = trunc i64 %i.af to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 528 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 536 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 336 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 576 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 584 ; 2 uses
  %wide.trip.count1037 = zext i32 %.sroa.speculated to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 160 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 184 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 280 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 304 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 360 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 384 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 408 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 432 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 456 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 480 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 504 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

bb.e:                                             ; preds = %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit247
  %indvars.iv1034.a = phi i64 [ 0, %bb.c ], [ %indvars.iv.next1035.a, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 3 uses
  %.sroa.0379.1795 = phi ptr [ %.sroa.0379.0800, %bb.c ], [ %.sroa.0379.31146, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 14 uses
  %.sroa.12386.1794 = phi ptr [ %.sroa.12386.0799, %bb.c ], [ %.sroa.12386.21145, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 8 uses
  %.sroa.19.1792 = phi ptr [ %.sroa.19.0798, %bb.c ], [ %.sroa.19.31144, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 9 uses
  %i.ca = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.preheader432, label %.lr.ph

.preheader432:                                    ; preds = %bb.e
  %i.cd = load ptr, ptr %i.ak, align 8
  %i.ce = load ptr, ptr %i.aj, align 8
  %.not813 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not813, label %_ZNSt6vectorIjSaIjEED2Ev.exit247, label %.lr.ph756

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %i.cf = phi ptr [ %i.dl, %bb.l ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cg = phi ptr [ %i.dm, %bb.l ], [ %i.cb, %bb.e ]
  %i.ch = phi i64 [ %i.do, %bb.l ], [ 0, %bb.e ]  ; 2 uses
  %.0161747 = phi i32 [ %.1162, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %storemerge746 = phi i32 [ %i.dn, %bb.l ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0357.0745 = phi ptr [ %.sroa.0357.1, %bb.l ], [ null, %bb.e ] ; 8 uses
  %.sroa.13364.0744 = phi ptr [ %.sroa.13364.1, %bb.l ], [ null, %bb.e ] ; 7 uses
  %.sroa.23370.0743 = phi ptr [ %.sroa.23370.1, %bb.l ], [ null, %bb.e ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp eq i64 %indvars.iv1034.a, %i.ck
  br i1 %i.cl, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.13364.0744, %.sroa.23370.0743
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %storemerge746, ptr %.sroa.13364.0744, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.cm = ptrtoint ptr %.sroa.13364.0744 to i64
  %i.cn = ptrtoint ptr %.sroa.0357.0745 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775804
  br i1 %i.cp, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc unwind label %.loopexit.split-lp442

.noexc:                                           ; preds = %bb.i
  unreachable

end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yw, i64 %i.zj ; 2 uses
  %next.gep1586 = getelementptr i8, ptr %.sroa.0.0775, i64 %i.zj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.zk = getelementptr i8, ptr %next.gep1586, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1586, align 4, !alias.scope !39, !noalias !36
  %wide.load1587 = load <2 x i64>, ptr %i.zk, align 4, !alias.scope !39, !noalias !36
  %i.zl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load1587, ptr %i.zl, align 4, !alias.scope !36, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.zm = icmp eq i64 %index.next, %n.vec
  br i1 %i.zm, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ze, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.preheader1589

.lr.ph.i.i.i.i.i.preheader1589:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.yw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.zh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0.0775, %.lr.ph.i.i.i.i.i.preheader ], [ %i.zi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1589, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.zp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1589 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.zo, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1589 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.zn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.zn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.zo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.zo, %.sroa.23.0777
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc230
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.yw, %.noexc230 ], [ %i.zh, %middle.block ], [ %i.zp, %.lr.ph.i.i.i.i.i ]
  %i.zq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0775, i64 noundef %i.yo) #19
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yu
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit

.loopexit418:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.loopexit.split-lp:                               ; preds = %bb.dl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.dj, %bb.dh
  %.sroa.0.1 = phi ptr [ %.sroa.0.0775, %bb.dh ], [ %i.yw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0.0775, %bb.dj ] ; 8 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0776, %bb.dh ], [ %i.zq, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.yl, %bb.dj ] ; 3 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.0777, %bb.dh ], [ %i.zr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.23.0777, %bb.dj ] ; 4 uses
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1032, %i.gh
  br i1 %exitcond.not, label %bb.dg, label %bb.dh, !llvm.loop !43

bb.dm:                                            ; preds = %bb.dg
  %i.zs = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #21
          to label %bb.dn unwind label %.loopexit424 ; 14 uses

bb.dn:                                            ; preds = %bb.dm
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.zs, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.zt, align 4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 1060
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.zu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zv, align 4
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 1080
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zx, align 4
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zs, i64 1100
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zs, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.zy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zz, align 4
  %.not.i231 = icmp eq ptr %.sroa.11.0783, %.sroa.18.0784
  br i1 %.not.i231, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store ptr %i.zs, ptr %.sroa.11.0783, align 8
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

bb.dp:                                            ; preds = %bb.dn
  %i.aaa = ptrtoint ptr %.sroa.18.0784 to i64
  %i.aab = ptrtoint ptr %.sroa.0296.0782 to i64
  %i.aac = sub i64 %i.aaa, %i.aab                 ; 6 uses
  %i.aad = icmp eq i64 %i.aac, 9223372036854775800
  br i1 %i.aad, label %bb.dq, label %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc235 unwind label %.loopexit.split-lp425

.noexc235:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dp
  %i.aae = ashr exact i64 %i.aac, 3               ; 3 uses
  %.sroa.speculated.i.i.i232 = tail call i64 @llvm.umax.i64(i64 %i.aae, i64 1)
  %i.aaf = add nsw i64 %.sroa.speculated.i.i.i232, %i.aae ; 2 uses
  %i.aag = icmp ult i64 %i.aaf, %i.aae
  %i.aah = tail call i64 @llvm.umin.i64(i64 %i.aaf, i64 1152921504606846975)
  %i.aai = select i1 %i.aag, i64 1152921504606846975, i64 %i.aah ; 3 uses
  %.not.i.i.i233 = icmp ne i64 %i.aai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i233)
  %i.aaj = shl nuw nsw i64 %i.aai, 3
  %i.aak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaj) #21
          to label %.noexc236 unwind label %.loopexit424 ; 4 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 %i.aac ; 2 uses
  store ptr %i.zs, ptr %i.aal, align 8
  %i.aam = icmp sgt i64 %i.aac, 0
  br i1 %i.aam, label %bb.dr, label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dr:                                            ; preds = %.noexc236
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aak, ptr align 8 %.sroa.0296.0782, i64 %i.aac, i1 false)
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dr, %.noexc236
  %.not.i17.i.i234 = icmp eq ptr %.sroa.0296.0782, null
  br i1 %.not.i17.i.i234, label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0782, i64 noundef %i.aac) #19
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ds, %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.aai
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.do
  %.sroa.0296.6 = phi ptr [ %i.aak, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0296.0782, %bb.do ] ; 2 uses
  %.pn414 = phi ptr [ %i.aal, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0783, %bb.do ]
  %.sroa.18.6 = phi ptr [ %i.aan, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0784, %bb.do ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn414, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.aap = load i64, ptr %i.aao, align 8          ; 4 uses
  %i.aaq = icmp ugt i64 %i.aap, 1023
  br i1 %i.aaq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit
  %i.aar = trunc nuw nsw i64 %i.aap to i32
  store i32 %i.aar, ptr %i.zs, align 4
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zs, i64 4 ; 2 uses
  %i.aat = load ptr, ptr %i.wt, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aas, ptr align 1 %i.aat, i64 %i.aap, i1 false)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aap
  store i8 0, ptr %i.aau, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit, %bb.dt
  %i.aav = getelementptr inbounds nuw i8, ptr %i.wt, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.zt, ptr noundef nonnull align 8 dereferenceable(64) %i.aav, i64 64, i1 false)
  %i.aaw = ptrtoint ptr %.sroa.14.1 to i64
  %i.aax = ptrtoint ptr %.sroa.0.1 to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = ashr exact i64 %i.aay, 3               ; 3 uses
  %i.aba = trunc i64 %i.aaz to i32
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zs, i64 1028
  store i32 %i.aba, ptr %i.abb, align 4
  %i.abc = and i64 %i.aaz, 4294967295             ; 2 uses
  %i.abd = shl nuw nsw i64 %i.abc, 3              ; 2 uses
  %i.abe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abd) #21
          to label %bb.du unwind label %.loopexit424 ; 2 uses

bb.du:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237
  %i.abf = icmp eq i64 %i.abc, 0
  br i1 %i.abf, label %.lr.ph781.preheader, label %.loopexit417.loopexit

.loopexit417.loopexit:                            ; preds = %bb.du
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.abe, i8 0, i64 %i.abd, i1 false)
  br label %.lr.ph781.preheader

.lr.ph781.preheader:                              ; preds = %bb.du, %.loopexit417.loopexit
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zs, i64 1048 ; 2 uses
  store ptr %i.abe, ptr %i.abg, align 8
  br label %.lr.ph781

.loopexit424:                                     ; preds = %bb.dm, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0296.1.ph = phi ptr [ %.sroa.0296.0782, %bb.dm ], [ %.sroa.0296.0782, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0296.6, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237 ]
  %.sroa.18.1.ph = phi ptr [ %.sroa.18.0784, %bb.dm ], [ %.sroa.18.0784, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.6, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237 ]
  %lpad.loopexit426 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.loopexit.split-lp425:                            ; preds = %bb.dq
  %lpad.loopexit.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.lr.ph781:                                        ; preds = %.lr.ph781.preheader, %.lr.ph781
  %i.abh = phi i64 [ 0, %.lr.ph781.preheader ], [ %indvars.iv.next1035, %.lr.ph781 ] ; 3 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %i.abh
  %i.abj = load ptr, ptr %i.abg, align 8
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %i.abh
  %i.abl = load i64, ptr %i.abi, align 4
  store i64 %i.abl, ptr %i.abk, align 4
  %indvars.iv.next1035 = add i64 %i.abh, 1        ; 2 uses
  %4 = and i64 %indvars.iv.next1035, 4294967295
  %i.abm = icmp ugt i64 %i.aaz, %4
  br i1 %i.abm, label %.lr.ph781, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !llvm.loop !44

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.lr.ph781, %bb.dg
  %.sroa.0296.2 = phi ptr [ %.sroa.0296.0782, %bb.dg ], [ %.sroa.0296.6, %.lr.ph781 ] ; 8 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0783, %bb.dg ], [ %.sroa.11.2, %.lr.ph781 ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0784, %bb.dg ], [ %.sroa.18.6, %.lr.ph781 ] ; 3 uses
  %i.abn = ptrtoint ptr %.sroa.23.1 to i64
  %i.abo = ptrtoint ptr %.sroa.0.1 to i64
  %i.abp = sub i64 %i.abn, %i.abo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.abp) #19
  %i.abq = ptrtoint ptr %.sroa.0291.0 to i64
  %i.abr = sub i64 %.sroa.13.0, %i.abq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0291.0, i64 noundef %i.abr) #19
  %i.abs = add i32 %.0158785, 1                   ; 2 uses
  %i.abt = zext i32 %i.abs to i64                 ; 2 uses
  %i.abu = load ptr, ptr %i.au, align 8
  %i.abv = load ptr, ptr %i.at, align 8           ; 2 uses
  %i.abw = ptrtoint ptr %i.abu to i64
  %i.abx = ptrtoint ptr %i.abv to i64
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = sdiv exact i64 %i.aby, 120
  %i.aca = icmp ugt i64 %i.abz, %i.abt
  br i1 %i.aca, label %bb.dc, label %._crit_edge788, !llvm.loop !45

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread: ; preds = %.loopexit424, %.loopexit.split-lp425, %.loopexit418, %.loopexit.split-lp
  %.sroa.0.0483 = phi ptr [ %.sroa.0.0775, %.loopexit.split-lp ], [ %.sroa.0.0775, %.loopexit418 ], [ %.sroa.0.1, %.loopexit424 ], [ %.sroa.0.1, %.loopexit.split-lp425 ] ; 2 uses
  %.sroa.23.0475 = phi ptr [ %.sroa.23.0777, %.loopexit.split-lp ], [ %.sroa.23.0777, %.loopexit418 ], [ %.sroa.23.1, %.loopexit424 ], [ %.sroa.23.1, %.loopexit.split-lp425 ]
  %.sroa.0296.3 = phi ptr [ %.sroa.0296.0782, %.loopexit.split-lp ], [ %.sroa.0296.0782, %.loopexit418 ], [ %.sroa.0296.1.ph, %.loopexit424 ], [ %.sroa.0296.0782, %.loopexit.split-lp425 ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.0784, %.loopexit.split-lp ], [ %.sroa.18.0784, %.loopexit418 ], [ %.sroa.18.1.ph, %.loopexit424 ], [ %.sroa.18.0784, %.loopexit.split-lp425 ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit418 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ]
  %i.acb = ptrtoint ptr %.sroa.23.0475 to i64
  %i.acc = ptrtoint ptr %.sroa.0.0483 to i64
  %i.acd = sub i64 %i.acb, %i.acc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0483, i64 noundef %i.acd) #19
  br label %bb.dv

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241: ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.ace = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %.sroa.0291.0, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIfSaIfEED2Ev.exit243, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241
  %.sroa.0296.33991132 = phi ptr [ %.sroa.0296.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %.sroa.0296.0782, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %.sroa.18.34001131 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %.sroa.18.0784, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %.pn4011130 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %i.ace, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %i.acf = ptrtoint ptr %.sroa.0291.0 to i64
  %i.acg = sub i64 %.sroa.13.0, %i.acf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0291.0, i64 noundef %i.acg) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

bb.dw:                                            ; preds = %._crit_edge788
  %i.ach = and i64 %i.wm, 34359738360
  %i.aci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ach) #21
          to label %bb.dx unwind label %bb.ea     ; 3 uses

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.aci, ptr %i.fh, align 8
  %i.acj = icmp sgt i64 %i.wm, 8
  br i1 %i.acj, label %bb.dy, label %bb.dz, !prof !46

bb.dy:                                            ; preds = %bb.dx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aci, ptr align 8 %.sroa.0296.2, i64 %i.wm, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.ack = icmp eq i64 %i.wm, 8
  br i1 %i.ack, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread: ; preds = %bb.dz
  %i.acl = load ptr, ptr %.sroa.0296.2, align 8
  store ptr %i.acl, ptr %i.aci, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dw
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.dz, %bb.dy, %._crit_edge788
  %.not.i.i.i244 = icmp eq ptr %.sroa.0296.2, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.acn = ptrtoint ptr %.sroa.18.2 to i64
  %i.aco = sub i64 %i.acn, %i.wl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.2, i64 noundef %i.aco) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread1133, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.me) #19
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit433, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.19.3 = phi ptr [ %.sroa.19.1792, %.loopexit433 ], [ %.sroa.19.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.sroa.12386.2 = phi ptr [ %.sroa.12386.1794, %.loopexit433 ], [ %.sroa.12386.4, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.sroa.0379.3 = phi ptr [ %.sroa.0379.1795, %.loopexit433 ], [ %.sroa.0379.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %.sroa.0357.3, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIjSaIjEED2Ev.exit247, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.acp = ptrtoint ptr %.sroa.23370.3 to i64
  %i.acq = ptrtoint ptr %.sroa.0357.3 to i64
  %i.acr = sub i64 %i.acp, %i.acq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.3, i64 noundef %i.acr) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit247

_ZNSt6vectorIjSaIjEED2Ev.exit247:                 ; preds = %.preheader432, %bb.ec, %bb.ed
  %.sroa.0379.31146 = phi ptr [ %.sroa.0379.3, %bb.ed ], [ %.sroa.0379.3, %bb.ec ], [ %.sroa.0379.1795, %.preheader432 ] ; 2 uses
  %.sroa.12386.21145 = phi ptr [ %.sroa.12386.2, %bb.ed ], [ %.sroa.12386.2, %bb.ec ], [ %.sroa.12386.1794, %.preheader432 ] ; 2 uses
  %.sroa.19.31144 = phi ptr [ %.sroa.19.3, %bb.ed ], [ %.sroa.19.3, %bb.ec ], [ %.sroa.19.1792, %.preheader432 ] ; 2 uses
  %indvars.iv.next1035.a = add nuw nsw i64 %indvars.iv1034.a, 1 ; 2 uses
  %exitcond1038.not = icmp eq i64 %indvars.iv.next1035.a, %wide.trip.count1037
  br i1 %exitcond1038.not, label %.loopexit446.loopexit, label %bb.e, !llvm.loop !47

_ZNSt6vectorIfSaIfEED2Ev.exit243:                 ; preds = %.loopexit419, %.loopexit.split-lp420, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241, %bb.dv, %bb.ea
  %.sroa.0296.5 = phi ptr [ %.sroa.0296.2, %bb.ea ], [ %.sroa.0296.33991132, %bb.dv ], [ %.sroa.0296.0782, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %.sroa.0296.0782, %.loopexit419 ], [ %.sroa.0296.0782, %.loopexit.split-lp420 ] ; 3 uses
  %.sroa.18.5 = phi ptr [ %.sroa.18.2, %bb.ea ], [ %.sroa.18.34001131, %bb.dv ], [ %.sroa.18.0784, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %.sroa.18.0784, %.loopexit419 ], [ %.sroa.18.0784, %.loopexit.split-lp420 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.acm, %bb.ea ], [ %.pn4011130, %bb.dv ], [ %i.ace, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ] ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.sroa.0296.5, null
  br i1 %.not.i.i.i248, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit243
  %i.acs = ptrtoint ptr %.sroa.18.5 to i64
  %i.act = ptrtoint ptr %.sroa.0296.5 to i64
  %i.acu = sub i64 %i.acs, %i.act
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.5, i64 noundef %i.acu) #19
  br label %bb.ef

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249:        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.ef:                                            ; preds = %bb.cf, %_ZNSt6vectorIfSaIfEED2Ev.exit243, %bb.ee
  %.pn191.ph = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ee ], [ %.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit243 ], [ %i.nh, %bb.cf ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.me) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

_ZNSt6vectorIjSaIjEED2Ev.exit251:                 ; preds = %.loopexit447, %.loopexit.split-lp448, %.loopexit434, %.loopexit.split-lp435, %.loopexit441, %.loopexit.split-lp442, %bb.aj, %bb.bh, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249, %bb.ef
  %.sroa.23370.4 = phi ptr [ %.sroa.13364.0744, %.loopexit.split-lp442 ], [ %.sroa.13364.2752, %.loopexit.split-lp435 ], [ %.sroa.23370.3, %bb.ef ], [ %.sroa.23370.3, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249 ], [ %.sroa.23370.3, %bb.bh ], [ %.sroa.23370.3, %bb.aj ], [ %.sroa.13364.0744, %.loopexit441 ], [ %.sroa.13364.2752, %.loopexit434 ], [ %.sroa.23370.3, %.loopexit447 ], [ %.sroa.23370.3, %.loopexit.split-lp448 ]
  %.sroa.0357.4 = phi ptr [ %.sroa.0357.0745, %.loopexit.split-lp442 ], [ %.sroa.0357.2753, %.loopexit.split-lp435 ], [ %.sroa.0357.3, %bb.ef ], [ %.sroa.0357.3, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249 ], [ %.sroa.0357.3, %bb.bh ], [ %.sroa.0357.3, %bb.aj ], [ %.sroa.0357.0745, %.loopexit441 ], [ %.sroa.0357.2753, %.loopexit434 ], [ %.sroa.0357.3, %.loopexit447 ], [ %.sroa.0357.3, %.loopexit.split-lp448 ] ; 3 uses
  %.sroa.19.5 = phi ptr [ %.sroa.19.1792, %.loopexit.split-lp442 ], [ %.sroa.19.1792, %.loopexit.split-lp435 ], [ %.sroa.19.8, %bb.ef ], [ %.sroa.19.8, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249 ], [ %.sroa.19.8, %bb.bh ], [ %.sroa.19.8, %bb.aj ], [ %.sroa.19.1792, %.loopexit441 ], [ %.sroa.19.1792, %.loopexit434 ], [ %.sroa.19.2.ph, %.loopexit447 ], [ %.sroa.12386.1794, %.loopexit.split-lp448 ] ; 2 uses
  %.sroa.0379.5 = phi ptr [ %.sroa.0379.1795, %.loopexit.split-lp442 ], [ %.sroa.0379.1795, %.loopexit.split-lp435 ], [ %.sroa.0379.8, %bb.ef ], [ %.sroa.0379.8, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249 ], [ %.sroa.0379.8, %bb.bh ], [ %.sroa.0379.8, %bb.aj ], [ %.sroa.0379.1795, %.loopexit441 ], [ %.sroa.0379.1795, %.loopexit434 ], [ %.sroa.0379.2.ph, %.loopexit447 ], [ %.sroa.0379.1795, %.loopexit.split-lp448 ] ; 2 uses
  %.pn196 = phi { ptr, i32 } [ %lpad.loopexit.split-lp444, %.loopexit.split-lp442 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp435 ], [ %.pn191.ph, %bb.ef ], [ %i.acv, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit249 ], [ %i.ku, %bb.bh ], [ %i.ip, %bb.aj ], [ %lpad.loopexit443, %.loopexit441 ], [ %lpad.loopexit436, %.loopexit434 ], [ %lpad.loopexit449, %.loopexit447 ], [ %lpad.loopexit.split-lp450, %.loopexit.split-lp448 ] ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %.sroa.0357.4, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorIjSaIjEED2Ev.exit253, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit251
  %i.acw = ptrtoint ptr %.sroa.23370.4 to i64
  %i.acx = ptrtoint ptr %.sroa.0357.4 to i64
  %i.acy = sub i64 %i.acw, %i.acx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.4, i64 noundef %i.acy) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

.loopexit446.loopexit:                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit247
  %.pre1056 = load ptr, ptr %i.b, align 8
  %.pre1057 = load ptr, ptr %3, align 8
  br label %.loopexit446

.loopexit446:                                     ; preds = %.loopexit446.loopexit, %.lr.ph802
  %i.acz = phi ptr [ %i.s, %.lr.ph802 ], [ %.pre1057, %.loopexit446.loopexit ] ; 2 uses
  %i.ada = phi ptr [ %i.t, %.lr.ph802 ], [ %.pre1056, %.loopexit446.loopexit ] ; 2 uses
  %.sroa.19.6 = phi ptr [ %.sroa.19.0798, %.lr.ph802 ], [ %.sroa.19.31144, %.loopexit446.loopexit ] ; 3 uses
  %.sroa.12386.3 = phi ptr [ %.sroa.12386.0799, %.lr.ph802 ], [ %.sroa.12386.21145, %.loopexit446.loopexit ] ; 3 uses
  %.sroa.0379.6 = phi ptr [ %.sroa.0379.0800, %.lr.ph802 ], [ %.sroa.0379.31146, %.loopexit446.loopexit ] ; 7 uses
  %i.adb = add i32 %.0146801, 1                   ; 2 uses
  %i.adc = zext i32 %i.adb to i64                 ; 2 uses
  %i.add = ptrtoint ptr %i.ada to i64
  %i.ade = ptrtoint ptr %i.acz to i64
  %i.adf = sub i64 %i.add, %i.ade
  %i.adg = ashr exact i64 %i.adf, 3
  %i.adh = icmp ugt i64 %i.adg, %i.adc
  br i1 %i.adh, label %.lr.ph802, label %._crit_edge803, !llvm.loop !48

bb.eh:                                            ; preds = %._crit_edge803
  store ptr %i.r, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adi = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.f, i64 %i.adi, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #19
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ek, %._crit_edge803
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

bb.ek:                                            ; preds = %bb.ei, %bb.eh
  %i.adk = trunc i64 %i.m to i32
  %i.adl = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.adk, ptr %i.adl, align 8
  %i.adm = lshr exact i64 %i.l, 1
  %i.adn = and i64 %i.adm, 17179869180
  %i.ado = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adn) #21
          to label %bb.el unwind label %bb.ej

bb.el:                                            ; preds = %bb.ek
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.ado, ptr %i.adp, align 8
  %.not818 = icmp eq ptr %.sroa.12386.3, %.sroa.0379.6
  br i1 %.not818, label %._crit_edge810, label %.lr.ph809.preheader

.lr.ph809.preheader:                              ; preds = %bb.el
  %.pre1058 = load i32, ptr %i.g, align 8
  br label %.lr.ph809

._crit_edge810:                                   ; preds = %bb.el
  %.not.i.i.i254 = icmp eq ptr %.sroa.0379.6, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %._crit_edge810.thread

._crit_edge810.thread:                            ; preds = %.lr.ph809, %._crit_edge810
  %i.adq = ptrtoint ptr %.sroa.19.6 to i64
  %i.adr = sub i64 %i.adq, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.6, i64 noundef %i.adr) #19
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

.lr.ph809:                                        ; preds = %.lr.ph809.preheader, %.lr.ph809
  %i.ads = phi i32 [ %.pre1058, %.lr.ph809.preheader ], [ %i.aec, %.lr.ph809 ]
  %i.adt = phi i64 [ 0, %.lr.ph809.preheader ], [ %indvars.iv.next1044, %.lr.ph809 ] ; 3 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0379.6, i64 %i.adt
  %i.adv = load ptr, ptr %i.adu, align 8
  %i.adw = load ptr, ptr %i.e, align 8
  %i.adx = zext i32 %i.ads to i64
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.adx
  store ptr %i.adv, ptr %i.ady, align 8
  %i.adz = load i32, ptr %i.g, align 8            ; 2 uses
  %i.aea = load ptr, ptr %i.adp, align 8
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.adt
  store i32 %i.adz, ptr %i.aeb, align 4
  %i.aec = add i32 %i.adz, 1                      ; 2 uses
  store i32 %i.aec, ptr %i.g, align 8
  %indvars.iv.next1044 = add i64 %i.adt, 1        ; 2 uses
  %5 = and i64 %indvars.iv.next1044, 4294967295
  %i.aed = icmp ugt i64 %i.m, %5
  br i1 %i.aed, label %.lr.ph809, label %._crit_edge810.thread, !llvm.loop !49

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %._crit_edge810.thread, %._crit_edge810, %bb.a
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit253:                 ; preds = %bb.eg, %_ZNSt6vectorIjSaIjEED2Ev.exit251, %bb.d, %bb.ej
  %.sroa.19.7 = phi ptr [ %.sroa.19.6, %bb.ej ], [ %.sroa.19.0798, %bb.d ], [ %.sroa.19.5, %_ZNSt6vectorIjSaIjEED2Ev.exit251 ], [ %.sroa.19.5, %bb.eg ]
  %.sroa.0379.7 = phi ptr [ %.sroa.0379.6, %bb.ej ], [ %.sroa.0379.0800, %bb.d ], [ %.sroa.0379.5, %_ZNSt6vectorIjSaIjEED2Ev.exit251 ], [ %.sroa.0379.5, %bb.eg ] ; 3 uses
  %.pn196.pn.pn = phi { ptr, i32 } [ %i.adj, %bb.ej ], [ %i.bz, %bb.d ], [ %.pn196, %_ZNSt6vectorIjSaIjEED2Ev.exit251 ], [ %.pn196, %bb.eg ]
  %.not.i.i.i255 = icmp eq ptr %.sroa.0379.7, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit256, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit253
  %i.aee = ptrtoint ptr %.sroa.19.7 to i64
  %i.aef = ptrtoint ptr %.sroa.0379.7 to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.7, i64 noundef %i.aeg) #19
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit256

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit256:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit253, %bb.em
  resume { ptr, i32 } %.pn196.pn.pn
}

declare void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA46_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #18
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #18
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp13XFileImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp13XFileImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp13XFileImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp13XFileImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
end_hunk_2
