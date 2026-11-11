Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter24ConvertWeightsToSkeletonEP6aiMeshRKNS0_12MeshGeometryERK12aiMatrix4x4tIfEP6aiNodejPSt6vectorIjSaIjEERNS0_21SkeletonBoneContainerE:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.g, label %._crit_edge, !llvm.loop !532

bb.n:                                             ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !534 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp3FBX8Geometry14GetBlendShapesEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry10GetNormalsEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

declare noundef ptr @_ZN6Assimp16aiCreateAnimMeshEPK6aiMeshbbbbb(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry10GetIndicesEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15FixAnimMeshNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !537 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.168, i64 noundef 0, i64 noundef 2) #27 ; 3 uses
  %.not18 = icmp ne i64 %i.e, -1
  %.pr.pr = load i64, ptr %i.c, align 8           ; 9 uses
  %i.f = add i64 %.pr.pr, -2
  %i.g = icmp ult i64 %i.e, %i.f
  %or.cond = select i1 %.not18, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.e, 2                          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.i = icmp ugt i64 %i.h, %.pr.pr
  br i1 %i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.226, i64 noundef %i.h, i64 noundef %.pr.pr) #31, !noalias !538
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !538
  %i.k = load ptr, ptr %2, align 8, !noalias !538
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 2 uses
  %i.m = sub nuw i64 %.pr.pr, %i.h                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !538
  store i64 %i.m, ptr %i.b, align 8, !noalias !538
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !538
  %i.p = load i64, ptr %i.b, align 8, !noalias !538
  store i64 %i.p, ptr %i.j, align 8, !alias.scope !538
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = phi ptr [ %i.o, %.noexc10.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.b, align 8, !noalias !538 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !538
  %i.u = load ptr, ptr %0, align 8, !alias.scope !538
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !538
  br label %.critedge

thread-pre-split:                                 ; preds = %bb.b
  %.not19 = icmp eq i64 %.pr.pr, 0
  br i1 %.not19, label %.thread23, label %bb.h

bb.h:                                             ; preds = %thread-pre-split
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.w, ptr %0, align 8
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %.pr.pr, ptr %i.a, align 8
  %i.y = icmp ugt i64 %.pr.pr, 15
  br i1 %i.y, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.h
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %0, align 8
  %i.aa = load i64, ptr %i.a, align 8
  store i64 %i.aa, ptr %i.w, align 8
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.h
  %cond = icmp eq i64 %.pr.pr, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.x, align 1
  store i8 %i.ab, ptr %i.w, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ac = phi ptr [ %i.z, %._crit_edge.i.i.thread ], [ %i.w, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %.pr.pr, i1 false)
  br label %bb.k

.thread23:                                        ; preds = %bb.a, %thread-pre-split
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ad, ptr %0, align 8
  store i64 7526470785488744001, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.af, align 8
  br label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.g, %.thread23
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZNK6Assimp3FBX12MeshGeometry19ToOutputVertexIndexEjRj(ptr noundef nonnull align 8 dereferenceable(1000), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !555 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::vector.311", align 8   ; 14 uses
  %8 = alloca %"class.std::map.437", align 8      ; 12 uses
  %.sroa.0 = alloca ptr, align 8                  ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = tail call noundef ptr @_ZN6Assimp3FBX12FBXConverter14SetupEmptyMeshERKNS0_8GeometryEP6aiNode(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %5) ; 48 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %1) ; 3 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(1000) %1)
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetFaceIndexCountsEv(ptr noundef nonnull align 8 dereferenceable(1000) %1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !300, !align !303
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !300
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 1, !range !301, !noundef !300
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6Assimp3FBX8Geometry12DeformerSkinEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.o = icmp ne ptr %i.n, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not418587 = icmp eq ptr %i.q, %i.s
  br i1 %.not418587, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = load ptr, ptr %i.g, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.0233.lcssa = phi i32 [ 0, %bb.c ], [ %.1234, %bb.e ] ; 3 uses
  %.0231.lcssa = phi i32 [ 0, %bb.c ], [ %.1232, %bb.e ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 14 uses
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  store i64 0, ptr %i.y, align 8
  br i1 %i.p, label %bb.h, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0231591 = phi i32 [ %.1232, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0233590 = phi i32 [ %.1234, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0407.0589 = phi ptr [ %i.ae, %bb.e ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0404.0588 = phi ptr [ %i.ad, %bb.e ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %i.z = load i32, ptr %.sroa.0404.0588, align 4
  %.not281 = icmp eq i32 %i.z, %4
  br i1 %.not281, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i32 %.0233590, 1
  %i.ab = load i32, ptr %.sroa.0407.0589, align 4
  %i.ac = add i32 %i.ab, %.0231591
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.1234 = phi i32 [ %.0233590, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.1232 = phi i32 [ %.0231591, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0404.0588, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0407.0589, i64 4
  %.not418 = icmp eq ptr %i.ad, %i.s
  br i1 %.not418, label %._crit_edge, label %.lr.ph, !llvm.loop !539

bb.f:                                             ; preds = %._crit_edge
  %i.af = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp3FBX8Geometry14GetBlendShapesEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge763, label %bb.h

._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge763: ; preds = %bb.g
  %.pre764 = zext i32 %.0231.lcssa to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ai = zext i32 %.0231.lcssa to i64            ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not806 = icmp eq i32 %.0231.lcssa, 0
  br i1 %.not806, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = shl nuw nsw i64 %i.ai, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %.noexc339 unwind label %bb.v  ; 4 uses

.noexc339:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.am, align 4
  %i.an = add nsw i64 %i.ai, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc339
  %i.ap = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.an, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc339
  store ptr %i.am, ptr %7, align 8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ai ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8
  store ptr %i.aq, ptr %i.ak, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.h, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge763, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.pre-phi = phi i64 [ %.pre764, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge763 ], [ %i.ai, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.0231.lcssa, ptr %i.ar, align 4
  %i.as = mul nuw nsw i64 %.pre-phi, 12           ; 17 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.i unwind label %bb.v       ; 2 uses

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.au = icmp eq i32 %.0231.lcssa, 0             ; 13 uses
  br i1 %i.au, label %.loopexit465, label %.loopexit465.loopexit

.loopexit465.loopexit:                            ; preds = %bb.i
  %i.av = add nsw i64 %i.as, -12                  ; 2 uses
  %i.aw = urem i64 %i.av, 12
  %i.ax = sub nuw nsw i64 %i.av, %i.aw
  %i.ay = add nsw i64 %i.ax, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.ay, i1 false)
  br label %.loopexit465

.loopexit465:                                     ; preds = %.loopexit465.loopexit, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.at, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0233.lcssa, ptr %i.ba, align 8
  %i.bb = zext i32 %.0233.lcssa to i64            ; 5 uses
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = or disjoint i64 %i.bc, 8
  %i.be = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #30
          to label %bb.j unwind label %bb.v       ; 2 uses

bb.j:                                             ; preds = %.loopexit465
  store i64 %i.bb, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 5 uses
  %i.bg = icmp eq i32 %.0233.lcssa, 0
  br i1 %i.bg, label %.loopexit464, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb
  %i.bi = add nuw nsw i64 %i.bb, 1152921504606846975
  %i.bj = and i64 %i.bi, 1152921504606846975
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %i.bk = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bf, %bb.k ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.k ]
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !540

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.unr = phi ptr [ %i.bf, %bb.k ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp samesign ult i64 %i.bj, 7
  br i1 %i.bn, label %.loopexit464, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bo = phi ptr [ %i.ce, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i32 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store i32 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store ptr null, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store ptr null, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 128 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bh
  br i1 %i.cf, label %.loopexit464, label %.new

.loopexit464:                                     ; preds = %.prol.loopexit, %.new, %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr %i.bf, ptr %i.cg, align 8
  %i.ch = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry10GetNormalsEv(ptr noundef nonnull align 8 dereferenceable(1000) %1)
          to label %bb.l unwind label %bb.v       ; 5 uses

bb.l:                                             ; preds = %.loopexit464
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.ch, align 8
  %.not245 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not245, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.n unwind label %bb.v       ; 2 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.au, label %.loopexit463, label %.loopexit463.loopexit

.loopexit463.loopexit:                            ; preds = %bb.n
  %i.cm = add nsw i64 %i.as, -12                  ; 2 uses
  %i.cn = urem i64 %i.cm, 12
  %i.co = sub nuw nsw i64 %i.cm, %i.cn
  %i.cp = add nsw i64 %i.co, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cl, i8 0, i64 %i.cp, i1 false)
  br label %.loopexit463

.loopexit463:                                     ; preds = %.loopexit463.loopexit, %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cl, ptr %i.cq, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit463, %bb.l
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry11GetTangentsEv(ptr noundef nonnull align 8 dereferenceable(1000) %1)
          to label %bb.p unwind label %bb.v       ; 5 uses

bb.p:                                             ; preds = %bb.o
  %i.cs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry12GetBinormalsEv(ptr noundef nonnull align 8 dereferenceable(1000) %1)
          to label %bb.q unwind label %bb.v       ; 4 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store ptr null, ptr %.sroa.0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cr, align 8
  %.not246 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not246, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cs, align 8
  %.not247 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not247, label %bb.s, label %.loopexit462

bb.s:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %.not248 = icmp eq ptr %i.cz, %i.da
  br i1 %.not248, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = sdiv exact i64 %i.dd, 12
  %i.df = icmp ugt i64 %i.de, 768614336404564650
  br i1 %i.df, label %bb.u, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #31
          to label %.noexc347 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #30
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dg, i8 0, i64 %i.dd, i1 false)
  %.pre757.pre = load ptr, ptr %i.cr, align 8     ; 2 uses
  %.pre.pre = load ptr, ptr %i.ct, align 8
  store ptr %i.dg, ptr %.sroa.0, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd ; 2 uses
  %i.di = icmp eq ptr %.pre.pre, %.pre757.pre
  br i1 %i.di, label %.loopexit462, label %.lr.ph594

bb.v:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %bb.o, %bb.f, %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %.loopexit465, %bb.m, %.loopexit464, %bb.p
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.lr.ph594:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, %.lr.ph594
  %i.dk = phi ptr [ %i.ep, %.lr.ph594 ], [ %.pre757.pre, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ]
  %i.dl = phi i64 [ %i.en, %.lr.ph594 ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.0200593 = phi i32 [ %i.em, %.lr.ph594 ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ]
  %i.dm = load ptr, ptr %i.ch, align 8
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %i.dl ; 3 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %i.dl ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load float, ptr %i.dq, align 4          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = load float, ptr %i.ds, align 4          ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = load <2 x float>, ptr %i.do, align 4    ; 2 uses
  %i.dx = fneg float %i.dv
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.fs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.ab unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.au, label %.loopexit456, label %.loopexit456.loopexit

.loopexit456.loopexit:                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fs, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456

.loopexit456:                                     ; preds = %.loopexit456.loopexit, %bb.ab
  store ptr %i.fs, ptr %i.fh, align 8
  store i32 2, ptr %i.fi, align 8
  %i.ft = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 1)
          to label %bb.ac unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %.loopexit456
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.ae unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.au, label %.loopexit456.1, label %.loopexit456.loopexit.1

.loopexit456.loopexit.1:                          ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fy, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.1

.loopexit456.1:                                   ; preds = %.loopexit456.loopexit.1, %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  store i32 2, ptr %i.ga, align 4
  %i.gb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 2)
          to label %bb.af unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.af:                                            ; preds = %.loopexit456.1
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = icmp eq ptr %i.gc, %i.ge
  br i1 %i.gf, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.ah unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.au, label %.loopexit456.2, label %.loopexit456.loopexit.2

.loopexit456.loopexit.2:                          ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gg, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.2

.loopexit456.2:                                   ; preds = %.loopexit456.loopexit.2, %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.gg, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 2, ptr %i.gi, align 8
  %i.gj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 3)
          to label %bb.ai unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %.loopexit456.2
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = icmp eq ptr %i.gk, %i.gm
  br i1 %i.gn, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.ak unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.au, label %.loopexit456.3, label %.loopexit456.loopexit.3

.loopexit456.loopexit.3:                          ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.go, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.3

.loopexit456.3:                                   ; preds = %.loopexit456.loopexit.3, %bb.ak
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.go, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  store i32 2, ptr %i.gq, align 4
  %i.gr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 4)
          to label %bb.al unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %.loopexit456.3
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = icmp eq ptr %i.gs, %i.gu
  br i1 %i.gv, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.an unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %bb.am
  br i1 %i.au, label %.loopexit456.4, label %.loopexit456.loopexit.4

.loopexit456.loopexit.4:                          ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gw, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.4

.loopexit456.4:                                   ; preds = %.loopexit456.loopexit.4, %bb.an
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %i.gw, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i32 2, ptr %i.gy, align 8
  %i.gz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 5)
          to label %bb.ao unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %.loopexit456.4
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = icmp eq ptr %i.ha, %i.hc
  br i1 %i.hd, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.aq unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.au, label %.loopexit456.5, label %.loopexit456.loopexit.5

.loopexit456.loopexit.5:                          ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.he, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.5

.loopexit456.5:                                   ; preds = %.loopexit456.loopexit.5, %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.he, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  store i32 2, ptr %i.hg, align 4
  %i.hh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 6)
          to label %bb.ar unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ar:                                            ; preds = %.loopexit456.5
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = icmp eq ptr %i.hi, %i.hk
  br i1 %i.hl, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.at unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  br i1 %i.au, label %.loopexit456.6, label %.loopexit456.loopexit.6

.loopexit456.loopexit.6:                          ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hm, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.6

.loopexit456.6:                                   ; preds = %.loopexit456.loopexit.6, %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.hm, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i32 2, ptr %i.ho, align 8
  %i.hp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 7)
          to label %bb.au unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.au:                                            ; preds = %.loopexit456.6
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = icmp eq ptr %i.hq, %i.hs
  br i1 %i.ht, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #30
          to label %bb.aw unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %bb.av
  br i1 %i.au, label %.loopexit456.7, label %.loopexit456.loopexit.7

.loopexit456.loopexit.7:                          ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hu, i8 0, i64 %i.fm, i1 false)
  br label %.loopexit456.7

