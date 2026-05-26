inline.NumInlined: 3984
inline.NumDeleted: 2586
begin_hunk_0_@_ZN6hermes3hbc22generateBytecodeModuleEPNS_6ModuleEPNS_8FunctionES4_RKNS_25BytecodeGenerationOptionsENS_8OptValueIjEEPNS_18SourceMapGeneratorESt10unique_ptrINS0_14BCProviderBaseESt14default_deleteISD_EE:bb.a
_ZNSt6vectorIbSaIbEE13_M_reallocateEm.exit.i:     ; preds = %bb.m
  %i.ia = zext i32 %i.hv to i64                   ; 3 uses
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #19, !noalias !298 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia
  %i.ie = add nuw nsw i64 %i.ia, 63               ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = and i64 %i.if, 1073741816
  %i.ih = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #19, !noalias !298 ; 3 uses
  store ptr %i.ih, ptr %31, align 8, !noalias !298
  store i32 0, ptr %i.hw, align 8, !noalias !298
  store ptr %i.ih, ptr %i.hx, align 8, !noalias !298
  store i32 0, ptr %i.hy, align 8, !noalias !298
  %i.ii = lshr i64 %i.ie, 6
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ii
  store ptr %i.ij, ptr %i.hz, align 8, !tbaa !316, !noalias !298
  br label %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i

_ZNSt6vectorIbSaIbEE7reserveEm.exit.i:            ; preds = %_ZNSt6vectorIbSaIbEE13_M_reallocateEm.exit.i, %bb.m
  %.sroa.10.2104.i = phi ptr [ %i.ic, %_ZNSt6vectorIbSaIbEE13_M_reallocateEm.exit.i ], [ null, %bb.m ] ; 4 uses
  %.sroa.1757.2103.i = phi ptr [ %i.id, %_ZNSt6vectorIbSaIbEE13_M_reallocateEm.exit.i ], [ null, %bb.m ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ik, align 8, !tbaa !317, !noalias !298 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !111, !noalias !298 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.2.0.copyload.i.i, 2
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.idx.i
  %.not77.i = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not77.i, label %._crit_edge84.i, label %.lr.ph83.i

._crit_edge84.i:                                  ; preds = %._crit_edge.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i
  %.sroa.1757.0.lcssa.i = phi ptr [ %.sroa.1757.2103.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ], [ %.sroa.1757.1.lcssa.i, %._crit_edge.i ]
  %.sroa.10.0.lcssa.i = phi ptr [ %.sroa.10.2104.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ], [ %.sroa.10.1.lcssa.i, %._crit_edge.i ]
  %.sroa.050.0.lcssa.i = phi ptr [ %.sroa.10.2104.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ], [ %.sroa.050.1.lcssa.i, %._crit_edge.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %.sroa.0.0.copyload.i18.i = load ptr, ptr %i.im, align 8, !tbaa !110, !noalias !298 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %.sroa.2.0.copyload.i20.i = load i64, ptr %.sroa.2.0..sroa_idx.i19.i, align 8, !tbaa !111, !noalias !298 ; 6 uses
  %i.in = icmp slt i64 %.sroa.2.0.copyload.i20.i, 0
  br i1 %i.in, label %bb.n, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

bb.n:                                             ; preds = %._crit_edge84.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20, !noalias !318
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %._crit_edge84.i
  %.not.i.i.i.i.i = icmp samesign eq i64 %.sroa.2.0.copyload.i20.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.io = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.2.0.copyload.i20.i) #19, !noalias !318 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sroa.2.0.copyload.i20.i ; 2 uses
  %.not.i.i73 = icmp eq i64 %.sroa.2.0.copyload.i20.i, 1
  br i1 %.not.i.i73, label %bb.p, label %bb.o, !prof !321

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.io, ptr align 1 %.sroa.0.0.copyload.i18.i, i64 %.sroa.2.0.copyload.i20.i, i1 false), !noalias !318
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  %i.iq = load i8, ptr %.sroa.0.0.copyload.i18.i, align 1, !tbaa !322, !noalias !318
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !322, !noalias !318
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.p, %bb.o, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.io, %bb.p ], [ %i.io, %bb.o ]
  %.sroa.9.0.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.ip, %bb.p ], [ %i.ip, %bb.o ] ; 2 uses
  store ptr %.sroa.050.0.lcssa.i, ptr %32, align 8, !tbaa !323, !noalias !298
  %i.ir = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.sroa.10.0.lcssa.i, ptr %i.ir, align 8, !tbaa !324, !noalias !298
  %i.is = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %.sroa.1757.0.lcssa.i, ptr %i.is, align 8, !tbaa !325, !noalias !298
  %i.it = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.it, align 8, !tbaa !326, !noalias !298
  %i.iu = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %.sroa.9.0.i, ptr %i.iu, align 8, !tbaa !327, !noalias !298
  %i.iv = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 2 uses
  store ptr %.sroa.9.0.i, ptr %i.iv, align 8, !tbaa !328, !noalias !298
  %i.iw = getelementptr inbounds nuw i8, ptr %32, i64 48
  store i16 257, ptr %i.iw, align 8, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !noalias !298
  store ptr null, ptr %31, align 8, !noalias !298
  store i32 0, ptr %i.hw, align 8, !noalias !298
  store ptr null, ptr %i.hx, align 8, !noalias !298
  store i32 0, ptr %i.hy, align 8, !noalias !298
  store ptr null, ptr %i.hz, align 8, !noalias !298
  call void @_ZN6hermes3hbc22StringLiteralIDMappingC2ENS0_24ConsecutiveStringStorageESt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(224) %59, ptr noundef nonnull %32, ptr noundef nonnull %33) #18
  %i.ix = getelementptr inbounds nuw i8, ptr %59, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i8 0, i64 24, i1 false), !alias.scope !298
  %i.iy = load ptr, ptr %33, align 8, !tbaa !215, !noalias !298 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i74, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !316, !noalias !298 ; 2 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 2 uses
  %i.je = ashr exact i64 %i.jd, 3
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.jf
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jd) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.q, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.jh = load ptr, ptr %i.it, align 8, !tbaa !326, !noalias !298 ; 3 uses
  %.not.i.i.i.i23.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i23.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !328, !noalias !298
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.r, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.jm = load ptr, ptr %32, align 8, !tbaa !323, !noalias !298 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i1.i.i, label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit27.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.jn = load ptr, ptr %i.is, align 8, !tbaa !325, !noalias !298
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jq) #21
  br label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit27.i

_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit27.i: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.jr = load ptr, ptr %31, align 8, !tbaa !215, !noalias !298 ; 2 uses
  %.not.i.i28.i75 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i28.i75, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit27.i
  %i.js = load ptr, ptr %i.hz, align 8, !tbaa !316, !noalias !298 ; 2 uses
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = ashr exact i64 %i.jv, 3
  %i.jx = sub nsw i64 0, %i.jw
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.jx
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.jv) #21
  br label %bb.ae

