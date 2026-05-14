inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZNK6hermes3hbc9DebugInfo22disassembleStringTableERN4llvh11raw_ostreamE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

_ZN4llvh11raw_ostreamlsEPKc.exit19:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc18DebugInfoGenerator21appendSourceLocationsERKNS0_19DebugSourceLocationEjN4llvh8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr readonly captures(address) %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63   ; 4 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %._crit_edge56, label %bb.c

._crit_edge56:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !177
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load i32, ptr %i.p, align 1, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !177  ; 2 uses
  %.not = icmp eq i32 %i.q, %i.s
  br i1 %.not, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge56, %bb.c
  %i.t = phi i32 [ %.pre, %._crit_edge56 ], [ %i.s, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !178
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load i32, ptr %i.w, align 4, !tbaa !103
  %.not.i43 = icmp ult i32 %i.l, %i.x
  br i1 %.not.i43, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.y, i64 noundef 0, i64 noundef 12) #14
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %.pre.i, %bb.e ], [ %i.l, %bb.d ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  store i32 %i.i, ptr %i.ac, align 1
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.t, ptr %.sroa.448.0..sroa_idx, align 1
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.v, ptr %.sroa.549.0..sroa_idx, align 1
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !63
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit
  %i.af = zext i32 %2 to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.af) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.ai = zext i32 %i.ah to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ai) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !180
  %i.al = zext i32 %i.ak to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.al) #14
  %.idx = shl nuw nsw i64 %4, 5
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

._crit_edge:                                      ; preds = %bb.k
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef -1) #14
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.03855 = phi ptr [ %1, %.lr.ph ], [ %.03954, %bb.k ] ; 5 uses
  %.03954 = phi ptr [ %3, %.lr.ph ], [ %i.cp, %bb.k ] ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03954, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !177 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03855, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !177
  %.not42 = icmp eq i32 %i.ar, %i.at
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr %i.an, align 4, !tbaa !178
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !103
  %.not.i44 = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i44, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit46, label %bb.h, !prof !36

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.ap, i64 noundef 0, i64 noundef 12) #14
  %.pre.i45 = load i32, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit46

_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit46: ; preds = %bb.g, %bb.h
  %i.bd = phi i32 [ %.pre.i45, %bb.h ], [ %i.bb, %bb.g ]
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  store i32 %i.az, ptr %i.bg, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.ar, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.ba, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bh = load i32, ptr %i.k, align 8, !tbaa !63
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.k, align 8, !tbaa !63
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit46, %bb.f
  %i.bj = load i32, ptr %.03954, align 4, !tbaa !181
  %i.bk = load i32, ptr %.03855, align 4, !tbaa !181
  %i.bl = sub i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.03954, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !179
  %i.bo = getelementptr inbounds nuw i8, ptr %.03855, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !179
  %i.bq = sub i32 %i.bn, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.03954, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !180
  %i.bu = getelementptr inbounds nuw i8, ptr %.03855, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !180
  %i.bw = sub i32 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.03954, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !182 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03855, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !182 ; 2 uses
  %i.cb = shl nsw i64 %i.br, 1
  %i.cc = icmp ne i32 %i.by, %i.ca                ; 2 uses
  %i.cd = zext i1 %i.cc to i64
  %i.ce = or disjoint i64 %i.cb, %i.cd
  %i.cf = sext i32 %i.bl to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cf) #14
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ce) #14
  %i.cg = sext i32 %i.bw to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cg) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %.03954, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !183
  %i.cj = zext i32 %i.ci to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cj) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %.03954, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !69
  %i.cm = zext i32 %i.cl to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cm) #14
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = sub i32 %i.by, %i.ca
  %i.co = sext i32 %i.cn to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.co) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.03954, i64 32 ; 2 uses
  %.not41 = icmp eq ptr %i.cp, %i.am
  br i1 %.not41, label %._crit_edge, label %bb.f

bb.l:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.i, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18DebugInfoGeneratorC2EONS0_21UniquingFilenameTableE(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 1), (8, 32)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %4 = alloca %"struct.hermes::hbc::UniquingFilenameTable", align 8 ; 19 uses
  store i8 1, ptr %0, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !187
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !193
  %.06.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 10 uses
  store ptr %i.e, ptr %.06.i.i.ptr.i.i.i.i, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.g, align 8, !tbaa !195
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.e, ptr %i.h, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.l, align 8, !tbaa !195
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.e, ptr %i.m, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.i, ptr %i.n, align 8, !tbaa !197
  store ptr %i.e, ptr %i.f, align 8, !tbaa !198
  store ptr %i.e, ptr %i.k, align 8, !tbaa !199
  %i.o = load ptr, ptr %1, align 8, !tbaa !193
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 80, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !200
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.e, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit

_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit: ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !202
  store ptr %i.r, ptr %i.p, align 8, !tbaa !202
  store ptr null, ptr %i.q, align 8, !tbaa !202
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.v = load <2 x i32>, ptr %i.t, align 8, !tbaa !3
  store i32 0, ptr %i.t, align 8, !tbaa !3
  store <2 x i32> %i.v, ptr %i.s, align 8, !tbaa !3
  store i32 0, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  store i32 %i.y, ptr %i.w, align 8, !tbaa !3
  store i32 0, ptr %i.x, align 8, !tbaa !3
  call void @_ZN6hermes3hbc21UniquingFilenameTable9toStorageES1_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::hbc::ConsecutiveStringStorage") align 8 %i.b, ptr noundef nonnull %4) #14
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !204
  call void @_ZdlPv(ptr noundef %i.z) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aa = load <2 x ptr>, ptr %i.f, align 8, !tbaa !194, !noalias !206
  store <2 x ptr> %i.aa, ptr %2, align 16, !tbaa !194
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load <2 x ptr>, ptr %i.j, align 8, !tbaa !209, !noalias !206
  store <2 x ptr> %i.ac, ptr %i.ab, align 16, !tbaa !209
  %i.ad = load <2 x ptr>, ptr %i.k, align 8, !tbaa !194, !noalias !210
  store <2 x ptr> %i.ad, ptr %3, align 16, !tbaa !194
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load <2 x ptr>, ptr %i.n, align 8, !tbaa !209, !noalias !210
  store <2 x ptr> %i.af, ptr %i.ae, align 16, !tbaa !209
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i2, label %_ZN6hermes3hbc21UniquingFilenameTableD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !213 ; 2 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !214 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ] ; 3 uses
  %i.al = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !194
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef 512) #15
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.an = icmp ult ptr %.06.i.i.i.i.i, %i.ai
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i.i, !llvm.loop !215

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !193
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i.i, %bb.c
  %i.ao = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i.i ], [ %i.ag, %bb.c ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !187
  %i.aq = shl i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.aq) #15
  br label %_ZN6hermes3hbc21UniquingFilenameTableD2Ev.exit

_ZN6hermes3hbc21UniquingFilenameTableD2Ev.exit:   ; preds = %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.at, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.au, align 4, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.av, i8 0, i64 92, i1 false)
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef -1) #14
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef 0) #14
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef 0) #14
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef 0) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN6hermes3hbc21UniquingFilenameTable9toStorageES1_(ptr dead_on_unwind writable sret(%"class.hermes::hbc::ConsecutiveStringStorage") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc18DebugInfoGenerator25appendTextifiedCalleeDataEN4llvh8ArrayRefINS0_20DebugTextifiedCalleeEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %2) #14
  %.idx = shl nuw nsw i64 %2, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit
  %.01015 = phi ptr [ %1, %.lr.ph ], [ %i.ap, %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit ] ; 3 uses
  %i.q = load i32, ptr %.01015, align 8, !tbaa !216
  %i.r = zext i32 %i.q to i64
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.r) #14
  %i.s = getelementptr inbounds nuw i8, ptr %.01015, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  store i64 %i.x, ptr %i.b, align 8, !tbaa !20
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJmEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.y = load i8, ptr %i.p, align 8, !tbaa !22, !range !11, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ab) #14
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.ad = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !29 ; 2 uses
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !28  ; 2 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.ak, ptr noundef %i.ad, ptr noundef %i.af)
  br label %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit

_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit: ; preds = %bb.b, %bb.c
  %i.al = load ptr, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ao = zext i32 %i.an to i64
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ao) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %.01015, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.l
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc18DebugInfoGenerator15appendScopeDescENS_8OptValueIjEENS0_20DebugScopeDescriptor5FlagsEN4llvh8ArrayRefINS_10IdentifierEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 %1, i16 %2, ptr readonly captures(address) %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = and i64 %1, 4294967296
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %4, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = and i64 %1, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in = phi i64 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  %i.t = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %i.u = phi i64 [ %i.s, %bb.d ], [ 4294967295, %bb.c ]
  %i.v = trunc i64 %.in to i32                    ; 2 uses
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.u) #14
  %sh.diff = lshr i16 %2, 7
  %i.w = and i16 %sh.diff, 254
  %.masked = and i16 %2, 255
  %i.x = or i16 %i.w, %.masked
  %i.y = zext nneg i16 %i.x to i64
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.y) #14
  tail call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %4) #14
  %.idx = shl nuw nsw i64 %4, 3
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not18 = icmp eq i64 %4, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit
  %.0919 = phi ptr [ %3, %.lr.ph ], [ %i.ba, %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.0919, align 8, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.sroa.01.0.copyload, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !20
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJmEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.aj = load i8, ptr %i.ad, align 8, !tbaa !22, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE.exit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  call void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.am) #14
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !28
end_hunk_0