.loopexit456.7:                                   ; preds = %.loopexit456.loopexit.7, %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr %i.hu, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 204
  store i32 2, ptr %i.hw, align 4
  br label %.critedge

.critedge:                                        ; preds = %.loopexit456.7, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z
  %.0199.lcssa = phi i64 [ 0, %bb.z ], [ 8, %.loopexit456.7 ], [ 1, %bb.ac ], [ 7, %bb.au ], [ 2, %bb.af ], [ 5, %bb.ao ], [ 3, %bb.ai ], [ 6, %bb.ar ], [ 4, %bb.al ]
  %i.hx = shl nuw nsw i64 %.pre-phi, 4            ; 24 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  br i1 %i.au, label %.critedge.split.us, label %bb.bi

.critedge.split.us:                               ; preds = %.critedge
  %10 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 0)
          to label %bb.ax unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %.critedge.split.us
  %i.hz = load ptr, ptr %10, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = icmp eq ptr %i.hz, %i.ib
  br i1 %i.ic, label %.critedge283, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.id = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.us unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit452.us:                                  ; preds = %bb.ay
  store ptr %i.id, ptr %i.hy, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 1)
          to label %bb.az unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.az:                                            ; preds = %.loopexit452.us
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %.critedge283, label %16

16:                                               ; preds = %bb.az
  %17 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.us.1 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit452.us.1:                                ; preds = %16
  %18 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %17, ptr %18, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 2)
          to label %.loopexit452.loopexit.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.a:                          ; preds = %.loopexit452.us.1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %.critedge283, label %24