.lr.ph83.i:                                       ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i, %._crit_edge.i
  %.01682.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ] ; 3 uses
  %.01781.i = phi ptr [ %i.kd, %._crit_edge.i ], [ %.sroa.0.0.copyload.i.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.050.080.i = phi ptr [ %.sroa.050.1.lcssa.i, %._crit_edge.i ], [ %.sroa.10.2104.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.10.079.i = phi ptr [ %.sroa.10.1.lcssa.i, %._crit_edge.i ], [ %.sroa.10.2104.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.1757.078.i = phi ptr [ %.sroa.1757.1.lcssa.i, %._crit_edge.i ], [ %.sroa.1757.2103.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.i ] ; 2 uses
  %i.jz = load i32, ptr %.01781.i, align 4, !tbaa !3, !noalias !298 ; 2 uses
  %i.ka = icmp slt i32 %i.jz, 0                   ; 2 uses
  %i.kb = and i32 %i.jz, 2147483647               ; 2 uses
  %.not88.i = icmp eq i32 %i.kb, 0
  br i1 %.not88.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph83.i
  %i.kc = add i32 %i.kb, %.01682.i                ; 2 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i, %.lr.ph83.i
  %.sroa.1757.1.lcssa.i = phi ptr [ %.sroa.1757.078.i, %.lr.ph83.i ], [ %.sroa.1757.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ] ; 2 uses
  %.sroa.10.1.lcssa.i = phi ptr [ %.sroa.10.079.i, %.lr.ph83.i ], [ %.sroa.10.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ] ; 2 uses
  %.sroa.050.1.lcssa.i = phi ptr [ %.sroa.050.080.i, %.lr.ph83.i ], [ %.sroa.050.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.01682.i, %.lr.ph83.i ], [ %i.kc, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.01781.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.kd, %i.il
  br i1 %.not.i, label %._crit_edge84.i, label %.lr.ph83.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i, %.lr.ph.preheader.i
  %.172.i = phi i32 [ %i.lg, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ], [ %.01682.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.050.171.i = phi ptr [ %.sroa.050.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ], [ %.sroa.050.080.i, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.10.170.i = phi ptr [ %.sroa.10.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ], [ %.sroa.10.079.i, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.1757.169.i = phi ptr [ %.sroa.1757.3.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i ], [ %.sroa.1757.078.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ke = load ptr, ptr %i.ht, align 8, !tbaa !10, !noalias !298
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !298
  %i.kh = call i64 %i.kg(ptr noundef nonnull align 8 dereferenceable(280) %i.ht, i32 noundef %.172.i) #18, !noalias !298, !inline_history !329 ; 2 uses
  %.not.i.i31.i72 = icmp eq ptr %.sroa.10.170.i, %.sroa.1757.169.i
  br i1 %.not.i.i31.i72, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  store i64 %i.kh, ptr %.sroa.10.170.i, align 4, !noalias !298
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE9push_backEOS1_.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.ki = ptrtoint ptr %.sroa.10.170.i to i64
  %i.kj = ptrtoint ptr %.sroa.050.171.i to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 6 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.w, label %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20, !noalias !298
  unreachable

_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.v
  %i.km = ashr exact i64 %i.kk, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.km ; 2 uses
  %i.ko = call i64 @llvm.umin.i64(i64 %i.kn, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i32.i = icmp ne i64 %i.kn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i32.i)
  %i.kp = shl nuw nsw i64 %i.ko, 3
  %i.kq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #19, !noalias !298 ; 4 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 %i.kk ; 2 uses
  store i64 %i.kh, ptr %i.kr, align 4, !noalias !298
  %i.ks = icmp sgt i64 %i.kk, 0
  br i1 %i.ks, label %bb.x, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kq, ptr align 4 %.sroa.050.171.i, i64 %i.kk, i1 false), !noalias !298
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.050.171.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.171.i, i64 noundef %i.kk) #21, !noalias !298
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ko
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.u
  %.sroa.1757.3.i = phi ptr [ %i.kt, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.1757.169.i, %bb.u ] ; 2 uses
  %.pn.i = phi ptr [ %i.kr, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.10.170.i, %bb.u ]
  %.sroa.050.3.i = phi ptr [ %i.kq, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.050.171.i, %bb.u ] ; 2 uses
  %.sroa.10.3.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.ku = load ptr, ptr %i.hx, align 8, !tbaa !215, !noalias !298 ; 7 uses
  %i.kv = load ptr, ptr %i.hz, align 8, !tbaa !316, !noalias !298
  %.not.i33.i = icmp eq ptr %i.ku, %i.kv
  %.sroa.2.0.copyload.i11.i.i = load i32, ptr %i.hy, align 8, !noalias !298 ; 4 uses
  br i1 %.not.i33.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE9push_backEOS1_.exit.i
  %i.kw = add i32 %.sroa.2.0.copyload.i11.i.i, 1
  store i32 %i.kw, ptr %i.hy, align 8, !tbaa !218, !noalias !298
  %i.kx = icmp eq i32 %.sroa.2.0.copyload.i11.i.i, 63
  br i1 %i.kx, label %bb.aa, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.hy, align 8, !tbaa !218, !noalias !298
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.ky, ptr %i.hx, align 8, !tbaa !215, !noalias !298
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.aa, %bb.z
  %i.kz = zext nneg i32 %.sroa.2.0.copyload.i11.i.i to i64
  %i.la = shl nuw i64 1, %i.kz                    ; 2 uses
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.lb = load i64, ptr %i.ku, align 8, !tbaa !111, !noalias !298
  %i.lc = or i64 %i.lb, %i.la
  store i64 %i.lc, ptr %i.ku, align 8, !tbaa !111, !noalias !298
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ac:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.ld = xor i64 %i.la, -1
  %i.le = load i64, ptr %i.ku, align 8, !tbaa !111, !noalias !298
  %i.lf = and i64 %i.le, %i.ld
  store i64 %i.lf, ptr %i.ku, align 8, !tbaa !111, !noalias !298
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ad:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE9push_backEOS1_.exit.i
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr %i.ku, i32 %.sroa.2.0.copyload.i11.i.i, i1 noundef zeroext %i.ka), !noalias !298
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i:          ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.lg = add i32 %.172.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lg, %i.kc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !330

.thread:                                          ; preds = %bb.l
  %i.lh = getelementptr inbounds nuw i8, ptr %59, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %59, i8 0, i64 192, i1 false)
  store i8 1, ptr %i.lh, align 16, !tbaa !191
  %i.li = getelementptr inbounds nuw i8, ptr %59, i64 49
  store i8 1, ptr %i.li, align 1, !tbaa !202
  %i.lj = getelementptr inbounds nuw i8, ptr %59, i64 56
  %i.lk = getelementptr inbounds nuw i8, ptr %59, i64 64
  store i64 8, ptr %i.lk, align 16, !tbaa !203
  %i.ll = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 2 uses
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !208
  %.06.i.i.ptr.i.i.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.ll, i64 24 ; 3 uses
  %i.lm = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19 ; 6 uses
  store ptr %i.lm, ptr %.06.i.i.ptr.i.i.i.i.i76, align 8, !tbaa !209
  %i.ln = getelementptr inbounds nuw i8, ptr %59, i64 72
  %i.lo = getelementptr inbounds nuw i8, ptr %59, i64 96
  store ptr %.06.i.i.ptr.i.i.i.i.i76, ptr %i.lo, align 16, !tbaa !210
  %i.lp = getelementptr inbounds nuw i8, ptr %59, i64 80
  store ptr %i.lm, ptr %i.lp, align 16, !tbaa !211
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 512 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %59, i64 88
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !212
  %i.ls = getelementptr inbounds nuw i8, ptr %59, i64 104
  %i.lt = getelementptr inbounds nuw i8, ptr %59, i64 128
  store ptr %.06.i.i.ptr.i.i.i.i.i76, ptr %i.lt, align 16, !tbaa !210
  %i.lu = getelementptr inbounds nuw i8, ptr %59, i64 112
  store ptr %i.lm, ptr %i.lu, align 16, !tbaa !211
  %i.lv = getelementptr inbounds nuw i8, ptr %59, i64 120
  store ptr %i.lq, ptr %i.lv, align 8, !tbaa !212
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !213
  store ptr %i.lm, ptr %i.ls, align 8, !tbaa !214
  %i.lw = getelementptr inbounds nuw i8, ptr %59, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.lw, i8 0, i64 20, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %59, i64 160
  store ptr null, ptr %i.lx, align 16, !tbaa !215
  %i.ly = getelementptr inbounds nuw i8, ptr %59, i64 168
  store i32 0, ptr %i.ly, align 8, !tbaa !218
  %i.lz = getelementptr inbounds nuw i8, ptr %59, i64 176
  store ptr null, ptr %i.lz, align 16, !tbaa !215
  %i.ma = getelementptr inbounds nuw i8, ptr %59, i64 184
  store i32 0, ptr %i.ma, align 8, !tbaa !218
  %i.mb = getelementptr inbounds nuw i8, ptr %59, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.mb, i8 0, i64 32, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %57, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %60, i8 0, i64 32, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i

bb.ae:                                            ; preds = %bb.t, %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %57, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !332 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %60, i8 0, i64 32, i1 false)
  %.not.i.i.i.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.not.i, label %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit, label %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i: ; preds = %.thread, %bb.ae
  %i.me = phi ptr [ %i.mc, %.thread ], [ %i.md, %bb.ae ] ; 2 uses
  %i.mf = phi ptr [ %i.hr, %.thread ], [ %.pre, %bb.ae ]
  %i.mg = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.mi = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, i8 0, i64 32, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.ml = call noundef zeroext i1 %i.mf(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 2) #18, !inline_history !334 ; 0 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !335
  store ptr %i.mn, ptr %i.mj, align 8, !tbaa !335
  %i.mo = load ptr, ptr %i.me, align 8, !tbaa !332
  store ptr %i.mo, ptr %i.mk, align 8, !tbaa !332
  store ptr %i.mi, ptr %60, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFbPN6hermes8FunctionEESt8functionIFbPKS1_EEE9_M_invokeERKSt9_Any_dataOS2_, ptr %i.mg, align 8, !tbaa !339
  store ptr @_ZNSt17_Function_handlerIFbPN6hermes8FunctionEESt8functionIFbPKS1_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.mh, align 8, !tbaa !332
  br label %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit

_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit: ; preds = %bb.ae, %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i
  %i.mp = phi ptr [ %i.md, %bb.ae ], [ %i.me, %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i ] ; 7 uses
  %i.mq = ptrtoint ptr %59 to i64                 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 0, ptr %i.mt, align 8
  store i64 %i.mq, ptr %61, align 8, !tbaa !341
  store ptr @"_ZNSt17_Function_handlerIFvN4llvh9StringRefEbEZN6hermes3hbc22generateBytecodeModuleEPNS3_6ModuleEPNS3_8FunctionES8_RKNS3_25BytecodeGenerationOptionsENS3_8OptValueIjEEPNS3_18SourceMapGeneratorESt10unique_ptrINS4_14BCProviderBaseESt14default_deleteISH_EEE3$_2E9_M_invokeERKSt9_Any_dataOS1_Ob", ptr %i.ms, align 8, !tbaa !343
  store ptr @"_ZNSt17_Function_handlerIFvN4llvh9StringRefEbEZN6hermes3hbc22generateBytecodeModuleEPNS3_6ModuleEPNS3_8FunctionES8_RKNS3_25BytecodeGenerationOptionsENS3_8OptValueIjEEPNS3_18SourceMapGeneratorESt10unique_ptrINS4_14BCProviderBaseESt14default_deleteISH_EEE3$_2E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.mr, align 8, !tbaa !332
  call void @_ZN6hermes3hbc22traverseLiteralStringsEPNS_6ModuleESt8functionIFbPNS_8FunctionEEES3_IFvN4llvh9StringRefEbEE(ptr noundef %1, ptr noundef nonnull %60, ptr noundef nonnull %61) #18
  %i.mu = load ptr, ptr %i.mr, align 8, !tbaa !332 ; 2 uses
  %.not.i77 = icmp eq ptr %i.mu, null
  br i1 %.not.i77, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit
  %i.mv = call noundef zeroext i1 %i.mu(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %61, i32 noundef 3) #18, !inline_history !345 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit, %bb.af
  %i.mw = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !332 ; 2 uses
  %.not.i78 = icmp eq ptr %i.mx, null
  br i1 %.not.i78, label %_ZNSt14_Function_baseD2Ev.exit79, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.my = call noundef zeroext i1 %i.mx(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %60, i32 noundef 3) #18, !inline_history !345 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit79

_ZNSt14_Function_baseD2Ev.exit79:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ag
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 2, !tbaa !346, !range !99, !noundef !100
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit79
  call void @_ZN6hermes3hbc32UniquingStringLiteralAccumulator9addStringEN4llvh9StringRefEb(ptr noundef nonnull align 8 dereferenceable(224) %59, ptr nonnull @.str.1, i64 22, i1 noundef zeroext false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt14_Function_baseD2Ev.exit79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, i8 0, i64 32, i1 false)
  %i.nc = load ptr, ptr %i.mp, align 8, !tbaa !332 ; 2 uses
  %.not.i.i.i.not.i80 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.not.i80, label %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit82, label %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i81

_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i81: ; preds = %bb.ai
  %i.nd = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.ne = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.nf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nf, i8 0, i64 32, i1 false)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.ni = call noundef zeroext i1 %i.nc(ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 2) #18, !inline_history !334 ; 0 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !335
  store ptr %i.nk, ptr %i.ng, align 8, !tbaa !335
  %i.nl = load ptr, ptr %i.mp, align 8, !tbaa !332
  store ptr %i.nl, ptr %i.nh, align 8, !tbaa !332
  store ptr %i.nf, ptr %62, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFbPN6hermes8FunctionEESt8functionIFbPKS1_EEE9_M_invokeERKSt9_Any_dataOS2_, ptr %i.nd, align 8, !tbaa !339
  store ptr @_ZNSt17_Function_handlerIFbPN6hermes8FunctionEESt8functionIFbPKS1_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.ne, align 8, !tbaa !332
  br label %_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit82

_ZNSt8functionIFbPN6hermes8FunctionEEEC2IRS_IFbPKS1_EEvEEOT_.exit82: ; preds = %bb.ai, %_ZNSt14_Function_base13_Base_managerISt8functionIFbPKN6hermes8FunctionEEEE15_M_init_functorIRS7_EEvRSt9_Any_dataOT_.exit.i81
  %i.nm = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.no = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 0, ptr %i.no, align 8
  store i64 %i.mq, ptr %63, align 8, !tbaa !341
  store ptr @"_ZNSt17_Function_handlerIFvN4llvh9StringRefEEZN6hermes3hbc22generateBytecodeModuleEPNS3_6ModuleEPNS3_8FunctionES8_RKNS3_25BytecodeGenerationOptionsENS3_8OptValueIjEEPNS3_18SourceMapGeneratorESt10unique_ptrINS4_14BCProviderBaseESt14default_deleteISH_EEE3$_3E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.nn, align 8, !tbaa !347
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc22generateBytecodeModuleEPNS_6ModuleEPNS_8FunctionES4_RKNS_25BytecodeGenerationOptionsENS_8OptValueIjEEPNS_18SourceMapGeneratorESt10unique_ptrINS0_14BCProviderBaseESt14default_deleteISD_EE:bb.a
  %i.sb = getelementptr inbounds nuw i8, ptr %69, i64 232 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %69, i64 256
  store ptr %.06.i.i.ptr.i.i.i.i5.i, ptr %i.sc, align 8, !tbaa !210
  %i.sd = getelementptr inbounds nuw i8, ptr %69, i64 240
  store ptr %i.sa, ptr %i.sd, align 8, !tbaa !211
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 512 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %69, i64 248 ; 2 uses
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !212
  %i.sg = getelementptr inbounds nuw i8, ptr %69, i64 264 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %69, i64 288
  store ptr %.06.i.i.ptr.i.i.i.i5.i, ptr %i.sh, align 8, !tbaa !210
  %i.si = getelementptr inbounds nuw i8, ptr %69, i64 272
  store ptr %i.sa, ptr %i.si, align 8, !tbaa !211
  %i.sj = getelementptr inbounds nuw i8, ptr %69, i64 280 ; 2 uses
  store ptr %i.se, ptr %i.sj, align 8, !tbaa !212
  store ptr %i.sa, ptr %i.sb, align 8, !tbaa !213
  store ptr %i.sa, ptr %i.sg, align 8, !tbaa !214
  %i.sk = getelementptr inbounds nuw i8, ptr %69, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.sk, i8 0, i64 20, i1 false)
  %i.sl = getelementptr inbounds nuw i8, ptr %69, i64 320 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %69, i64 344 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %69, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.sl, i8 0, i64 128, i1 false)
  store i64 8, ptr %i.sn, align 8, !tbaa !203
  %i.so = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 2 uses
  store ptr %i.so, ptr %i.sm, align 8, !tbaa !208
  %.06.i.i.ptr.i.i.i.i6.i = getelementptr inbounds nuw i8, ptr %i.so, i64 24 ; 3 uses
  %i.sp = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19 ; 6 uses
  store ptr %i.sp, ptr %.06.i.i.ptr.i.i.i.i6.i, align 8, !tbaa !209
  %i.sq = getelementptr inbounds nuw i8, ptr %69, i64 360 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %69, i64 384
  store ptr %.06.i.i.ptr.i.i.i.i6.i, ptr %i.sr, align 8, !tbaa !210
  %i.ss = getelementptr inbounds nuw i8, ptr %69, i64 368
  store ptr %i.sp, ptr %i.ss, align 8, !tbaa !211
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 512 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %69, i64 376 ; 2 uses
  store ptr %i.st, ptr %i.su, align 8, !tbaa !212
  %i.sv = getelementptr inbounds nuw i8, ptr %69, i64 392 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %69, i64 416
  store ptr %.06.i.i.ptr.i.i.i.i6.i, ptr %i.sw, align 8, !tbaa !210
  %i.sx = getelementptr inbounds nuw i8, ptr %69, i64 400
  store ptr %i.sp, ptr %i.sx, align 8, !tbaa !211
  %i.sy = getelementptr inbounds nuw i8, ptr %69, i64 408 ; 2 uses
  store ptr %i.st, ptr %i.sy, align 8, !tbaa !212
  store ptr %i.sp, ptr %i.sq, align 8, !tbaa !213
  store ptr %i.sp, ptr %i.sv, align 8, !tbaa !214
  %i.sz = getelementptr inbounds nuw i8, ptr %69, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.sz, i8 0, i64 20, i1 false)
  %i.ta = getelementptr inbounds nuw i8, ptr %69, i64 448 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ta, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %.sroa.061.078.i.i = load ptr, ptr %i.tb, align 8, !tbaa !377 ; 2 uses
  %.not6479.i.i = icmp eq ptr %.sroa.061.078.i.i, %i.tc
  %i.td = insertelement <2 x ptr> poison, ptr %i.rl, i64 0
  %i.te = insertelement <2 x ptr> %i.td, ptr %i.rp, i64 1 ; 2 uses
  br i1 %.not6479.i.i, label %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97
  %i.tf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.th = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %69, i64 48 ; 9 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %69, i64 176 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %69, i64 184 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %69, i64 192 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %69, i64 200 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %69, i64 208 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %69, i64 328 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %69, i64 336 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %69, i64 456 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %69, i64 464 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %69, i64 472 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %69, i64 480 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %69, i64 488 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i.i, %.lr.ph82.i.i
  %.sroa.061.080.i.i = phi ptr [ %.sroa.061.078.i.i, %.lr.ph82.i.i ], [ %.sroa.061.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ub = load ptr, ptr %i.rd, align 8, !tbaa !378, !nonnull !100, !align !379 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.061.080.i.i, ptr %i.d, align 8, !tbaa !380
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !332
  %.not.i.i.i.i99 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i.i99, label %bb.at, label %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit.i.i: ; preds = %bb.as
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !335
  %i.ug = call noundef zeroext i1 %i.uf(ptr noundef nonnull align 8 dereferenceable(32) %i.ub, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #18, !inline_history !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ug, label %bb.au, label %.loopexit.i.i

bb.au:                                            ; preds = %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i.i, i64 88
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i.i, i64 80 ; 2 uses
  %.sroa.057.073.i.i = load ptr, ptr %i.uh, align 8, !tbaa !377 ; 2 uses
  %.not6574.i.i = icmp eq ptr %.sroa.057.073.i.i, %i.ui
  br i1 %.not6574.i.i, label %.loopexit.i.i, label %.lr.ph77.i.i

.lr.ph77.i.i:                                     ; preds = %bb.au, %._crit_edge.i.i
  %.sroa.057.075.i.i = phi ptr [ %.sroa.057.0.i.i, %._crit_edge.i.i ], [ %.sroa.057.073.i.i, %bb.au ] ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.057.075.i.i, i64 64
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.057.075.i.i, i64 56 ; 2 uses
  %.sroa.053.069.i.i = load ptr, ptr %i.uj, align 8, !tbaa !377 ; 2 uses
  %.not6670.i.i = icmp eq ptr %.sroa.053.069.i.i, %i.uk
  br i1 %.not6670.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i, %.lr.ph77.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.057.075.i.i, i64 8
  %.sroa.057.0.i.i = load ptr, ptr %i.ul, align 8, !tbaa !377 ; 2 uses
  %.not65.i.i = icmp eq ptr %.sroa.057.0.i.i, %i.ui
  br i1 %.not65.i.i, label %.loopexit.i.i, label %.lr.ph77.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph77.i.i, %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i
  %.sroa.053.071.i.i = phi ptr [ %.sroa.053.0.i.i, %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i ], [ %.sroa.053.069.i.i, %.lr.ph77.i.i ] ; 12 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.053.071.i.i, i64 16
  %i.un = load i8, ptr %i.um, align 8, !tbaa !382 ; 2 uses
  %i.uo = icmp ne i8 %i.un, 54
  %.not67.i.i = icmp eq ptr %.sroa.053.071.i.i, null ; 2 uses
  %.not.i.i107 = or i1 %.not67.i.i, %i.uo
  br i1 %.not.i.i107, label %bb.bj, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr %i.tf, ptr %17, align 8, !tbaa !189
  store i32 0, ptr %i.tg, align 8, !tbaa !383
  store i32 8, ptr %i.th, align 4, !tbaa !190
  %i.up = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.053.071.i.i) #18
  %i.uq = add i32 %i.up, -1                       ; 2 uses
  %.not.i.i.i108 = icmp eq i32 %i.uq, 0
  br i1 %.not.i.i.i108, label %.._crit_edge_crit_edge.i.i.i, label %.lr.ph.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.av
  %.pre.i.i.i = load i32, ptr %i.tg, align 8, !tbaa !383
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.ur = phi i32 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.wx, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i ]
  %i.us = load ptr, ptr %17, align 8, !tbaa !189
  %i.ut = zext i32 %i.ur to i64
  %i.uu = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.uv = load ptr, ptr %i.ti, align 8, !tbaa !327
  %.not.i.i.i32.i.i = icmp eq ptr %i.uv, %i.uu
  br i1 %.not.i.i.i32.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  store ptr %i.uu, ptr %i.ti, align 8, !tbaa !327
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i.i:          ; preds = %bb.aw, %._crit_edge.i.i.i
  call void @_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr %i.us, i64 %i.ut, ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i1 noundef zeroext false) #18
  %i.uw = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.ux = load ptr, ptr %i.ti, align 8, !tbaa !327
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uw to i64
  %i.va = sub i64 %i.uy, %i.uz
  %i.vb = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(128) %i.ri, ptr %i.uw, i64 %i.va)
  %i.vc = trunc i64 %i.vb to i32                  ; 2 uses
  %i.vd = load ptr, ptr %i.tj, align 8, !tbaa !384 ; 4 uses
  %i.ve = load ptr, ptr %i.tk, align 8, !tbaa !385
  %.not.i.i.i.i.i.i = icmp eq ptr %i.vd, %i.ve
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i.i
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !3
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  store ptr %i.vf, ptr %i.tj, align 8, !tbaa !384
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit.i.i

