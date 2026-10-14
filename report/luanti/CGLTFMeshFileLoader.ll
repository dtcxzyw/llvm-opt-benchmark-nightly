Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEm:bb.a
  store ptr %i.iv, ptr %i.he, align 8, !tbaa !986
  store ptr %i.iz, ptr %i.hg, align 8, !tbaa !984
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.jd, ptr %i.hh, align 8, !tbaa !985
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196: ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i193, %bb.bn
  %i.je = add nuw i64 %.0318, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.je, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.bj, !llvm.loop !975

bb.br:                                            ; preds = %bb.bk
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit226:                                     ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i181
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp227:                            ; preds = %bb.bl, %bb.bp
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit226, %.loopexit.split-lp227, %bb.br
  %.pn = phi { ptr, i32 } [ %i.jf, %bb.br ], [ %lpad.loopexit228, %.loopexit226 ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp227 ] ; 3 uses
  %i.jg = load i8, ptr %i.t, align 8, !tbaa !476
  %i.jh = icmp eq i8 %i.jg, 1
  br i1 %i.jh, label %bb.bt, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198

bb.bt:                                            ; preds = %bb.bs
  %i.ji = load ptr, ptr %7, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i197 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i197, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jj = load ptr, ptr %i.u, align 8, !tbaa !480
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.bi ], [ %.pn, %bb.bs ], [ %.pn, %bb.bt ], [ %.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cb

bb.bv:                                            ; preds = %bb.t
  %i.jn = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull @.str.10)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_throw(ptr nonnull %i.jn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.ce unwind label %bb.q

bb.bx:                                            ; preds = %bb.bv
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jn) #30
  br label %bb.cb

bb.by:                                            ; preds = %bb.t, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jp = load i8, ptr %i.s, align 8, !tbaa !481
  %i.jq = icmp eq i8 %i.jp, 1
  br i1 %i.jq, label %bb.bz, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.jr = load ptr, ptr %3, align 8, !tbaa !484   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i199 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i199, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.js = load ptr, ptr %i.ac, align 8, !tbaa !492
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit: ; preds = %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0212.0328, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.jw, %i.m
  br i1 %.not, label %._crit_edge330, label %bb.c

bb.cb:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198, %bb.bx, %bb.l, %bb.k
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.au, %bb.k ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn77.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103 ], [ %.pn73.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147 ], [ %.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198 ], [ %i.br, %bb.q ], [ %i.jo, %bb.bx ]
  %i.jx = load i8, ptr %i.s, align 8, !tbaa !481
  %i.jy = icmp eq i8 %i.jx, 1
  br i1 %i.jy, label %bb.cc, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201

bb.cc:                                            ; preds = %bb.cb
  %i.jz = load ptr, ptr %3, align 8, !tbaa !484   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i200 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i200, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ka = load ptr, ptr %i.ac, align 8, !tbaa !492
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201

_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201: ; preds = %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

bb.ce:                                            ; preds = %bb.bw, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.582") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.582", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1686, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1687, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 5
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not35 = icmp eq i32 %i.o, 3
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bl

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIfE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.582") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 5 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc47 unwind label %bb.k   ; 28 uses

.noexc47:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w ; 9 uses
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !412
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 3 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc47 ], [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 8 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 16 uses
  %.not124 = icmp eq i64 %.pr, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !481 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 22 uses
  %8 = ptrtoaddr ptr %i.ah to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 6 uses
  %switch = icmp ult i8 %i.ag, 3
  br i1 %switch, label %.lr.ph.split, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ag, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %.pr, 8
  %i.ai = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200, label %vector.ph

vector.ph:                                        ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %n.vec = and i64 %.pr, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !412
  %wide.load184 = load <4 x float>, ptr %i.ak, align 4, !tbaa !412
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x float> %wide.load, ptr %i.al, align 4, !tbaa !412
  store <4 x float> %wide.load184, ptr %i.am, align 4, !tbaa !412
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1001

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block
  %.0116.us118.ph = phi i64 [ 0, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.pr, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us118.prol = phi i64 [ %i.ar, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us118.ph, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0116.us118.prol
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !412
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us118.prol
  store float %i.ap, ptr %i.aq, align 4, !tbaa !412
  %i.ar = add nuw i64 %.0116.us118.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1002

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200
  %.0116.us118.unr = phi i64 [ %.0116.us118.ph, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ], [ %i.ar, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.as = sub i64 %.0116.us118.ph, %.pr
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ugt i64 %.pr, 15
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond198 = select i1 %min.iters.check188, i1 %ident.check.not, i1 false
  br i1 %or.cond198, label %vector.memcheck189, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199

vector.memcheck189:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.au = shl i64 %.pr, 2
  %i.av = getelementptr i8, ptr %i.z, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ah, i64 %.pr
  %i.ax = getelementptr i8, ptr %i.aw, i64 3
  %bound0 = icmp ult ptr %i.z, %i.ax
  %bound1 = icmp ult ptr %i.ah, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck189
  %n.vec191 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next194, %vector.body192 ] ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.bn = load float, ptr %i.ay, align 1, !alias.scope !1013
  %i.bo = load float, ptr %i.ba, align 1, !alias.scope !1013
  %i.bp = load float, ptr %i.bc, align 1, !alias.scope !1013
  %i.bq = load float, ptr %i.be, align 1, !alias.scope !1013
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = load float, ptr %i.bg, align 1, !alias.scope !1013
  %i.bw = load float, ptr %i.bi, align 1, !alias.scope !1013
  %i.bx = load float, ptr %i.bk, align 1, !alias.scope !1013
  %i.by = load float, ptr %i.bm, align 1, !alias.scope !1013
  %i.bz = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 3
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index193 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x float> %i.bu, ptr %i.cd, align 4, !tbaa !412, !alias.scope !1014, !noalias !1013
  store <4 x float> %i.cc, ptr %i.ce, align 4, !tbaa !412, !alias.scope !1014, !noalias !1013
  %index.next194 = add nuw i64 %index193, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next194, %n.vec191
  br i1 %i.cf, label %middle.block195, label %vector.body192, !llvm.loop !1006

middle.block195:                                  ; preds = %vector.body192
  %cmp.n196 = icmp eq i64 %.pr, %n.vec191
  br i1 %cmp.n196, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199: ; preds = %vector.memcheck189, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block195
  %.0116.us.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec191, %middle.block195 ] ; 3 uses
  %xtraiter202 = and i64 %.pr, 3                  ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us.prol = phi i64 [ %i.cj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ]
  %i.cg = mul i64 %.sroa.4.0.copyload.i, %.0116.us.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cg
  %.0.copyload.i.i.us.prol = load float, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us.prol
  store float %.0.copyload.i.i.us.prol, ptr %i.ci, align 4, !tbaa !412
  %i.cj = add nuw i64 %.0116.us.prol, 1           ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1007

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199
  %.0116.us.unr = phi i64 [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ], [ %i.cj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.ck = sub i64 %.0116.us.ph, %.pr
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %i.cm = shl nuw i64 %.pr, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.cm, i1 false), !tbaa !412
  br label %._crit_edge

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us = phi i64 [ %i.dc, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us.unr, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit ] ; 6 uses
  %i.cn = mul i64 %.sroa.4.0.copyload.i, %.0116.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cn
  %.0.copyload.i.i.us = load float, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us
  store float %.0.copyload.i.i.us, ptr %i.cp, align 4, !tbaa !412
  %i.cq = add nuw i64 %.0116.us, 1                ; 2 uses
  %i.cr = mul i64 %.sroa.4.0.copyload.i, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cr
  %.0.copyload.i.i.us.1 = load float, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cq
  store float %.0.copyload.i.i.us.1, ptr %i.ct, align 4, !tbaa !412
  %i.cu = add nuw i64 %.0116.us, 2                ; 2 uses
  %i.cv = mul i64 %.sroa.4.0.copyload.i, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cv
  %.0.copyload.i.i.us.2 = load float, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cu
  store float %.0.copyload.i.i.us.2, ptr %i.cx, align 4, !tbaa !412
  %i.cy = add nuw i64 %.0116.us, 3                ; 2 uses
  %i.cz = mul i64 %.sroa.4.0.copyload.i, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cz
  %.0.copyload.i.i.us.3 = load float, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cy
  store float %.0.copyload.i.i.us.3, ptr %i.db, align 4, !tbaa !412
  %i.dc = add nuw i64 %.0116.us, 4                ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dc, %.pr
  br i1 %exitcond128.not.3, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1008

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us118 = phi i64 [ %i.ds, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us118.unr, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0116.us118
  %i.de = load float, ptr %i.dd, align 4, !tbaa !412
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us118
  store float %i.de, ptr %i.df, align 4, !tbaa !412
  %i.dg = add nuw i64 %.0116.us118, 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !412
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dg
  store float %i.di, ptr %i.dj, align 4, !tbaa !412
  %i.dk = add nuw i64 %.0116.us118, 2             ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !412
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dk
  store float %i.dm, ptr %i.dn, align 4, !tbaa !412
  %i.do = add nuw i64 %.0116.us118, 3             ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !412
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.do
  store float %i.dq, ptr %i.dr, align 4, !tbaa !412
  %i.ds = add nuw i64 %.0116.us118, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ds, %.pr
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1009

end_hunk_0
begin_hunk_1_@_ZN5scene15SSkinMeshBufferD2Ev:bb.a
bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #33
  unreachable

bb.f:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !65
  %.not.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i2, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit3

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #30, !inline_history !1104
  br label %_ZNK17IReferenceCounted4dropEv.exit3

_ZNK17IReferenceCounted4dropEv.exit3:             ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !260  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !65   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit3
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #33
  unreachable

bb.i:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit3
  %i.aa = add nsw i32 %i.y, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !65
  %.not.i4 = icmp eq i32 %i.aa, 0
  br i1 %.not.i4, label %bb.j, label %_ZNK17IReferenceCounted4dropEv.exit5

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #30, !inline_history !1104
  br label %_ZNK17IReferenceCounted4dropEv.exit5

_ZNK17IReferenceCounted4dropEv.exit5:             ; preds = %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !262 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit5
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #33
  unreachable

bb.l:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit5
  %i.ak = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !65
  %.not.i6 = icmp eq i32 %i.ak, 0
  br i1 %.not.i6, label %bb.m, label %_ZNK17IReferenceCounted4dropEv.exit7

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #30, !inline_history !1104
  br label %_ZNK17IReferenceCounted4dropEv.exit7

_ZNK17IReferenceCounted4dropEv.exit7:             ; preds = %bb.l, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !604 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 64) #31
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.n, %_ZNK17IReferenceCounted4dropEv.exit7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !604 ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.1.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i, label %bb.o

bb.o:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 64) #31
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i:           ; preds = %bb.o, %_ZN5video14SMaterialLayerD2Ev.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !604 ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.at, null
  br i1 %.not.i.2.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i, label %bb.p

bb.p:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 64) #31
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i:           ; preds = %bb.p, %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !604 ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.av, null
  br i1 %.not.i.3.i, label %_ZN5video9SMaterialD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 64) #31
  br label %_ZN5video9SMaterialD2Ev.exit

