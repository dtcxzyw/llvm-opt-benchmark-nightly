Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryCombiner?download=true
inline.NumInlined: 322
inline.NumDeleted: 162
begin_hunk_0_@_ZN4geos4geom4util16GeometryCombinerC2ERKSt6vectorIPKNS0_8GeometryESaIS6_EE:bb.a
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc18
  %i.ao = add i64 %i.ab, -8
  %i.ap = sub i64 %i.ao, %i.ac                    ; 3 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ap, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.as = add i64 %i.ab, -8
  %i.at = sub i64 %i.as, %i.ac
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %i.au
  %scevgep45 = getelementptr i8, ptr %i.aa, i64 8
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.au
  %bound0 = icmp ult ptr %i.al, %scevgep46
  %bound1 = icmp ult ptr %i.aa, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp ult i64 %i.ap, 120
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.ar, 12
  %n.vec = and i64 %i.ar, 4611686018427387888     ; 4 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.aa, i64 %i.az ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ba = getelementptr i8, ptr %next.gep48, i64 32
  %i.bb = getelementptr i8, ptr %next.gep48, i64 64
  %i.bc = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep48, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %wide.load49 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %wide.load50 = load <4 x i64>, ptr %i.bb, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %wide.load51 = load <4 x i64>, ptr %i.bc, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %i.bd = getelementptr i8, ptr %next.gep, i64 32
  %i.be = getelementptr i8, ptr %next.gep, i64 64
  %i.bf = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !67, !noalias !64
  store <4 x i64> %wide.load49, ptr %i.bd, align 8, !tbaa !13, !alias.scope !67, !noalias !64
  store <4 x i64> %wide.load50, ptr %i.be, align 8, !tbaa !13, !alias.scope !67, !noalias !64
  store <4 x i64> %wide.load51, ptr %i.bf, align 8, !tbaa !13, !alias.scope !67, !noalias !64
  %i.bg = getelementptr i8, ptr %next.gep48, i64 32
  %i.bh = getelementptr i8, ptr %next.gep48, i64 64
  %i.bi = getelementptr i8, ptr %next.gep48, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep48, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  store <4 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  store <4 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  store <4 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ar, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec53, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.al, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aa, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = shl i64 %index54, 3                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.al, i64 %i.bn
  %next.gep56 = getelementptr i8, ptr %i.aa, i64 %i.bn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %wide.load57 = load <4 x i64>, ptr %next.gep56, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  store <4 x i64> %wide.load57, ptr %next.gep55, align 8, !tbaa !13, !alias.scope !67, !noalias !64
  store <4 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !13, !alias.scope !64, !noalias !59
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ar, %n.vec53
  br i1 %cmp.n59, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aa, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !62, !noalias !59
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !59, !noalias !62
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !62, !noalias !59
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !74

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc18 ], [ %i.bl, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.al, ptr %0, align 8, !tbaa !8
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.bu = add nuw i64 %.014, 1
  br label %bb.b, !llvm.loop !75

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit21

bb.m:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit21

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i20

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i20: ; preds = %bb.n
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #14, !inline_history !76
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit21: ; preds = %bb.m, %bb.n, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i20, %bb.l, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.bv, %bb.l ], [ %i.bw, %bb.m ], [ %lpad.phi, %bb.n ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i20 ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom4util16GeometryCombinerC2EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS5_EESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(25) initializes((0, 25)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not4353 = icmp eq ptr %i.a, %i.c
  br i1 %.not4353, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

._crit_edge57:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph56, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34
  %.sroa.039.054 = phi ptr [ %i.a, %.lr.ph56 ], [ %i.dq, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34 ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.039.054, align 8    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #14 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN4geos4geom18GeometryCollection17releaseGeometriesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not4451 = icmp eq ptr %i.k, %i.l
  br i1 %.not4451, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !12
  %.pre59 = load ptr, ptr %i.f, align 8, !tbaa !52
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %.pre60 = load ptr, ptr %2, align 8, !tbaa !8   ; 3 uses
  %.pre61 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre60, %.pre61
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %.pre60, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #14, !inline_history !45
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %.pre61
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %.pre60, %._crit_edge ], [ %i.k, %bb.e ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.t = phi ptr [ %i.br, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ %.pre59, %.lr.ph.preheader ] ; 5 uses
  %i.u = phi ptr [ %i.bs, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.sroa.035.052 = phi ptr [ %i.bt, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.v = load i64, ptr %.sroa.035.052, align 8, !tbaa !13
  store i64 %i.v, ptr %i.u, align 8, !tbaa !13
  store ptr null, ptr %.sroa.035.052, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !8      ; 12 uses
  %i.y = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #16
          to label %.noexc18 unwind label %.loopexit ; 12 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i64, ptr %.sroa.035.052, align 8, !tbaa !13
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !13
  store ptr null, ptr %.sroa.035.052, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %iter.check132

iter.check132:                                    ; preds = %.noexc18
  %i.al = add i64 %i.y, -8
  %i.am = sub i64 %i.al, %i.z                     ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 5 uses
  %min.iters.check114 = icmp ult i64 %i.am, 24
  br i1 %min.iters.check114, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck106

vector.memcheck106:                               ; preds = %iter.check132
  %scevgep107 = getelementptr i8, ptr %i.ai, i64 8
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.ar
  %scevgep109 = getelementptr i8, ptr %i.x, i64 8
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ar
  %bound0111 = icmp ult ptr %i.ai, %scevgep110
  %bound1112 = icmp ult ptr %i.x, %scevgep108
  %found.conflict113 = and i1 %bound0111, %bound1112
  br i1 %found.conflict113, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check115

vector.main.loop.iter.check115:                   ; preds = %vector.memcheck106
  %min.iters.check116 = icmp ult i64 %i.am, 120
  br i1 %min.iters.check116, label %vec.epilog.ph136, label %vector.ph117

vector.ph117:                                     ; preds = %vector.main.loop.iter.check115
  %i.as = and i64 %i.ao, 12
  %n.vec118 = and i64 %i.ao, 4611686018427387888  ; 4 uses
  %i.at = shl i64 %n.vec118, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ai, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next127, %vector.body119 ] ; 2 uses
  %i.aw = shl i64 %index120, 3                    ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.ai, i64 %i.aw ; 4 uses
  %next.gep122 = getelementptr i8, ptr %i.x, i64 %i.aw ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ax = getelementptr i8, ptr %next.gep122, i64 32
  %i.ay = getelementptr i8, ptr %next.gep122, i64 64
  %i.az = getelementptr i8, ptr %next.gep122, i64 96
  %wide.load123 = load <4 x i64>, ptr %next.gep122, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %wide.load124 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %wide.load125 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %wide.load126 = load <4 x i64>, ptr %i.az, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %i.ba = getelementptr i8, ptr %next.gep121, i64 32
  %i.bb = getelementptr i8, ptr %next.gep121, i64 64
  %i.bc = getelementptr i8, ptr %next.gep121, i64 96
  store <4 x i64> %wide.load123, ptr %next.gep121, align 8, !tbaa !13, !alias.scope !85, !noalias !82
  store <4 x i64> %wide.load124, ptr %i.ba, align 8, !tbaa !13, !alias.scope !85, !noalias !82
  store <4 x i64> %wide.load125, ptr %i.bb, align 8, !tbaa !13, !alias.scope !85, !noalias !82
  store <4 x i64> %wide.load126, ptr %i.bc, align 8, !tbaa !13, !alias.scope !85, !noalias !82
  %i.bd = getelementptr i8, ptr %next.gep122, i64 32
  %i.be = getelementptr i8, ptr %next.gep122, i64 64
  %i.bf = getelementptr i8, ptr %next.gep122, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep122, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  store <4 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  store <4 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  store <4 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %index.next127 = add nuw i64 %index120, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.bg, label %middle.block128, label %vector.body119, !llvm.loop !87

middle.block128:                                  ; preds = %vector.body119
  %cmp.n129 = icmp eq i64 %i.ao, %n.vec118
  br i1 %cmp.n129, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check134

vec.epilog.iter.check134:                         ; preds = %middle.block128
  %min.epilog.iters.check135 = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check135, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph136, !prof !72

vec.epilog.ph136:                                 ; preds = %vector.main.loop.iter.check115, %vec.epilog.iter.check134
  %vec.epilog.resume.val130 = phi i64 [ %n.vec118, %vec.epilog.iter.check134 ], [ 0, %vector.main.loop.iter.check115 ]
  %n.vec137 = and i64 %i.ao, 4611686018427387900  ; 3 uses
  %i.bh = shl i64 %n.vec137, 3                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ai, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.x, i64 %i.bh
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph136
  %index139 = phi i64 [ %vec.epilog.resume.val130, %vec.epilog.ph136 ], [ %index.next143, %vec.epilog.vector.body138 ] ; 2 uses
  %i.bk = shl i64 %index139, 3                    ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ai, i64 %i.bk
  %next.gep141 = getelementptr i8, ptr %i.x, i64 %i.bk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %wide.load142 = load <4 x i64>, ptr %next.gep141, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  store <4 x i64> %wide.load142, ptr %next.gep140, align 8, !tbaa !13, !alias.scope !85, !noalias !82
  store <4 x ptr> splat (ptr null), ptr %next.gep141, align 8, !tbaa !13, !alias.scope !82, !noalias !77
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next143, %n.vec137
  br i1 %i.bl, label %vec.epilog.middle.block144, label %vec.epilog.vector.body138, !llvm.loop !88

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body138
  %cmp.n145 = icmp eq i64 %i.ao, %n.vec137
  br i1 %cmp.n145, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck106, %iter.check132, %vec.epilog.iter.check134, %vec.epilog.middle.block144
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %iter.check132 ], [ %i.ai, %vector.memcheck106 ], [ %i.au, %vec.epilog.iter.check134 ], [ %i.bi, %vec.epilog.middle.block144 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %iter.check132 ], [ %i.x, %vector.memcheck106 ], [ %i.av, %vec.epilog.iter.check134 ], [ %i.bj, %vec.epilog.middle.block144 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !80, !noalias !77
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !77, !noalias !80
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !80, !noalias !77
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !89

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block128, %vec.epilog.middle.block144, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc18 ], [ %i.bi, %vec.epilog.middle.block144 ], [ %i.au, %middle.block128 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !8
  store ptr %i.bp, ptr %i.e, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !52
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.h
  %i.br = phi ptr [ %i.bq, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.t, %bb.h ]
  %i.bs = phi ptr [ %i.bp, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.w, %bb.h ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.035.052, i64 8 ; 2 uses
  %.not44 = icmp eq ptr %i.bt, %i.l
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.q

.thread:                                          ; preds = %bb.b, %bb.c
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !12  ; 6 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !52
  %.not.i.i19 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  store i64 %i.i, ptr %i.bu, align 8, !tbaa !13
  store ptr null, ptr %.sroa.039.054, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34

bb.n:                                             ; preds = %.thread
  %i.bx = load ptr, ptr %0, align 8, !tbaa !8     ; 12 uses
  %i.by = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i20

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc32 unwind label %.loopexit.split-lp46

.noexc32:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i20: ; preds = %bb.n
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i21, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #16
          to label %.noexc33 unwind label %.loopexit45 ; 12 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  store i64 %i.i, ptr %i.cj, align 8, !tbaa !13
  store ptr null, ptr %.sroa.039.054, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i23 = icmp eq ptr %i.bx, %i.bu
  br i1 %.not10.i.i.i.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28, label %iter.check

iter.check:                                       ; preds = %.noexc33
  %i.ck = add i64 %i.by, -8
  %i.cl = sub i64 %i.ck, %i.bz                    ; 3 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i24.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ci, i64 8
  %i.co = add i64 %i.by, -8
  %i.cp = sub i64 %i.co, %i.bz
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %scevgep88 = getelementptr i8, ptr %scevgep, i64 %i.cq
  %scevgep89 = getelementptr i8, ptr %i.bx, i64 8
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.cq
  %bound0 = icmp ult ptr %i.ci, %scevgep90
  %bound1 = icmp ult ptr %i.bx, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i24.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp ult i64 %i.cl, 120
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cr = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 4611686018427387888     ; 4 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ci, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.bx, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cv ; 4 uses
  %next.gep92 = getelementptr i8, ptr %i.bx, i64 %i.cv ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cw = getelementptr i8, ptr %next.gep92, i64 32
  %i.cx = getelementptr i8, ptr %next.gep92, i64 64
  %i.cy = getelementptr i8, ptr %next.gep92, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep92, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %wide.load93 = load <4 x i64>, ptr %i.cw, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %wide.load94 = load <4 x i64>, ptr %i.cx, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %wide.load95 = load <4 x i64>, ptr %i.cy, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %i.cz = getelementptr i8, ptr %next.gep, i64 32
  %i.da = getelementptr i8, ptr %next.gep, i64 64
  %i.db = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !98, !noalias !95
  store <4 x i64> %wide.load93, ptr %i.cz, align 8, !tbaa !13, !alias.scope !98, !noalias !95
  store <4 x i64> %wide.load94, ptr %i.da, align 8, !tbaa !13, !alias.scope !98, !noalias !95
  store <4 x i64> %wide.load95, ptr %i.db, align 8, !tbaa !13, !alias.scope !98, !noalias !95
  %i.dc = getelementptr i8, ptr %next.gep92, i64 32
  %i.dd = getelementptr i8, ptr %next.gep92, i64 64
  %i.de = getelementptr i8, ptr %next.gep92, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep92, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  store <4 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  store <4 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  store <4 x ptr> splat (ptr null), ptr %i.de, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i24.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.cn, 4611686018427387900   ; 3 uses
  %i.dg = shl i64 %n.vec97, 3                     ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ci, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.bx, i64 %i.dg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = shl i64 %index98, 3                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.ci, i64 %i.dj
  %next.gep100 = getelementptr i8, ptr %i.bx, i64 %i.dj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %wide.load101 = load <4 x i64>, ptr %next.gep100, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  store <4 x i64> %wide.load101, ptr %next.gep99, align 8, !tbaa !13, !alias.scope !98, !noalias !95
  store <4 x ptr> splat (ptr null), ptr %next.gep100, align 8, !tbaa !13, !alias.scope !95, !noalias !90
  %index.next102 = add nuw i64 %index98, 4        ; 2 uses
  %i.dk = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.cn, %n.vec97
  br i1 %cmp.n103, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i24.preheader

.lr.ph.i.i.i.i.i.i.i24.preheader:                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i25.ph = phi ptr [ %i.ci, %iter.check ], [ %i.ci, %vector.memcheck ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i26.ph = phi ptr [ %i.bx, %iter.check ], [ %i.bx, %vector.memcheck ], [ %i.cu, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i24

.lr.ph.i.i.i.i.i.i.i24:                           ; preds = %.lr.ph.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i24
  %.012.i.i.i.i.i.i.i25 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i24 ], [ %.012.i.i.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i.i.i24.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i26 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i24 ], [ %.0911.i.i.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i.i.i26, align 8, !tbaa !13, !alias.scope !93, !noalias !90
  store i64 %i.dl, ptr %.012.i.i.i.i.i.i.i25, align 8, !tbaa !13, !alias.scope !90, !noalias !93
  store ptr null, ptr %.0911.i.i.i.i.i.i.i26, align 8, !tbaa !13, !alias.scope !93, !noalias !90
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i26, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i25, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.dm, %i.bu
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i24, !llvm.loop !102

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i24, %middle.block, %vec.epilog.middle.block, %.noexc33
  %.0.lcssa.i.i.i.i.i.i.i29 = phi ptr [ %i.ci, %.noexc33 ], [ %i.dh, %vec.epilog.middle.block ], [ %i.ct, %middle.block ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i24 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i29, i64 8
  %.not.i23.i.i.i30 = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i30, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i31, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i31

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i31: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28
  store ptr %i.ci, ptr %0, align 8, !tbaa !8
  store ptr %i.do, ptr %i.e, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.dp, ptr %i.f, align 8, !tbaa !52
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34

.loopexit45:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i20
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp46:                             ; preds = %bb.o
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i31, %bb.m, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.039.054, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.dq, %i.c
  br i1 %.not43, label %._crit_edge57, label %bb.b

bb.q:                                             ; preds = %.loopexit45, %.loopexit.split-lp46, %bb.g, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.phi, %bb.l ], [ %lpad.loopexit47, %.loopexit45 ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp46 ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

declare void @_ZN4geos4geom18GeometryCollection17releaseGeometriesEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare noundef ptr @_ZN4geos4geom15GeometryFactory18getDefaultInstanceEv() local_unnamed_addr #5

declare void @_ZNK4geos4geom15GeometryFactory13buildGeometryEOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4geom4util16GeometryCombiner12setSkipEmptyEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.b, align 8, !tbaa !31
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12
end_hunk_0
