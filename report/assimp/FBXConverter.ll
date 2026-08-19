inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter11ConvertMeshERKNS0_12MeshGeometryERKNS0_5ModelEP6aiNodeS9_RK12aiMatrix4x4tIfE:bb.a
.noexc49:                                         ; preds = %bb.n, %.loopexit102
  %i.bo = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bo, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %.noexc50

.noexc50:                                         ; preds = %.noexc49
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.br = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.br, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA26_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc50, %.noexc49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bs = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %2) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !3, !align !9
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !range !4, !noundef !3
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.p, label %.critedge47

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.critedge47, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.bz, align 4
  br label %.critedge

bb.r:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.060.0115, i64 4 ; 2 uses
  %.not101 = icmp eq ptr %i.ce, %i.cb
  br i1 %.not101, label %.critedge47, label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r
  %.sroa.060.0115 = phi ptr [ %i.bz, %bb.q ], [ %i.ce, %bb.r ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.060.0115, align 4
  %.not = icmp eq i32 %i.cf, %i.cd
  br i1 %.not, label %bb.r, label %bb.s

bb.s:                                             ; preds = %.critedge
  tail call void @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_(ptr dead_on_unwind writable sret(%"class.std::vector.311") align 8 %0, ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef %4, ptr noundef %5)
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.critedge47:                                      ; preds = %bb.r, %bb.p, %bb.o
  %i.cg = tail call noundef i32 @_ZN6Assimp3FBX12FBXConverter25ConvertMeshSingleMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef %4, ptr poison)
  %i.ch = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 3 uses
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  store ptr %i.ch, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %i.ck, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.s, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit, %.critedge47, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i57 = icmp eq ptr %.sroa.069.2, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIjSaIjEED2Ev.exit58, label %.thread93

.thread93:                                        ; preds = %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.2, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit58

_ZNSt6vectorIjSaIjEED2Ev.exit58:                  ; preds = %bb.t, %.thread93
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter11ConvertLineERKNS0_12LineGeometryEP6aiNode(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.311") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12LineGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(168) %2) ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12LineGeometry10GetIndicesEv(ptr noundef nonnull align 8 dereferenceable(168) %2) ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.l, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %.noexc72

.noexc72:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.o, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA22_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6Assimp3FBX12FBXConverter14SetupEmptyMeshERKNS0_8GeometryEP6aiNode(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %3) ; 6 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = or i32 %i.q, 2
  store i32 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 12                  ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = and i64 %i.x, 4294967295                ; 2 uses
  %i.ab = mul nuw nsw i64 %i.aa, 12               ; 2 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #30 ; 4 uses
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %.loopexit78, label %.loopexit78.loopexit

.loopexit78.loopexit:                             ; preds = %bb.c
  %i.ae = add nsw i64 %i.ab, -12                  ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ah, i1 false)
  br label %.loopexit78

