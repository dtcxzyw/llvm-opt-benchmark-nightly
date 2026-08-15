inline.NumInlined: 1683
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN3euf9ac_plugin24backward_reduce_monomialERKNS0_2eqERS1_RNS0_10monomial_tE:bb.a
  store i32 -2147483648, ptr %i.fc, align 4, !noalias !338
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !282, !noalias !338
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !288, !noalias !338, !nonnull !177, !align !178
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !289, !noalias !338, !nonnull !177, !align !178
  %i.fh = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, i64 noundef 32), !noalias !338 ; 6 uses
  store i32 -2147483648, ptr %i.fh, align 4, !noalias !338
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !tbaa.struct !282, !noalias !338
  %i.fj = icmp eq ptr %i.fc, %i.fh
  br i1 %i.fj, label %_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE.exit, label %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i.i

_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i.i: ; preds = %bb.z
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !288, !noalias !338, !nonnull !177, !align !178
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !289, !noalias !338, !nonnull !177, !align !178
  %i.fm = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i64 noundef 24), !noalias !338 ; 4 uses
  %i.fn = load i32, ptr %i.fc, align 4, !noalias !338 ; 2 uses
  %i.fo = add i32 %i.fn, 1
  %i.fp = and i32 %i.fo, 1073741823
  %i.fq = and i32 %i.fn, -1073741824
  %i.fr = or disjoint i32 %i.fp, %i.fq
  store i32 %i.fr, ptr %i.fc, align 4, !noalias !338
  %i.fs = load i32, ptr %i.fh, align 4, !noalias !338 ; 2 uses
  %i.ft = add i32 %i.fs, 1
  %i.fu = and i32 %i.ft, 1073741823
  %i.fv = and i32 %i.fs, -1073741824
  %i.fw = or disjoint i32 %i.fu, %i.fv
  store i32 %i.fw, ptr %i.fh, align 4, !noalias !338
  store i32 0, ptr %i.fm, align 4, !noalias !338
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fc, ptr %i.fx, align 8, !tbaa !290, !noalias !338
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fh, ptr %i.fy, align 8, !tbaa !290, !noalias !338
  br label %_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE.exit

_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE.exit: ; preds = %bb.z, %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i.i
  %.0.i.i.i48 = phi ptr [ %i.fm, %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i.i ], [ %i.fc, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i32 3, ptr %i.ey, align 8, !tbaa !151
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i.i48, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !103
  br label %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE6shrinkEj.exit.thread

_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE6shrinkEj.exit.thread: ; preds = %.split.thread142, %bb.a, %.split, %_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE.exit, %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE6shrinkEj.exit
  %.24076138 = phi i1 [ false, %.split ], [ true, %_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE.exit ], [ false, %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE6shrinkEj.exit ], [ false, %bb.a ], [ false, %.split.thread142 ]
  ret i1 %.24076138
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf9ac_plugin4joinENS_13justificationERKNS0_2eqE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.euf::justification") align 8 captures(none) initializes((0, 4), (8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %1, ptr nofree noundef readonly byval(%"class.euf::justification") align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288, !nonnull !177, !align !178
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289, !nonnull !177, !align !178
  %i.d = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef 32) ; 7 uses
  store i32 -2147483648, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !282
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !288, !nonnull !177, !align !178
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !177, !align !178
  %i.i = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 32) ; 6 uses
  store i32 -2147483648, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !282
  %i.k = icmp eq ptr %i.d, %i.i
  br i1 %i.k, label %_ZN26stacked_dependency_managerIN3euf13justificationEE7mk_joinEPN18dependency_managerINS2_6configEE10dependencyES7_.exit, label %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i

_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !288, !nonnull !177, !align !178
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !289, !nonnull !177, !align !178
  %i.n = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef 24) ; 4 uses
  %i.o = load i32, ptr %i.d, align 4              ; 2 uses
  %i.p = add i32 %i.o, 1
  %i.q = and i32 %i.p, 1073741823
  %i.r = and i32 %i.o, -1073741824
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %i.d, align 4
  %i.t = load i32, ptr %i.i, align 4              ; 2 uses
  %i.u = add i32 %i.t, 1
  %i.v = and i32 %i.u, 1073741823
  %i.w = and i32 %i.t, -1073741824
  %i.x = or disjoint i32 %i.v, %i.w
  store i32 %i.x, ptr %i.i, align 4
  store i32 0, ptr %i.n, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.d, ptr %i.y, align 8, !tbaa !290
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.i, ptr %i.z, align 8, !tbaa !290
  br label %_ZN26stacked_dependency_managerIN3euf13justificationEE7mk_joinEPN18dependency_managerINS2_6configEE10dependencyES7_.exit

