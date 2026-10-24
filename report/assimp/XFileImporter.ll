Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XFileImporter?download=true
inline.NumInlined: 969
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp13XFileImporter34CreateDataRepresentationFromImportEP7aiScenePNS_5XFile5SceneE:bb.a

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
  br label %bb.z

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
  br i1 %i.x, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.v, align 8
  %i.y = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.n unwind label %bb.r       ; 8 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 2, ptr %i.a, align 4
  %i.z = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.t ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.aa, align 8
  %i.ab = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.u ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %i.ac = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42 unwind label %bb.u ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  store <2 x float> splat (float 5.000000e-01), ptr %5, align 8
  store float 5.000000e-01, ptr %i.aa, align 8
  %i.ad = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44 unwind label %bb.u ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42
  %i.ae = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.u ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44
  %i.af = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.af, ptr %i.ag, align 8
  store ptr %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.w

bb.q:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.k, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 16) #19
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit44, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit42, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ak, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.x

bb.w:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.x:                                             ; preds = %bb.r, %bb.s, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %.pn, %bb.v ], [ %i.aj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.x ], [ %i.ah, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.y ], [ %i.u, %bb.i ], [ %i.q, %bb.d ]
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
  %vec.phi203 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
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
  %i.ae = load i8, ptr %i.w, align 8
  %i.af = load i8, ptr %i.x, align 8
  %i.ag = load i8, ptr %i.y, align 8
  %i.ah = load i8, ptr %i.z, align 8
  %i.ai = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 3
  %i.am = load i8, ptr %i.aa, align 8
  %i.an = load i8, ptr %i.ab, align 8
  %i.ao = load i8, ptr %i.ac, align 8
  %i.ap = load i8, ptr %i.ad, align 8
  %i.aq = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 1
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 2
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 3
  %i.au = xor <4 x i8> %i.al, splat (i8 1)
  %i.av = xor <4 x i8> %i.at, splat (i8 1)
  %i.aw = zext nneg <4 x i8> %i.au to <4 x i32>
  %i.ax = zext nneg <4 x i8> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <4 x i32> %vec.phi203, %i.ax        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0121157.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader206 ] ; 2 uses
  %.0121157 = phi i32 [ %spec.select, %.lr.ph ], [ %.0121157.ph, %.lr.ph.preheader206 ]
  %i.bc = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !range !15, !noundef !16
  %i.bf = xor i8 %i.be, 1
  %i.bg = zext nneg i8 %i.bf to i32
  %spec.select = add i32 %.0121157, %i.bg         ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bh = and i64 %indvars.iv.next, 4294967295
  %i.bi = icmp ugt i64 %i.i, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.b:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add i32 %i.bm, %spec.select.lcssa
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #21 ; 2 uses
  store ptr %i.bq, ptr %i.bj, align 8
  %.not129 = icmp eq ptr %i.bk, null
  br i1 %.not129, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = load i32, ptr %i.bl, align 8
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bk, i64 %i.bt, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #19
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  %i.bu = load ptr, ptr %i.c, align 8
  %i.bv = load ptr, ptr %2, align 8               ; 2 uses
  %.not178 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not178, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %._crit_edge.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.d

._crit_edge176:                                   ; preds = %bb.ak, %._crit_edge.thread
  ret void

bb.d:                                             ; preds = %.lr.ph175, %bb.ak
  %i.ce = phi ptr [ %i.bv, %.lr.ph175 ], [ %i.ij, %bb.ak ]
  %i.cf = phi i64 [ 0, %.lr.ph175 ], [ %i.ih, %bb.ak ]
  %.0119173 = phi i32 [ 0, %.lr.ph175 ], [ %i.ig, %bb.ak ]
  %i.cg = getelementptr inbounds nuw [112 x i8], ptr %i.ce, i64 %i.cf ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i8, ptr %i.ch, align 8, !range !15, !noundef !16
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.ck = load i32, ptr %i.cc, align 8
  %.not181 = icmp eq i32 %i.ck, 0
  br i1 %.not181, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader, %.critedge
  %.0117171 = phi i64 [ %i.cs, %.critedge ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.cl = load ptr, ptr %i.cb, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0117171
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %3) ; 0 uses
  %i.cp = load ptr, ptr %i.cg, align 8
  %i.cq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(1) %i.cp) #22
  %.not144 = icmp eq i32 %i.cq, 0
  br i1 %.not144, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph172
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  store i64 %.0117171, ptr %i.cr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cs = add nuw nsw i64 %.0117171, 1            ; 2 uses
  %i.ct = load i32, ptr %i.cc, align 8
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %.lr.ph172, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 104 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %.loopexit
  %i.cz = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA46_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cz, ptr noundef nonnull align 1 dereferenceable(46) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 1 dereferenceable(2) @.str.14)
  store i64 0, ptr %i.cw, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.d
  %i.da = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 16 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dc = load i64, ptr %i.db, align 8            ; 4 uses
  %i.dd = icmp ugt i64 %i.dc, 1023
  br i1 %i.dd, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = trunc nuw nsw i64 %i.dc to i32
  store i32 %i.de, ptr %4, align 4
  %i.df = load ptr, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 1 %i.df, i64 %i.dc, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dc
  store i8 0, ptr %i.dg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h, %bb.i
  %i.dh = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 52 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fptosi float %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = select i1 %i.dl, i32 2, i32 3
  store i32 %i.dm, ptr %i.b, align 4
  %i.dn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  %i.dp = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %i.do, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %i.dr = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %i.dq, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.dt = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %i.ds, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.du = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %i.di, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 5 uses
  %i.dy = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp eq i64 %i.eb, 40
  br i1 %i.ec, label %bb.j, label %.preheader150