_ZN5video9SMaterialD2Ev.exit:                     ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i, %bb.q
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.904, align 8            ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.905, align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not36 = icmp eq i32 %i.o, 6
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 6 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc48 unwind label %bb.l   ; 22 uses

.noexc48:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w ; 8 uses
  store i32 0, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 5 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.w, 4611686018427387902
  %i.ag = and i64 %i.af, 4611686018427387903      ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.ai = shl i64 %n.vec, 2
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %i.al = load i32, ptr %i.z, align 1, !tbaa !60
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1, !tbaa !60
  store <4 x i32> %broadcast.splat, ptr %i.am, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.k, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %bb.k ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i32, ptr %i.z, align 1, !tbaa !60
  store i32 %i.ao, ptr %.06.i.i.i.i.i.i.i.i.i, align 1, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1106

_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc48
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc48 ], [ %i.ae, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 15 uses
  %.not125 = icmp eq i64 %.pr, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !312 ; 2 uses
  %i.as = load ptr, ptr %3, align 8               ; 14 uses
  %8 = ptrtoaddr ptr %i.as to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %switch = icmp ult i8 %i.ar, 3
  br i1 %switch, label %.lr.ph.split, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ar, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ult i64 %.pr, 8
  %i.at = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check188, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225, label %vector.ph189

vector.ph189:                                     ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %n.vec190 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next194, %vector.body191 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index192 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 1, !tbaa !60
  %wide.load193 = load <4 x i32>, ptr %i.av, align 1, !tbaa !60
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index192 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %wide.load, ptr %i.aw, align 1, !tbaa !60
  store <4 x i32> %wide.load193, ptr %i.ax, align 1, !tbaa !60
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.ay, label %middle.block195, label %vector.body191, !llvm.loop !1107

middle.block195:                                  ; preds = %vector.body191
  %cmp.n196 = icmp eq i64 %.pr, %n.vec190
  br i1 %cmp.n196, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225

_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225: ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block195
  %.0117.us119.ph = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec190, %middle.block195 ]
  br label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check201 = icmp ugt i64 %.pr, 27
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond221 = select i1 %min.iters.check201, i1 %ident.check.not, i1 false
  br i1 %or.cond221, label %vector.memcheck202, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223

vector.memcheck202:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.az = shl i64 %.pr, 2
  %i.ba = getelementptr i8, ptr %i.z, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.as, i64 %.pr
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  %bound0 = icmp ult ptr %i.z, %i.bc
  %bound1 = icmp ult ptr %i.as, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck202
  %n.vec204 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next207, %vector.body205 ] ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  %i.bs = load i32, ptr %i.bd, align 1, !alias.scope !1119
  %i.bt = load i32, ptr %i.bf, align 1, !alias.scope !1119
  %i.bu = load i32, ptr %i.bh, align 1, !alias.scope !1119
  %i.bv = load i32, ptr %i.bj, align 1, !alias.scope !1119
  %i.bw = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 1
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bu, i64 2
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bv, i64 3
  %i.ca = load i32, ptr %i.bl, align 1, !alias.scope !1119
  %i.cb = load i32, ptr %i.bn, align 1, !alias.scope !1119
  %i.cc = load i32, ptr %i.bp, align 1, !alias.scope !1119
  %i.cd = load i32, ptr %i.br, align 1, !alias.scope !1119
  %i.ce = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 1
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 2
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index206 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i32> %i.bz, ptr %i.ci, align 1, !tbaa !60, !alias.scope !1120, !noalias !1119
  store <4 x i32> %i.ch, ptr %i.cj, align 1, !tbaa !60, !alias.scope !1120, !noalias !1119
  %index.next207 = add nuw i64 %index206, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next207, %n.vec204
  br i1 %i.ck, label %middle.block208, label %vector.body205, !llvm.loop !1111

middle.block208:                                  ; preds = %vector.body205
  %cmp.n209 = icmp eq i64 %.pr, %n.vec204
  br i1 %cmp.n209, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223: ; preds = %vector.memcheck202, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block208
  %.0117.us.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec204, %middle.block208 ]
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %min.iters.check212 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check212, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader222, label %vector.ph213

vector.ph213:                                     ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader
  %n.vec214 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next217, %vector.body215 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index216 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> zeroinitializer, ptr %i.cl, align 1, !tbaa !60
  store <4 x i32> zeroinitializer, ptr %i.cm, align 1, !tbaa !60
  %index.next217 = add nuw i64 %index216, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next217, %n.vec214
  br i1 %i.cn, label %middle.block218, label %vector.body215, !llvm.loop !1112

middle.block218:                                  ; preds = %vector.body215
  %cmp.n219 = icmp eq i64 %.pr, %n.vec214
  br i1 %cmp.n219, label %._crit_edge, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader222

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader222: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader, %middle.block218
  %.0117.ph = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader ], [ %n.vec214, %middle.block218 ]
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us = phi i64 [ %i.cr, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223 ] ; 3 uses
  %i.co = mul i64 %.sroa.4.0.copyload.i, %.0117.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.co
  %.sroa.0.0.copyload.i.i.us = load i32, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117.us
  store i32 %.sroa.0.0.copyload.i.i.us, ptr %i.cq, align 1, !tbaa !60
  %i.cr = add nuw i64 %.0117.us, 1                ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.pr
  br i1 %i.cs, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1113