_ZN26stacked_dependency_managerIN3euf13justificationEE7mk_joinEPN18dependency_managerINS2_6configEE10dependencyES7_.exit: ; preds = %bb.a, %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i
  %.0.i.i = phi ptr [ %i.n, %_ZN18dependency_managerIN26stacked_dependency_managerIN3euf13justificationEE6configEE7inc_refEPNS5_10dependencyE.exit17.i.i ], [ %i.d, %bb.a ]
  store i32 3, ptr %0, align 8, !tbaa !102, !alias.scope !341
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !103, !alias.scope !341
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i, ptr %i.ab, align 8, !tbaa !103, !alias.scope !341
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3euf9ac_plugin11well_formedERKNS0_2eqE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !233    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !234  ; 2 uses
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = zext i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 5 uses
  %.not56 = icmp eq ptr %i.i, null
  br i1 %.not56, label %._crit_edge, label %_ZNK3euf9ac_plugin10monomial_t3endEv.exit

_ZNK3euf9ac_plugin10monomial_t3endEv.exit:        ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !118  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %_ZNK3euf9ac_plugin10monomial_t3endEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -4
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.critedge
  %.02650 = phi ptr [ %i.v, %.critedge ], [ %i.i, %.lr.ph.split.preheader ] ; 2 uses
  %i.p = load ptr, ptr %.02650, align 8, !tbaa !157
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !159, !range !260, !noundef !177
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit, label %.critedge

_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit:       ; preds = %.lr.ph.split
  %i.t = load i32, ptr %i.o, align 4, !tbaa !118
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.lr.ph.split, %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.02650, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %_ZNK3euf9ac_plugin10monomial_t3endEv.exit
  %i.w = zext i32 %i.c to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !109  ; 5 uses
  %.not57 = icmp eq ptr %i.y, null
  br i1 %.not57, label %.loopexit, label %_ZNK3euf9ac_plugin10monomial_t3endEv.exit37

_ZNK3euf9ac_plugin10monomial_t3endEv.exit37:      ; preds = %._crit_edge
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !118 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -4
  %.not3351 = icmp eq i32 %i.aa, 0
  br i1 %.not3351, label %.loopexit, label %.lr.ph54.split

.lr.ph54.split:                                   ; preds = %_ZNK3euf9ac_plugin10monomial_t3endEv.exit37, %.critedge35
  %.02752 = phi ptr [ %i.al, %.critedge35 ], [ %i.y, %_ZNK3euf9ac_plugin10monomial_t3endEv.exit37 ] ; 2 uses
  %i.af = load ptr, ptr %.02752, align 8, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !159, !range !260, !noundef !177
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit39, label %.critedge35

_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit39:     ; preds = %.lr.ph54.split
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !118
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %.loopexit, label %.critedge35

.critedge35:                                      ; preds = %.lr.ph54.split, %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit39
  %i.al = getelementptr inbounds nuw i8, ptr %.02752, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.al, %i.ad
  br i1 %.not33, label %.loopexit, label %.lr.ph54.split

.loopexit:                                        ; preds = %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit, %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit39, %.critedge35, %._crit_edge, %_ZNK3euf9ac_plugin10monomial_t3endEv.exit37, %bb.a
  %.6 = phi i1 [ true, %._crit_edge ], [ false, %bb.a ], [ true, %_ZNK3euf9ac_plugin10monomial_t3endEv.exit37 ], [ true, %.critedge35 ], [ false, %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit39 ], [ false, %_ZNK3euf9ac_plugin10monomial_t4sizeEv.exit ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf9ac_plugin15simplify_sharedEjNS0_6sharedE(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"struct.euf::ac_plugin::shared") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.83", align 1 ; 4 uses
  %5 = alloca %"class.euf::justification", align 8 ; 4 uses
  %6 = alloca %class.ptr_vector, align 8          ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !237
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = zext i32 %i.c to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !109
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit, label %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE8capacityEv.exit.i.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !118
  %i.m = load i32, ptr %i.k, align 4, !tbaa !118
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.p) ; 2 uses
  store <2 x i32> %i.l, ptr %i.q, align 4, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !109
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !109  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit, label %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit.i.i.i