bb.ay:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i.i
  %i.vg = load ptr, ptr %i.rw, align 8, !tbaa !386 ; 4 uses
  %i.vh = ptrtoint ptr %i.vd to i64
  %i.vi = ptrtoint ptr %i.vg to i64
  %i.vj = sub i64 %i.vh, %i.vi                    ; 6 uses
  %i.vk = icmp eq i64 %i.vj, 9223372036854775804
  br i1 %i.vk, label %bb.az, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ay
  %i.vl = ashr exact i64 %i.vj, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vl, i64 1)
  %i.vm = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.vl ; 2 uses
  %i.vn = call i64 @llvm.umin.i64(i64 %i.vm, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.vo = shl nuw nsw i64 %i.vn, 2
  %i.vp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vo) #19 ; 4 uses
  %i.vq = getelementptr inbounds i8, ptr %i.vp, i64 %i.vj ; 2 uses
  store i32 %i.vc, ptr %i.vq, align 4, !tbaa !3
  %i.vr = icmp sgt i64 %i.vj, 0
  br i1 %i.vr, label %bb.ba, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vp, ptr align 4 %i.vg, i64 %i.vj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vj) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.bb, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.vp, ptr %i.rw, align 8, !tbaa !386
  store ptr %i.vs, ptr %i.tj, align 8, !tbaa !384
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.vn
  store ptr %i.vt, ptr %i.tk, align 8, !tbaa !385
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit.i.i