.loopexit78:                                      ; preds = %.loopexit78.loopexit, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ac, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 12
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %.loopexit78
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.aj, i64 %i.an, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %.loopexit78
  %i.ap = icmp eq i64 %i.an, 12
  br i1 %i.ap, label %bb.f, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.aq = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 8 uses
  %.not = icmp eq ptr %i.aq, %i.ar                ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %min.iters.check = icmp ult i64 %i.av, 12
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.aw = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = icmp eq i64 %i.ax, 4294967295
  %i.az = icmp ugt i64 %i.aw, 4294967295
  %i.ba = or i1 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.av, 8589934584              ; 4 uses
  %4 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x i32>, ptr %i.bb, align 4
  %wide.load109 = load <4 x i32>, ptr %i.bc, align 4
  %i.bd = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.be = lshr <4 x i32> %wide.load109, splat (i32 31)
  %i.bf = add <4 x i32> %i.bd, %vec.phi           ; 2 uses
  %i.bg = add <4 x i32> %i.be, %vec.phi108        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.05180.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %4, %middle.block ]
  %.05279.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %.052.lcssa = phi i32 [ 0, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit ], [ %i.bi, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.bj = trunc nuw i64 %i.av to i32              ; 2 uses
  %i.bk = sub i32 %i.bj, %.052.lcssa              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.bk, ptr %i.bl, align 8
  %i.bm = zext i32 %i.bk to i64                   ; 5 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = or disjoint i64 %i.bn, 8
  %i.bp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #30 ; 2 uses
  store i64 %i.bm, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 5 uses
  %i.br = icmp eq i32 %.052.lcssa, %i.bj
  br i1 %i.br, label %.loopexit, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %indvars.iv.a = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader110 ]
  %.05180 = phi i32 [ %5, %.lr.ph ], [ %.05180.ph, %.lr.ph.preheader110 ]
  %.05279 = phi i32 [ %spec.select, %.lr.ph ], [ %.05279.ph, %.lr.ph.preheader110 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.a
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = lshr i32 %i.bt, 31
  %spec.select = add i32 %i.bu, %.05279           ; 2 uses
  %5 = add i32 %.05180, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.bv = icmp ugt i64 %i.av, %6
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !129

bb.g:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bm
  %i.bx = add nuw nsw i64 %i.bm, 1152921504606846975
  %i.by = and i64 %i.bx, 1152921504606846975
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %i.bz = phi ptr [ %i.cb, %.prol.preheader ], [ %i.bq, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !130

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.unr = phi ptr [ %i.bq, %bb.g ], [ %i.cb, %.prol.preheader ]
  %i.cc = icmp samesign ult i64 %i.by, 7
  br i1 %i.cc, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cd = phi ptr [ %i.ct, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store ptr null, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  store ptr null, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store i32 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  store ptr null, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  store i32 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 128 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bw
  br i1 %i.cu, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store ptr %i.bq, ptr %i.cv, align 8
  br i1 %.not, label %._crit_edge86.thread, label %.lr.ph85

._crit_edge86.thread:                             ; preds = %.loopexit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.cw, align 8
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 3
  %i.de = trunc i64 %i.dd to i32
  %i.df = add i32 %i.de, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

._crit_edge86:                                    ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.dh, align 8
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 3
  %i.dp = trunc i64 %i.do to i32
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, %.pre94
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge86
  store i32 %i.dq, ptr %.pre, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store ptr %i.ds, ptr %i.dr, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.i:                                             ; preds = %._crit_edge86.thread, %._crit_edge86
  %i.dt = phi ptr [ %i.dg, %._crit_edge86.thread ], [ %i.dr, %._crit_edge86 ]
  %i.du = phi i32 [ %i.df, %._crit_edge86.thread ], [ %i.dq, %._crit_edge86 ]
  %i.dv = phi ptr [ null, %._crit_edge86.thread ], [ %.pre94, %._crit_edge86 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = load ptr, ptr %0, align 8               ; 5 uses
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775804
  br i1 %i.eb, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc75 unwind label %bb.q

.noexc75:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ec = ashr exact i64 %i.ea, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 2305843009213693951)
  %i.eg = select i1 %i.ee, i64 2305843009213693951, i64 %i.ef ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #30
          to label %.noexc76 unwind label %bb.q   ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store i32 %i.du, ptr %i.ej, align 4
  %i.ek = icmp sgt i64 %i.ea, 0
  br i1 %i.ek, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr align 4 %i.dx, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc76
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ei, ptr %0, align 8
  store ptr %i.el, ptr %i.dt, align 8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.em, ptr %i.dw, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.lr.ph85:                                         ; preds = %.loopexit, %bb.o
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.pre-phi, %bb.o ], [ 0, %.loopexit ] ; 4 uses
  %.05082 = phi ptr [ %.1, %bb.o ], [ %i.bq, %.loopexit ] ; 4 uses
  %i.en = load ptr, ptr %i.c, align 8
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv89
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph85._crit_edge, label %bb.m

.lr.ph85._crit_edge:                              ; preds = %.lr.ph85
  %.pre96 = add nuw nsw i64 %indvars.iv89, 1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph85
  store i32 2, ptr %.05082, align 8
  %i.er = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds nuw i8, ptr %.05082, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %.05082, i64 8 ; 2 uses
  store ptr %i.er, ptr %i.et, align 8
  %i.eu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv89
  %i.ew = load i32, ptr %i.ev, align 4
  store i32 %i.ew, ptr %i.er, align 4
  %i.ex = add nuw nsw i64 %indvars.iv89, 1        ; 3 uses
  %i.ey = icmp eq i64 %i.ex, %i.av
  %i.ez = select i1 %i.ey, i64 0, i64 %i.ex
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %.lobit = ashr i32 %i.fb, 31
  %i.fc = xor i32 %.lobit, %i.fb
  %i.fd = load ptr, ptr %i.et, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
end_hunk_0