_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit.i.i.i: ; preds = %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE8capacityEv.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118  ; 3 uses
  %i.w = icmp ugt i32 %i.v, 1
  br i1 %i.w, label %bb.b, label %bb.c, !prof !252

bb.b:                                             ; preds = %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit.i.i.i
  %i.x = zext i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.s, i64 %i.y, i1 false)
  br label %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit

bb.c:                                             ; preds = %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit.i.i.i
  %i.z = icmp eq i32 %i.v, 1
  br i1 %i.z, label %bb.d, label %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !157
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !157
  br label %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit

_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit: ; preds = %bb.a, %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE8capacityEv.exit.i.i.i, %bb.b, %bb.c, %bb.d
  %i.ab = invoke noundef zeroext i1 @_ZN3euf9ac_plugin6reduceER10ptr_vectorINS0_4nodeEERNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit
  br i1 %i.ab, label %bb.g, label %bb.ao

bb.f:                                             ; preds = %_ZN10ptr_vectorIN3euf9ac_plugin4nodeEEC2ERKS3_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit

_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !118
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit.thread, label %bb.i

_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit.thread: ; preds = %bb.g, %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !235
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %._crit_edge.i, label %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit.i

_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit.i:     ; preds = %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit.thread
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !118 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %.not18.i = icmp eq i32 %i.an, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %.noexc51
  %i.ar = getelementptr inbounds nuw i8, ptr %.01419.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit.i, %bb.h
  %.01419.i = phi ptr [ %i.ar, %bb.h ], [ %i.ak, %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit.i ] ; 2 uses
  %i.as = load ptr, ptr %.01419.i, align 8, !tbaa !146 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !131
  %i.au = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.at)
          to label %.noexc unwind label %.loopexit101

.noexc:                                           ; preds = %.lr.ph.i
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.aw = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.av)
          to label %.noexc51 unwind label %.loopexit101

.noexc51:                                         ; preds = %.noexc
  %.not15.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not15.i, label %_ZNK3euf9ac_plugin8get_unitEPNS_5enodeE.exit, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit.i, %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit.thread
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.29, i32 noundef 210, ptr noundef nonnull @.str.1)
          to label %.noexc52 unwind label %.loopexit.split-lp102

.noexc52:                                         ; preds = %._crit_edge.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZNK3euf9ac_plugin8get_unitEPNS_5enodeE.exit unwind label %.loopexit.split-lp102

bb.i:                                             ; preds = %_ZNK6vectorIPN3euf9ac_plugin4nodeELb0EjE5emptyEv.exit
  %i.ax = invoke noundef ptr @_ZN3euf9ac_plugin13from_monomialERK10ptr_vectorINS0_4nodeEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNK3euf9ac_plugin8get_unitEPNS_5enodeE.exit unwind label %.loopexit.split-lp102

_ZNK3euf9ac_plugin8get_unitEPNS_5enodeE.exit:     ; preds = %.noexc51, %.noexc52, %bb.i
  %i.ay = phi ptr [ %i.ax, %bb.i ], [ null, %.noexc52 ], [ %i.as, %.noexc51 ] ; 2 uses
  %i.az = invoke noundef i32 @_ZN3euf9ac_plugin11to_monomialEPNS_5enodeERK10ptr_vectorINS0_4nodeEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK3euf9ac_plugin8get_unitEPNS_5enodeE.exit
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.f
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109 ; 7 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %._crit_edge, label %_ZN3euf9ac_plugin10monomial_t3endEv.exit