_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.ax
  %i.vu = load ptr, ptr %i.tm, align 8, !tbaa !387 ; 4 uses
  %i.vv = load ptr, ptr %i.tn, align 8, !tbaa !388
  %.not.i.i.i.i.i109 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not.i.i.i.i.i109, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit.i.i
  store ptr %.sroa.053.071.i.i, ptr %i.vu, align 8, !tbaa !389
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store ptr %i.vw, ptr %i.tm, align 8, !tbaa !387
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i.i.i

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit.i.i
  %i.vx = load ptr, ptr %i.tl, align 8, !tbaa !391 ; 4 uses
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = sub i64 %i.vy, %i.vz                    ; 6 uses
  %i.wb = icmp eq i64 %i.wa, 9223372036854775800
  br i1 %i.wb, label %bb.be, label %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bd
  %i.wc = ashr exact i64 %i.wa, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wc, i64 1)
  %i.wd = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.wc ; 2 uses
  %i.we = call i64 @llvm.umin.i64(i64 %i.wd, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.wd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.wf = shl nuw nsw i64 %i.we, 3
  %i.wg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wf) #19 ; 4 uses
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 %i.wa ; 2 uses
  store ptr %.sroa.053.071.i.i, ptr %i.wh, align 8, !tbaa !389
  %i.wi = icmp sgt i64 %i.wa, 0
  br i1 %i.wi, label %bb.bf, label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i