.preheader150:                                    ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not179 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not179, label %.loopexit151, label %.lr.ph170

bb.j:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ed = getelementptr inbounds i8, ptr %i.dx, i64 -32 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %.not143 = icmp eq i64 %i.ee, 0
  br i1 %.not143, label %.loopexit151, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr inbounds i8, ptr %i.dx, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.eg = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ca, i8 0, i64 1024, i1 false)
  %i.ei = and i64 %i.eg, 4294966272
  %.not.i = icmp eq i64 %i.ei, 0
  %spec.select.i = select i1 %.not.i, i32 %i.eh, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.ej = load ptr, ptr %i.ef, align 8
  %i.ek = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 1 %i.ej, i64 %i.ek, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ek
  store i8 0, ptr %i.el, align 1
  %i.em = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.en = load i8, ptr %i.em, align 8, !range !15, !noundef !16
  %i.eo = trunc nuw i8 %i.en to i1
  %. = select i1 %i.eo, i32 6, i32 1
  %i.ep = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i32 noundef %., i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit151

bb.l:                                             ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 16) #19
  br label %bb.al

.lr.ph170:                                        ; preds = %.preheader150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.er = phi ptr [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.dy, %.preheader150 ]
  %i.es = phi i64 [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 2 uses
  %.098169 = phi i32 [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ]
  %.099168 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0100167 = phi i32 [ %.2102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0103166 = phi i32 [ %.2105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0106165 = phi i32 [ %.2108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0109164 = phi i32 [ %.2111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %.0112163 = phi i32 [ %.2114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 0, %.preheader150 ] ; 8 uses
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.er, i64 %i.es ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.bx, ptr %6, align 8
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ew, ptr %i.a, align 8
  %i.ex = icmp ugt i64 %i.ew, 15
  br i1 %i.ex, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph170
  %i.ey = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ey, ptr %6, align 8
  %i.ez = load i64, ptr %i.a, align 8
  store i64 %i.ez, ptr %i.bx, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph170
  %i.fa = phi ptr [ %i.ey, %.noexc.i ], [ %i.bx, %.lr.ph170 ] ; 2 uses
  switch i64 %i.ew, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.fb = load i8, ptr %i.eu, align 1
  store i8 %i.fb, ptr %i.fa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.eu, i64 %i.ew, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.fc = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.fc, ptr %i.by, align 8
  %i.fd = load ptr, ptr %6, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ff = load i64, ptr %i.by, align 8
  %.not130 = icmp eq i64 %i.ff, 0
  br i1 %.not130, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.fg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16, i64 noundef -1, i64 noundef 2) #18 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, -1
  %spec.store.select = select i1 %i.fh, i64 0, i64 %i.fg ; 10 uses
  %i.fi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 46, i64 noundef -1) #18 ; 2 uses
  %.not131 = icmp eq i64 %i.fi, -1
  br i1 %.not131, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = load ptr, ptr %6, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  store i8 0, ptr %i.fk, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fl = load i64, ptr %i.by, align 8
  %.not180 = icmp eq i64 %i.fl, 0
  br i1 %.not180, label %._crit_edge162, label %.lr.ph161

._crit_edge162:                                   ; preds = %.lr.ph161, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.fm = load ptr, ptr %i.dv, align 8
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.es ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bz, i8 0, i64 1024, i1 false)
  %i.fr = and i64 %i.fp, 4294966272
  %.not.i145 = icmp eq i64 %i.fr, 0
  %spec.select.i146 = select i1 %.not.i145, i32 %i.fq, i32 1023 ; 2 uses
  store i32 %spec.select.i146, ptr %7, align 4
  %i.fs = load ptr, ptr %i.fn, align 8
  %i.ft = zext i32 %spec.select.i146 to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 1 %i.fs, i64 %i.ft, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ft
  store i8 0, ptr %i.fu, align 1
  %i.fv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.17, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not132 = icmp eq i64 %i.fv, -1
  br i1 %.not132, label %bb.r, label %bb.s

.lr.ph161:                                        ; preds = %bb.q, %.lr.ph161
  %i.fw = phi i64 [ %i.ge, %.lr.ph161 ], [ 0, %bb.q ]
  %.0159 = phi i32 [ %i.gd, %.lr.ph161 ], [ 0, %bb.q ]
  %i.fx = load ptr, ptr %6, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fw ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i32
  %i.gb = call i32 @tolower(i32 noundef %i.ga) #22
  %i.gc = trunc i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fy, align 1
  %i.gd = add i32 %.0159, 1                       ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = load i64, ptr %i.by, align 8
  %i.gg = icmp ugt i64 %i.gf, %i.ge
  br i1 %i.gg, label %.lr.ph161, label %._crit_edge162, !llvm.loop !10

bb.r:                                             ; preds = %._crit_edge162
  %i.gh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, i64 noundef %spec.store.select, i64 noundef 6) #18
  %.not133 = icmp eq i64 %i.gh, -1
  br i1 %.not133, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge162
  %i.gi = add i32 %.0112163, 1
  %i.gj = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 5, i32 noundef %.0112163)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.t:                                             ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.gl = load ptr, ptr %6, align 8               ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.bx
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.gn = load i64, ptr %i.bx, align 8
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.al