24:                                               ; preds = %.loopexit452.loopexit.a
  %25 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit452:                                     ; preds = %24
  %26 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %25, ptr %26, align 8
  %i.ie = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 3)
          to label %bb.ba unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ba:                                            ; preds = %.loopexit452
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = icmp eq ptr %i.if, %i.ih
  br i1 %i.ii, label %.critedge283, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %bb.bc unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %27 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.ij, ptr %27, align 8
  %28 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 4)
          to label %.loopexit452.loopexit.1.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.1.a:                        ; preds = %bb.bc
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %.critedge283, label %33

33:                                               ; preds = %.loopexit452.loopexit.1.a
  %34 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.1 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit452.1:                                   ; preds = %33
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %34, ptr %i.ik, align 8
  %i.il = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 5)
          to label %bb.bd unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bd:                                            ; preds = %.loopexit452.1
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = icmp eq ptr %i.im, %i.io
  br i1 %i.ip, label %.critedge283, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %bb.bf unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %35 = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.iq, ptr %35, align 8
  %36 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 6)
          to label %.loopexit452.loopexit.2.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.2.a:                        ; preds = %bb.bf
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %.critedge283, label %41

41:                                               ; preds = %.loopexit452.loopexit.2.a
  %42 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.2 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit452.2:                                   ; preds = %41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %42, ptr %i.ir, align 8
  %i.is = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 7)
          to label %bb.bg unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bg:                                            ; preds = %.loopexit452.2
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = icmp eq ptr %i.it, %i.iv
  br i1 %i.iw, label %.critedge283, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ix = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.7 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %.critedge
  %43 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 0)
          to label %.loopexit452.loopexit.3.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.3.a:                        ; preds = %bb.bi
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %.critedge283, label %48