_ZN3euf9ac_plugin10monomial_t3endEv.exit:         ; preds = %bb.j
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bh
  %.not108 = icmp eq i32 %i.bf, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3euf9ac_plugin10monomial_t3endEv.exit
  %i.bj = add nsw i64 %i.bh, -8                   ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1
  %xtraiter = and i64 %i.bl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.039109.prol = phi ptr [ %i.bp, %.lr.ph.prol ], [ %i.bc, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bm = load ptr, ptr %.039109.prol, align 8, !tbaa !157
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !161
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  store i8 1, ptr %i.bo, align 1, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.039109.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !344

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.039109.unr = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = icmp ult i64 %i.bj, 56
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j, %_ZN3euf9ac_plugin10monomial_t3endEv.exit
  %i.br = load ptr, ptr %6, align 8, !tbaa !109   ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %._crit_edge113, label %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit

_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit: ; preds = %._crit_edge
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !118 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %.not42110 = icmp eq i32 %i.bu, 0
  br i1 %.not42110, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.bz = add i32 %1, 1                           ; 6 uses
  %.not.i.i57 = icmp ne i32 %i.bz, 0
  %i.ca = zext i32 %i.bz to i64
  %i.cb = zext i32 %1 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.l

.loopexit101:                                     ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit103 = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN3euf9ac_plugin15simplify_sharedEjNS0_6sharedE:bb.a

_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i:           ; preds = %.lr.ph.preheader.i.i.i, %bb.y, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
  %i.gc = phi ptr [ %.pre.i56, %.lr.ph.preheader.i.i.i ], [ %i.ei, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ %i.en, %bb.y ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.cb ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !103
  %.not.i55 = icmp eq i8 %i.ge, 0
  br i1 %.not.i55, label %bb.z, label %_ZN16tracked_uint_set6insertEj.exit

bb.z:                                             ; preds = %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  store i8 1, ptr %i.gd, align 1, !tbaa !103
  %i.gf = load ptr, ptr %i.cc, align 8, !tbaa !108 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !118 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gf, i64 -8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !118
  %i.gl = icmp eq i32 %i.gi, %i.gk
  br i1 %i.gl, label %bb.ab, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %.noexc59 unwind label %.loopexit.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %i.cc, align 8, !tbaa !108 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !118
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %.noexc59, %bb.aa
  %i.gm = phi i32 [ %.pre2.i.i, %.noexc59 ], [ %i.gi, %bb.aa ] ; 2 uses
  %i.gn = phi ptr [ %.pre.i.i, %.noexc59 ], [ %i.gf, %bb.aa ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gp = zext i32 %i.gm to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gp
  store i32 %1, ptr %i.gq, align 4, !tbaa !118
  %i.gr = add i32 %i.gm, 1
  store i32 %i.gr, ptr %i.go, align 4, !tbaa !118
  br label %_ZN16tracked_uint_set6insertEj.exit

_ZN16tracked_uint_set6insertEj.exit:              ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  %i.gs = load ptr, ptr %i.cd, align 8, !tbaa !109 ; 4 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN16tracked_uint_set6insertEj.exit
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !118 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gs, i64 -8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !118
  %i.gy = icmp eq i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZN16tracked_uint_set6insertEj.exit
  invoke void @_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.noexc63 unwind label %.loopexit.loopexit.split-lp

.noexc63:                                         ; preds = %bb.ad
  %.pre.i60 = load ptr, ptr %i.cd, align 8, !tbaa !109 ; 2 uses
  %.phi.trans.insert.i61 = getelementptr inbounds i8, ptr %.pre.i60, i64 -4
  %.pre2.i62 = load i32, ptr %.phi.trans.insert.i61, align 4, !tbaa !118
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc63, %bb.ac
  %i.gz = phi i32 [ %.pre2.i62, %.noexc63 ], [ %i.gv, %bb.ac ] ; 2 uses
  %i.ha = phi ptr [ %.pre.i60, %.noexc63 ], [ %i.gs, %bb.ac ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hc = zext i32 %i.gz to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hc
  store ptr %i.dp, ptr %i.hd, align 8, !tbaa !157
  %i.he = add i32 %i.gz, 1
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !118
  %i.hf = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 4 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !118 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hf, i64 -8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !118
  %i.hl = icmp eq i32 %i.hi, %i.hk
  br i1 %i.hl, label %bb.ag, label %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i

bb.ag:                                            ; preds = %bb.af, %bb.ae
  invoke void @_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.noexc67 unwind label %.loopexit.loopexit.split-lp

.noexc67:                                         ; preds = %bb.ag
  %.pre.i.i64 = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert.i.i65 = getelementptr inbounds i8, ptr %.pre.i.i64, i64 -4
  %.pre2.i.i66 = load i32, ptr %.phi.trans.insert.i.i65, align 4, !tbaa !118
  br label %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i: ; preds = %.noexc67, %bb.af
  %i.hm = phi i32 [ %.pre2.i.i66, %.noexc67 ], [ %i.hi, %bb.af ] ; 2 uses
  %i.hn = phi ptr [ %.pre.i.i64, %.noexc67 ], [ %i.hf, %bb.af ] ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -4
  %i.hp = zext i32 %i.hm to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hp
  store i32 3, ptr %i.hq, align 4, !tbaa !152
  %i.hr = add i32 %i.hm, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !118
  %i.hs = load ptr, ptr %0, align 8, !tbaa !11
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = invoke noundef i32 %i.hu(ptr noundef nonnull align 8 dereferenceable(512) %0)
          to label %.noexc68 unwind label %.loopexit.loopexit.split-lp, !inline_history !154

.noexc68:                                         ; preds = %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i
  invoke void @_ZN3euf6plugin16push_plugin_undoEj(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.hv)
          to label %.noexc69 unwind label %.loopexit.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc68
  %i.hw = load ptr, ptr %i.cf, align 8, !tbaa !106
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %bb.ah, label %_ZNKSt8functionIFvvEEclEv.exit.i

bb.ah:                                            ; preds = %.noexc69
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.ah
  unreachable

_ZNKSt8functionIFvvEEclEv.exit.i:                 ; preds = %.noexc69
  %i.hx = load ptr, ptr %i.ch, align 8, !tbaa !155
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
          to label %_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit unwind label %.loopexit.loopexit.split-lp, !inline_history !154

.loopexit.loopexit:                               ; preds = %bb.w, %bb.q
  %lpad.loopexit164 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit.split-lp:                      ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i, %.noexc68, %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i, %bb.ag, %bb.ad, %bb.ab, %bb.o
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit: ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i, %bb.l
  %i.hy = getelementptr inbounds nuw i8, ptr %.038111, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.hy, %i.bx
  br i1 %.not42, label %._crit_edge113.loopexit, label %bb.l

._crit_edge113.loopexit:                          ; preds = %_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !117
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.f
  %.pre121 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %._crit_edge113

._crit_edge113:                                   ; preds = %._crit_edge, %._crit_edge113.loopexit, %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit
  %i.hz = phi ptr [ %.pre121, %._crit_edge113.loopexit ], [ %i.bc, %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjE3endEv.exit ], [ %i.bc, %._crit_edge ] ; 5 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %._crit_edge117, label %_ZN3euf9ac_plugin10monomial_t3endEv.exit73

_ZN3euf9ac_plugin10monomial_t3endEv.exit73:       ; preds = %._crit_edge113
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !118 ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 3                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ie
  %.not46114 = icmp eq i32 %i.ic, 0
  br i1 %.not46114, label %._crit_edge117, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %_ZN3euf9ac_plugin10monomial_t3endEv.exit73
  %i.ig = add nsw i64 %i.ie, -8                   ; 2 uses
  %i.ih = lshr exact i64 %i.ig, 3
  %i.ii = add nuw nsw i64 %i.ih, 1
  %xtraiter171 = and i64 %i.ii, 7                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol

.lr.ph116.prol:                                   ; preds = %.lr.ph116.preheader, %.lr.ph116.prol
  %.037115.prol = phi ptr [ %i.im, %.lr.ph116.prol ], [ %i.hz, %.lr.ph116.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph116.prol ], [ 0, %.lr.ph116.preheader ]
  %i.ij = load ptr, ptr %.037115.prol, align 8, !tbaa !157
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !161
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 9
  store i8 0, ptr %i.il, align 1, !tbaa !259
  %i.im = getelementptr inbounds nuw i8, ptr %.037115.prol, i64 8 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol, !llvm.loop !345

.lr.ph116.prol.loopexit:                          ; preds = %.lr.ph116.prol, %.lr.ph116.preheader
  %.037115.unr = phi ptr [ %i.hz, %.lr.ph116.preheader ], [ %i.im, %.lr.ph116.prol ]
  %i.in = icmp ult i64 %i.ig, 56
  br i1 %i.in, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116, %._crit_edge113, %_ZN3euf9ac_plugin10monomial_t3endEv.exit73
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %.sroa.5.sroa.0.4.copyload = load <40 x i8>, ptr %2, align 8
  %.sroa.5.sroa.0.4.vec.expand = shufflevector <40 x i8> %.sroa.5.sroa.0.4.copyload, <40 x i8> poison, <44 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %.sroa.5.sroa.0.4.vecblend = shufflevector <44 x i8> %.sroa.5.sroa.0.4.vec.expand, <44 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <44 x i32> <i32 44, i32 45, i32 46, i32 47, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43>
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !112 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge117
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !118 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !118
  %i.iv = icmp eq i32 %i.is, %i.iu
  br i1 %i.iv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %._crit_edge117
  invoke void @_ZN6vectorISt4pairIjN3euf9ac_plugin6sharedEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.io)
          to label %.noexc77 unwind label %bb.ar

.noexc77:                                         ; preds = %bb.aj
  %.pre.i74 = load ptr, ptr %i.io, align 8, !tbaa !112 ; 2 uses
  %.phi.trans.insert.i75 = getelementptr inbounds i8, ptr %.pre.i74, i64 -4
  %.pre2.i76 = load i32, ptr %.phi.trans.insert.i75, align 4, !tbaa !118
  br label %bb.ak

.lr.ph116:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116
  %.037115 = phi ptr [ %i.kb, %.lr.ph116 ], [ %.037115.unr, %.lr.ph116.prol.loopexit ] ; 9 uses
  %i.iw = load ptr, ptr %.037115, align 8, !tbaa !157
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !161
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 9
  store i8 0, ptr %i.iy, align 1, !tbaa !259
  %i.iz = getelementptr inbounds nuw i8, ptr %.037115, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !157
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !161
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 9
  store i8 0, ptr %i.jc, align 1, !tbaa !259
  %i.jd = getelementptr inbounds nuw i8, ptr %.037115, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !157
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !161
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 9
  store i8 0, ptr %i.jg, align 1, !tbaa !259
  %i.jh = getelementptr inbounds nuw i8, ptr %.037115, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !157
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !161
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 9
  store i8 0, ptr %i.jk, align 1, !tbaa !259
  %i.jl = getelementptr inbounds nuw i8, ptr %.037115, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !157
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !161
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 9
  store i8 0, ptr %i.jo, align 1, !tbaa !259
  %i.jp = getelementptr inbounds nuw i8, ptr %.037115, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !157
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !161
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 9
  store i8 0, ptr %i.js, align 1, !tbaa !259
  %i.jt = getelementptr inbounds nuw i8, ptr %.037115, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !157
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !161
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 9
  store i8 0, ptr %i.jw, align 1, !tbaa !259
  %i.jx = getelementptr inbounds nuw i8, ptr %.037115, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !157
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !161
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 9
  store i8 0, ptr %i.ka, align 1, !tbaa !259
  %i.kb = getelementptr inbounds nuw i8, ptr %.037115, i64 64 ; 2 uses
  %.not46.7 = icmp eq ptr %i.kb, %i.if
  br i1 %.not46.7, label %._crit_edge117, label %.lr.ph116

bb.ak:                                            ; preds = %.noexc77, %bb.ai
  %i.kc = phi i32 [ %.pre2.i76, %.noexc77 ], [ %i.is, %bb.ai ]
  %i.kd = phi ptr [ %.pre.i74, %.noexc77 ], [ %i.ip, %bb.ai ]
  %i.ke = zext i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %i.ke ; 2 uses
  store i32 %1, ptr %i.kf, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store <44 x i8> %.sroa.5.sroa.0.4.vecblend, ptr %.sroa.5.0..sroa_idx, align 4
  %i.kg = load ptr, ptr %i.io, align 8, !tbaa !112
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -4 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !118
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !118
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !113 ; 4 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !118 ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.kl, i64 -8
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !118
  %i.kr = icmp eq i32 %i.ko, %i.kq
  br i1 %i.kr, label %bb.am, label %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i78

bb.am:                                            ; preds = %bb.al, %bb.ak
  invoke void @_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %.noexc84 unwind label %bb.k

.noexc84:                                         ; preds = %bb.am
  %.pre.i.i81 = load ptr, ptr %i.kk, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert.i.i82 = getelementptr inbounds i8, ptr %.pre.i.i81, i64 -4
  %.pre2.i.i83 = load i32, ptr %.phi.trans.insert.i.i82, align 4, !tbaa !118
  br label %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i78

_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i78: ; preds = %.noexc84, %bb.al
  %i.ks = phi i32 [ %.pre2.i.i83, %.noexc84 ], [ %i.ko, %bb.al ] ; 2 uses
  %i.kt = phi ptr [ %.pre.i.i81, %.noexc84 ], [ %i.kl, %bb.al ] ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -4
  %i.kv = zext i32 %i.ks to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kv
  store i32 6, ptr %i.kw, align 4, !tbaa !152
  %i.kx = add i32 %i.ks, 1
  store i32 %i.kx, ptr %i.ku, align 4, !tbaa !118
  %i.ky = load ptr, ptr %0, align 8, !tbaa !11
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = invoke noundef i32 %i.la(ptr noundef nonnull align 8 dereferenceable(512) %0)
          to label %.noexc85 unwind label %bb.k, !inline_history !154

.noexc85:                                         ; preds = %_ZN6vectorIN3euf9ac_plugin9undo_kindELb0EjE9push_backERKS2_.exit.i78
  invoke void @_ZN3euf6plugin16push_plugin_undoEj(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.lb)
          to label %.noexc86 unwind label %bb.k

.noexc86:                                         ; preds = %.noexc85
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !106
  %.not.i.i.i79 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i79, label %bb.an, label %_ZNKSt8functionIFvvEEclEv.exit.i80

bb.an:                                            ; preds = %.noexc86
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc87 unwind label %bb.k

.noexc87:                                         ; preds = %bb.an
  unreachable

_ZNKSt8functionIFvvEEclEv.exit.i80:               ; preds = %.noexc86
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !155
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(32) %i.le)
          to label %_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit89 unwind label %bb.k, !inline_history !154

_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit89: ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i80
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !116
  %i.lj = zext i32 %1 to i64
  %i.lk = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 %i.az, ptr %i.ll, align 8, !tbaa !237
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  invoke void @_ZN3euf6plugin10push_mergeEPNS_5enodeES2_NS_13justificationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.i, ptr noundef %i.ay, ptr noundef nonnull byval(%"class.euf::justification") align 8 %5)
          to label %bb.ao unwind label %bb.k

bb.ao:                                            ; preds = %_ZN3euf9ac_plugin9push_undoENS0_9undo_kindE.exit89, %bb.e
  %i.ln = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i90, label %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lo)
          to label %_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #22
  unreachable

