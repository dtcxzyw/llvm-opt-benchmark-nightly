Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Polygonizer?download=true
inline.NumInlined: 361
inline.NumDeleted: 230
begin_hunk_0_@_ZN4geos9operation10polygonize11Polygonizer21allInputsFormPolygonsEv:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %.not2 = icmp eq ptr %i.j, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not2, %bb.c ]
  ret i1 %i.m
}

declare void @_ZN4geos9operation10polygonize15PolygonizeGraph13deleteDanglesERSt6vectorIPKNS_4geom10LineStringESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN4geos9operation10polygonize15PolygonizeGraph14deleteCutEdgesERSt6vectorIPKNS_4geom10LineStringESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN4geos9operation10polygonize15PolygonizeGraph12getEdgeRingsERSt6vectorIPNS1_8EdgeRingESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10polygonize11Polygonizer14findValidRingsERKSt6vectorIPNS1_8EdgeRingESaIS5_EERS7_RS3_ISt10unique_ptrINS_4geom10LineStringESt14default_deleteISD_EESaISG_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.105", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit
  %.sroa.014.019 = phi ptr [ %i.a, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit ] ; 5 uses
  %i.h = load ptr, ptr %.sroa.014.019, align 8, !tbaa !78
  %i.i = call noundef zeroext i1 @_ZN4geos9operation10polygonize8EdgeRing7isValidEv(ptr noundef nonnull align 8 dereferenceable(77) %i.h)
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !119  ; 4 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.sroa.014.019, align 8, !tbaa !78
  store ptr %i.l, ptr %i.j, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.f, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !116    ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #15 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %.sroa.014.019, align 8, !tbaa !78
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !78
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #16
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.y, ptr %1, align 8, !tbaa !116
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !120
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ae = load ptr, ptr %.sroa.014.019, align 8, !tbaa !78
  call void @_ZN4geos9operation10polygonize8EdgeRing13getLineStringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %3, ptr noundef nonnull align 8 dereferenceable(77) %i.ae)
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !73  ; 6 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %bb.j, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.i
  %i.ah = load i64, ptr %3, align 8, !tbaa !75
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !73
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !72    ; 12 uses
  %i.ak = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #15
          to label %.noexc9 unwind label %.loopexit ; 12 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  %i.aw = load i64, ptr %3, align 8, !tbaa !75
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !75
  store ptr null, ptr %3, align 8, !tbaa !75
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc9
  %i.ax = add i64 %i.ak, -8
  %i.ay = sub i64 %i.ax, %i.al                    ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.au, i64 8
  %i.bb = add i64 %i.ak, -8
  %i.bc = sub i64 %i.bb, %i.al
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %scevgep30 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %scevgep31 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.bd
  %bound0 = icmp ult ptr %i.au, %scevgep32
  %bound1 = icmp ult ptr %i.aj, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check33 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.ba, 12
  %n.vec = and i64 %i.ba, 4611686018427387888     ; 4 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.au, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aj, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bi ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.aj, i64 %i.bi ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.bj = getelementptr i8, ptr %next.gep34, i64 32
  %i.bk = getelementptr i8, ptr %next.gep34, i64 64
  %i.bl = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep34, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %wide.load35 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %wide.load36 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %wide.load37 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %i.bm = getelementptr i8, ptr %next.gep, i64 32
  %i.bn = getelementptr i8, ptr %next.gep, i64 64
  %i.bo = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !147, !noalias !146
  store <4 x i64> %wide.load35, ptr %i.bm, align 8, !tbaa !75, !alias.scope !147, !noalias !146
  store <4 x i64> %wide.load36, ptr %i.bn, align 8, !tbaa !75, !alias.scope !147, !noalias !146
  store <4 x i64> %wide.load37, ptr %i.bo, align 8, !tbaa !75, !alias.scope !147, !noalias !146
  %i.bp = getelementptr i8, ptr %next.gep34, i64 32
  %i.bq = getelementptr i8, ptr %next.gep34, i64 64
  %i.br = getelementptr i8, ptr %next.gep34, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  store <4 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  store <4 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ba, 4611686018427387900   ; 3 uses
  %i.bt = shl i64 %n.vec39, 3                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.au, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aj, i64 %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = shl i64 %index40, 3                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.au, i64 %i.bw
  %next.gep42 = getelementptr i8, ptr %i.aj, i64 %i.bw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %wide.load43 = load <4 x i64>, ptr %next.gep42, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  store <4 x i64> %wide.load43, ptr %next.gep41, align 8, !tbaa !75, !alias.scope !147, !noalias !146
  store <4 x ptr> splat (ptr null), ptr %next.gep42, align 8, !tbaa !75, !alias.scope !146, !noalias !144
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ba, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.aj, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !145, !noalias !144
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !144, !noalias !145
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !145, !noalias !144
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.au, %.noexc9 ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #16
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.l
  store ptr %i.au, ptr %2, align 8, !tbaa !72
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !143
  %.pr = load ptr, ptr %3, align 8, !tbaa !75     ; 3 uses
  %.not.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.cd = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(48) %.pr) #14, !inline_history !142
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !75    ; 3 uses
  %.not.i11 = icmp eq ptr %i.cg, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit13, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i12

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i12: ; preds = %bb.m
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(48) %i.cg) #14, !inline_history !142
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit13

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit13: ; preds = %bb.m, %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d, %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
  call void @_ZN4geos4util9Interrupt7processEv()
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10polygonize11Polygonizer18findShellsAndHolesERKSt6vectorIPNS1_8EdgeRingESaIS5_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119
  %.not.i.i8 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i8, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit10, label %_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i9