48:                                               ; preds = %.loopexit452.loopexit.3.a
  %49 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.3 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.3:                                   ; preds = %48
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %49, i8 0, i64 %i.hx, i1 false)
  store ptr %49, ptr %i.hy, align 8
  %i.iy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 1)
          to label %bb.bj unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bj:                                            ; preds = %.loopexit452.3
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %.critedge283, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %bb.bl unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jd, i8 0, i64 %i.hx, i1 false)
  %50 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.jd, ptr %50, align 8
  %51 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 2)
          to label %.loopexit452.loopexit.4.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.4.a:                        ; preds = %bb.bl
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %.critedge283, label %56

56:                                               ; preds = %.loopexit452.loopexit.4.a
  %57 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.4 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.4:                                   ; preds = %56
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %57, i8 0, i64 %i.hx, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %57, ptr %i.je, align 8
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 3)
          to label %bb.bm unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bm:                                            ; preds = %.loopexit452.4
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = icmp eq ptr %i.jg, %i.ji
  br i1 %i.jj, label %.critedge283, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %bb.bo unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jk, i8 0, i64 %i.hx, i1 false)
  %58 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.jk, ptr %58, align 8
  %59 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 4)
          to label %.loopexit452.loopexit.5.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.5.a:                        ; preds = %bb.bo
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %.critedge283, label %64

64:                                               ; preds = %.loopexit452.loopexit.5.a
  %65 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.5 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.5:                                   ; preds = %64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %65, i8 0, i64 %i.hx, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %65, ptr %i.jl, align 8
  %i.jm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 5)
          to label %bb.bp unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bp:                                            ; preds = %.loopexit452.5
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %.critedge283, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %bb.br unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jr, i8 0, i64 %i.hx, i1 false)
  %66 = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.jr, ptr %66, align 8
  %67 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 6)
          to label %.loopexit452.loopexit.6.a unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.6.a:                        ; preds = %bb.br
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %.critedge283, label %72

72:                                               ; preds = %.loopexit452.loopexit.6.a
  %73 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.6 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.6:                                   ; preds = %72
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %73, i8 0, i64 %i.hx, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %73, ptr %i.js, align 8
  %i.jt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef 7)
          to label %bb.bs unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bs:                                            ; preds = %.loopexit452.6
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = icmp eq ptr %i.ju, %i.jw
  br i1 %i.jx, label %.critedge283, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #30
          to label %.loopexit452.loopexit.7 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit452.loopexit.7:                          ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 %i.hx, i1 false)
  br label %.loopexit452.7