_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjED2Ev.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.ar:                                            ; preds = %bb.aj
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %.loopexit101, %.loopexit.split-lp102, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ar, %bb.k, %bb.f
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.fu, %bb.v ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ], [ %i.ci, %bb.k ], [ %i.lr, %bb.ar ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit164, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp165, %.loopexit.loopexit.split-lp ]
  call void @_ZN6vectorIPN3euf9ac_plugin4nodeELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn47.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3euf9ac_plugin16justify_equationEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !nonnull !177, !align !178
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !177, !align !178
  %i.i = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 32) ; 3 uses
  store i32 -2147483648, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !282
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3euf9ac_pluginD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3euf9ac_pluginE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIbLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIbLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN6vectorIbLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIbLb0EjED2Ev.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %_ZN6vectorIbLb0EjED2Ev.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #22
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i:                    ; preds = %bb.f, %_ZN6vectorIjLb0EjED2Ev.exit
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN3euf9ac_plugin10ref_countsD2Ev.exit:           ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2, label %_ZN6vectorIjLb0EjED2Ev.exit.i3, label %bb.j

bb.j:                                             ; preds = %_ZN3euf9ac_plugin10ref_countsD2Ev.exit
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i3 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i3:                   ; preds = %bb.j, %_ZN3euf9ac_plugin10ref_countsD2Ev.exit
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !108 ; 2 uses
  %.not.i.i1.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i4, label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i3
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ab)
          to label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #22
  unreachable

_ZN3euf9ac_plugin10ref_countsD2Ev.exit5:          ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i3, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i6, label %_ZN6vectorIjLb0EjED2Ev.exit.i7, label %bb.n

bb.n:                                             ; preds = %_ZN3euf9ac_plugin10ref_countsD2Ev.exit5
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ah)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i7 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i7:                   ; preds = %bb.n, %_ZN3euf9ac_plugin10ref_countsD2Ev.exit5
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !108 ; 2 uses
  %.not.i.i1.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i8, label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit9, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i7
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.al)
          to label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit9 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN3euf9ac_plugin10ref_countsD2Ev.exit9:          ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i7, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i10, label %_ZN6vectorIjLb0EjED2Ev.exit.i11, label %bb.r

bb.r:                                             ; preds = %_ZN3euf9ac_plugin10ref_countsD2Ev.exit9
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ar)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i11 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i11:                  ; preds = %bb.r, %_ZN3euf9ac_plugin10ref_countsD2Ev.exit9
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %.not.i.i1.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i12, label %_ZN3euf9ac_plugin10ref_countsD2Ev.exit13, label %bb.t

bb.t:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i11
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
end_hunk_1
