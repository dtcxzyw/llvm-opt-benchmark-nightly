Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/texturesource?download=true
inline.NumInlined: 2115
inline.NumDeleted: 995
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13TextureSource10getPaletteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.noexc147, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142, %.noexc145, %bb.ak, %bb.ai, %bb.bf, %._crit_edge, %bb.ax, %bb.aw, %bb.at, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit98, %bb.as, %bb.ar, %bb.ao, %.noexc90, %_ZTW13warningstream.exit88, %bb.ag, %bb.ad, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit77, %bb.ac, %bb.ab, %bb.y, %.noexc69, %_ZTW13warningstream.exit67, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  %.pre186.pre.pre.pre = load ptr, ptr %3, align 8, !tbaa !231
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit
  %i.jn = phi ptr [ %i.hm, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit ], [ %i.fj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit ], [ %i.fa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pre186.pre.pre.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit ], [ %lpad.loopexit174, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i127 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !232
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.js) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128 ], [ %i.bq, %bb.t ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.bk:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not162 = icmp eq ptr %i.je, null
  br i1 %.not162, label %bb.bn, label %.thread

.thread:                                          ; preds = %bb.d, %bb.bk
  %.sroa.0154.0158 = phi ptr [ %i.je, %bb.bk ], [ %i.r, %bb.d ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0154.0158, i64 40
  br label %bb.bn

.critedge:                                        ; preds = %bb.m, %.noexc137
  %i.ju = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ju)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 unwind label %bb.bl

bb.bl:                                            ; preds = %.critedge
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bn

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jx = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jx)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bn

bb.bn:                                            ; preds = %.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129, %bb.bk, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132, %bb.c
  %.347 = phi ptr [ null, %bb.c ], [ %i.jt, %.thread ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 ], [ null, %bb.bk ]
  ret ptr %.347
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !231    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.i = load ptr, ptr %0, align 8, !tbaa !231    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !120
  %i.t = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #27
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !232
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !228 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 4
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !233

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !231
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 4
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.c, align 4, !tbaa !120
  store i32 %i.af, ptr %i.i, align 4, !tbaa !120
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 4
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !233

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !231
  %.pre25 = load ptr, ptr %i.z, align 8, !tbaa !228 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !231 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !228
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 4
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !120
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !120
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.ac, %bb.m ], [ 4, %bb.n ] ; 3 uses
  %i.aj = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.ak = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.al = phi ptr [ %.pre25, %bb.l ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ] ; 5 uses
  %i.am = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.am to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit
  %i.aq = ptrtoaddr ptr %i.aj to i64
  %i.ar = add i64 %i.aq, -4
  %i.as = add i64 %.pre-phi33, %i.ao
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = add nuw i64 %.pre-phi33, %i.ao
  %i.ax = sub i64 %i.aw, %i.an
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bb ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !120
  %wide.load42 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !120
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !120
  store <4 x i32> %wide.load42, ptr %i.bd, align 4, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !120
  store i32 %i.bf, ptr %.011.i.i.i.i, align 4, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !345

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bi = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ak, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !228
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TextureSource12processQueueEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.GetRequest, align 8          ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 2 uses
  %.not.i.i.i.i16 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i16, label %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph, label %._crit_edge

_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit

._crit_edge:                                      ; preds = %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit, %bb.a
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.ao, %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #30
  unreachable

_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit: ; preds = %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph, %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  br i1 %i.o, label %bb.j, label %bb.b

bb.b:                                             ; preds = %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN9Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g), !noalias !353
  %i.q = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !noalias !353 ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i2, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.q) #30, !noalias !353
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !201, !noalias !354
  invoke void @_ZN10GetRequestI14TextureRequestjNSt6thread2idEcEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  br label %common.resume

_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  call void @_ZNSt5dequeI10GetRequestI14TextureRequestjNSt6thread2idEcESaIS4_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #13
  %i.u = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = invoke noundef i32 @_ZN13TextureSource14processRequestERK14TextureRequest(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit
  store i32 %i.v, ptr %i.a, align 4, !tbaa !120
  invoke void @_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE10pushResultERK10GetRequestIS0_jS2_cERKj(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !214  ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i3, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !210
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i: ; preds = %bb.g, %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !115 ; 3 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !113
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i
  %i.aj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ab, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #27
  br label %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit

_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.ao = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit, label %._crit_edge, !llvm.loop !352

bb.i:                                             ; preds = %bb.e, %_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %common.resume

bb.j:                                             ; preds = %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit
  ret void
}

end_hunk_0