.loopexit452.7:                                   ; preds = %bb.bh, %.loopexit452.loopexit.7
  %.sink = phi ptr [ %i.jy, %.loopexit452.loopexit.7 ], [ %i.ix, %bb.bh ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %.sink, ptr %i.jz, align 8
  br label %.critedge283

.critedge283:                                     ; preds = %.loopexit452.7, %.loopexit452.loopexit.3.a, %bb.bj, %.loopexit452.loopexit.4.a, %bb.bm, %.loopexit452.loopexit.5.a, %bb.bp, %.loopexit452.loopexit.6.a, %bb.bs, %bb.ax, %bb.az, %.loopexit452.loopexit.a, %bb.ba, %.loopexit452.loopexit.1.a, %bb.bd, %.loopexit452.loopexit.2.a, %bb.bg
  %.not666 = phi i1 [ false, %.loopexit452.loopexit.1.a ], [ true, %bb.ax ], [ false, %.loopexit452.loopexit.6.a ], [ false, %bb.az ], [ false, %bb.bg ], [ false, %.loopexit452.loopexit.a ], [ false, %bb.bd ], [ false, %bb.ba ], [ false, %.loopexit452.loopexit.2.a ], [ true, %.loopexit452.loopexit.3.a ], [ false, %.loopexit452.loopexit.5.a ], [ false, %bb.bj ], [ false, %bb.bs ], [ false, %.loopexit452.loopexit.4.a ], [ false, %bb.bp ], [ false, %bb.bm ], [ false, %.loopexit452.7 ]
  %.us-phi738 = phi i64 [ 4, %.loopexit452.loopexit.1.a ], [ 0, %bb.ax ], [ 6, %.loopexit452.loopexit.6.a ], [ 1, %bb.az ], [ 7, %bb.bg ], [ 2, %.loopexit452.loopexit.a ], [ 5, %bb.bd ], [ 3, %bb.ba ], [ 6, %.loopexit452.loopexit.2.a ], [ 0, %.loopexit452.loopexit.3.a ], [ 4, %.loopexit452.loopexit.5.a ], [ 1, %bb.bj ], [ 7, %bb.bs ], [ 2, %.loopexit452.loopexit.4.a ], [ 5, %bb.bp ], [ 3, %bb.bm ], [ 8, %.loopexit452.7 ]
  %i.ka = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.kb = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not419613 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not419613, label %._crit_edge620, label %.lr.ph619

.lr.ph619:                                        ; preds = %.critedge283
  %i.kc = load ptr, ptr %i.g, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.bu

._crit_edge620:                                   ; preds = %.loopexit445, %.critedge283
  invoke void @_ZN6Assimp3FBX12FBXConverter22ConvertMaterialForMeshEP6aiMeshRKNS0_5ModelERKNS0_12MeshGeometryEi(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %4)
          to label %bb.cm unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.lr.ph619, %.loopexit445
  %.0193618 = phi i32 [ 0, %.lr.ph619 ], [ %.2, %.loopexit445 ] ; 3 uses
  %.0203617 = phi ptr [ %i.bf, %.lr.ph619 ], [ %.1204, %.loopexit445 ] ; 4 uses
  %.sroa.0407.1616 = phi ptr [ %i.kc, %.lr.ph619 ], [ %i.nf, %.loopexit445 ] ; 2 uses
  %.0411615 = phi i32 [ 0, %.lr.ph619 ], [ %.2413, %.loopexit445 ] ; 3 uses
  %.sroa.0388.0614 = phi ptr [ %i.ka, %.lr.ph619 ], [ %i.ne, %.loopexit445 ] ; 2 uses
  %i.kh = load i32, ptr %.sroa.0407.1616, align 4 ; 5 uses
  %i.ki = load i32, ptr %.sroa.0388.0614, align 4
  %.not265 = icmp eq i32 %i.ki, %4
  br i1 %.not265, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kj = add i32 %i.kh, %.0411615
  br label %.loopexit445

bb.bw:                                            ; preds = %bb.bu
  %i.kk = getelementptr inbounds nuw i8, ptr %.0203617, i64 16 ; 2 uses
  store i32 %i.kh, ptr %.0203617, align 8
  %i.kl = zext i32 %i.kh to i64                   ; 2 uses
  %i.km = shl nuw nsw i64 %i.kl, 2
  %i.kn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.km) #30
          to label %bb.bx unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.ko = getelementptr inbounds nuw i8, ptr %.0203617, i64 8 ; 2 uses
  store ptr %i.kn, ptr %i.ko, align 8
  %i.kp = load i32, ptr %i.d, align 8             ; 2 uses
  %switch.tableidx = add i32 %i.kh, -1            ; 2 uses
  %i.kq = icmp ult i32 %switch.tableidx, 3
  br i1 %i.kq, label %switch.lookup, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kr = or i32 %i.kp, 8
  store i32 %i.kr, ptr %i.d, align 8
  %.not667 = icmp eq i32 %i.kh, 0
  br i1 %.not667, label %.loopexit445, label %.lr.ph610.preheader

switch.lookup:                                    ; preds = %bb.bx
  %i.ks = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_, i64 %i.ks
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.kt = or i32 %i.kp, %switch.ext
  store i32 %i.kt, ptr %i.d, align 8
  br label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %switch.lookup, %bb.by
  br label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.preheader, %._crit_edge604
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %._crit_edge604 ], [ 0, %.lr.ph610.preheader ] ; 2 uses
  %.1607 = phi i32 [ %i.mv, %._crit_edge604 ], [ %.0193618, %.lr.ph610.preheader ] ; 4 uses
  %.1412605 = phi i32 [ %i.mw, %._crit_edge604 ], [ %.0411615, %.lr.ph610.preheader ] ; 6 uses
  %i.ku = load ptr, ptr %i.ko, align 8
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv744
  store i32 %.1607, ptr %i.kv, align 4
  %i.kw = load ptr, ptr %i.kd, align 8
  %i.kx = load ptr, ptr %7, align 8               ; 2 uses
  %.not266 = icmp eq ptr %i.kw, %i.kx
  %.pre765 = zext i32 %.1607 to i64               ; 7 uses
  br i1 %.not266, label %.lr.ph610._crit_edge, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph610
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.pre765
  store i32 %.1412605, ptr %i.ky, align 4
  %i.kz = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kz, %bb.bz ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %bb.bz ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = icmp ult i32 %i.lb, %.1412605           ; 3 uses
  %.19.i.i.i.i = select i1 %i.lc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.lc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !542

_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ld = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ld, label %.critedge.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.le = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.lf = icmp ult i32 %.1412605, %i.le
  br i1 %i.lf, label %.critedge.i, label %bb.cf