_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us119 = phi i64 [ %i.cv, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us119.ph, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0117.us119
  %.sroa.02.0.copyload.i.us = load i32, ptr %i.ct, align 1, !tbaa !60
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117.us119
  store i32 %.sroa.02.0.copyload.i.us, ptr %i.cu, align 1, !tbaa !60
  %i.cv = add nuw i64 %.0117.us119, 1             ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %.pr
  br i1 %i.cw, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1114

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit, %middle.block195, %middle.block208, %middle.block218, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit
  %.0.i.i.i.i.i174 = phi ptr [ %.0.i.i.i.i.i.ph, %middle.block218 ], [ %.0.i.i.i.i.i.ph, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit ], [ %.0.i.i.i.i.i.ph, %middle.block195 ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0.i.i.i.i.i.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  %.sroa.0105.0171 = phi ptr [ %i.z, %middle.block218 ], [ %i.z, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %middle.block195 ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.z, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %i.z, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 9 uses
  %.sroa.15.0167 = phi ptr [ %i.aa, %middle.block218 ], [ %i.aa, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aa, %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.aa, %middle.block195 ], [ %i.aa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.aa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %i.aa, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.cy, align 8, !tbaa !439
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.cz, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader222, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit
  %.0117 = phi i64 [ %i.dc, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.0117.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.preheader222 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117
  store i32 0, ptr %i.db, align 1, !tbaa !60
  %i.dc = add nuw i64 %.0117, 1                   ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %.pr
  br i1 %i.dd, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit, label %._crit_edge, !llvm.loop !1115

bb.m:                                             ; preds = %.lr.ph
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.de, align 8, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr @.str.36, ptr %i.df, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc49 unwind label %.thread175

.noexc49:                                         ; preds = %bb.m
  unreachable

.thread175:                                       ; preds = %bb.m
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !264, !range !80, !noundef !81
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.o, label %bb.s
end_hunk_1
begin_hunk_2_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEm:bb.a

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !319   ; 2 uses
  %.pre129 = load ptr, ptr %i.it, align 8, !tbaa !319
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.bb
  %.pre-phi133 = phi i64 [ %.pre132, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.ix, %bb.bb ]
  %.pre-phi = phi i64 [ %.pre131, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.iw, %bb.bb ]
  %i.jb = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.iv, %bb.bb ] ; 2 uses
  %i.jc = phi ptr [ %i.ja, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ null, %bb.bb ] ; 5 uses
  store ptr %i.jc, ptr %0, align 8, !tbaa !317
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iy
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !321
  %i.jg = sub i64 %.pre-phi, %.pre-phi133         ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 4
  br i1 %i.jh, label %bb.bd, label %bb.be, !prof !320

bb.bd:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.jc, ptr align 1 %i.jb, i64 %i.jg, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.ji = icmp eq i64 %i.jg, 4
  br i1 %i.ji, label %bb.bf, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.jj = load i32, ptr %i.jb, align 1, !tbaa !60
  store i32 %i.jj, ptr %i.jc, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.jk = getelementptr inbounds i8, ptr %i.jc, i64 %i.jg
  store ptr %i.jk, ptr %i.jd, align 8, !tbaa !316
  %.pre130 = load i8, ptr %i.ir, align 8, !tbaa !312
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEC2ERKS4_.exit

bb.bg:                                            ; preds = %bb.az
  unreachable

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEC2ERKS4_.exit: ; preds = %bb.az, %bb.ba, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i
  %i.jm = phi i8 [ %i.is, %bb.az ], [ 0, %bb.ba ], [ %.pre130, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.jm, ptr %i.iq, align 8, !tbaa !312
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !389
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !389
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75

_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75:  ; preds = %bb.as, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEC2ERKS4_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !312
  %i.js = icmp eq i8 %i.jr, 1
  br i1 %i.js, label %bb.bi, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit88

bb.bi:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75
  %i.jt = load ptr, ptr %3, align 8, !tbaa !317   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i87 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i87, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit88, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !321
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit88

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit88: ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86:  ; preds = %bb.bh, %bb.l, %bb.ax, %bb.ay
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42182, %bb.ay ], [ %i.da, %bb.l ], [ %.pn.pn.pn.pn, %bb.ax ], [ %i.jl, %bb.bh ]
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !312
  %i.kb = icmp eq i8 %i.ka, 1
  br i1 %i.kb, label %bb.bk, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90

bb.bk:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86
  %i.kc = load ptr, ptr %3, align 8, !tbaa !317   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i89, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !321
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90: ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90, %bb.f
  %.pn46 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn42.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit90 ]
  resume { ptr, i32 } %.pn46

bb.bn:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.472") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.472", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.964, align 8            ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.965, align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not36 = icmp eq i32 %i.o, 6
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.472") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 6 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc48 unwind label %bb.l   ; 23 uses

.noexc48:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 8 uses
  store i64 0, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.w, 2305843009213693950
  %i.ag = and i64 %i.af, 2305843009213693951      ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %i.al = load i64, ptr %i.z, align 2, !tbaa !60
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 2, !tbaa !60
  store <2 x i64> %broadcast.splat, ptr %i.am, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.k, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %bb.k ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i64, ptr %i.z, align 2, !tbaa !60
  store i64 %i.ao, ptr %.06.i.i.i.i.i.i.i.i.i, align 2, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1123

_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc48
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc48 ], [ %i.ae, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 12 uses
  %.not125 = icmp eq i64 %.pr, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !323 ; 2 uses
  %i.as = load ptr, ptr %3, align 8               ; 8 uses
  %8 = ptrtoaddr ptr %i.as to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 5 uses
  %switch = icmp ult i8 %i.ar, 3
  br i1 %switch, label %.lr.ph.split, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ar, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter = and i64 %.pr, 3                     ; 3 uses
  %i.at = icmp ult i64 %.pr, 4
  br i1 %i.at, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %.pr, -4
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ult i64 %.pr, 8
  %i.au = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = select i1 %min.iters.check188, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader210, label %vector.ph189

vector.ph189:                                     ; preds = %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %n.vec190 = and i64 %.pr, -4                    ; 3 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next194, %vector.body191 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index192 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 2, !tbaa !60
  %wide.load193 = load <2 x i64>, ptr %i.aw, align 2, !tbaa !60
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index192 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 2, !tbaa !60
  store <2 x i64> %wide.load193, ptr %i.ay, align 2, !tbaa !60
  %index.next194 = add nuw i64 %index192, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.az, label %middle.block195, label %vector.body191, !llvm.loop !1124

middle.block195:                                  ; preds = %vector.body191
  %cmp.n196 = icmp eq i64 %.pr, %n.vec190
  br i1 %cmp.n196, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader210

_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader210: ; preds = %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block195
  %.0117.us119.ph = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec190, %middle.block195 ]
  br label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %min.iters.check199 = icmp ult i64 %.pr, 4
  br i1 %min.iters.check199, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader208, label %vector.ph200

vector.ph200:                                     ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader
  %n.vec201 = and i64 %.pr, -4                    ; 3 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next204, %vector.body202 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index203 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> zeroinitializer, ptr %i.ba, align 2, !tbaa !60
  store <2 x i64> zeroinitializer, ptr %i.bb, align 2, !tbaa !60
  %index.next204 = add nuw i64 %index203, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next204, %n.vec201
  br i1 %i.bc, label %middle.block205, label %vector.body202, !llvm.loop !1125

middle.block205:                                  ; preds = %vector.body202
  %cmp.n206 = icmp eq i64 %.pr, %n.vec201
  br i1 %cmp.n206, label %._crit_edge, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader208

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader208: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader, %middle.block205
  %.0117.ph = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader ], [ %n.vec201, %middle.block205 ]
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0117.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bs, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 6 uses
  %niter = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.3, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.bd = mul i64 %.sroa.4.0.copyload.i, %.0117.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0117.us
  store i64 %.sroa.0.0.copyload.i.i.us, ptr %i.bf, align 2, !tbaa !60
  %i.bg = or disjoint i64 %.0117.us, 1            ; 2 uses
  %i.bh = mul i64 %.sroa.4.0.copyload.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bh
  %.sroa.0.0.copyload.i.i.us.1 = load i64, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bg
  store i64 %.sroa.0.0.copyload.i.i.us.1, ptr %i.bj, align 2, !tbaa !60
  %i.bk = or disjoint i64 %.0117.us, 2            ; 2 uses
  %i.bl = mul i64 %.sroa.4.0.copyload.i, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bl
  %.sroa.0.0.copyload.i.i.us.2 = load i64, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bk
  store i64 %.sroa.0.0.copyload.i.i.us.2, ptr %i.bn, align 2, !tbaa !60
  %i.bo = or disjoint i64 %.0117.us, 3            ; 2 uses
  %i.bp = mul i64 %.sroa.4.0.copyload.i, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bp
  %.sroa.0.0.copyload.i.i.us.3 = load i64, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bo
  store i64 %.sroa.0.0.copyload.i.i.us.3, ptr %i.br, align 2, !tbaa !60
  %i.bs = add nuw i64 %.0117.us, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit209.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1126

_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader210, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us119 = phi i64 [ %i.bv, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us119.ph, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader210 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0117.us119
  %.sroa.02.0.copyload.i.us = load i64, ptr %i.bt, align 2, !tbaa !60
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0117.us119
  store i64 %.sroa.02.0.copyload.i.us, ptr %i.bu, align 2, !tbaa !60
  %i.bv = add nuw i64 %.0117.us119, 1             ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %.pr
  br i1 %i.bw, label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1127

._crit_edge.loopexit209.unr-lcssa:                ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit209.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0117.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bs, %._crit_edge.loopexit209.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader
  %.0117.us.epil = phi i64 [ %i.ca, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %.0117.us.epil.init, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ]
  %i.bx = mul i64 %.sroa.4.0.copyload.i, %.0117.us.epil
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bx
  %.sroa.0.0.copyload.i.i.us.epil = load i64, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0117.us.epil
  store i64 %.sroa.0.0.copyload.i.i.us.epil, ptr %i.bz, align 2, !tbaa !60
  %i.ca = add nuw i64 %.0117.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, !llvm.loop !1128

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %._crit_edge.loopexit209.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit, %middle.block195, %middle.block205, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit
  %.0.i.i.i.i.i174 = phi ptr [ %.0.i.i.i.i.i.ph, %middle.block205 ], [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit209.unr-lcssa ], [ null, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit ], [ %.0.i.i.i.i.i.ph, %middle.block195 ], [ %.0.i.i.i.i.i.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  %.sroa.0105.0171 = phi ptr [ %i.z, %middle.block205 ], [ %i.z, %._crit_edge.loopexit209.unr-lcssa ], [ null, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %middle.block195 ], [ %i.z, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %i.z, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 9 uses
  %.sroa.15.0167 = phi ptr [ %i.aa, %middle.block205 ], [ %i.aa, %._crit_edge.loopexit209.unr-lcssa ], [ null, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aa, %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.aa, %middle.block195 ], [ %i.aa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ], [ %i.aa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %i.aa, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.cc, align 8, !tbaa !439
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.cd, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EED2Ev.exit86

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader208, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit
  %.0117 = phi i64 [ %i.cg, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ], [ %.0117.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit.preheader208 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0117
  store i64 0, ptr %i.cf, align 2, !tbaa !60
  %i.cg = add nuw i64 %.0117, 1                   ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %.pr
  br i1 %i.ch, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit, label %._crit_edge, !llvm.loop !1129

bb.m:                                             ; preds = %.lr.ph
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ci, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @.str.36, ptr %i.cj, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc49 unwind label %.thread175

.noexc49:                                         ; preds = %bb.m
  unreachable

.thread175:                                       ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !264, !range !80, !noundef !81
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !181 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !227
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !226 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 88                ; 2 uses
  %.not.i.i50 = icmp ult i64 %i.cq, %i.cx
  br i1 %.not.i.i50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cq, i64 noundef %i.cx) #34
          to label %.noexc51 unwind label %bb.aa

.noexc51:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cy = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !400
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !425
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !428    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !429
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceESt6vectorIS7_SaIS7_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !476
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !479    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !480
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !487
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !490    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !491
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceESt6vectorIfSaIfEESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !481
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !484    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !492
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.680") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.680", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1054, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1055, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not35 = icmp eq i32 %i.o, 3
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIhE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.680") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 5 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc47 unwind label %bb.l   ; 24 uses

.noexc47:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.y to i64                  ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.w     ; 12 uses
  store i8 0, ptr %i.y, align 1, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.ab = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc47
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.k, %.noexc47
  %.0.i.i.i.i.i.ph = phi ptr [ %i.aa, %.noexc47 ], [ %i.z, %bb.k ] ; 10 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 25 uses
  %.not124 = icmp eq i64 %.pr, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !346 ; 2 uses
  %i.af = load ptr, ptr %3, align 8               ; 7 uses
  %8 = ptrtoaddr ptr %i.af to i64                 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %switch = icmp ult i8 %i.ae, 3
  br i1 %switch, label %.lr.ph.split, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ae, label %iter.check230 [
    i8 0, label %iter.check206
    i8 1, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %.pr, 4
  %i.ag = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check184 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check184, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %.pr, 28
  %n.vec = and i64 %.pr, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !60
  %wide.load185 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %wide.load, ptr %i.ak, align 1, !tbaa !60
  store <16 x i8> %wide.load185, ptr %i.al, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vec.epilog.ph, !prof !1166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %index187
  %wide.load188 = load <4 x i8>, ptr %i.an, align 1, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %index187
  store <4 x i8> %wide.load188, ptr %i.ao, align 1, !tbaa !60
  %index.next189 = add nuw i64 %index187, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next189, %n.vec186
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1155

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n190 = icmp eq i64 %.pr, %n.vec186
  br i1 %cmp.n190, label %._crit_edge, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader

_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0116.us118.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ]
  br label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

iter.check206:                                    ; preds = %.lr.ph.split
  %min.iters.check193 = icmp ult i64 %.pr, 4
  %ident.check.not = icmp ne i64 %.sroa.4.0.copyload.i, 1
  %or.cond242.not244 = select i1 %min.iters.check193, i1 true, i1 %ident.check.not
  %i.aq = sub i64 %8, %7
  %diff.check192 = icmp ugt i64 %i.aq, -32
  %or.cond243 = select i1 %or.cond242.not244, i1 true, i1 %diff.check192
  br i1 %or.cond243, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vector.main.loop.iter.check194

vector.main.loop.iter.check194:                   ; preds = %iter.check206
  %min.iters.check195 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check195, label %vec.epilog.ph210, label %vector.ph196

vector.ph196:                                     ; preds = %vector.main.loop.iter.check194
  %i.ar = and i64 %.pr, 28
  %n.vec197 = and i64 %.pr, -32                   ; 4 uses
  br label %vector.body198

vector.body198:                                   ; preds = %vector.ph196, %vector.body198
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next202, %vector.body198 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %index199 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load200 = load <16 x i8>, ptr %i.as, align 1
  %wide.load201 = load <16 x i8>, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 %index199 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load200, ptr %i.au, align 1, !tbaa !60
  store <16 x i8> %wide.load201, ptr %i.av, align 1, !tbaa !60
  %index.next202 = add nuw i64 %index199, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.aw, label %middle.block203, label %vector.body198, !llvm.loop !1156

middle.block203:                                  ; preds = %vector.body198
  %cmp.n204 = icmp eq i64 %.pr, %n.vec197
  br i1 %cmp.n204, label %._crit_edge, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block203
  %min.epilog.iters.check209 = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check209, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vec.epilog.ph210, !prof !1166

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check194, %vec.epilog.iter.check208
  %vec.epilog.resume.val205 = phi i64 [ %n.vec197, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check194 ]
  %n.vec211 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph210
  %index213 = phi i64 [ %vec.epilog.resume.val205, %vec.epilog.ph210 ], [ %index.next215, %vec.epilog.vector.body212 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %index213
  %wide.load214 = load <4 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %index213
  store <4 x i8> %wide.load214, ptr %i.ay, align 1, !tbaa !60
  %index.next215 = add nuw i64 %index213, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next215, %n.vec211
  br i1 %i.az, label %vec.epilog.middle.block216, label %vec.epilog.vector.body212, !llvm.loop !1157

vec.epilog.middle.block216:                       ; preds = %vec.epilog.vector.body212
  %cmp.n217 = icmp eq i64 %.pr, %n.vec211
  br i1 %cmp.n217, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block216
  %.0116.us.ph = phi i64 [ 0, %iter.check206 ], [ %n.vec197, %vec.epilog.iter.check208 ], [ %n.vec211, %vec.epilog.middle.block216 ]
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

iter.check230:                                    ; preds = %.lr.ph.split
  %min.iters.check219 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check219, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %iter.check230
  %min.iters.check221 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check221, label %vec.epilog.ph234, label %vector.ph222

vector.ph222:                                     ; preds = %vector.main.loop.iter.check220
  %i.ba = and i64 %.pr, 24
  %n.vec223 = and i64 %.pr, -32                   ; 4 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.ph222, %vector.body224
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next226, %vector.body224 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %index225 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <16 x i8> zeroinitializer, ptr %i.bb, align 1, !tbaa !60
  store <16 x i8> zeroinitializer, ptr %i.bc, align 1, !tbaa !60
  %index.next226 = add nuw i64 %index225, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next226, %n.vec223
  br i1 %i.bd, label %middle.block227, label %vector.body224, !llvm.loop !1158

middle.block227:                                  ; preds = %vector.body224
  %cmp.n228 = icmp eq i64 %.pr, %n.vec223
  br i1 %cmp.n228, label %._crit_edge, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block227
  %min.epilog.iters.check233 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check233, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader, label %vec.epilog.ph234, !prof !1167

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check232
  %vec.epilog.resume.val229 = phi i64 [ %n.vec223, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check220 ]
  %n.vec235 = and i64 %.pr, -8                    ; 3 uses
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph234
  %index237 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph234 ], [ %index.next238, %vec.epilog.vector.body236 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %index237
  store <8 x i8> zeroinitializer, ptr %i.be, align 1, !tbaa !60
  %index.next238 = add nuw i64 %index237, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next238, %n.vec235
  br i1 %i.bf, label %vec.epilog.middle.block239, label %vec.epilog.vector.body236, !llvm.loop !1159

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body236
  %cmp.n240 = icmp eq i64 %.pr, %n.vec235
  br i1 %cmp.n240, label %._crit_edge, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader

_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader: ; preds = %iter.check230, %vec.epilog.iter.check232, %vec.epilog.middle.block239
  %.0116.ph = phi i64 [ 0, %iter.check230 ], [ %n.vec223, %vec.epilog.iter.check232 ], [ %n.vec235, %vec.epilog.middle.block239 ]
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us = phi i64 [ %i.bj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ] ; 3 uses
  %i.bg = mul i64 %.sroa.4.0.copyload.i, %.0116.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bg
  %.0.copyload.i.i.us = load i8, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0116.us
  store i8 %.0.copyload.i.i.us, ptr %i.bi, align 1, !tbaa !60
  %i.bj = add nuw i64 %.0116.us, 1                ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.pr
  br i1 %i.bk, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1160

_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us118 = phi i64 [ %i.bo, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us118.ph, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0116.us118
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0116.us118
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !60
  %i.bo = add nuw i64 %.0116.us118, 1             ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %.pr
  br i1 %i.bp, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1161

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit, %middle.block, %vec.epilog.middle.block, %middle.block203, %vec.epilog.middle.block216, %middle.block227, %vec.epilog.middle.block239, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.0.i.i.i.i.i172 = phi ptr [ %.0.i.i.i.i.i.ph, %middle.block227 ], [ %.0.i.i.i.i.i.ph, %middle.block203 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.0.i.i.i.i.i.ph, %middle.block ], [ %.0.i.i.i.i.i.ph, %vec.epilog.middle.block239 ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0.i.i.i.i.i.ph, %vec.epilog.middle.block216 ], [ %.0.i.i.i.i.i.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit ], [ %.0.i.i.i.i.i.ph, %vec.epilog.middle.block ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  %.sroa.0104.0169 = phi ptr [ %i.y, %middle.block227 ], [ %i.y, %middle.block203 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.y, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.y, %middle.block ], [ %i.y, %vec.epilog.middle.block239 ], [ %i.y, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.y, %vec.epilog.middle.block216 ], [ %i.y, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit ], [ %i.y, %vec.epilog.middle.block ], [ %i.y, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 9 uses
  %.sroa.15.0165 = phi ptr [ %i.z, %middle.block227 ], [ %i.z, %middle.block203 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.z, %middle.block ], [ %i.z, %vec.epilog.middle.block239 ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.z, %vec.epilog.middle.block216 ], [ %i.z, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit ], [ %i.z, %vec.epilog.middle.block ], [ %i.z, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.br, align 8, !tbaa !439
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.bs, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit85

_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit
  %.0116 = phi i64 [ %i.bv, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit ], [ %.0116.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0116
  store i8 0, ptr %i.bu, align 1, !tbaa !60
  %i.bv = add nuw i64 %.0116, 1                   ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %.pr
  br i1 %i.bw, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit, label %._crit_edge, !llvm.loop !1162

bb.m:                                             ; preds = %.lr.ph
  %i.bx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bx, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @.str.36, ptr %i.by, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc48 unwind label %.thread

.noexc48:                                         ; preds = %bb.m
  unreachable

.thread:                                          ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cf = load i64, ptr %i.k, align 8, !tbaa !181 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !227
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !226 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 88                ; 2 uses
  %.not.i.i49 = icmp ult i64 %i.cf, %i.cm
  br i1 %.not.i.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cf, i64 noundef %i.cm) #34
end_hunk_3
begin_hunk_4_@_ZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEm:bb.a

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !313   ; 2 uses
  %.pre128 = load ptr, ptr %i.hk, align 8, !tbaa !313
  %.pre130 = ptrtoint ptr %.pre128 to i64
  %.pre131 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.bb
  %.pre-phi132 = phi i64 [ %.pre131, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.ho, %bb.bb ]
  %.pre-phi = phi i64 [ %.pre130, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.hn, %bb.bb ]
  %i.hs = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.hm, %bb.bb ] ; 2 uses
  %i.ht = phi ptr [ %i.hr, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ null, %bb.bb ] ; 5 uses
  store ptr %i.ht, ptr %0, align 8, !tbaa !349
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hp
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !358
  %i.hx = sub i64 %.pre-phi, %.pre-phi132         ; 4 uses
  %i.hy = icmp sgt i64 %i.hx, 1
  br i1 %i.hy, label %bb.bd, label %bb.be, !prof !320

bb.bd:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %i.hs, i64 %i.hx, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.hz = icmp eq i64 %i.hx, 1
  br i1 %i.hz, label %bb.bf, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ia = load i8, ptr %i.hs, align 1, !tbaa !60
  store i8 %i.ia, ptr %i.ht, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ib = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx
  store ptr %i.ib, ptr %i.hu, align 8, !tbaa !348
  %.pre129 = load i8, ptr %i.hi, align 8, !tbaa !346
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhEC2ERKS2_.exit

bb.bg:                                            ; preds = %bb.az
  unreachable

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit85

_ZN5scene19CGLTFMeshFileLoader8AccessorIhEC2ERKS2_.exit: ; preds = %bb.az, %bb.ba, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i
  %i.id = phi i8 [ %i.hj, %bb.az ], [ 0, %bb.ba ], [ %.pre129, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.id, ptr %i.hh, align 8, !tbaa !346
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !357
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !357
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit74

_ZNSt6vectorIhSaIhEED2Ev.exit74:                  ; preds = %bb.as, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhEC2ERKS2_.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !346
  %i.ij = icmp eq i8 %i.ii, 1
  br i1 %i.ij, label %bb.bi, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit87

bb.bi:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit74
  %i.ik = load ptr, ptr %3, align 8, !tbaa !349   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i86 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i86, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit87, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !358
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit87: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit74, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit85:                  ; preds = %bb.bh, %bb.l, %bb.ax, %bb.ay
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41179, %bb.ay ], [ %i.bt, %bb.l ], [ %.pn.pn.pn.pn, %bb.ax ], [ %i.ic, %bb.bh ]
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !346
  %i.is = icmp eq i8 %i.ir, 1
  br i1 %i.is, label %bb.bk, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89

bb.bk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit85
  %i.it = load ptr, ptr %3, align 8, !tbaa !349   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !358
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit85, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89, %bb.f
  %.pn45 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn41.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit89 ]
  resume { ptr, i32 } %.pn45

bb.bn:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.703") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.703", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1058, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1059, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not35 = icmp eq i32 %i.o, 3
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bl

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorItE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.703") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 5 uses
  %i.x = icmp ugt i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 1
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc47 unwind label %bb.k   ; 30 uses

.noexc47:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.w ; 10 uses
  store i16 0, ptr %i.z, align 2, !tbaa !242
  %i.ab = getelementptr i8, ptr %i.z, i64 2       ; 3 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 1  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc47 ], [ %i.ae, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 9 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 20 uses
  %.not124 = icmp eq i64 %.pr, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !360 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 23 uses
  %8 = ptrtoaddr ptr %i.ah to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 6 uses
  %switch = icmp ult i8 %i.ag, 3
  br i1 %switch, label %.lr.ph.split, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ag, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %.pr, 4
  %i.ai = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check184 = icmp ult i64 %.pr, 16
  br i1 %min.iters.check184, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %.pr, 12
  %n.vec = and i64 %.pr, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <8 x i16>, ptr %i.ak, align 2, !tbaa !242
  %wide.load185 = load <8 x i16>, ptr %i.al, align 2, !tbaa !242
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <8 x i16> %wide.load, ptr %i.am, align 2, !tbaa !242
  store <8 x i16> %wide.load185, ptr %i.an, align 2, !tbaa !242
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vec.epilog.ph, !prof !655

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %index187
  %wide.load188 = load <4 x i16>, ptr %i.ap, align 2, !tbaa !242
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index187
  store <4 x i16> %wide.load188, ptr %i.aq, align 2, !tbaa !242
  %index.next189 = add nuw i64 %index187, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next189, %n.vec186
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n190 = icmp eq i64 %.pr, %n.vec186
  br i1 %cmp.n190, label %._crit_edge, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0116.us118.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.pr, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us118.prol = phi i64 [ %i.av, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us118.ph, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.0116.us118.prol
  %i.at = load i16, ptr %i.as, align 2, !tbaa !242
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0116.us118.prol
  store i16 %i.at, ptr %i.au, align 2, !tbaa !242
  %i.av = add nuw i64 %.0116.us118.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1171

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0116.us118.unr = phi i64 [ %.0116.us118.ph, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.av, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.aw = sub i64 %.0116.us118.ph, %.pr
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check193 = icmp ugt i64 %.pr, 15
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond203 = select i1 %min.iters.check193, i1 %ident.check.not, i1 false
  br i1 %or.cond203, label %vector.memcheck194, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204

vector.memcheck194:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.ay = shl i64 %.pr, 1
  %i.az = getelementptr i8, ptr %i.z, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ah, i64 %.pr
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %bound0 = icmp ult ptr %i.z, %i.bb
  %bound1 = icmp ult ptr %i.ah, %i.az
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck194
  %n.vec196 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next199, %vector.body197 ] ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index198
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 7
  %i.br = load i16, ptr %i.bc, align 1, !alias.scope !1182
  %i.bs = load i16, ptr %i.be, align 1, !alias.scope !1182
  %i.bt = load i16, ptr %i.bg, align 1, !alias.scope !1182
  %i.bu = load i16, ptr %i.bi, align 1, !alias.scope !1182
  %i.bv = load i16, ptr %i.bk, align 1, !alias.scope !1182
  %i.bw = load i16, ptr %i.bm, align 1, !alias.scope !1182
  %i.bx = load i16, ptr %i.bo, align 1, !alias.scope !1182
  %i.by = load i16, ptr %i.bq, align 1, !alias.scope !1182
  %i.bz = insertelement <8 x i16> poison, i16 %i.br, i64 0
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 1
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 2
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 3
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 4
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 5
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 6
  %i.cg = insertelement <8 x i16> %i.cf, i16 %i.by, i64 7
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index198
  store <8 x i16> %i.cg, ptr %i.ch, align 2, !tbaa !242, !alias.scope !1183, !noalias !1182
  %index.next199 = add nuw i64 %index198, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next199, %n.vec196
  br i1 %i.ci, label %middle.block200, label %vector.body197, !llvm.loop !1175

middle.block200:                                  ; preds = %vector.body197
  %cmp.n201 = icmp eq i64 %.pr, %n.vec196
  br i1 %cmp.n201, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204: ; preds = %vector.memcheck194, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block200
  %.0116.us.ph = phi i64 [ 0, %vector.memcheck194 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec196, %middle.block200 ] ; 3 uses
  %xtraiter206 = and i64 %.pr, 3                  ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us.prol = phi i64 [ %i.cm, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204 ] ; 3 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204 ]
  %i.cj = mul i64 %.sroa.4.0.copyload.i, %.0116.us.prol
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cj
  %.0.copyload.i.i.us.prol = load i16, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0116.us.prol
  store i16 %.0.copyload.i.i.us.prol, ptr %i.cl, align 2, !tbaa !242
  %i.cm = add nuw i64 %.0116.us.prol, 1           ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1176

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204
  %.0116.us.unr = phi i64 [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader204 ], [ %i.cm, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.cn = sub i64 %.0116.us.ph, %.pr
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %i.cp = shl nuw i64 %.pr, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.z, i8 0, i64 %i.cp, i1 false), !tbaa !242
  br label %._crit_edge

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us = phi i64 [ %i.df, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us.unr, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit ] ; 6 uses
  %i.cq = mul i64 %.sroa.4.0.copyload.i, %.0116.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cq
  %.0.copyload.i.i.us = load i16, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0116.us
  store i16 %.0.copyload.i.i.us, ptr %i.cs, align 2, !tbaa !242
  %i.ct = add nuw i64 %.0116.us, 1                ; 2 uses
  %i.cu = mul i64 %.sroa.4.0.copyload.i, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cu
  %.0.copyload.i.i.us.1 = load i16, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ct
  store i16 %.0.copyload.i.i.us.1, ptr %i.cw, align 2, !tbaa !242
  %i.cx = add nuw i64 %.0116.us, 2                ; 2 uses
  %i.cy = mul i64 %.sroa.4.0.copyload.i, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cy
  %.0.copyload.i.i.us.2 = load i16, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.cx
  store i16 %.0.copyload.i.i.us.2, ptr %i.da, align 2, !tbaa !242
  %i.db = add nuw i64 %.0116.us, 3                ; 2 uses
  %i.dc = mul i64 %.sroa.4.0.copyload.i, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dc
  %.0.copyload.i.i.us.3 = load i16, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.db
  store i16 %.0.copyload.i.i.us.3, ptr %i.de, align 2, !tbaa !242
  %i.df = add nuw i64 %.0116.us, 4                ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.df, %.pr
  br i1 %exitcond128.not.3, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1177
end_hunk_4
begin_hunk_5_@_ZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEm:bb.a

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !361   ; 2 uses
  %.pre129 = load ptr, ptr %i.jp, align 8, !tbaa !361
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.ba
  %.pre-phi133 = phi i64 [ %.pre132, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.jt, %bb.ba ]
  %.pre-phi = phi i64 [ %.pre131, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.js, %bb.ba ]
  %i.jx = phi ptr [ %.pre, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.jr, %bb.ba ] ; 2 uses
  %i.jy = phi ptr [ %i.jw, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ null, %bb.ba ] ; 5 uses
  store ptr %i.jy, ptr %0, align 8, !tbaa !238
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ju
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !240
  %i.kc = sub i64 %.pre-phi, %.pre-phi133         ; 4 uses
  %i.kd = icmp sgt i64 %i.kc, 2
  br i1 %i.kd, label %bb.bc, label %bb.bd, !prof !320

bb.bc:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.jy, ptr align 2 %i.jx, i64 %i.kc, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.ke = icmp eq i64 %i.kc, 2
  br i1 %i.ke, label %bb.be, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kf = load i16, ptr %i.jx, align 2, !tbaa !242
  store i16 %i.kf, ptr %i.jy, align 2, !tbaa !242
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.kg = getelementptr inbounds i8, ptr %i.jy, i64 %i.kc
  store ptr %i.kg, ptr %i.jz, align 8, !tbaa !239
  %.pre130 = load i8, ptr %i.jn, align 8, !tbaa !360
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItEC2ERKS2_.exit

bb.bf:                                            ; preds = %bb.ay
  unreachable

bb.bg:                                            ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit85

_ZN5scene19CGLTFMeshFileLoader8AccessorItEC2ERKS2_.exit: ; preds = %bb.ay, %bb.az, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i
  %i.ki = phi i8 [ %i.jo, %bb.ay ], [ 0, %bb.az ], [ %.pre130, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.ki, ptr %i.jm, align 8, !tbaa !360
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !369
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !369
  br label %_ZNSt6vectorItSaItEED2Ev.exit74

_ZNSt6vectorItSaItEED2Ev.exit74:                  ; preds = %bb.ar, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorItEC2ERKS2_.exit
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !360
  %i.ko = icmp eq i8 %i.kn, 1
  br i1 %i.ko, label %bb.bh, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit87

bb.bh:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit74
  %i.kp = load ptr, ptr %3, align 8, !tbaa !238   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i86 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i86, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit87, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !240
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ku) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit87: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit74, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorItSaItEED2Ev.exit85:                  ; preds = %bb.bg, %bb.k, %bb.aw, %bb.ax
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41181, %bb.ax ], [ %i.dz, %bb.k ], [ %.pn.pn.pn.pn, %bb.aw ], [ %i.kh, %bb.bg ]
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !360
  %i.kx = icmp eq i8 %i.kw, 1
  br i1 %i.kx, label %bb.bj, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89

bb.bj:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit85
  %i.ky = load ptr, ptr %3, align 8, !tbaa !238   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !240
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit85, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89, %bb.f
  %.pn45 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn41.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit89 ]
  resume { ptr, i32 } %.pn45

bb.bm:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.726") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.726", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1062, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1063, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 4
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not35 = icmp eq i32 %i.o, 3
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bl

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIjE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.726") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 5 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc47 unwind label %bb.k   ; 28 uses

.noexc47:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w ; 9 uses
  store i32 0, ptr %i.z, align 4, !tbaa !273
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 3 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !273
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc47 ], [ %i.ae, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 8 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 16 uses
  %.not124 = icmp eq i64 %.pr, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !371 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 22 uses
  %8 = ptrtoaddr ptr %i.ah to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 6 uses
  %switch = icmp ult i8 %i.ag, 3
  br i1 %switch, label %.lr.ph.split, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ag, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %.pr, 8
  %i.ai = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200, label %vector.ph

vector.ph:                                        ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %n.vec = and i64 %.pr, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !273
  %wide.load184 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !273
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !273
  store <4 x i32> %wide.load184, ptr %i.am, align 4, !tbaa !273
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block
  %.0116.us118.ph = phi i64 [ 0, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.pr, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us118.prol = phi i64 [ %i.ar, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us118.ph, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0116.us118.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !273
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us118.prol
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !273
  %i.ar = add nuw i64 %.0116.us118.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1186

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200
  %.0116.us118.unr = phi i64 [ %.0116.us118.ph, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader200 ], [ %i.ar, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.as = sub i64 %.0116.us118.ph, %.pr
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ugt i64 %.pr, 27
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond198 = select i1 %min.iters.check188, i1 %ident.check.not, i1 false
  br i1 %or.cond198, label %vector.memcheck189, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199

vector.memcheck189:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.au = shl i64 %.pr, 2
  %i.av = getelementptr i8, ptr %i.z, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ah, i64 %.pr
  %i.ax = getelementptr i8, ptr %i.aw, i64 3
  %bound0 = icmp ult ptr %i.z, %i.ax
  %bound1 = icmp ult ptr %i.ah, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck189
  %n.vec191 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next194, %vector.body192 ] ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index193
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.bn = load i32, ptr %i.ay, align 1, !alias.scope !1197
  %i.bo = load i32, ptr %i.ba, align 1, !alias.scope !1197
  %i.bp = load i32, ptr %i.bc, align 1, !alias.scope !1197
  %i.bq = load i32, ptr %i.be, align 1, !alias.scope !1197
  %i.br = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bp, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 3
  %i.bv = load i32, ptr %i.bg, align 1, !alias.scope !1197
  %i.bw = load i32, ptr %i.bi, align 1, !alias.scope !1197
  %i.bx = load i32, ptr %i.bk, align 1, !alias.scope !1197
  %i.by = load i32, ptr %i.bm, align 1, !alias.scope !1197
  %i.bz = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 3
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index193 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> %i.bu, ptr %i.cd, align 4, !tbaa !273, !alias.scope !1198, !noalias !1197
  store <4 x i32> %i.cc, ptr %i.ce, align 4, !tbaa !273, !alias.scope !1198, !noalias !1197
  %index.next194 = add nuw i64 %index193, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next194, %n.vec191
  br i1 %i.cf, label %middle.block195, label %vector.body192, !llvm.loop !1190

middle.block195:                                  ; preds = %vector.body192
  %cmp.n196 = icmp eq i64 %.pr, %n.vec191
  br i1 %cmp.n196, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199: ; preds = %vector.memcheck189, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block195
  %.0116.us.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec191, %middle.block195 ] ; 3 uses
  %xtraiter202 = and i64 %.pr, 3                  ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol
  %.0116.us.prol = phi i64 [ %i.cj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ]
  %i.cg = mul i64 %.sroa.4.0.copyload.i, %.0116.us.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cg
  %.0.copyload.i.i.us.prol = load i32, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us.prol
  store i32 %.0.copyload.i.i.us.prol, ptr %i.ci, align 4, !tbaa !273
  %i.cj = add nuw i64 %.0116.us.prol, 1           ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, !llvm.loop !1191

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199
  %.0116.us.unr = phi i64 [ %.0116.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader199 ], [ %i.cj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol ]
  %i.ck = sub i64 %.0116.us.ph, %.pr
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %i.cm = shl nuw i64 %.pr, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.cm, i1 false), !tbaa !273
  br label %._crit_edge

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us = phi i64 [ %i.dc, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us.unr, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit ] ; 6 uses
  %i.cn = mul i64 %.sroa.4.0.copyload.i, %.0116.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cn
  %.0.copyload.i.i.us = load i32, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us
  store i32 %.0.copyload.i.i.us, ptr %i.cp, align 4, !tbaa !273
  %i.cq = add nuw i64 %.0116.us, 1                ; 2 uses
  %i.cr = mul i64 %.sroa.4.0.copyload.i, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cr
  %.0.copyload.i.i.us.1 = load i32, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cq
  store i32 %.0.copyload.i.i.us.1, ptr %i.ct, align 4, !tbaa !273
  %i.cu = add nuw i64 %.0116.us, 2                ; 2 uses
  %i.cv = mul i64 %.sroa.4.0.copyload.i, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cv
  %.0.copyload.i.i.us.2 = load i32, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cu
  store i32 %.0.copyload.i.i.us.2, ptr %i.cx, align 4, !tbaa !273
  %i.cy = add nuw i64 %.0116.us, 3                ; 2 uses
  %i.cz = mul i64 %.sroa.4.0.copyload.i, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cz
  %.0.copyload.i.i.us.3 = load i32, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cy
  store i32 %.0.copyload.i.i.us.3, ptr %i.db, align 4, !tbaa !273
  %i.dc = add nuw i64 %.0116.us, 4                ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dc, %.pr
  br i1 %exitcond128.not.3, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1192

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0116.us118 = phi i64 [ %i.ds, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0116.us118.unr, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0116.us118
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !273
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116.us118
  store i32 %i.de, ptr %i.df, align 4, !tbaa !273
  %i.dg = add nuw i64 %.0116.us118, 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !273
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dg
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !273
  %i.dk = add nuw i64 %.0116.us118, 2             ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !273
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dk
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !273
  %i.do = add nuw i64 %.0116.us118, 3             ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !273
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.do
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !273
  %i.ds = add nuw i64 %.0116.us118, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ds, %.pr
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1193

end_hunk_5
begin_hunk_6_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_:bb.a
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.c [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !181
  %i.h = mul i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.i, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !349
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.l = load i8, ptr %i.k, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str.36, ptr %i.n, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit: ; preds = %bb.b, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i8 [ %.0.copyload.i.i.i.i.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.l, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.b ]
  %i.o = zext i8 %.0.i.i.i.i.i to i32
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.e [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i9 = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i11 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !181
  %i.p = mul i64 %.sroa.4.0.copyload.i.i.i.i.i11, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i9, i64 %i.p
  %.0.copyload.i.i.i.i.i.i12 = load i16, ptr %i.q, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !238
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.e
  %i.t = load i16, ptr %i.s, align 2, !tbaa !242
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.36, ptr %i.v, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit: ; preds = %bb.d, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
  %.0.i.i.i.i.i8 = phi i16 [ %.0.copyload.i.i.i.i.i.i12, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.t, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.d ]
  %i.w = zext i16 %.0.i.i.i.i.i8 to i32
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.f:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.g [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i.i14 = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !181
  %i.x = mul i64 %.sroa.4.0.copyload.i.i.i.i.i16, %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i14, i64 %i.x
  %.0.copyload.i.i.i.i.i.i17 = load i32, ptr %i.y, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.e
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !273
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @.str.36, ptr %i.ad, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

bb.h:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit
  %.0.i.i.i.i.i13.sink = phi i32 [ %i.o, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit ], [ %i.w, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit ], [ %.0.copyload.i.i.i.i.i.i17, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.ab, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.f ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1849, !nonnull !81, !align !645
  store i32 %.0.i.i.i.i.i13.sink, ptr %i.ae, align 4, !tbaa !273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.1079") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.1079", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1721, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1722, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not36 = icmp eq i32 %i.o, 4
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bl

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.1079") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 6 uses
  %i.x = icmp ugt i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt5arrayIhLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 1
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc48 unwind label %bb.k   ; 27 uses

.noexc48:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.w ; 10 uses
  store i16 0, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 7 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit, label %iter.check

iter.check:                                       ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 4 uses
  %i.af = add nuw i64 %i.w, 9223372036854775806
  %i.ag = and i64 %i.af, 9223372036854775807      ; 3 uses
  %i.ah = add nuw i64 %i.ag, 1                    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check187 = icmp samesign ult i64 %i.ag, 15
  br i1 %min.iters.check187, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, -16                     ; 4 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.al ; 2 uses
  %i.am = load i16, ptr %i.z, align 1, !tbaa !60
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 1, !tbaa !60
  store <8 x i16> %broadcast.splat, ptr %i.an, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1850

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !655

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %i.ah, -4                   ; 3 uses
  %i.ap = shl i64 %n.vec188, 1
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index189, 1
  %next.gep190 = getelementptr i8, ptr %i.ab, i64 %i.ar
  %i.as = load i16, ptr %i.z, align 1, !tbaa !60
  %broadcast.splatinsert191 = insertelement <4 x i16> poison, i16 %i.as, i64 0
  %broadcast.splat192 = shufflevector <4 x i16> %broadcast.splatinsert191, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %broadcast.splat192, ptr %next.gep190, align 1, !tbaa !60
  %index.next193 = add nuw i64 %index189, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1851

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %i.ah, %n.vec188
  br i1 %cmp.n194, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.au = load i16, ptr %i.z, align 1, !tbaa !60
  store i16 %i.au, ptr %.06.i.i.i.i.i.i.i.i.i, align 1, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1852

_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc48
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc48 ], [ %i.ae, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 23 uses
  %.not125 = icmp eq i64 %.pr, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !536 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8               ; 15 uses
  %8 = ptrtoaddr ptr %i.ay to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %switch = icmp ult i8 %i.ax, 3
  br i1 %switch, label %.lr.ph.split, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ax, label %iter.check244 [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %iter.check208
  ]

iter.check208:                                    ; preds = %.lr.ph.split
  %min.iters.check196 = icmp ult i64 %.pr, 4
  %i.az = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond = select i1 %min.iters.check196, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vector.main.loop.iter.check197

vector.main.loop.iter.check197:                   ; preds = %iter.check208
  %min.iters.check198 = icmp ult i64 %.pr, 16
  br i1 %min.iters.check198, label %vec.epilog.ph212, label %vector.ph199

vector.ph199:                                     ; preds = %vector.main.loop.iter.check197
  %i.ba = and i64 %.pr, 12
  %n.vec200 = and i64 %.pr, -16                   ; 4 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.ph199, %vector.body201
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next204, %vector.body201 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %index202 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <8 x i16>, ptr %i.bb, align 1, !tbaa !60
  %wide.load203 = load <8 x i16>, ptr %i.bc, align 1, !tbaa !60
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index202 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <8 x i16> %wide.load, ptr %i.bd, align 1, !tbaa !60
  store <8 x i16> %wide.load203, ptr %i.be, align 1, !tbaa !60
  %index.next204 = add nuw i64 %index202, 16      ; 2 uses
  %i.bf = icmp eq i64 %index.next204, %n.vec200
  br i1 %i.bf, label %middle.block205, label %vector.body201, !llvm.loop !1853

middle.block205:                                  ; preds = %vector.body201
  %cmp.n206 = icmp eq i64 %.pr, %n.vec200
  br i1 %cmp.n206, label %._crit_edge, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block205
  %min.epilog.iters.check211 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check211, label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, label %vec.epilog.ph212, !prof !655

vec.epilog.ph212:                                 ; preds = %vector.main.loop.iter.check197, %vec.epilog.iter.check210
  %vec.epilog.resume.val207 = phi i64 [ %n.vec200, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check197 ]
  %n.vec213 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body214

vec.epilog.vector.body214:                        ; preds = %vec.epilog.vector.body214, %vec.epilog.ph212
  %index215 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph212 ], [ %index.next217, %vec.epilog.vector.body214 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %index215
  %wide.load216 = load <4 x i16>, ptr %i.bg, align 1, !tbaa !60
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index215
  store <4 x i16> %wide.load216, ptr %i.bh, align 1, !tbaa !60
  %index.next217 = add nuw i64 %index215, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next217, %n.vec213
  br i1 %i.bi, label %vec.epilog.middle.block218, label %vec.epilog.vector.body214, !llvm.loop !1854

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body214
  %cmp.n219 = icmp eq i64 %.pr, %n.vec213
  br i1 %cmp.n219, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader

_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %iter.check208, %vec.epilog.iter.check210, %vec.epilog.middle.block218
  %.0117.us119.ph = phi i64 [ 0, %iter.check208 ], [ %n.vec200, %vec.epilog.iter.check210 ], [ %n.vec213, %vec.epilog.middle.block218 ]
  br label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check222 = icmp ugt i64 %.pr, 15
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond256 = select i1 %min.iters.check222, i1 %ident.check.not, i1 false
  br i1 %or.cond256, label %vector.memcheck223, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257

vector.memcheck223:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.bj = shl i64 %.pr, 1
  %i.bk = getelementptr i8, ptr %i.z, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.ay, i64 %.pr
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %bound0 = icmp ult ptr %i.z, %i.bm
  %bound1 = icmp ult ptr %i.ay, %i.bk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck223
  %n.vec225 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next228, %vector.body226 ] ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index227
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.cc = load i16, ptr %i.bn, align 1, !alias.scope !1867
  %i.cd = load i16, ptr %i.bp, align 1, !alias.scope !1867
  %i.ce = load i16, ptr %i.br, align 1, !alias.scope !1867
  %i.cf = load i16, ptr %i.bt, align 1, !alias.scope !1867
  %i.cg = load i16, ptr %i.bv, align 1, !alias.scope !1867
  %i.ch = load i16, ptr %i.bx, align 1, !alias.scope !1867
  %i.ci = load i16, ptr %i.bz, align 1, !alias.scope !1867
  %i.cj = load i16, ptr %i.cb, align 1, !alias.scope !1867
  %i.ck = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 1
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 2
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 3
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 4
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 5
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 6
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 7
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index227
  store <8 x i16> %i.cr, ptr %i.cs, align 1, !tbaa !60, !alias.scope !1868, !noalias !1867
  %index.next228 = add nuw i64 %index227, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next228, %n.vec225
  br i1 %i.ct, label %middle.block229, label %vector.body226, !llvm.loop !1858

middle.block229:                                  ; preds = %vector.body226
  %cmp.n230 = icmp eq i64 %.pr, %n.vec225
  br i1 %cmp.n230, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257: ; preds = %vector.memcheck223, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block229
  %.0117.us.ph = phi i64 [ 0, %vector.memcheck223 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec225, %middle.block229 ]
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

iter.check244:                                    ; preds = %.lr.ph.split
  %min.iters.check233 = icmp ult i64 %.pr, 4
  br i1 %min.iters.check233, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit.preheader, label %vector.main.loop.iter.check234

vector.main.loop.iter.check234:                   ; preds = %iter.check244
  %min.iters.check235 = icmp ult i64 %.pr, 16
  br i1 %min.iters.check235, label %vec.epilog.ph248, label %vector.ph236

vector.ph236:                                     ; preds = %vector.main.loop.iter.check234
  %i.cu = and i64 %.pr, 12
  %n.vec237 = and i64 %.pr, -16                   ; 4 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.ph236, %vector.body238
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next240, %vector.body238 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index239 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <8 x i16> zeroinitializer, ptr %i.cv, align 1, !tbaa !60
  store <8 x i16> zeroinitializer, ptr %i.cw, align 1, !tbaa !60
  %index.next240 = add nuw i64 %index239, 16      ; 2 uses
  %i.cx = icmp eq i64 %index.next240, %n.vec237
  br i1 %i.cx, label %middle.block241, label %vector.body238, !llvm.loop !1859

middle.block241:                                  ; preds = %vector.body238
  %cmp.n242 = icmp eq i64 %.pr, %n.vec237
  br i1 %cmp.n242, label %._crit_edge, label %vec.epilog.iter.check246

vec.epilog.iter.check246:                         ; preds = %middle.block241
  %min.epilog.iters.check247 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check247, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit.preheader, label %vec.epilog.ph248, !prof !655

vec.epilog.ph248:                                 ; preds = %vector.main.loop.iter.check234, %vec.epilog.iter.check246
  %vec.epilog.resume.val243 = phi i64 [ %n.vec237, %vec.epilog.iter.check246 ], [ 0, %vector.main.loop.iter.check234 ]
  %n.vec249 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body250

vec.epilog.vector.body250:                        ; preds = %vec.epilog.vector.body250, %vec.epilog.ph248
  %index251 = phi i64 [ %vec.epilog.resume.val243, %vec.epilog.ph248 ], [ %index.next252, %vec.epilog.vector.body250 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index251
  store <4 x i16> zeroinitializer, ptr %i.cy, align 1, !tbaa !60
  %index.next252 = add nuw i64 %index251, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next252, %n.vec249
  br i1 %i.cz, label %vec.epilog.middle.block253, label %vec.epilog.vector.body250, !llvm.loop !1860

vec.epilog.middle.block253:                       ; preds = %vec.epilog.vector.body250
  %cmp.n254 = icmp eq i64 %.pr, %n.vec249
  br i1 %cmp.n254, label %._crit_edge, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit.preheader

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit.preheader: ; preds = %iter.check244, %vec.epilog.iter.check246, %vec.epilog.middle.block253
  %.0117.ph = phi i64 [ 0, %iter.check244 ], [ %n.vec237, %vec.epilog.iter.check246 ], [ %n.vec249, %vec.epilog.middle.block253 ]
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us = phi i64 [ %i.dd, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader257 ] ; 3 uses
  %i.da = mul i64 %.sroa.4.0.copyload.i, %.0117.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.da
  %.sroa.0.0.copyload.i.i.us = load i16, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0117.us
  store i16 %.sroa.0.0.copyload.i.i.us, ptr %i.dc, align 1, !tbaa !60
  %i.dd = add nuw i64 %.0117.us, 1                ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.pr
  br i1 %i.de, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1861

_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us119 = phi i64 [ %i.dh, %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us119.ph, %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %.0117.us119
  %.sroa.02.0.copyload.i.us = load i16, ptr %i.df, align 1, !tbaa !60
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0117.us119
  store i16 %.sroa.02.0.copyload.i.us, ptr %i.dg, align 1, !tbaa !60
  %i.dh = add nuw i64 %.0117.us119, 1             ; 2 uses
  %i.di = icmp ult i64 %i.dh, %.pr
  br i1 %i.di, label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1862

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit, %middle.block205, %vec.epilog.middle.block218, %middle.block229, %middle.block241, %vec.epilog.middle.block253, %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2EmRKS2_.exit
end_hunk_6
begin_hunk_7_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEm:bb.a

_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !541   ; 2 uses
  %.pre129 = load ptr, ptr %i.jf, align 8, !tbaa !541
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.ba
  %.pre-phi133 = phi i64 [ %.pre132, %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.jj, %bb.ba ]
  %.pre-phi = phi i64 [ %.pre131, %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.ji, %bb.ba ]
  %i.jn = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.jh, %bb.ba ] ; 2 uses
  %i.jo = phi ptr [ %i.jm, %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ null, %bb.ba ] ; 5 uses
  store ptr %i.jo, ptr %0, align 8, !tbaa !540
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jk
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !542
  %i.js = sub i64 %.pre-phi, %.pre-phi133         ; 4 uses
  %i.jt = icmp sgt i64 %i.js, 2
  br i1 %i.jt, label %bb.bc, label %bb.bd, !prof !320

bb.bc:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jn, i64 %i.js, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.ju = icmp eq i64 %i.js, 2
  br i1 %i.ju, label %bb.be, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jv = load i16, ptr %i.jn, align 1, !tbaa !60
  store i16 %i.jv, ptr %i.jo, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.jw = getelementptr inbounds i8, ptr %i.jo, i64 %i.js
  store ptr %i.jw, ptr %i.jp, align 8, !tbaa !539
  %.pre130 = load i8, ptr %i.jd, align 8, !tbaa !536
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEC2ERKS4_.exit

bb.bf:                                            ; preds = %bb.ay
  unreachable

bb.bg:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEC2ERKS4_.exit: ; preds = %bb.ay, %bb.az, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i
  %i.jy = phi i8 [ %i.je, %bb.ay ], [ 0, %bb.az ], [ %.pre130, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.jy, ptr %i.jc, align 8, !tbaa !536
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !550
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !550
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75

_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75:  ; preds = %bb.ar, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEC2ERKS4_.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !536
  %i.ke = icmp eq i8 %i.kd, 1
  br i1 %i.ke, label %bb.bh, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit88

bb.bh:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75
  %i.kf = load ptr, ptr %3, align 8, !tbaa !540   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i87 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i87, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit88, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !542
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kk) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit88

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit88: ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86:  ; preds = %bb.bg, %bb.k, %bb.aw, %bb.ax
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42182, %bb.ax ], [ %i.dm, %bb.k ], [ %.pn.pn.pn.pn, %bb.aw ], [ %i.jx, %bb.bg ]
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !536
  %i.kn = icmp eq i8 %i.km, 1
  br i1 %i.kn, label %bb.bj, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90

bb.bj:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86
  %i.ko = load ptr, ptr %3, align 8, !tbaa !540   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i89, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !542
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.kt) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90: ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90, %bb.f
  %.pn46 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn42.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit90 ]
  resume { ptr, i32 } %.pn46

bb.bm:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.1102") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.1102", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1729, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1730, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not36 = icmp eq i32 %i.o, 4
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.1102") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 6 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc48 unwind label %bb.l   ; 22 uses

.noexc48:                                         ; preds = %bb.j
  %7 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w ; 8 uses
  store i32 0, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 5 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.w, 4611686018427387902
  %i.ag = and i64 %i.af, 4611686018427387903      ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.ai = shl i64 %n.vec, 2
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %i.al = load i32, ptr %i.z, align 2, !tbaa !60
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 2, !tbaa !60
  store <4 x i32> %broadcast.splat, ptr %i.am, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.k, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %bb.k ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i32, ptr %i.z, align 2, !tbaa !60
  store i32 %i.ao, ptr %.06.i.i.i.i.i.i.i.i.i, align 2, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1871

_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc48
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc48 ], [ %i.ae, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 15 uses
  %.not125 = icmp eq i64 %.pr, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !552 ; 2 uses
  %i.as = load ptr, ptr %3, align 8               ; 14 uses
  %8 = ptrtoaddr ptr %i.as to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %switch = icmp ult i8 %i.ar, 3
  br i1 %switch, label %.lr.ph.split, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ar, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ult i64 %.pr, 8
  %i.at = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check188, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225, label %vector.ph189

vector.ph189:                                     ; preds = %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %n.vec190 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next194, %vector.body191 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index192 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 2, !tbaa !60
  %wide.load193 = load <4 x i32>, ptr %i.av, align 2, !tbaa !60
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index192 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %wide.load, ptr %i.aw, align 2, !tbaa !60
  store <4 x i32> %wide.load193, ptr %i.ax, align 2, !tbaa !60
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.ay, label %middle.block195, label %vector.body191, !llvm.loop !1872

middle.block195:                                  ; preds = %vector.body191
  %cmp.n196 = icmp eq i64 %.pr, %n.vec190
  br i1 %cmp.n196, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225

_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225: ; preds = %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block195
  %.0117.us119.ph = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec190, %middle.block195 ]
  br label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %min.iters.check201 = icmp ugt i64 %.pr, 27
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i, 1
  %or.cond221 = select i1 %min.iters.check201, i1 %ident.check.not, i1 false
  br i1 %or.cond221, label %vector.memcheck202, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223

vector.memcheck202:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %i.az = shl i64 %.pr, 2
  %i.ba = getelementptr i8, ptr %i.z, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.as, i64 %.pr
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  %bound0 = icmp ult ptr %i.z, %i.bc
  %bound1 = icmp ult ptr %i.as, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck202
  %n.vec204 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next207, %vector.body205 ] ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %index206
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  %i.bs = load i32, ptr %i.bd, align 1, !alias.scope !1884
  %i.bt = load i32, ptr %i.bf, align 1, !alias.scope !1884
  %i.bu = load i32, ptr %i.bh, align 1, !alias.scope !1884
  %i.bv = load i32, ptr %i.bj, align 1, !alias.scope !1884
  %i.bw = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 1
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bu, i64 2
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bv, i64 3
  %i.ca = load i32, ptr %i.bl, align 1, !alias.scope !1884
  %i.cb = load i32, ptr %i.bn, align 1, !alias.scope !1884
  %i.cc = load i32, ptr %i.bp, align 1, !alias.scope !1884
  %i.cd = load i32, ptr %i.br, align 1, !alias.scope !1884
  %i.ce = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 1
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 2
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index206 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i32> %i.bz, ptr %i.ci, align 2, !tbaa !60, !alias.scope !1885, !noalias !1884
  store <4 x i32> %i.ch, ptr %i.cj, align 2, !tbaa !60, !alias.scope !1885, !noalias !1884
  %index.next207 = add nuw i64 %index206, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next207, %n.vec204
  br i1 %i.ck, label %middle.block208, label %vector.body205, !llvm.loop !1876

middle.block208:                                  ; preds = %vector.body205
  %cmp.n209 = icmp eq i64 %.pr, %n.vec204
  br i1 %cmp.n209, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223: ; preds = %vector.memcheck202, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader, %middle.block208
  %.0117.us.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %n.vec204, %middle.block208 ]
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader: ; preds = %.lr.ph.split
  %min.iters.check212 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check212, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader222, label %vector.ph213

vector.ph213:                                     ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader
  %n.vec214 = and i64 %.pr, -8                    ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next217, %vector.body215 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index216 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> zeroinitializer, ptr %i.cl, align 2, !tbaa !60
  store <4 x i32> zeroinitializer, ptr %i.cm, align 2, !tbaa !60
  %index.next217 = add nuw i64 %index216, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next217, %n.vec214
  br i1 %i.cn, label %middle.block218, label %vector.body215, !llvm.loop !1877

middle.block218:                                  ; preds = %vector.body215
  %cmp.n219 = icmp eq i64 %.pr, %n.vec214
  br i1 %cmp.n219, label %._crit_edge, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader222

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader222: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader, %middle.block218
  %.0117.ph = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader ], [ %n.vec214, %middle.block218 ]
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us = phi i64 [ %i.cr, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader223 ] ; 3 uses
  %i.co = mul i64 %.sroa.4.0.copyload.i, %.0117.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.co
  %.sroa.0.0.copyload.i.i.us = load i32, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117.us
  store i32 %.sroa.0.0.copyload.i.i.us, ptr %i.cq, align 2, !tbaa !60
  %i.cr = add nuw i64 %.0117.us, 1                ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.pr
  br i1 %i.cs, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1878

_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %.0117.us119 = phi i64 [ %i.cv, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0117.us119.ph, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader225 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0117.us119
  %.sroa.02.0.copyload.i.us = load i32, ptr %i.ct, align 2, !tbaa !60
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117.us119
  store i32 %.sroa.02.0.copyload.i.us, ptr %i.cu, align 2, !tbaa !60
  %i.cv = add nuw i64 %.0117.us119, 1             ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %.pr
  br i1 %i.cw, label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, label %._crit_edge, !llvm.loop !1879

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit, %middle.block195, %middle.block208, %middle.block218, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit
  %.0.i.i.i.i.i174 = phi ptr [ %.0.i.i.i.i.i.ph, %middle.block218 ], [ %.0.i.i.i.i.i.ph, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit ], [ %.0.i.i.i.i.i.ph, %middle.block195 ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %.0.i.i.i.i.i.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  %.sroa.0105.0171 = phi ptr [ %i.z, %middle.block218 ], [ %i.z, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %middle.block195 ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.z, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit ], [ %i.z, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 9 uses
  %.sroa.15.0167 = phi ptr [ %i.aa, %middle.block218 ], [ %i.aa, %middle.block208 ], [ null, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aa, %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2EmRKS2_.exit ], [ %i.aa, %middle.block195 ], [ %i.aa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ], [ %i.aa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit ], [ %i.aa, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.cy, align 8, !tbaa !439
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.cz, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EED2Ev.exit86

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader222, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit
  %.0117 = phi i64 [ %i.dc, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit ], [ %.0117.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit.preheader222 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0117
  store i32 0, ptr %i.db, align 2, !tbaa !60
  %i.dc = add nuw i64 %.0117, 1                   ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %.pr
  br i1 %i.dd, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit, label %._crit_edge, !llvm.loop !1880

bb.m:                                             ; preds = %.lr.ph
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.de, align 8, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr @.str.36, ptr %i.df, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc49 unwind label %.thread175

.noexc49:                                         ; preds = %bb.m
  unreachable

.thread175:                                       ; preds = %bb.m
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !264, !range !80, !noundef !81
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.o, label %bb.s
end_hunk_7