bb.bf:                                            ; preds = %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wg, ptr align 8 %i.vx, i64 %i.wa, i1 false)
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i: ; preds = %bb.bf, %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.vx, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vx, i64 noundef %i.wa) #21
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.bg, %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i
  store ptr %i.wg, ptr %i.tl, align 8, !tbaa !391
  store ptr %i.wj, ptr %i.tm, align 8, !tbaa !387
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.we
  store ptr %i.wk, ptr %i.tn, align 8, !tbaa !388
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.bc
  %i.wl = load ptr, ptr %17, align 8, !tbaa !189  ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.tf
  br i1 %i.wm, label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes14AllocArrayInstE.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i.i.i
  call void @free(ptr noundef %i.wl) #18
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes14AllocArrayInstE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i
  %.08.i.i.i = phi i32 [ %i.wn, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i ], [ 0, %bb.av ]
  %i.wn = add nuw i32 %.08.i.i.i, 1               ; 3 uses
  %i.wo = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.053.071.i.i, i32 noundef %i.wn) #18
  %i.wp = load i32, ptr %i.tg, align 8, !tbaa !383 ; 2 uses
  %i.wq = load i32, ptr %i.th, align 4, !tbaa !190
  %.not.i.i18.i.i = icmp ult i32 %i.wp, %i.wq
  br i1 %.not.i.i18.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i, label %bb.bi, !prof !392

bb.bi:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull %i.tf, i64 noundef 0, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.tg, align 8, !tbaa !383
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i.i.i: ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.wr = phi i32 [ %.pre.i.i.i.i, %bb.bi ], [ %i.wp, %.lr.ph.i.i.i ]
  %i.ws = load ptr, ptr %17, align 8, !tbaa !189
  %i.wt = zext i32 %i.wr to i64
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wt
  %i.wv = ptrtoint ptr %i.wo to i64
  store i64 %i.wv, ptr %i.wu, align 1
  %i.ww = load i32, ptr %i.tg, align 8, !tbaa !383
  %i.wx = add i32 %i.ww, 1                        ; 2 uses
  store i32 %i.wx, ptr %i.tg, align 8, !tbaa !383
  %exitcond.not.i.i.i = icmp eq i32 %i.wn, %i.uq
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !393

_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes14AllocArrayInstE.exit.i.i: ; preds = %bb.bh, %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.wy = icmp ne i8 %i.un, 106
  %.not17.i.i = or i1 %.not67.i.i, %i.wy
  br i1 %.not17.i.i, label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wz = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.053.071.i.i) #18
  %i.xa = add i32 %i.wz, -1
  %i.xb = lshr i32 %i.xa, 1                       ; 2 uses
  %.not.i20.i.i = icmp eq i32 %i.xb, 0
  br i1 %.not.i20.i.i, label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.to, ptr %15, align 8, !tbaa !189
  store i32 0, ptr %i.tp, align 8, !tbaa !383
  store i32 8, ptr %i.tq, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %i.tr, ptr %16, align 8, !tbaa !189
  store i32 0, ptr %i.ts, align 8, !tbaa !383
  store i32 8, ptr %i.tt, align 4, !tbaa !190
  br label %bb.cg

bb.bm:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i
  %i.xc = load ptr, ptr %15, align 8, !tbaa !189
  %i.xd = load i32, ptr %i.tp, align 8, !tbaa !383
  %i.xe = zext i32 %i.xd to i64
  %i.xf = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.xg = load ptr, ptr %i.ti, align 8, !tbaa !327
  %.not.i.i.i43.i.i = icmp eq ptr %i.xg, %i.xf
  br i1 %.not.i.i.i43.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i44.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.xf, ptr %i.ti, align 8, !tbaa !327
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i44.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i44.i.i:        ; preds = %bb.bn, %bb.bm
  call void @_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr %i.xc, i64 %i.xe, ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i1 noundef zeroext true) #18
  %i.xh = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.xi = load ptr, ptr %i.ti, align 8, !tbaa !327
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %i.xh to i64
  %i.xl = sub i64 %i.xj, %i.xk
  %i.xm = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(128) %i.rx, ptr %i.xh, i64 %i.xl)
  %i.xn = trunc i64 %i.xm to i32                  ; 2 uses
  %i.xo = load ptr, ptr %i.tu, align 8, !tbaa !384 ; 4 uses
  %i.xp = load ptr, ptr %i.tv, align 8, !tbaa !385
  %.not.i.i.i.i45.i.i = icmp eq ptr %i.xo, %i.xp
  br i1 %.not.i.i.i.i45.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i44.i.i
  store i32 %i.xn, ptr %i.xo, align 4, !tbaa !3
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  store ptr %i.xq, ptr %i.tu, align 8, !tbaa !384
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit52.i.i

bb.bp:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i44.i.i
  %i.xr = load ptr, ptr %i.sl, align 8, !tbaa !386 ; 4 uses
  %i.xs = ptrtoint ptr %i.xo to i64
  %i.xt = ptrtoint ptr %i.xr to i64
  %i.xu = sub i64 %i.xs, %i.xt                    ; 6 uses
  %i.xv = icmp eq i64 %i.xu, 9223372036854775804
  br i1 %i.xv, label %bb.bq, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i46.i.i

bb.bq:                                            ; preds = %bb.bp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i46.i.i: ; preds = %bb.bp
  %i.xw = ashr exact i64 %i.xu, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i47.i.i = call i64 @llvm.umax.i64(i64 %i.xw, i64 1)
  %i.xx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i47.i.i, %i.xw ; 2 uses
  %i.xy = call i64 @llvm.umin.i64(i64 %i.xx, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i.i.i48.i.i = icmp ne i64 %i.xx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i48.i.i)
  %i.xz = shl nuw nsw i64 %i.xy, 2
  %i.ya = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xz) #19 ; 4 uses
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 %i.xu ; 2 uses
  store i32 %i.xn, ptr %i.yb, align 4, !tbaa !3
  %i.yc = icmp sgt i64 %i.xu, 0
  br i1 %i.yc, label %bb.br, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i49.i.i