.critedge.i:                                      ; preds = %bb.ca, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i, %bb.bz
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.ca ], [ %.19.i.i.i.i, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i ], [ %i.u, %bb.bz ]
  %i.lg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc287 unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc287:                                        ; preds = %.critedge.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 3 uses
  store i32 %.1412605, ptr %i.lh, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  store i32 0, ptr %i.li, align 4
  %i.lj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.lh)
          to label %bb.cb unwind label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.cb:                                            ; preds = %.noexc287
  %i.lk = extractvalue { ptr, ptr } %i.lj, 0      ; 2 uses
  %i.ll = extractvalue { ptr, ptr } %i.lj, 1      ; 4 uses
  %.not.i.i286 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i286, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i4.i = icmp ne ptr %i.lk, null
  %i.lm = icmp eq ptr %i.ll, %i.u
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.lm
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.lo = load i32, ptr %i.lh, align 4
  %i.lp = load i32, ptr %i.ln, align 4
  %i.lq = icmp ult i32 %i.lo, %i.lp
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cd, %bb.cc
  %i.lr = phi i1 [ %i.lq, %bb.cd ], [ true, %bb.cc ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lr, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.ll, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #27
  %i.ls = load i64, ptr %i.y, align 8
  %i.lt = add i64 %i.ls, 1
  store i64 %i.lt, ptr %i.y, align 8
  br label %bb.cf

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc287
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 40) #29
  br label %.body

bb.ce:                                            ; preds = %bb.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 40) #29
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread.i.i, %bb.ca
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.ca ], [ %i.lg, %.thread.i.i ], [ %i.lk, %bb.ce ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 36
  store i32 %.1607, ptr %i.lv, align 4
  br label %.lr.ph610._crit_edge

.lr.ph610._crit_edge:                             ; preds = %.lr.ph610, %bb.cf
  %i.lw = zext i32 %.1412605 to i64               ; 6 uses
  %i.lx = load ptr, ptr %i.f, align 8
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.lw
  %i.lz = load ptr, ptr %i.az, align 8
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lz, i64 %.pre765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.ly, i64 12, i1 false)
  %i.mb = load ptr, ptr %i.ke, align 8            ; 2 uses
  %.not267 = icmp eq ptr %i.mb, null
  br i1 %.not267, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph610._crit_edge
  %i.mc = load ptr, ptr %i.ch, align 8
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mc, i64 %i.lw
  %i.me = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %.pre765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.me, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph610._crit_edge
  %i.mf = load ptr, ptr %i.kf, align 8            ; 2 uses
  %.not268 = icmp eq ptr %i.mf, null
  br i1 %.not268, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mg = load ptr, ptr %i.cr, align 8
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.mg, i64 %i.lw
  %i.mi = getelementptr inbounds nuw [12 x i8], ptr %i.mf, i64 %.pre765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mi, ptr noundef nonnull align 4 dereferenceable(12) %i.mh, i64 12, i1 false)
  %i.mj = load ptr, ptr %.1202, align 8
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.mj, i64 %i.lw
  %i.ml = load ptr, ptr %i.kg, align 8
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %.pre765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mm, ptr noundef nonnull align 4 dereferenceable(12) %i.mk, i64 12, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br i1 %i.fr, label %.preheader436, label %.lr.ph601

.preheader436:                                    ; preds = %bb.ck, %bb.cj
  br i1 %.not666, label %._crit_edge604, label %.lr.ph603

.lr.ph601:                                        ; preds = %bb.cj, %bb.ck
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.mn = trunc nuw nsw i64 %indvars.iv to i32
  %i.mo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %i.mn)
          to label %bb.ck unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %.lr.ph601
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.lw
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.ms, i64 %.pre765 ; 2 uses
  %i.mu = load <2 x float>, ptr %i.mq, align 4
  store <2 x float> %i.mu, ptr %i.mt, align 4
  %.sroa.5386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store float 0.000000e+00, ptr %.sroa.5386.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.0199.lcssa
  br i1 %exitcond.not, label %.preheader436, label %.lr.ph601, !llvm.loop !543

._crit_edge604:                                   ; preds = %bb.cl, %.preheader436
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %i.mv = add i32 %.1607, 1                       ; 2 uses
  %i.mw = add i32 %.1412605, 1                    ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %i.kl
  br i1 %exitcond748.not, label %.loopexit445, label %.lr.ph610, !llvm.loop !544

.lr.ph603:                                        ; preds = %.preheader436, %bb.cl
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %bb.cl ], [ 0, %.preheader436 ] ; 3 uses
  %i.mx = trunc nuw nsw i64 %indvars.iv739 to i32
  %i.my = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry15GetVertexColorsEj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %i.mx)
          to label %bb.cl unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %.lr.ph603
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.lw
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv739
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %.pre765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nd, ptr noundef nonnull align 4 dereferenceable(16) %i.na, i64 16, i1 false)
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %.us-phi738
  br i1 %exitcond743.not, label %._crit_edge604, label %.lr.ph603, !llvm.loop !545