bb.u:                                             ; preds = %bb.r
  %i.gp = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !range !15, !noundef !16
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gs = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.19, i64 noundef %spec.store.select, i64 noundef 6) #18
  %.not134 = icmp eq i64 %i.gs, -1
  br i1 %.not134, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gt = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.20, i64 noundef %spec.store.select, i64 noundef 2) #18
  %.not135 = icmp eq i64 %i.gt, -1
  br i1 %.not135, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.gu = add i32 %.0109164, 1
  %i.gv = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef %.0109164)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.y:                                             ; preds = %bb.w
  %i.gw = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.21, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not136 = icmp eq i64 %i.gw, -1
  br i1 %.not136, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, i64 noundef %spec.store.select, i64 noundef 5) #18
  %.not137 = icmp eq i64 %i.gx, -1
  br i1 %.not137, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gy = add i32 %.0103166, 1
  %i.gz = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %.0103166)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.ab:                                            ; preds = %bb.z
  %i.ha = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not138 = icmp eq i64 %i.ha, -1
  br i1 %.not138, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, i64 noundef %spec.store.select, i64 noundef 3) #18
  %.not139 = icmp eq i64 %i.hb, -1
  br i1 %.not139, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hc = add i32 %.0100167, 1
  %i.hd = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef %.0100167)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.ae:                                            ; preds = %bb.ac
  %i.he = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, i64 noundef %spec.store.select, i64 noundef 8) #18
  %.not140 = icmp eq i64 %i.he, -1
  br i1 %.not140, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hf = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.26, i64 noundef %spec.store.select, i64 noundef 4) #18
  %.not141 = icmp eq i64 %i.hf, -1
  br i1 %.not141, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hg = add i32 %.099168, 1
  %i.hh = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %.099168)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.ah:                                            ; preds = %bb.af
  %i.hi = add i32 %.0106165, 1
  %i.hj = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef %.0106165)
          to label %bb.ai unwind label %bb.t      ; 0 uses