bb.br:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i46.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ya, ptr align 4 %i.xr, i64 %i.xu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i49.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i49.i.i: ; preds = %bb.br, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i46.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %.not.i17.i.i.i.i.i50.i.i = icmp eq ptr %i.xr, null
  br i1 %.not.i17.i.i.i.i.i50.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i51.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i49.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.xu) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i51.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i51.i.i: ; preds = %bb.bs, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i49.i.i
  store ptr %i.ya, ptr %i.sl, align 8, !tbaa !386
  store ptr %i.yd, ptr %i.tu, align 8, !tbaa !384
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.xy
  store ptr %i.ye, ptr %i.tv, align 8, !tbaa !385
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit52.i.i

_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit52.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i51.i.i, %bb.bo
  %i.yf = load ptr, ptr %16, align 8, !tbaa !189
  %i.yg = load i32, ptr %i.ts, align 8, !tbaa !383
  %i.yh = zext i32 %i.yg to i64
  %i.yi = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.yj = load ptr, ptr %i.ti, align 8, !tbaa !327
  %.not.i.i.i33.i.i = icmp eq ptr %i.yj, %i.yi
  br i1 %.not.i.i.i33.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i34.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit52.i.i
  store ptr %i.yi, ptr %i.ti, align 8, !tbaa !327
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i34.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i34.i.i:        ; preds = %bb.bt, %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit52.i.i
  call void @_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr %i.yf, i64 %i.yh, ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i1 noundef zeroext false) #18
  %i.yk = load ptr, ptr %i.rh, align 8, !tbaa !326 ; 2 uses
  %i.yl = load ptr, ptr %i.ti, align 8, !tbaa !327
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yk to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(128) %i.sm, ptr %i.yk, i64 %i.yo)
  %i.yq = trunc i64 %i.yp to i32                  ; 2 uses
  %i.yr = load ptr, ptr %i.tw, align 8, !tbaa !384 ; 4 uses
  %i.ys = load ptr, ptr %i.tx, align 8, !tbaa !385
  %.not.i.i.i.i35.i.i = icmp eq ptr %i.yr, %i.ys
  br i1 %.not.i.i.i.i35.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i34.i.i
  store i32 %i.yq, ptr %i.yr, align 4, !tbaa !3
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  store ptr %i.yt, ptr %i.tw, align 8, !tbaa !384
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit42.i.i

bb.bv:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i34.i.i
  %i.yu = load ptr, ptr %i.ta, align 8, !tbaa !386 ; 4 uses
  %i.yv = ptrtoint ptr %i.yr to i64
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = sub i64 %i.yv, %i.yw                    ; 6 uses
  %i.yy = icmp eq i64 %i.yx, 9223372036854775804
  br i1 %i.yy, label %bb.bw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i36.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i36.i.i: ; preds = %bb.bv
  %i.yz = ashr exact i64 %i.yx, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i37.i.i = call i64 @llvm.umax.i64(i64 %i.yz, i64 1)
  %i.za = add nsw i64 %.sroa.speculated.i.i.i.i.i.i37.i.i, %i.yz ; 2 uses
  %i.zb = call i64 @llvm.umin.i64(i64 %i.za, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i.i.i38.i.i = icmp ne i64 %i.za, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i38.i.i)
  %i.zc = shl nuw nsw i64 %i.zb, 2
  %i.zd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zc) #19 ; 4 uses
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 %i.yx ; 2 uses
  store i32 %i.yq, ptr %i.ze, align 4, !tbaa !3
  %i.zf = icmp sgt i64 %i.yx, 0
  br i1 %i.zf, label %bb.bx, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i39.i.i

bb.bx:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i36.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zd, ptr align 4 %i.yu, i64 %i.yx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i39.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i39.i.i: ; preds = %bb.bx, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i36.i.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %.not.i17.i.i.i.i.i40.i.i = icmp eq ptr %i.yu, null
  br i1 %.not.i17.i.i.i.i.i40.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i41.i.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i39.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yu, i64 noundef %i.yx) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i41.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i41.i.i: ; preds = %bb.by, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i39.i.i
  store ptr %i.zd, ptr %i.ta, align 8, !tbaa !386
  store ptr %i.zg, ptr %i.tw, align 8, !tbaa !384
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.zb
  store ptr %i.zh, ptr %i.tx, align 8, !tbaa !385
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit42.i.i

_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit42.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i41.i.i, %bb.bu
  %i.zi = load ptr, ptr %i.tz, align 8, !tbaa !387 ; 4 uses
  %i.zj = load ptr, ptr %i.ua, align 8, !tbaa !388
  %.not.i.i.i24.i.i = icmp eq ptr %i.zi, %i.zj
  br i1 %.not.i.i.i24.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit42.i.i
  store ptr %.sroa.053.071.i.i, ptr %i.zi, align 8, !tbaa !389
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  store ptr %i.zk, ptr %i.tz, align 8, !tbaa !387
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i25.i.i

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder13serializeIntoERNS_19UniquedStringVectorEN4llvh8ArrayRefIPN6hermes7LiteralEEEb.exit42.i.i
  %i.zl = load ptr, ptr %i.ty, align 8, !tbaa !391 ; 4 uses
  %i.zm = ptrtoint ptr %i.zi to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 6 uses
  %i.zp = icmp eq i64 %i.zo, 9223372036854775800
  br i1 %i.zp, label %bb.cb, label %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i26.i.i

bb.cb:                                            ; preds = %bb.ca
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i26.i.i: ; preds = %bb.ca
  %i.zq = ashr exact i64 %i.zo, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i27.i.i = call i64 @llvm.umax.i64(i64 %i.zq, i64 1)
  %i.zr = add nsw i64 %.sroa.speculated.i.i.i.i.i27.i.i, %i.zq ; 2 uses
  %i.zs = call i64 @llvm.umin.i64(i64 %i.zr, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i28.i.i = icmp ne i64 %i.zr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i28.i.i)
  %i.zt = shl nuw nsw i64 %i.zs, 3
  %i.zu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #19 ; 4 uses
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 %i.zo ; 2 uses
  store ptr %.sroa.053.071.i.i, ptr %i.zv, align 8, !tbaa !389
  %i.zw = icmp sgt i64 %i.zo, 0
  br i1 %i.zw, label %bb.cc, label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i29.i.i

bb.cc:                                            ; preds = %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zu, ptr align 8 %i.zl, i64 %i.zo, i1 false)
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i29.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i29.i.i: ; preds = %bb.cc, %_ZNKSt6vectorIPKN6hermes11InstructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i26.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.not.i17.i.i.i.i30.i.i = icmp eq ptr %i.zl, null
  br i1 %.not.i17.i.i.i.i30.i.i, label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i31.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i29.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.zl, i64 noundef %i.zo) #21
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i31.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i31.i.i: ; preds = %bb.cd, %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i29.i.i
  store ptr %i.zu, ptr %i.ty, align 8, !tbaa !391
  store ptr %i.zx, ptr %i.tz, align 8, !tbaa !387
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zs
  store ptr %i.zy, ptr %i.ua, align 8, !tbaa !388
  br label %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i25.i.i

_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i25.i.i: ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i31.i.i, %bb.bz
  %i.zz = load ptr, ptr %16, align 8, !tbaa !189  ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.tr
  br i1 %i.aaa, label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i25.i.i
  call void @free(ptr noundef %i.zz) #18
  br label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit.i.i.i

_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit.i.i.i: ; preds = %bb.ce, %_ZNSt6vectorIPKN6hermes11InstructionESaIS3_EE9push_backEOS3_.exit.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.aab = load ptr, ptr %15, align 8, !tbaa !189 ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.to
  br i1 %i.aac, label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit10.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.aab) #18
  br label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit10.i.i.i

_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit10.i.i.i: ; preds = %bb.cf, %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i