.loopexit445:                                     ; preds = %._crit_edge604, %bb.by, %bb.bv
  %.2413 = phi i32 [ %i.kj, %bb.bv ], [ %.0411615, %bb.by ], [ %i.mw, %._crit_edge604 ]
  %.1204 = phi ptr [ %.0203617, %bb.bv ], [ %i.kk, %bb.by ], [ %i.kk, %._crit_edge604 ]
  %.2 = phi i32 [ %.0193618, %bb.bv ], [ %.0193618, %bb.by ], [ %i.mv, %._crit_edge604 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0388.0614, i64 4 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0407.1616, i64 4
  %.not419 = icmp eq ptr %i.ne, %i.kb
  br i1 %.not419, label %._crit_edge620, label %bb.bu, !llvm.loop !546

bb.cm:                                            ; preds = %._crit_edge620
  br i1 %i.p, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6Assimp3FBX12FBXConverter14ConvertWeightsEP6aiMeshRKNS0_12MeshGeometryERK12aiMatrix4x4tIfEP6aiNodejPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef %5, i32 noundef %4, ptr noundef nonnull %7)
          to label %bb.co unwind label %.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %.lr.ph603, %.lr.ph601, %bb.bw, %bb.bi, %48, %.loopexit452.3, %bb.bk, %bb.bl, %56, %.loopexit452.4, %bb.bn, %bb.bo, %64, %.loopexit452.5, %bb.bq, %bb.br, %72, %.loopexit452.6, %bb.bt, %bb.bh, %.loopexit452.2, %41, %bb.bf, %bb.be, %.loopexit452.1, %33, %bb.bc, %bb.bb, %.loopexit452, %24, %.loopexit452.us.1, %16, %.loopexit452.us, %bb.ay, %.critedge.split.us, %bb.av, %.loopexit456.6, %bb.as, %.loopexit456.5, %bb.ap, %.loopexit456.4, %bb.am, %.loopexit456.3, %bb.aj, %.loopexit456.2, %bb.ag, %.loopexit456.1, %bb.ad, %.loopexit456, %bb.y, %bb.aa
  %lpad.loopexit.split-lp973 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp438.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit461, %.loopexit462, %bb.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.cn, %._crit_edge620
  %.sroa.14.10 = phi ptr [ %.sroa.14.2, %bb.cn ], [ %.sroa.14.2, %._crit_edge620 ], [ null, %bb.u ], [ %.sroa.14.1, %.loopexit461 ], [ %.sroa.14.1, %.loopexit462 ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %lpad.loopexit.split-lp686 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ng = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp3FBX8Geometry14GetBlendShapesEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.cp unwind label %bb.eb

bb.cp:                                            ; preds = %bb.co
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.sroa.0371.0649 = load ptr, ptr %i.nh, align 8 ; 2 uses
  %.not420650 = icmp eq ptr %.sroa.0371.0649, null
  br i1 %.not420650, label %.loopexit.thread, label %.lr.ph656

.loopexit.thread:                                 ; preds = %bb.cp
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = load ptr, ptr %i.ni, align 8
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit

.lr.ph656:                                        ; preds = %bb.cp
  %i.nm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.cq

.loopexit435:                                     ; preds = %.loopexit424, %bb.cq
  %.sroa.0374.1.lcssa = phi ptr [ %.sroa.0374.0651, %bb.cq ], [ %.sroa.0374.2.lcssa, %.loopexit424 ] ; 11 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0652, %bb.cq ], [ %.sroa.10.2.lcssa, %.loopexit424 ] ; 3 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0653, %bb.cq ], [ %.sroa.16.2.lcssa, %.loopexit424 ] ; 3 uses
  %.sroa.0371.0 = load ptr, ptr %.sroa.0371.0654, align 8 ; 2 uses
  %.not420 = icmp eq ptr %.sroa.0371.0, null
  br i1 %.not420, label %._crit_edge657, label %bb.cq

._crit_edge657:                                   ; preds = %.loopexit435
  %i.np = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.nq = ptrtoint ptr %.sroa.0374.1.lcssa to i64 ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq                    ; 2 uses
  %i.ns = ashr exact i64 %i.nr, 3                 ; 5 uses
  %.not250 = icmp eq ptr %.sroa.10.1.lcssa, %.sroa.0374.1.lcssa
  br i1 %.not250, label %.loopexit, label %bb.ea