bb.ai:                                            ; preds = %bb.x, %bb.ad, %bb.ah, %bb.ag, %bb.aa, %bb.s
  %.1113 = phi i32 [ %i.gi, %bb.s ], [ %.0112163, %bb.x ], [ %.0112163, %bb.aa ], [ %.0112163, %bb.ad ], [ %.0112163, %bb.ag ], [ %.0112163, %bb.ah ]
  %.1110 = phi i32 [ %.0109164, %bb.s ], [ %i.gu, %bb.x ], [ %.0109164, %bb.aa ], [ %.0109164, %bb.ad ], [ %.0109164, %bb.ag ], [ %.0109164, %bb.ah ]
  %.1107 = phi i32 [ %.0106165, %bb.s ], [ %.0106165, %bb.x ], [ %.0106165, %bb.aa ], [ %.0106165, %bb.ad ], [ %.0106165, %bb.ag ], [ %i.hi, %bb.ah ]
  %.1104 = phi i32 [ %.0103166, %bb.s ], [ %.0103166, %bb.x ], [ %i.gy, %bb.aa ], [ %.0103166, %bb.ad ], [ %.0103166, %bb.ag ], [ %.0103166, %bb.ah ]
  %.1101 = phi i32 [ %.0100167, %bb.s ], [ %.0100167, %bb.x ], [ %.0100167, %bb.aa ], [ %i.hc, %bb.ad ], [ %.0100167, %bb.ag ], [ %.0100167, %bb.ah ]
  %.1 = phi i32 [ %.099168, %bb.s ], [ %.099168, %bb.x ], [ %.099168, %bb.aa ], [ %.099168, %bb.ad ], [ %i.hg, %bb.ag ], [ %.099168, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.ai
  %.2114 = phi i32 [ %.1113, %bb.ai ], [ %.0112163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.2111 = phi i32 [ %.1110, %bb.ai ], [ %.0109164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.2108 = phi i32 [ %.1107, %bb.ai ], [ %.0106165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.2105 = phi i32 [ %.1104, %bb.ai ], [ %.0103166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.2102 = phi i32 [ %.1101, %bb.ai ], [ %.0100167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.2 = phi i32 [ %.1, %bb.ai ], [ %.099168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %i.hk = load ptr, ptr %6, align 8               ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.bx
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.aj
  %i.hm = load i64, ptr %i.bx, align 8
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ho = add i32 %.098169, 1                     ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = load ptr, ptr %i.dw, align 8
  %i.hr = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 40
  %i.hw = icmp ugt i64 %i.hv, %i.hp
  br i1 %i.hw, label %.lr.ph170, label %.loopexit151, !llvm.loop !11

.loopexit151:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %.preheader150, %bb.j, %bb.k
  %i.hx = load ptr, ptr %i.cb, align 8
  %i.hy = load i32, ptr %i.cc, align 8
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  store ptr %i.da, ptr %i.ia, align 8
  %i.ib = load i32, ptr %i.cc, align 8
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  store i64 %i.ic, ptr %i.id, align 8
  %i.ie = load i32, ptr %i.cc, align 8
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.f, %.loopexit151
  %i.ig = add i32 %.0119173, 1                    ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = load ptr, ptr %i.c, align 8
  %i.ij = load ptr, ptr %2, align 8               ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = sdiv exact i64 %i.im, 112
  %i.io = icmp ugt i64 %i.in, %i.ih
  br i1 %i.io, label %bb.d, label %._crit_edge176, !llvm.loop !12

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eq, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13XFileImporter11CreateNodesEP7aiSceneP6aiNodePKNS_5XFile4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 13 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load ptr, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.g, i64 %i.c, i1 false)
  %i.h = and i64 %i.c, 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  tail call void @_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 %i.v, ptr %i.w, align 8
  %i.x = and i64 %i.t, 34359738360
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not37 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not37, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #19
  resume { ptr, i32 } %i.ac
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJRA2_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %5, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %5, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #18
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #18
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !72
  store i8 0, ptr %i.c, align 8, !alias.scope !72
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !72 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !72 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !72 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !72 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !72
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #18
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #18
  resume { ptr, i32 } %i.p
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = distinct !{null}
!6 = distinct !{null, null}
!7 = distinct !{!7, !3, !13, !14}
!8 = distinct !{!8, !3, !13}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, i1 true, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!23 = distinct !{!23, !22, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3}
!27 = distinct !{!27, !3}
!28 = distinct !{!28, !3}
!29 = !{!23}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, i1 true, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !3}
!40 = distinct !{!40, !3}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = !{!37}
!47 = !{!38}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{ptr @_ZN6Assimp13XFileImporterD2Ev}
!50 = distinct !{!50, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!51 = distinct !{!51, !50, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!53 = distinct !{!53, !52, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!55 = distinct !{!55, !54, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!56 = !{!51}
!57 = !{!53}
!58 = !{!55}
!59 = !{!55, !53, !51}
!60 = distinct !{!60, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!61 = distinct !{!61, !60, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!63 = distinct !{!63, !62, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = distinct !{!65, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!67 = distinct !{!67, !66, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!68 = !{!61}
!69 = !{!63}
!70 = !{!65}
!71 = !{!67}
!72 = !{!67, !65, !63, !61}
end_hunk_1