bb.cg:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i, %bb.bl
  %.018.i.i.i = phi i32 [ 0, %bb.bl ], [ %i.aba, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i ] ; 2 uses
  %i.aad = shl nuw i32 %.018.i.i.i, 1             ; 2 uses
  %i.aae = or disjoint i32 %i.aad, 1
  %i.aaf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.053.071.i.i, i32 noundef %i.aae) #18
  %i.aag = add nuw i32 %i.aad, 2
  %i.aah = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.053.071.i.i, i32 noundef %i.aag) #18
  %i.aai = load i32, ptr %i.tp, align 8, !tbaa !383 ; 2 uses
  %i.aaj = load i32, ptr %i.tq, align 4, !tbaa !190
  %.not.i.i21.i.i = icmp ult i32 %i.aai, %i.aaj
  br i1 %.not.i.i21.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i, label %bb.ch, !prof !392

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.to, i64 noundef 0, i64 noundef 8) #18
  %.pre.i.i22.i.i = load i32, ptr %i.tp, align 8, !tbaa !383
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i: ; preds = %bb.ch, %bb.cg
  %i.aak = phi i32 [ %.pre.i.i22.i.i, %bb.ch ], [ %i.aai, %bb.cg ]
  %i.aal = load ptr, ptr %15, align 8, !tbaa !189
  %i.aam = zext i32 %i.aak to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %i.aam
  %i.aao = ptrtoint ptr %i.aaf to i64
  store i64 %i.aao, ptr %i.aan, align 1
  %i.aap = load i32, ptr %i.tp, align 8, !tbaa !383
  %i.aaq = add i32 %i.aap, 1
  store i32 %i.aaq, ptr %i.tp, align 8, !tbaa !383
  %i.aar = load i32, ptr %i.ts, align 8, !tbaa !383 ; 2 uses
  %i.aas = load i32, ptr %i.tt, align 4, !tbaa !190
  %.not.i11.i.i.i = icmp ult i32 %i.aar, %i.aas
  br i1 %.not.i11.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i, label %bb.ci, !prof !392

bb.ci:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.tr, i64 noundef 0, i64 noundef 8) #18
  %.pre.i12.i.i.i = load i32, ptr %i.ts, align 8, !tbaa !383
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit13.i.i.i: ; preds = %bb.ci, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i
  %i.aat = phi i32 [ %.pre.i12.i.i.i, %bb.ci ], [ %i.aar, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit.i23.i.i ]
  %i.aau = load ptr, ptr %16, align 8, !tbaa !189
  %i.aav = zext i32 %i.aat to i64
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aav
  %i.aax = ptrtoint ptr %i.aah to i64
  store i64 %i.aax, ptr %i.aaw, align 1
  %i.aay = load i32, ptr %i.ts, align 8, !tbaa !383
  %i.aaz = add i32 %i.aay, 1
  store i32 %i.aaz, ptr %i.ts, align 8, !tbaa !383
  %i.aba = add nuw nsw i32 %.018.i.i.i, 1         ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.aba, %i.xb
  br i1 %.not9.i.i.i, label %bb.bm, label %bb.cg, !llvm.loop !394

_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes28HBCAllocObjectFromBufferInstE.exit.i.i: ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit10.i.i.i, %bb.bk, %bb.bj, %_ZN12_GLOBAL__N_120LiteralBufferBuilder19serializeLiteralForEPN6hermes14AllocArrayInstE.exit.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.053.071.i.i, i64 8
  %.sroa.053.0.i.i = load ptr, ptr %i.abb, align 8, !tbaa !377 ; 2 uses
  %.not66.i.i = icmp eq ptr %.sroa.053.0.i.i, %i.uk
  br i1 %.not66.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %bb.au, %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit.i.i
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i.i, i64 8
  %.sroa.061.0.i.i = load ptr, ptr %i.abc, align 8, !tbaa !377 ; 2 uses
  %.not64.i.i = icmp eq ptr %.sroa.061.0.i.i, %i.tc
  br i1 %.not64.i.i, label %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit, label %bb.as

_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit: ; preds = %.loopexit.i.i
  %.pre212 = load ptr, ptr %i.rm, align 8, !tbaa !395, !noalias !396
  %i.abd = load <2 x ptr>, ptr %i.ro, align 8, !tbaa !209, !noalias !396
  %.pre215 = load ptr, ptr %i.rn, align 8, !tbaa !210, !noalias !396
  %.pre216 = load ptr, ptr %i.rr, align 8, !tbaa !395, !noalias !403
  %i.abe = load <2 x ptr>, ptr %i.rt, align 8, !tbaa !209, !noalias !403
  %.pre219 = load ptr, ptr %i.rs, align 8, !tbaa !210, !noalias !403
  br label %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i