_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i9: ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit10

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit10: ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit, %_ZSt8_DestroyIPPN4geos9operation10polygonize8EdgeRingES4_EvT_S6_RSaIT0_E.exit.i.i9
  %i.i = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not22 = icmp eq ptr %i.i, %i.k
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE5clearEv.exit10
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit
  %.sroa.019.023 = phi ptr [ %i.i, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit ] ; 5 uses
  %i.n = load ptr, ptr %.sroa.019.023, align 8, !tbaa !78
  tail call void @_ZN4geos9operation10polygonize8EdgeRing11computeHoleEv(ptr noundef nonnull align 8 dereferenceable(77) %i.n)
  %i.o = load ptr, ptr %.sroa.019.023, align 8, !tbaa !78 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i8, ptr %i.p, align 8, !tbaa !148, !range !65, !noundef !66
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !119  ; 4 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.c, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !116  ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #15 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load ptr, ptr %.sroa.019.023, align 8, !tbaa !78
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !78
  %i.aj = icmp sgt i64 %i.y, 0
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #16
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !116
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.al, ptr %i.m, align 8, !tbaa !120
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !119 ; 4 uses
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !120
  %.not.i11 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.o, ptr %i.am, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !116 ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.l, label %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i12

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.k
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i13, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #15 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load ptr, ptr %.sroa.019.023, align 8, !tbaa !78
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !78
  %i.bd = icmp sgt i64 %i.as, 0
  br i1 %i.bd, label %bb.m, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15