bb.cq:                                            ; preds = %.lr.ph656, %.loopexit435
  %.sroa.0371.0654 = phi ptr [ %.sroa.0371.0649, %.lr.ph656 ], [ %.sroa.0371.0, %.loopexit435 ] ; 2 uses
  %.sroa.16.0653 = phi ptr [ null, %.lr.ph656 ], [ %.sroa.16.1.lcssa, %.loopexit435 ] ; 2 uses
  %.sroa.10.0652 = phi ptr [ null, %.lr.ph656 ], [ %.sroa.10.1.lcssa, %.loopexit435 ] ; 2 uses
  %.sroa.0374.0651 = phi ptr [ null, %.lr.ph656 ], [ %.sroa.0374.1.lcssa, %.loopexit435 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0371.0654, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  %.sroa.0367.0638 = load ptr, ptr %i.nv, align 8 ; 2 uses
  %.not421639 = icmp eq ptr %.sroa.0367.0638, null
  br i1 %.not421639, label %.loopexit435, label %.lr.ph645

.loopexit424:                                     ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit, %.lr.ph645
  %.sroa.0374.2.lcssa = phi ptr [ %.sroa.0374.1640, %.lr.ph645 ], [ %.sroa.0374.5, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.10.2.lcssa = phi ptr [ %.sroa.10.1641, %.lr.ph645 ], [ %.sroa.10.3, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.1642, %.lr.ph645 ], [ %.sroa.16.5, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0367.0 = load ptr, ptr %.sroa.0367.0643, align 8 ; 2 uses
  %.not421 = icmp eq ptr %.sroa.0367.0, null
  br i1 %.not421, label %.loopexit435, label %.lr.ph645

.lr.ph645:                                        ; preds = %bb.cq, %.loopexit424
  %.sroa.0367.0643 = phi ptr [ %.sroa.0367.0, %.loopexit424 ], [ %.sroa.0367.0638, %bb.cq ] ; 2 uses
  %.sroa.16.1642 = phi ptr [ %.sroa.16.2.lcssa, %.loopexit424 ], [ %.sroa.16.0653, %bb.cq ] ; 2 uses
  %.sroa.10.1641 = phi ptr [ %.sroa.10.2.lcssa, %.loopexit424 ], [ %.sroa.10.0652, %bb.cq ] ; 2 uses
  %.sroa.0374.1640 = phi ptr [ %.sroa.0374.2.lcssa, %.loopexit424 ], [ %.sroa.0374.0651, %bb.cq ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0367.0643, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8            ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 120
  %.sroa.0363.0627 = load ptr, ptr %i.ny, align 8 ; 2 uses
  %.not422628 = icmp eq ptr %.sroa.0363.0627, null
  br i1 %.not422628, label %.loopexit424, label %.lr.ph634

.lr.ph634:                                        ; preds = %.lr.ph645
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 128
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 72
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph634, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit
  %.sroa.0363.0632 = phi ptr [ %.sroa.0363.0627, %.lr.ph634 ], [ %.sroa.0363.0, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.16.2631 = phi ptr [ %.sroa.16.1642, %.lr.ph634 ], [ %.sroa.16.5, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.10.2630 = phi ptr [ %.sroa.10.1641, %.lr.ph634 ], [ %.sroa.10.3, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0374.2629 = phi ptr [ %.sroa.0374.1640, %.lr.ph634 ], [ %.sroa.0374.5, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0363.0632, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8            ; 5 uses
  %i.od = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry10GetNormalsEv(ptr noundef nonnull align 8 dereferenceable(192) %i.oc)
          to label %bb.cs unwind label %.loopexit.split-lp426.loopexit.split-lp ; 3 uses

bb.cs:                                            ; preds = %bb.cr
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = icmp ne ptr %i.oe, %i.og
  %i.oi = invoke noundef ptr @_ZN6Assimp16aiCreateAnimMeshEPK6aiMeshbbbbb(ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.oh, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ct unwind label %.loopexit.split-lp426.loopexit.split-lp ; 7 uses

bb.ct:                                            ; preds = %bb.cs
  %i.oj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.oc)
          to label %bb.cu unwind label %.loopexit.split-lp426.loopexit.split-lp ; 2 uses

bb.cu:                                            ; preds = %bb.ct
  %i.ok = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX13ShapeGeometry10GetIndicesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.oc)
          to label %bb.cv unwind label %.loopexit.split-lp426.loopexit.split-lp ; 3 uses

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 24 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !noalias !556
  %.not.i = icmp eq i64 %i.on, 0
  br i1 %.not.i, label %_ZN6Assimp3FBX12FBXConverter15FixAnimMeshNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oo = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ol, ptr noundef nonnull @.str.168, i64 noundef 0, i64 noundef 2) #27, !noalias !556 ; 3 uses
  %.not18.i = icmp ne i64 %i.oo, -1
  %.pr.pr.i = load i64, ptr %i.om, align 8, !noalias !556 ; 9 uses
  %i.op = add i64 %.pr.pr.i, -2
  %i.oq = icmp ult i64 %i.oo, %i.op
  %or.cond.i = select i1 %.not18.i, i1 %i.oq, i1 false
  br i1 %or.cond.i, label %bb.cx, label %thread-pre-split.i

bb.cx:                                            ; preds = %bb.cw
  %i.or = add i64 %i.oo, 2                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.os = icmp ugt i64 %i.or, %.pr.pr.i
  br i1 %i.os, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.cy:                                            ; preds = %bb.cx
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.226, i64 noundef %i.or, i64 noundef %.pr.pr.i) #31
          to label %.noexc289 unwind label %.loopexit.split-lp431.loopexit.split-lp

.noexc289:                                        ; preds = %bb.cy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.cx
  store ptr %i.nm, ptr %9, align 8, !alias.scope !558
  %i.ot = load ptr, ptr %i.ol, align 8, !noalias !558
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.or ; 2 uses
  %i.ov = sub nuw i64 %.pr.pr.i, %i.or            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !558
  store i64 %i.ov, ptr %i.b, align 8, !noalias !558
  %i.ow = icmp ugt i64 %i.ov, 15
  br i1 %i.ow, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ox = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc290 unwind label %.loopexit.split-lp431.loopexit.split-lp ; 2 uses

.noexc290:                                        ; preds = %.noexc10.i.i.i
  store ptr %i.ox, ptr %9, align 8, !alias.scope !558
  %i.oy = load i64, ptr %i.b, align 8, !noalias !558
  store i64 %i.oy, ptr %i.nm, align 8, !alias.scope !558
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.oz = phi ptr [ %i.ox, %.noexc290 ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.ov, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i
  %i.pa = load i8, ptr %i.ou, align 1
  store i8 %i.pa, ptr %i.oz, align 1
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oz, ptr align 1 %i.ou, i64 %i.ov, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i.i
  %i.pb = load i64, ptr %i.b, align 8, !noalias !558 ; 2 uses
  store i64 %i.pb, ptr %i.nn, align 8, !alias.scope !558
  %i.pc = load ptr, ptr %9, align 8, !alias.scope !558
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb
  store i8 0, ptr %i.pd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !558
  br label %_ZN6Assimp3FBX12FBXConverter15FixAnimMeshNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

thread-pre-split.i:                               ; preds = %bb.cw
  %.not19.i = icmp eq i64 %.pr.pr.i, 0
  br i1 %.not19.i, label %_ZN6Assimp3FBX12FBXConverter15FixAnimMeshNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %thread-pre-split.i
  store ptr %i.nm, ptr %9, align 8, !alias.scope !556
  %i.pe = load ptr, ptr %i.ol, align 8, !noalias !556 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !556
  store i64 %.pr.pr.i, ptr %i.a, align 8, !noalias !556
  %i.pf = icmp ugt i64 %.pr.pr.i, 15
  br i1 %i.pf, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

end_hunk_1