_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i: ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97
  %i.abf = phi ptr [ %.pre219, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %.06.i.i.ptr.i.i.i.i.i98, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  %i.abg = phi ptr [ %.pre216, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %i.rl, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  %i.abh = phi ptr [ %.pre215, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %.06.i.i.ptr.i.i.i.i.i98, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  %i.abi = phi ptr [ %.pre212, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %i.rl, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  %i.abj = phi <2 x ptr> [ %i.abd, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %i.te, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  %i.abk = phi <2 x ptr> [ %i.abe, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i.loopexit ], [ %i.te, %_ZN6hermes3hbc32UniquingStringLiteralAccumulatorD2Ev.exit97 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  store ptr %i.abi, ptr %19, align 8, !tbaa !413, !alias.scope !396
  %i.abl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x ptr> %i.abj, ptr %i.abl, align 8, !tbaa !209, !alias.scope !396
  %i.abm = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.abh, ptr %i.abm, align 8, !tbaa !415, !alias.scope !396
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  store ptr %i.abg, ptr %20, align 8, !tbaa !413, !alias.scope !403
  %i.abn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x ptr> %i.abk, ptr %i.abn, align 8, !tbaa !209, !alias.scope !403
  %i.abo = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.abf, ptr %i.abo, align 8, !tbaa !415, !alias.scope !403
  %i.abp = load i8, ptr %i.rf, align 8, !tbaa !376, !range !99, !noundef !100
  %i.abq = trunc nuw i8 %i.abp to i1
  call void @_ZN6hermes3hbc24ConsecutiveStringStorageC1ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb1EEEET_SG_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %18, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20, i1 noundef zeroext %i.abq) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.abr = load <2 x ptr>, ptr %i.sb, align 8, !tbaa !209, !noalias !428
  store <2 x ptr> %i.abr, ptr %22, align 16, !tbaa !209, !alias.scope !428
  %i.abs = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.abt = load <2 x ptr>, ptr %i.sf, align 8, !tbaa !297, !noalias !428
  store <2 x ptr> %i.abt, ptr %i.abs, align 16, !tbaa !297, !alias.scope !428
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.abu = load <2 x ptr>, ptr %i.sg, align 8, !tbaa !209, !noalias !438
  store <2 x ptr> %i.abu, ptr %23, align 16, !tbaa !209, !alias.scope !438
  %i.abv = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.abw = load <2 x ptr>, ptr %i.sj, align 8, !tbaa !297, !noalias !438
  store <2 x ptr> %i.abw, ptr %i.abv, align 16, !tbaa !297, !alias.scope !438
  %i.abx = load i8, ptr %i.rf, align 8, !tbaa !376, !range !99, !noundef !100
  %i.aby = trunc nuw i8 %i.abx to i1
  call void @_ZN6hermes3hbc24ConsecutiveStringStorageC1ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb1EEEET_SG_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %21, ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23, i1 noundef zeroext %i.aby) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.abz = load <2 x ptr>, ptr %i.sq, align 8, !tbaa !209, !noalias !448
  store <2 x ptr> %i.abz, ptr %25, align 16, !tbaa !209, !alias.scope !448
  %i.aca = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.acb = load <2 x ptr>, ptr %i.su, align 8, !tbaa !297, !noalias !448
  store <2 x ptr> %i.acb, ptr %i.aca, align 16, !tbaa !297, !alias.scope !448
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.acc = load <2 x ptr>, ptr %i.sv, align 8, !tbaa !209, !noalias !458
  store <2 x ptr> %i.acc, ptr %26, align 16, !tbaa !209, !alias.scope !458
  %i.acd = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ace = load <2 x ptr>, ptr %i.sy, align 8, !tbaa !297, !noalias !458
  store <2 x ptr> %i.ace, ptr %i.acd, align 16, !tbaa !297, !alias.scope !458
  %i.acf = load i8, ptr %i.rf, align 8, !tbaa !376, !range !99, !noundef !100
  %i.acg = trunc nuw i8 %i.acf to i1
  call void @_ZN6hermes3hbc24ConsecutiveStringStorageC1ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb1EEEET_SG_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %24, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26, i1 noundef zeroext %i.acg) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %27, i8 0, i64 20, i1 false)
  %i.ach = load ptr, ptr %18, align 8, !tbaa !323
  %i.aci = getelementptr inbounds nuw i8, ptr %69, i64 192 ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %69, i64 200
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !387 ; 2 uses
  %i.acl = load ptr, ptr %i.aci, align 8, !tbaa !391 ; 2 uses
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = sub i64 %i.acm, %i.acn
  %i.acp = ashr exact i64 %i.aco, 3
  %.not47.i = icmp eq ptr %i.ack, %i.acl
  br i1 %.not47.i, label %._crit_edge.i102, label %.lr.ph.i100

._crit_edge.i102:                                 ; preds = %.lr.ph.i100, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i
  %i.acq = load ptr, ptr %21, align 8, !tbaa !323
  %i.acr = load ptr, ptr %24, align 8, !tbaa !323
  %i.acs = getelementptr inbounds nuw i8, ptr %69, i64 472 ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %69, i64 480
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !387 ; 2 uses
  %i.acv = load ptr, ptr %i.acs, align 8, !tbaa !391 ; 2 uses
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = ptrtoint ptr %i.acv to i64
  %i.acy = sub i64 %i.acw, %i.acx
  %i.acz = ashr exact i64 %i.acy, 3
  %.not1549.i = icmp eq ptr %i.acu, %i.acv
  br i1 %.not1549.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph.i100:                                      ; preds = %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i, %.lr.ph.i100
  %.048.i = phi i64 [ %i.adk, %.lr.ph.i100 ], [ 0, %_ZN12_GLOBAL__N_120LiteralBufferBuilder8traverseEv.exit.i ] ; 3 uses
  %.val17.i = load ptr, ptr %i.rw, align 8, !tbaa !386
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %.048.i
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !3
  %i.adc = zext i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.adc
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i111, align 8, !tbaa !111
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i111, align 8, !tbaa !111
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge112 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge112, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i111, align 8, !tbaa !111
  %i.cr = sub i64 %i.g, %i.bj
  %i.cs = shl nsw i64 %i.cr, 3
  %i.ct = zext i32 %2 to i64
  %i.cu = sub nsw i64 %i.ay, %i.ct
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dm, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cv, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.516.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.59.021.i.i.i.i.i63 = phi i32 [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.07.020.i.i.i.i.i64 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %i.cx = zext nneg i32 %.sroa.516.023.i.i.i.i.i to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = zext nneg i32 %.sroa.59.021.i.i.i.i.i63 to i64
  %i.da = shl nuw i64 1, %i.cz                    ; 2 uses
  %i.db = load i64, ptr %.sroa.013.022.i.i.i.i.i, align 8, !tbaa !111
  %i.dc = and i64 %i.db, %i.cy
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = load i64, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !111
  %i.de = or i64 %i.dd, %i.da
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.df = xor i64 %i.da, -1
  %i.dg = load i64, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !111
  %i.dh = and i64 %i.dg, %i.df
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.de, %bb.r ], [ %i.dh, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !111
  %i.di = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.dj = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i68 = select i1 %i.dj, i64 8, i64 0
  %spec.select.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i68
  %spec.select19.i.i.i.i.i70 = select i1 %i.dj, i32 0, i32 %i.di
  %i.dk = add i32 %.sroa.59.021.i.i.i.i.i63, 1
  %i.dl = icmp eq i32 %.sroa.59.021.i.i.i.i.i63, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dl, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i64, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %.sroa.59.1.i.i.i.i.i73 = select i1 %i.dl, i32 0, i32 %i.dk ; 2 uses
  %i.dm = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dn = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !826

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.07.0.lcssa.i.i.i.i.i58 = phi ptr [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.59.0.lcssa.i.i.i.i.i59 = phi i32 [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.do = ashr exact i64 %i.aw, 3
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.aw) #21
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dr = lshr i64 %i.bf, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dr
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !316
  store ptr %i.bi, ptr %0, align 8
  %.sroa.588.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.588.0..sroa_idx89, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i58, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i59, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

declare void @_ZN6hermes3hbc22StringLiteralIDMappingC2ENS0_24ConsecutiveStringStorageESt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc32UniquingStringLiteralAccumulator9addStringEN4llvh9StringRefEb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ne ptr %i.e, null
  %.neg.i.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %i.k, %.neg.i.i.i
  %i.n = shl nsw i64 %i.m, 4
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !395
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 5
  %i.v = add nsw i64 %i.n, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !395
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %i.ad = add nsw i64 %i.v, %i.ac
  %i.ae = tail call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %1, i64 %2) ; 6 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.b, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !215 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !316
  %.not.i = icmp eq ptr %i.ah, %i.aj
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ak, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !218
  %i.al = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.al, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !218
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !215
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.an = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !111
  %i.ar = and i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ah, align 8, !tbaa !111
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.e:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr %i.ah, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !827 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !357
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store i64 0, ptr %i.av, align 8, !tbaa !111
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !827
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !359 ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #20
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #19 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.bc ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !111
  %i.bk = icmp sgt i64 %i.bc, 0
  br i1 %i.bk, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bi, ptr %i.at, align 8, !tbaa !359
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !827
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !357
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.f, %bb.a
  br i1 %3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !215
  %i.bp = sdiv i64 %i.ae, 64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = and i64 %i.ae, -9223372036854775745
  %i.bs = icmp ugt i64 %i.br, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bs, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bq, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.bt = and i64 %i.ae, 63
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !111
  %i.bw = or i64 %i.bv, %i.bu
  store i64 %i.bw, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !111
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !324
  %i.bz = load ptr, ptr %0, align 8, !tbaa !323
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3                 ; 2 uses
  %.not = icmp ult i64 %i.ae, %i.cd
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = sub nuw i64 %i.ae, %i.cd
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !359
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !111
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !111
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::pair.585", align 8    ; 9 uses
  store ptr %1, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.h = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !751
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i32, ptr %i.k, align 8, !tbaa !828
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.m
  %.not8 = icmp ne ptr %i.i, %i.n
  %.not.not = select i1 %i.h, i1 %.not8, i1 false
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !829
  %i.q = zext i32 %i.p to i64
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !210
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ne ptr %i.u, null
  %.neg.i.i = sext i1 %i.ab to i64
  %i.ac = add nsw i64 %i.aa, %.neg.i.i
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !395 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !211
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5
  %i.al = add nsw i64 %i.ad, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !395
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5
  %i.at = add nsw i64 %i.al, %i.as                ; 2 uses
  %i.au = trunc i64 %i.at to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.av = load ptr, ptr %3, align 8, !tbaa !831   ; 4 uses
  store ptr %i.av, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !832 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !110
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !833
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  %.not.i = icmp eq ptr %i.ae, %i.ba
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store ptr %i.bb, ptr %i.ae, align 8, !tbaa !834
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !111
  %i.bd = icmp ugt i64 %i.aw, 15
  br i1 %i.bd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.be = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.be, ptr %i.ae, align 8, !tbaa !836
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !111
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !322
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.bg = phi ptr [ %i.be, %bb.e ], [ %i.bb, %bb.d ] ; 2 uses
  switch i64 %i.aw, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.av, align 1, !tbaa !322
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !322
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !835
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !836
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !214
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJPKcSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !395, !noalias !837
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i
  %i.bn = phi ptr [ %.pre, %bb.h ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !211, !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.i, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

bb.i:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !210, !noalias !837
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !209
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit, %bb.i
  %i.bu = phi ptr [ %i.bt, %bb.i ], [ %i.bn, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !836
  store ptr %i.bw, ptr %4, align 8, !tbaa !831
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !835
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !832
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.au, ptr %i.ca, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !843
end_hunk_2