bb.m:                                             ; preds = %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15: ; preds = %bb.m, %_ZNKSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_M_check_lenEmPKc.exit.i.i12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i16, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i17, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #16
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i17

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i17: ; preds = %bb.n, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !116
  store ptr %i.be, ptr %i.g, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bf, ptr %i.l, align 8, !tbaa !120
  br label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i17, %bb.j, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d
  tail call void @_ZN4geos4util9Interrupt7processEv()
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.019.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4geos9operation10polygonize12HoleAssigner19assignHolesToShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EES8_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10polygonize11Polygonizer18findDisjointShellsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not1112.i = icmp eq ptr %i.b, %i.d
  br i1 %.not1112.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.sroa.08.013.i = phi ptr [ %i.l, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !78 ; 3 uses
  %i.f = tail call noundef ptr @_ZNK4geos9operation10polygonize8EdgeRing12getOuterHoleEv(ptr noundef nonnull align 8 dereferenceable(77) %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 73 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !113, !range !65, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 75
  store i8 1, ptr %i.j, align 1, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 74
  store i8 1, ptr %i.k, align 2, !tbaa !115
  store i8 1, ptr %i.g, align 1, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 8 ; 2 uses
  %.not11.i = icmp eq ptr %i.l, %i.d
  br i1 %.not11.i, label %_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE.exit, label %.lr.ph.i

_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE.exit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !76 ; 2 uses
  %.not8 = icmp eq ptr %.pre, %.pre10
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a, %_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE.exit, %bb.f
  %.sroa.05.09 = phi ptr [ %i.q, %bb.f ], [ %.pre, %_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.05.09, align 8, !tbaa !78 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 74
  %i.o = load i8, ptr %i.n, align 2, !tbaa !115, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN4geos9operation10polygonize8EdgeRing23updateIncludedRecursiveEv(ptr noundef nonnull align 8 dereferenceable(77) %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %.pre10
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10polygonize11Polygonizer15extractPolygonsERSt6vectorIPNS1_8EdgeRingESaIS5_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.114", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not19 = icmp eq ptr %i.a, %i.c
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.bs, %bb.k ] ; 14 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.bt, %bb.k ] ; 6 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.bu, %bb.k ] ; 4 uses
  %.sroa.015.020 = phi ptr [ %i.a, %.lr.ph ], [ %i.bv, %bb.k ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.015.020, align 8, !tbaa !78 ; 2 uses
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 75
  %i.k = load i8, ptr %i.j, align 1, !tbaa !114, !range !65, !noundef !66
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN4geos9operation10polygonize8EdgeRing10getPolygonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.114") align 8 %3, ptr noundef nonnull align 8 dereferenceable(77) %i.i)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread: ; preds = %bb.e
  %i.m = load i64, ptr %3, align 8, !tbaa !70
  store i64 %i.m, ptr %i.h, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #15
          to label %.noexc10 unwind label %.loopexit ; 14 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = load i64, ptr %3, align 8, !tbaa !70
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !70
  store ptr null, ptr %3, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc10
  %i.ab = add i64 %i.o, -8
  %i.ac = sub i64 %i.ab, %i.p                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.y, i64 8
  %i.af = add i64 %i.o, -8
  %i.ag = sub i64 %i.af, %i.p
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %scevgep28 = getelementptr i8, ptr %scevgep, i64 %i.ah
  %scevgep29 = getelementptr i8, ptr %i.f, i64 8
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep30
  %bound1 = icmp ult ptr %i.f, %scevgep28
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 4611686018427387888     ; 4 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.f, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.f, i64 %i.am ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.an = getelementptr i8, ptr %next.gep32, i64 32
  %i.ao = getelementptr i8, ptr %next.gep32, i64 64
  %i.ap = getelementptr i8, ptr %next.gep32, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep32, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %wide.load33 = load <4 x i64>, ptr %i.an, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %wide.load34 = load <4 x i64>, ptr %i.ao, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %wide.load35 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %i.aq = getelementptr i8, ptr %next.gep, i64 32
  %i.ar = getelementptr i8, ptr %next.gep, i64 64
  %i.as = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !162, !noalias !161
  store <4 x i64> %wide.load33, ptr %i.aq, align 8, !tbaa !70, !alias.scope !162, !noalias !161
  store <4 x i64> %wide.load34, ptr %i.ar, align 8, !tbaa !70, !alias.scope !162, !noalias !161
  store <4 x i64> %wide.load35, ptr %i.as, align 8, !tbaa !70, !alias.scope !162, !noalias !161
  %i.at = getelementptr i8, ptr %next.gep32, i64 32
  %i.au = getelementptr i8, ptr %next.gep32, i64 64
  %i.av = getelementptr i8, ptr %next.gep32, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  store <4 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  store <4 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.ae, 4611686018427387900   ; 3 uses
  %i.ax = shl i64 %n.vec37, 3                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.y, i64 %i.ax   ; 2 uses
  %i.az = getelementptr i8, ptr %i.f, i64 %i.ax
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = shl i64 %index38, 3                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.y, i64 %i.ba
  %next.gep40 = getelementptr i8, ptr %i.f, i64 %i.ba ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %wide.load41 = load <4 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  store <4 x i64> %wide.load41, ptr %next.gep39, align 8, !tbaa !70, !alias.scope !162, !noalias !161
  store <4 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !161, !noalias !159
  %index.next42 = add nuw i64 %index38, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.ae, %n.vec37
  br i1 %cmp.n43, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !160, !noalias !159
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !159, !noalias !160
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !160, !noalias !159
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !157

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc10 ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.f) #16
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, %bb.h
  store ptr %i.y, ptr %0, align 8, !tbaa !67
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 3 uses
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !64
  %.pr = load ptr, ptr %3, align 8, !tbaa !70     ; 3 uses
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit
  %i.bh = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(72) %.pr) #14, !inline_history !158
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i
  %i.bk = phi ptr [ %i.f, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread ], [ %i.y, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit ], [ %i.y, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i ]
  %i.bl = phi ptr [ %i.g, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread ], [ %i.bg, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit ], [ %i.bg, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i ]
  %i.bm = phi ptr [ %i.n, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit.thread ], [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit ], [ %i.bf, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit14

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !70    ; 3 uses
  %.not.i12 = icmp eq ptr %i.bo, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit14, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i13

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i13: ; preds = %bb.j
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(72) %i.bo) #14, !inline_history !158
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit14

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i13, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %lpad.phi, %bb.j ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit, %bb.c
  %i.bs = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit ], [ %i.f, %bb.c ]
  %i.bt = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit ], [ %i.g, %bb.c ]
  %i.bu = phi ptr [ %i.bm, %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit ], [ %i.h, %bb.c ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #14, !inline_history !163
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #16
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4geos9operation10polygonize8EdgeRing7isValidEv(ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

declare void @_ZN4geos9operation10polygonize8EdgeRing13getLineStringEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.105") align 8, ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

declare void @_ZN4geos4util9Interrupt7processEv() local_unnamed_addr #6

declare void @_ZN4geos9operation10polygonize8EdgeRing11computeHoleEv(ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10polygonize11Polygonizer15findOuterShellsERSt6vectorIPNS1_8EdgeRingESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not1112 = icmp eq ptr %i.a, %i.c
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.08.013 = phi ptr [ %i.k, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.08.013, align 8, !tbaa !78 ; 3 uses
  %i.e = tail call noundef ptr @_ZNK4geos9operation10polygonize8EdgeRing12getOuterHoleEv(ptr noundef nonnull align 8 dereferenceable(77) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !113, !range !65, !noundef !66
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 75
  store i8 1, ptr %i.i, align 1, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 1, ptr %i.j, align 2, !tbaa !115
  store i8 1, ptr %i.f, align 1, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %.not11 = icmp eq ptr %i.k, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4geos9operation10polygonize8EdgeRing23updateIncludedRecursiveEv(ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

declare noundef ptr @_ZNK4geos9operation10polygonize8EdgeRing12getOuterHoleEv(ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

declare void @_ZN4geos9operation10polygonize8EdgeRing10getPolygonEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.114") align 8, ptr noundef nonnull align 8 dereferenceable(77)) local_unnamed_addr #6

declare void @_ZN4geos4geom23GeometryComponentFilter9filter_rwEPNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4geos4geom23GeometryComponentFilter6isDoneEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom23GeometryComponentFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation10polygonize11Polygonizer15LineStringAdderD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !71}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN4geos4geom23GeometryComponentFilterE"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN4geos9operation10polygonize11PolygonizerE", !12, i64 0}
!14 = !{!"_ZTSN4geos9operation10polygonize11Polygonizer15LineStringAdderE", !11, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!"p1 _ZTSN4geos9operation10polygonize15PolygonizeGraphE", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !12, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !18, i64 0}
!20 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !19, i64 0}
!21 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !20, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !21, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !22, i64 0}
!24 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !23, i64 0}
!25 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !12, i64 0}
!26 = !{!"_ZTSN4geos4geom8GeometryE", !24, i64 8, !6, i64 16, !25, i64 24, !12, i64 32}
!27 = !{!26, !25, i64 24}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation10polygonize15PolygonizeGraphELb0EE", !16, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation10polygonize15PolygonizeGraphESt14default_deleteIS3_EEE", !29, i64 0}
!31 = !{!"_ZTSSt5tupleIJPN4geos9operation10polygonize15PolygonizeGraphESt14default_deleteIS3_EEE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation10polygonize15PolygonizeGraphESt14default_deleteIS3_EE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation10polygonize15PolygonizeGraphESt14default_deleteIS3_ELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt10unique_ptrIN4geos9operation10polygonize15PolygonizeGraphESt14default_deleteIS3_EE", !33, i64 0}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"p2 _ZTSN4geos4geom10LineStringE", !35, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIPKN4geos4geom10LineStringESaIS4_EE", !39, i64 0}
!41 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EE", !12, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE", !44, i64 0}
!46 = !{!"p2 _ZTSN4geos9operation10polygonize8EdgeRingE", !35, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN4geos9operation10polygonize8EdgeRingESaIS4_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIPN4geos9operation10polygonize8EdgeRingESaIS4_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIPN4geos9operation10polygonize8EdgeRingESaIS4_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE", !49, i64 0}
!51 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EE", !12, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE", !54, i64 0}
!56 = !{!"_ZTSN4geos9operation10polygonize11PolygonizerE", !14, i64 0, !28, i64 16, !28, i64 17, !34, i64 24, !40, i64 32, !40, i64 56, !45, i64 80, !50, i64 104, !50, i64 128, !55, i64 152}
!57 = !{!56, !28, i64 16}
!58 = !{!56, !28, i64 17}
!59 = !{!"p2 _ZTSN4geos4geom8GeometryE", !35, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSN4geos4geom8GeometryE", !12, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!51, !51, i64 0}
!64 = !{!52, !51, i64 16}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!52, !51, i64 0}
!68 = !{!52, !51, i64 8}
!69 = !{!"p1 _ZTSN4geos4geom7PolygonE", !12, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!42, !41, i64 0}
!73 = !{!42, !41, i64 8}
!74 = !{!"p1 _ZTSN4geos4geom10LineStringE", !12, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!46, !46, i64 0}
!77 = !{!"p1 _ZTSN4geos9operation10polygonize8EdgeRingE", !12, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p2 _ZTSN4geos9operation10polygonize22PolygonizeDirectedEdgeE", !35, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIPKN4geos9operation10polygonize22PolygonizeDirectedEdgeESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIPKN4geos9operation10polygonize22PolygonizeDirectedEdgeESaIS5_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIPKN4geos9operation10polygonize22PolygonizeDirectedEdgeESaIS5_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIPKN4geos9operation10polygonize22PolygonizeDirectedEdgeESaIS5_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !12, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom10LinearRingELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom10LinearRingESt14default_deleteIS2_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN4geos4geom10LinearRingESt14default_deleteIS2_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom10LinearRingESt14default_deleteIS2_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom10LinearRingESt14default_deleteIS2_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EE", !89, i64 0}
!91 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !12, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom23CoordinateArraySequenceELb0EE", !91, i64 0}
!93 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EEE", !92, i64 0}
!94 = !{!"_ZTSSt5tupleIJPN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EEE", !93, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_ELb1ELb1EE", !95, i64 0}
!97 = !{!"_ZTSSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EE", !96, i64 0}
!98 = !{!"p1 _ZTSN4geos9algorithm6locate22PointOnGeometryLocatorE", !12, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9algorithm6locate22PointOnGeometryLocatorELb0EE", !98, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EEE", !99, i64 0}
!101 = !{!"_ZTSSt5tupleIJPN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EEE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_ELb1ELb1EE", !102, i64 0}
!104 = !{!"_ZTSSt10unique_ptrIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EE", !103, i64 0}
!105 = !{!"p1 _ZTSSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE", !12, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS4_EESaIS7_EELb0EE", !105, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS4_EESaIS7_EES5_IS9_EEE", !106, i64 0}
!108 = !{!"_ZTSSt5tupleIJPSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS4_EESaIS7_EES5_IS9_EEE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS4_EESaIS7_EES5_IS9_EE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS4_EESaIS7_EES5_IS9_ELb1ELb1EE", !109, i64 0}
!111 = !{!"_ZTSSt10unique_ptrISt6vectorIS_IN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EES4_IS8_EE", !110, i64 0}
!112 = !{!"_ZTSN4geos9operation10polygonize8EdgeRingE", !25, i64 0, !83, i64 8, !90, i64 32, !97, i64 40, !104, i64 48, !111, i64 56, !77, i64 64, !28, i64 72, !28, i64 73, !28, i64 74, !28, i64 75, !28, i64 76}
!113 = !{!112, !28, i64 73}
!114 = !{!112, !28, i64 75}
!115 = !{!112, !28, i64 74}
!116 = !{!47, !46, i64 0}
!117 = !{!36, !36, i64 0}
!118 = !{!41, !41, i64 0}
!119 = !{!47, !46, i64 8}
!120 = !{!47, !46, i64 16}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!"branch_weights", i32 4, i32 12}
!124 = distinct !{ptr @_ZN4geos9operation10polygonize11Polygonizer3addEPKNS_4geom10LineStringE, null, null, null}
!125 = distinct !{null, null, null}
!126 = !{ptr @_ZN4geos9operation10polygonize11Polygonizer3addEPNS_4geom8GeometryE}
!127 = !{ptr @_ZN4geos9operation10polygonize11Polygonizer3addEPKNS_4geom8GeometryE}
!128 = distinct !{null, null, null, null, null, null, null}
!129 = distinct !{null, null, null, null, null, null, null}
!130 = distinct !{!130, !71}
!131 = distinct !{null, null, ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!132 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!133 = distinct !{!133, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !133, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!136 = distinct !{!136, i1 false, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !71, !121, !122}
!140 = distinct !{!140, !71, !121, !122}
!141 = distinct !{!141, !71, !121}
!142 = distinct !{null, null}
!143 = !{!42, !41, i64 16}
!144 = !{!134}
!145 = !{!135}
!146 = !{!135, !137}
!147 = !{!134, !138}
!148 = !{!112, !28, i64 72}
!149 = distinct !{!149, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!150 = distinct !{!150, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !71, !121, !122}
!156 = distinct !{!156, !71, !121, !122}
!157 = distinct !{!157, !71, !121}
!158 = distinct !{null, null}
!159 = !{!150}
!160 = !{!151}
!161 = !{!151, !153}
!162 = !{!150, !154}
!163 = distinct !{null, null, null, null, null}
end_hunk_0
