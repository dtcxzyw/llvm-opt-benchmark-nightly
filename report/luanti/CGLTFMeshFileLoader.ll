Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointE:bb.a
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !183 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 96                ; 2 uses
  %.not.i.i115 = icmp ult i64 %2, %i.gg
  br i1 %.not.i.i115, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.gg) #34
          to label %.noexc116 unwind label %bb.be

.noexc116:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw [96 x i8], ptr %i.gc, i64 %2 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !192, !range !54, !noundef !55
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.bf, label %_ZNSt6vectorItSaItEED2Ev.exit172

bb.be:                                            ; preds = %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

bb.bf:                                            ; preds = %bb.bd
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !286
  %i.gq = load ptr, ptr %i.gi, align 8, !tbaa !185 ; 2 uses
  %.not440 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not440, label %_ZNSt6vectorItSaItEED2Ev.exit172, label %_ZNKSt6vectorImSaImEE2atEm.exit.i.lr.ph

_ZNKSt6vectorImSaImEE2atEm.exit.i.lr.ph:          ; preds = %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.not441 = icmp eq ptr %i.f, %i.g
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gh, i64 24 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.hf = trunc i32 %i.bt to i16                  ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  br label %_ZNKSt6vectorImSaImEE2atEm.exit.i

_ZNKSt6vectorImSaImEE2atEm.exit.i:                ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i.lr.ph, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEENS4_IS5_ItLm4EEEEEED2Ev.exit
  %i.hk = phi ptr [ %i.gq, %_ZNKSt6vectorImSaImEE2atEm.exit.i.lr.ph ], [ %i.qw, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEENS4_IS5_ItLm4EEEEEED2Ev.exit ]
  %storemerge439 = phi i64 [ 0, %_ZNKSt6vectorImSaImEE2atEm.exit.i.lr.ph ], [ %i.qu, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEENS4_IS5_ItLm4EEEEEED2Ev.exit ] ; 5 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %storemerge439
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !156, !noalias !287 ; 5 uses
  %i.hn = load ptr, ptr %i.gr, align 8, !tbaa !290, !noalias !287
  %i.ho = load ptr, ptr %0, align 8, !tbaa !291, !noalias !287 ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 216               ; 2 uses
  %.not.i.i8.i = icmp ult i64 %i.hm, %i.hs
  br i1 %.not.i.i8.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.hm, i64 noundef %i.hs) #34
          to label %.noexc119 unwind label %.loopexit.split-lp238

.noexc119:                                        ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i: ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i
  %i.ht = getelementptr inbounds nuw [216 x i8], ptr %i.ho, i64 %i.hm
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !292, !noalias !287
  switch i32 %i.hv, label %bb.cf [
    i32 1, label %bb.bh
    i32 3, label %bb.bt
  ]

bb.bh:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !287
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor") align 8 %6, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.hm)
          to label %.noexc120 unwind label %.loopexit237

.noexc120:                                        ; preds = %bb.bh
  %i.hw = load i8, ptr %i.gv, align 8, !tbaa !308, !noalias !287 ; 2 uses
  switch i8 %i.hw, label %bb.bo [
    i8 0, label %bb.bi
    i8 1, label %bb.bj
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i
  ]

bb.bi:                                            ; preds = %.noexc120
  %.sroa.0185.0.copyload191 = load ptr, ptr %6, align 8, !tbaa !310
  %.sroa.17.0.copyload193 = load i64, ptr %i.gw, align 8, !tbaa !156
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i

bb.bj:                                            ; preds = %.noexc120
  %i.hx = load ptr, ptr %i.gw, align 8, !tbaa !311, !noalias !287 ; 2 uses
  %i.hy = load ptr, ptr %6, align 8, !tbaa !314, !noalias !287 ; 3 uses
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ic = icmp ugt i64 %i.ib, 9223372036854775804
  br i1 %i.ic, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !315

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp, !noalias !287

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #32
          to label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit, !noalias !287

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre20.i = load ptr, ptr %6, align 8, !tbaa !316, !noalias !287 ; 2 uses
  %.pre21.i = load ptr, ptr %i.gw, align 8, !tbaa !316, !noalias !287
  %.pre22.i = ptrtoint ptr %.pre21.i to i64
  %.pre23.i = ptrtoint ptr %.pre20.i to i64
  br label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i, %bb.bj
  %.pre-phi24.i = phi i64 [ %.pre23.i, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.ia, %bb.bj ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre22.i, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.hz, %bb.bj ]
  %i.ie = phi ptr [ %.pre20.i, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.hy, %bb.bj ] ; 4 uses
  %i.if = phi ptr [ %i.id, %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ null, %bb.bj ] ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ib ; 2 uses
  %i.ih = sub i64 %.pre-phi.i, %.pre-phi24.i      ; 4 uses
  %i.ii = icmp sgt i64 %i.ih, 4
  br i1 %i.ii, label %bb.bl, label %bb.bm, !prof !317

bb.bl:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.ie, i64 %i.ih, i1 false), !noalias !287
  br label %bb.bp

bb.bm:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ij = icmp eq i64 %i.ih, 4
  br i1 %i.ij, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ik = load i32, ptr %i.ie, align 1, !tbaa !15, !noalias !287
  store i32 %i.ik, ptr %i.if, align 1, !tbaa !15, !noalias !287
  br label %bb.bp

bb.bo:                                            ; preds = %.noexc120
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit245 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit
  %lpad.phi247 = phi { ptr, i32 } [ %lpad.loopexit245, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit ], [ %lpad.loopexit.split-lp246, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp ]
  %i.il = load i8, ptr %i.gv, align 8, !tbaa !308, !noalias !287
  %i.im = icmp eq i8 %i.il, 1
  br i1 %i.im, label %bb.br, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit10.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.in = getelementptr inbounds i8, ptr %i.if, i64 %i.ih
  %i.io = ptrtoint ptr %i.in to i64               ; 2 uses
  %.pr.i = load i8, ptr %i.gv, align 8, !tbaa !308, !noalias !287 ; 2 uses
  %i.ip = icmp ne i8 %.pr.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  %or.cond.i = select i1 %i.ip, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iq = load ptr, ptr %i.gx, align 8, !tbaa !318, !noalias !287
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.ir, %.pre-phi24.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.is) #31, !noalias !287
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i: ; preds = %.noexc120, %bb.bi, %bb.bq, %bb.bp
  %.sroa.0185.3 = phi ptr [ %i.if, %bb.bq ], [ %i.if, %bb.bp ], [ %.sroa.0185.0.copyload191, %bb.bi ], [ undef, %.noexc120 ]
  %.sroa.29.1 = phi i8 [ 1, %bb.bq ], [ %.pr.i, %bb.bp ], [ 0, %bb.bi ], [ %i.hw, %.noexc120 ]
  %.sroa.23.1 = phi ptr [ %i.ig, %bb.bq ], [ %i.ig, %bb.bp ], [ undef, %bb.bi ], [ undef, %.noexc120 ]
  %.sroa.17.3 = phi i64 [ %i.io, %bb.bq ], [ %i.io, %bb.bp ], [ %.sroa.17.0.copyload193, %bb.bi ], [ undef, %.noexc120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !287
  br label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointEENK3$_0clEv.exit"

bb.br:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit
  %i.it = load ptr, ptr %6, align 8, !tbaa !314, !noalias !287 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit10.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iu = load ptr, ptr %i.gx, align 8, !tbaa !318, !noalias !287
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.ix) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit10.i

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit10.i: ; preds = %bb.bs, %bb.br, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !287
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

bb.bt:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !287
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.472") align 8 %7, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.hm)
          to label %.noexc121 unwind label %.loopexit237

.noexc121:                                        ; preds = %bb.bt
  %i.iy = load i8, ptr %i.gs, align 8, !tbaa !319, !noalias !287 ; 2 uses
  switch i8 %i.iy, label %bb.ca [
    i8 0, label %bb.bu
    i8 1, label %bb.bv
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i
  ]

bb.bu:                                            ; preds = %.noexc121
  %.sroa.0185.0.copyload = load ptr, ptr %7, align 8, !tbaa !310
  %.sroa.17.0.copyload = load i64, ptr %i.gt, align 8, !tbaa !156
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i

bb.bv:                                            ; preds = %.noexc121
  %i.iz = load ptr, ptr %i.gt, align 8, !tbaa !321, !noalias !287 ; 2 uses
  %i.ja = load ptr, ptr %7, align 8, !tbaa !324, !noalias !287 ; 3 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.je = icmp ugt i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !315

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp, !noalias !287

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #32
          to label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit, !noalias !287

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !325, !noalias !287 ; 2 uses
  %.pre19.i = load ptr, ptr %i.gt, align 8, !tbaa !325, !noalias !287
  %.pre25.i = ptrtoint ptr %.pre19.i to i64
  %.pre27.i = ptrtoint ptr %.pre.i to i64
  br label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i, %bb.bv
  %.pre-phi28.i = phi i64 [ %.pre27.i, %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.jc, %bb.bv ] ; 2 uses
  %.pre-phi26.i = phi i64 [ %.pre25.i, %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.jb, %bb.bv ]
  %i.jg = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.ja, %bb.bv ] ; 4 uses
  %i.jh = phi ptr [ %i.jf, %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ null, %bb.bv ] ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jd ; 2 uses
  %i.jj = sub i64 %.pre-phi26.i, %.pre-phi28.i    ; 4 uses
  %i.jk = icmp sgt i64 %i.jj, 8
  br i1 %i.jk, label %bb.bx, label %bb.by, !prof !317

bb.bx:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.jh, ptr align 2 %i.jg, i64 %i.jj, i1 false), !noalias !287
  br label %bb.cb

bb.by:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = icmp eq i64 %i.jj, 8
  br i1 %i.jl, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.jm = load i64, ptr %i.jg, align 2, !tbaa !15, !noalias !287
  store i64 %i.jm, ptr %i.jh, align 2, !tbaa !15, !noalias !287
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc121
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit: ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit242 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit
  %lpad.phi244 = phi { ptr, i32 } [ %lpad.loopexit242, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit ], [ %lpad.loopexit.split-lp243, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit.loopexit.split-lp ]
  %i.jn = load i8, ptr %i.gs, align 8, !tbaa !319, !noalias !287
  %i.jo = icmp eq i8 %i.jn, 1
  br i1 %i.jo, label %bb.cd, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit15.i

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %i.jp = getelementptr inbounds i8, ptr %i.jh, i64 %i.jj
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %.pr16.i = load i8, ptr %i.gs, align 8, !tbaa !319, !noalias !287 ; 2 uses
  %i.jr = icmp ne i8 %.pr16.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i13.i = icmp eq ptr %i.jg, null
  %or.cond47.i = select i1 %i.jr, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i13.i
  br i1 %or.cond47.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.js = load ptr, ptr %i.gu, align 8, !tbaa !326, !noalias !287
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = sub i64 %i.jt, %.pre-phi28.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.ju) #31, !noalias !287
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i: ; preds = %.noexc121, %bb.bu, %bb.cc, %bb.cb
  %.sroa.0185.1 = phi ptr [ %i.jh, %bb.cc ], [ %i.jh, %bb.cb ], [ %.sroa.0185.0.copyload, %bb.bu ], [ undef, %.noexc121 ]
  %.sroa.29.0 = phi i8 [ 1, %bb.cc ], [ %.pr16.i, %bb.cb ], [ 0, %bb.bu ], [ %i.iy, %.noexc121 ]
  %.sroa.23.0 = phi ptr [ %i.ji, %bb.cc ], [ %i.ji, %bb.cb ], [ undef, %bb.bu ], [ undef, %.noexc121 ]
  %.sroa.17.1 = phi i64 [ %i.jq, %bb.cc ], [ %i.jq, %bb.cb ], [ %.sroa.17.0.copyload, %bb.bu ], [ undef, %.noexc121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !287
  br label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointEENK3$_0clEv.exit"

bb.cd:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit
  %i.jv = load ptr, ptr %7, align 8, !tbaa !324, !noalias !287 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i14.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i14.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit15.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jw = load ptr, ptr %i.gu, align 8, !tbaa !326, !noalias !287
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.jv to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.jz) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit15.i

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit15.i: ; preds = %bb.ce, %bb.cd, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceESt6vectorIS6_SaIS6_EESt5tupleIJEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !287
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

bb.cf:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !287 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull @.str.30)
          to label %bb.cg unwind label %bb.ch, !noalias !287

bb.cg:                                            ; preds = %bb.cf
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc122 unwind label %.loopexit.split-lp238

.noexc122:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ka) #30, !noalias !287
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointEENK3$_0clEv.exit": ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i
  %.sroa.0185.4 = phi ptr [ %.sroa.0185.3, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i ], [ %.sroa.0185.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i ] ; 10 uses
  %i.kc = phi i1 [ true, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i ], [ false, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i ]
  %.sroa.29.2 = phi i8 [ %.sroa.29.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i ], [ %.sroa.29.0, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i ] ; 4 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i ], [ %.sroa.23.0, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i ] ; 2 uses
  %.sroa.17.4 = phi i64 [ %.sroa.17.3, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit.i ], [ %.sroa.17.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.kd = load ptr, ptr %i.gy, align 8, !tbaa !286
  %i.ke = load ptr, ptr %i.gn, align 8, !tbaa !185 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 3                 ; 2 uses
  %.not.i.i125 = icmp ult i64 %storemerge439, %i.ki
  br i1 %.not.i.i125, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointEENK3$_0clEv.exit"
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %storemerge439, i64 noundef %i.ki) #34
          to label %.noexc126 unwind label %.loopexit.split-lp249

.noexc126:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointEENK3$_0clEv.exit"
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %storemerge439
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !156
  invoke void @_ZN5scene19CGLTFMeshFileLoader30createNormalizedValuesAccessorILm4EEESt7variantIJNS0_8AccessorISt5arrayIhXT_EEEENS3_IS4_ItXT_EEEENS3_IS4_IfXT_EEEEEERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.426") align 8 %10, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.kk)
          to label %.preheader unwind label %.loopexit248

.preheader:                                       ; preds = %bb.cj
  br i1 %.not441, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dg
  br i1 %i.pa, label %.noexc.i151, label %.critedge

.loopexit237:                                     ; preds = %bb.bh, %bb.bt
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

.loopexit.split-lp238:                            ; preds = %bb.bg, %bb.cg
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

.loopexit248:                                     ; preds = %bb.cj
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.loopexit.split-lp249:                            ; preds = %bb.ci
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.lr.ph:                                           ; preds = %.preheader, %bb.dg
  %.064437 = phi i64 [ %i.ps, %bb.dg ], [ 0, %.preheader ] ; 12 uses
  %.065436 = phi i1 [ %i.pa, %bb.dg ], [ false, %.preheader ]
  br i1 %i.kc, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph
  switch i8 %.sroa.29.2, label %bb.ck [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.kl = mul i64 %.064437, %.sroa.17.4
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0185.4, i64 %i.kl
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.km, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit

_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0185.4, i64 %.064437
  %.sroa.02.0.copyload.i = load i32, ptr %i.kn, align 1, !tbaa !15
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit

bb.ck:                                            ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.ko = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ko, align 8, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr @.str.36, ptr %i.kp, align 8, !tbaa !327
  invoke void @__cxa_throw(ptr nonnull %i.ko, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc129 unwind label %bb.cl

.noexc129:                                        ; preds = %bb.ck
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit: ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.02.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.02.0.copyload.i, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit ] ; 3 uses
  %.sroa.0181.0.extract.trunc = trunc i32 %.sroa.02.0.i to i16 ; 2 uses
  %i.kq = lshr i16 %.sroa.0181.0.extract.trunc, 8
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.02.0.i, 16
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.02.0.i, 24
  %.sroa.7.0.extract.trunc = zext nneg i32 %.sroa.7.0.extract.shift to i64
  %i.kr = and i16 %.sroa.0181.0.extract.trunc, 255
  %i.ks = and i32 %.sroa.6.0.extract.shift, 255
  %i.kt = zext nneg i32 %i.ks to i64
  br label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph
  switch i8 %.sroa.29.2, label %bb.cm [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.kv = mul i64 %.064437, %.sroa.17.4
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0185.4, i64 %i.kv
  %.sroa.0.0.copyload.i.i138 = load i64, ptr %i.kw, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit

_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0185.4, i64 %.064437
  %.sroa.02.0.copyload.i134 = load i64, ptr %i.kx, align 2, !tbaa !15
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit

bb.cm:                                            ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ky = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ky, align 8, !tbaa !17
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr @.str.36, ptr %i.kz, align 8, !tbaa !327
  invoke void @__cxa_throw(ptr nonnull %i.ky, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc139 unwind label %bb.cn

.noexc139:                                        ; preds = %bb.cm
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit: ; preds = %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.02.0.i133 = phi i64 [ %.sroa.0.0.copyload.i.i138, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.02.0.copyload.i134, %_ZSt3getISt6vectorISt5arrayItLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit ] ; 4 uses
  %.sroa.0605.0.extract.trunc = trunc i64 %.sroa.02.0.i133 to i16
  %.sroa.6606.0.extract.shift = lshr i64 %.sroa.02.0.i133, 16
  %.sroa.6606.0.extract.trunc = trunc i64 %.sroa.6606.0.extract.shift to i16
  %.sroa.8.0.extract.shift = lshr i64 %.sroa.02.0.i133, 32
  %.sroa.10.0.extract.shift = lshr i64 %.sroa.02.0.i133, 48
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.co:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit
  %.sroa.10.0 = phi i64 [ %.sroa.7.0.extract.trunc, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.sroa.10.0.extract.shift, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ] ; 3 uses
  %.sroa.8.0 = phi i64 [ %i.kt, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.sroa.8.0.extract.shift, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ]
  %.sroa.6606.0 = phi i16 [ %i.kq, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.sroa.6606.0.extract.trunc, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ]
  %.sroa.0605.0 = phi i16 [ %i.kr, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit ], [ %.sroa.0605.0.extract.trunc, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE3getEm.exit ]
  %i.lb = load i8, ptr %i.gz, align 8, !tbaa !330
  switch i8 %i.lb, label %.invoke982.loopexit [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_NS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEEEJNS2_IS3_IhLm4EEEENS2_IS3_ItLm4EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 -1, label %.invoke982
  ], !prof !332

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.co
  %i.lc = load i8, ptr %i.ha, align 8, !tbaa !308
  switch i8 %i.lc, label %.invoke982.loopexit [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.i
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.0.0.copyload.i.i140 = load ptr, ptr %10, align 8, !tbaa !310
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !tbaa !156
  %i.ld = mul i64 %.sroa.4.0.copyload.i.i, %.064437
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i140, i64 %i.ld
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.le, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.i

_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.lf = load ptr, ptr %10, align 8, !tbaa !314
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.064437
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.lg, align 1, !tbaa !15
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.i

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE3getEm.exit.i: ; preds = %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i ], [ %.sroa.02.0.copyload.i.i, %_ZSt3getISt6vectorISt5arrayIhLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEEJS5_NS2_IS3_ItLm4EEEENS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i ] ; 4 uses
  %.sroa.433.0.extract.shift.i = lshr i32 %.sroa.02.0.i.i, 8
  %.sroa.534.0.extract.shift.i = lshr i32 %.sroa.02.0.i.i, 16
  %.sroa.534.0.extract.trunc.i = trunc i32 %.sroa.534.0.extract.shift.i to i8
  %.sroa.635.0.extract.shift.i = lshr i32 %.sroa.02.0.i.i, 24
  %.sroa.635.0.extract.trunc.i = trunc nuw i32 %.sroa.635.0.extract.shift.i to i8
  %i.lh = trunc i32 %.sroa.02.0.i.i to i8
  %i.li = insertelement <2 x i8> poison, i8 %i.lh, i64 0
  %i.lj = trunc i32 %.sroa.433.0.extract.shift.i to i8
  %i.lk = insertelement <2 x i8> %i.li, i8 %i.lj, i64 1
  %i.ll = uitofp <2 x i8> %i.lk to <2 x float>
  %i.lm = fdiv <2 x float> %i.ll, splat (float 2.550000e+02)
  %i.ln = uitofp i8 %.sroa.534.0.extract.trunc.i to float
  %i.lo = fdiv float %i.ln, 2.550000e+02
  %.sroa.642.8.vec.insert45.i = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lp = uitofp i8 %.sroa.635.0.extract.trunc.i to float
  %i.lq = fdiv float %i.lp, 2.550000e+02
  %.sroa.642.12.vec.insert47.i = insertelement <2 x float> %.sroa.642.8.vec.insert45.i, float %i.lq, i64 1
  br label %bb.cp

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEEJNS2_IS3_IhLm4EEEES5_NS2_IS3_IfLm4EEEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.co
end_hunk_0
begin_hunk_1_@_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor11getVerticesERKN10tiniergltf13MeshPrimitiveE:bb.a
_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt6vectorImSaImEE2atEm.exit
  %i.z = load <2 x ptr>, ptr %3, align 16, !tbaa !344
  store <2 x ptr> %i.z, ptr %0, align 8, !tbaa !344
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !255
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !255
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ad, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.y, %bb.m ], [ %i.p, %bb.i ]
  %i.ae = load ptr, ptr %3, align 16, !tbaa !223  ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit20, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !255
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit20

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit20: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit, %bb.b
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.305") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.680", align 8 ; 15 uses
  %4 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.703", align 8 ; 15 uses
  %5 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.726", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !224
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !290, !noalias !345
  %i.f = load ptr, ptr %1, align 8, !tbaa !291, !noalias !345 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.copyload, %i.j
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %.sroa.0.0.copyload, i64 noundef %i.j) #34, !noalias !345
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %.sroa.0.0.copyload
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !292, !noalias !345
  switch i32 %i.m, label %bb.ao [
    i32 1, label %bb.e
    i32 3, label %bb.q
    i32 4, label %bb.ac
  ]

bb.e:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !345
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.680") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %.sroa.0.0.copyload), !noalias !345
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !348, !noalias !345 ; 2 uses
  switch i8 %i.o, label %bb.l [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %.sroa.072.0.copyload81 = load ptr, ptr %3, align 8, !tbaa !310
  %.sroa.23.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.23.0.copyload85 = load i64, ptr %.sroa.23.0..sroa_idx84, align 8, !tbaa !156
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !350, !noalias !345 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !352, !noalias !345 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !315

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev.exit, !noalias !345

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #32
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev.exit, !noalias !345

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre10.i = load ptr, ptr %3, align 8, !tbaa !310, !noalias !345 ; 2 uses
  %.pre11.i = load ptr, ptr %i.p, align 8, !tbaa !310, !noalias !345
  %.pre12.i = ptrtoint ptr %.pre11.i to i64
  %.pre13.i = ptrtoint ptr %.pre10.i to i64
  br label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i, %bb.g
  %.pre-phi14.i = phi i64 [ %.pre13.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.t, %bb.g ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.s, %bb.g ]
  %i.x = phi ptr [ %.pre10.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.y = phi ptr [ %i.w, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ null, %bb.g ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %i.aa = sub i64 %.pre-phi.i, %.pre-phi14.i      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !317

bb.i:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.x, i64 %i.aa, i1 false), !noalias !345
  br label %bb.m

bb.j:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !15, !noalias !345
  store i8 %i.ad, ptr %i.y, align 1, !tbaa !15, !noalias !345
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev.exit: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load i8, ptr %i.n, align 8, !tbaa !348, !noalias !345
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.o, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %.sroa.23.4 = phi i64 [ %.sroa.23.0.copyload85, %bb.f ], [ undef, %bb.e ]
  %.sroa.072.4 = phi ptr [ %.sroa.072.0.copyload81, %bb.f ], [ undef, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !353, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %.pr.i = load i8, ptr %i.n, align 8, !tbaa !348, !noalias !345 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !353, !noalias !345 ; 2 uses
  %i.an = icmp ne i8 %.pr.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !361, !noalias !345
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %.pre-phi14.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ar) #31, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i: ; preds = %bb.n, %bb.m, %.thread.i
  %.sroa.5797.2 = phi i64 [ %i.ai, %.thread.i ], [ %i.am, %bb.m ], [ %i.am, %bb.n ]
  %.sroa.40.2 = phi i8 [ %i.o, %.thread.i ], [ %.pr.i, %bb.m ], [ 1, %bb.n ]
  %.sroa.32.2 = phi ptr [ undef, %.thread.i ], [ %i.z, %bb.m ], [ %i.z, %bb.n ]
  %.sroa.23.5 = phi i64 [ %.sroa.23.4, %.thread.i ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ]
  %.sroa.072.5 = phi ptr [ %.sroa.072.4, %.thread.i ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !345
  br label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit"

bb.o:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !352, !noalias !345 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i5.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i5.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !361, !noalias !345
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i: ; preds = %bb.p, %bb.o, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !345
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !345
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.703") align 8 %4, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %.sroa.0.0.copyload), !noalias !345
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !362, !noalias !345 ; 2 uses
  switch i8 %i.az, label %bb.x [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %.thread3.i
  ]

bb.r:                                             ; preds = %bb.q
  %.sroa.072.0.copyload80 = load ptr, ptr %4, align 8, !tbaa !310
  %.sroa.23.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.23.0.copyload83 = load i64, ptr %.sroa.23.0..sroa_idx82, align 8, !tbaa !156
  br label %.thread3.i

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !229, !noalias !345 ; 2 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !226, !noalias !345 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775806
  br i1 %i.bg, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !315

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev.exit, !noalias !345

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #32
          to label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev.exit, !noalias !345

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre8.i = load ptr, ptr %4, align 8, !tbaa !364, !noalias !345 ; 2 uses
  %.pre9.i = load ptr, ptr %i.ba, align 8, !tbaa !364, !noalias !345
  %.pre15.i = ptrtoint ptr %.pre9.i to i64
  %.pre17.i = ptrtoint ptr %.pre8.i to i64
  br label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i, %bb.s
  %.pre-phi18.i = phi i64 [ %.pre17.i, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.be, %bb.s ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %.pre15.i, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.bd, %bb.s ]
  %i.bi = phi ptr [ %.pre8.i, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.bc, %bb.s ] ; 4 uses
  %i.bj = phi ptr [ %i.bh, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ null, %bb.s ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf ; 2 uses
  %i.bl = sub i64 %.pre-phi16.i, %.pre-phi18.i    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 2
  br i1 %i.bm, label %bb.u, label %bb.v, !prof !317

bb.u:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bj, ptr align 2 %i.bi, i64 %i.bl, i1 false), !noalias !345
  br label %bb.y

bb.v:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp eq i64 %i.bl, 2
  br i1 %i.bn, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bo = load i16, ptr %i.bi, align 2, !tbaa !231, !noalias !345
  store i16 %i.bo, ptr %i.bj, align 2, !tbaa !231, !noalias !345
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev.exit: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load i8, ptr %i.ay, align 8, !tbaa !362, !noalias !345
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %bb.aa, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i

.thread3.i:                                       ; preds = %bb.r, %bb.q
  %.sroa.23.2 = phi i64 [ %.sroa.23.0.copyload83, %bb.r ], [ undef, %bb.q ]
  %.sroa.072.2 = phi ptr [ %.sroa.072.0.copyload80, %bb.r ], [ undef, %bb.q ]
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !365, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.bu = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %.pr1.i = load i8, ptr %i.ay, align 8, !tbaa !362, !noalias !345 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !365, !noalias !345 ; 2 uses
  %i.by = icmp ne i8 %.pr1.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i = icmp eq ptr %i.bi, null
  %or.cond43.i = select i1 %i.by, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i
  br i1 %or.cond43.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !230, !noalias !345
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %.pre-phi18.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cc) #31, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i: ; preds = %bb.z, %bb.y, %.thread3.i
  %.sroa.5797.1 = phi i64 [ %i.bt, %.thread3.i ], [ %i.bx, %bb.y ], [ %i.bx, %bb.z ]
  %.sroa.40.1 = phi i8 [ %i.az, %.thread3.i ], [ %.pr1.i, %bb.y ], [ 1, %bb.z ]
  %.sroa.32.1 = phi ptr [ undef, %.thread3.i ], [ %i.bk, %bb.y ], [ %i.bk, %bb.z ]
  %.sroa.23.3 = phi i64 [ %.sroa.23.2, %.thread3.i ], [ %i.bv, %bb.y ], [ %i.bv, %bb.z ]
  %.sroa.072.3 = phi ptr [ %.sroa.072.2, %.thread3.i ], [ %i.bj, %bb.y ], [ %i.bj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !345
  br label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit"

bb.aa:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev.exit
  %i.cd = load ptr, ptr %4, align 8, !tbaa !226, !noalias !345 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i10.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i10.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !230, !noalias !345
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i: ; preds = %bb.ab, %bb.aa, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceESt6vectorItSaItEESt5tupleIJEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !345
  br label %common.resume

bb.ac:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !345
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.726") align 8 %5, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %.sroa.0.0.copyload), !noalias !345
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !373, !noalias !345 ; 2 uses
  switch i8 %i.ck, label %bb.aj [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %.thread6.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %.sroa.072.0.copyload = load ptr, ptr %5, align 8, !tbaa !310
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !156
  br label %.thread6.i

bb.ae:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !265, !noalias !345 ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !266, !noalias !345 ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = icmp ugt i64 %i.cq, 9223372036854775804
  br i1 %i.cr, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !315

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceESt6vectorIjSaIjEESt5tupleIJEEEED2Ev.exit, !noalias !345

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #32
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i unwind label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceESt6vectorIjSaIjEESt5tupleIJEEEED2Ev.exit, !noalias !345

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !375, !noalias !345 ; 2 uses
  %.pre7.i = load ptr, ptr %i.cl, align 8, !tbaa !375, !noalias !345
  %.pre19.i = ptrtoint ptr %.pre7.i to i64
  %.pre21.i = ptrtoint ptr %.pre.i to i64
  br label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i, %bb.ae
  %.pre-phi22.i = phi i64 [ %.pre21.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.cp, %bb.ae ] ; 2 uses
  %.pre-phi20.i = phi i64 [ %.pre19.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.co, %bb.ae ]
  %i.ct = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ %i.cn, %bb.ae ] ; 4 uses
  %i.cu = phi ptr [ %i.cs, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i_crit_edge.i ], [ null, %bb.ae ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %i.cw = sub i64 %.pre-phi20.i, %.pre-phi22.i    ; 4 uses
  %i.cx = icmp sgt i64 %i.cw, 4
  br i1 %i.cx, label %bb.ag, label %bb.ah, !prof !317

bb.ag:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cu, ptr align 4 %i.ct, i64 %i.cw, i1 false), !noalias !345
  br label %bb.ak

bb.ah:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cw, 4
  br i1 %i.cy, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !267, !noalias !345
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !267, !noalias !345
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ac
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceESt6vectorIjSaIjEESt5tupleIJEEEED2Ev.exit: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load i8, ptr %i.cj, align 8, !tbaa !373, !noalias !345
  %i.dc = icmp eq i8 %i.db, 1
  br i1 %i.dc, label %bb.am, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i

.thread6.i:                                       ; preds = %bb.ad, %bb.ac
  %.sroa.23.0 = phi i64 [ %.sroa.23.0.copyload, %bb.ad ], [ undef, %bb.ac ]
  %.sroa.072.0 = phi ptr [ %.sroa.072.0.copyload, %bb.ad ], [ undef, %bb.ac ]
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !376, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.df = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %.pr4.i = load i8, ptr %i.cj, align 8, !tbaa !373, !noalias !345 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !376, !noalias !345 ; 2 uses
  %i.dj = icmp ne i8 %.pr4.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i14.i = icmp eq ptr %i.ct, null
  %or.cond44.i = select i1 %i.dj, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i14.i
  br i1 %or.cond44.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !285, !noalias !345
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %.pre-phi22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dn) #31, !noalias !345
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i

_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i: ; preds = %bb.al, %bb.ak, %.thread6.i
  %.sroa.5797.0 = phi i64 [ %i.de, %.thread6.i ], [ %i.di, %bb.ak ], [ %i.di, %bb.al ]
  %.sroa.40.0 = phi i8 [ %i.ck, %.thread6.i ], [ %.pr4.i, %bb.ak ], [ 1, %bb.al ]
  %.sroa.32.0 = phi ptr [ undef, %.thread6.i ], [ %i.cv, %bb.ak ], [ %i.cv, %bb.al ]
  %.sroa.23.1 = phi i64 [ %.sroa.23.0, %.thread6.i ], [ %i.dg, %bb.ak ], [ %i.dg, %bb.al ]
  %.sroa.072.1 = phi ptr [ %.sroa.072.0, %.thread6.i ], [ %i.cu, %bb.ak ], [ %i.cu, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !345
  br label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit"

bb.am:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceESt6vectorIjSaIjEESt5tupleIJEEEED2Ev.exit
  %i.do = load ptr, ptr %5, align 8, !tbaa !266, !noalias !345 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i15.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i15.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !285, !noalias !345
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i

_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i: ; preds = %bb.an, %bb.am, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceESt6vectorIjSaIjEESt5tupleIJEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !345
  br label %common.resume

bb.ao:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit.i
  %i.du = tail call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !345 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.30)
          to label %bb.ap unwind label %bb.aq, !noalias !345

bb.ap:                                            ; preds = %bb.ao
  tail call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34, !noalias !345
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.du) #30, !noalias !345
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i57, %_ZNSt6vectorItSaItEED2Ev.exit53, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.da, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit16.i ], [ %i.dv, %bb.aq ], [ %i.ae, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit6.i ], [ %i.bp, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit11.i ], [ %.pn20, %_ZNSt6vectorItSaItEED2Ev.exit53 ], [ %.pn20, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i57 ]
  resume { ptr, i32 } %common.resume.op

"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit": ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i
  %.sroa.5797.3 = phi i64 [ %.sroa.5797.2, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ %.sroa.5797.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ %.sroa.5797.0, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ] ; 3 uses
  %.sroa.64.3 = phi i8 [ 0, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ 1, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ 2, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ]
  %.sroa.40.3 = phi i8 [ %.sroa.40.2, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ %.sroa.40.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ %.sroa.40.0, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ] ; 5 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.2, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ %.sroa.32.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ %.sroa.32.0, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ] ; 2 uses
  %.sroa.23.6 = phi i64 [ %.sroa.23.5, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ %.sroa.23.3, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ %.sroa.23.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ] ; 3 uses
  %.sroa.072.6 = phi ptr [ %.sroa.072.5, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit.i ], [ %.sroa.072.3, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit.i ], [ %.sroa.072.1, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit.i ] ; 11 uses
  %.not153 = icmp eq i64 %.sroa.5797.3, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit"
  %.sroa.0.0.lcssa = phi ptr [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ], [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ]
  %.sroa.10.0.lcssa = phi ptr [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ], [ %.sroa.10.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ], [ %.sroa.14.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !tbaa !226
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.lcssa, ptr %i.dw, align 8, !tbaa !229
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0.lcssa, ptr %i.dx, align 8, !tbaa !230
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.dy, align 8, !tbaa !224
  %i.dz = icmp ne i8 %.sroa.40.3, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.072.6, null
  %or.cond.i.i.i = select i1 %i.dz, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %._crit_edge
  %i.ea = ptrtoint ptr %.sroa.32.3 to i64
  %i.eb = ptrtoint ptr %.sroa.072.6 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.6, i64 noundef %i.ec) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

.lr.ph:                                           ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit", %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %.0150 = phi i64 [ %i.fv, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ 0, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ] ; 2 uses
  %.sroa.14.0149 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ] ; 4 uses
  %.sroa.10.0148 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ] ; 3 uses
  %.sroa.0.0147 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveEE3$_0JRKSt7variantIJNS1_8AccessorIhEENS9_ItEENS9_IjEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOSH_DpOSJ_.exit" ] ; 8 uses
  %i.ed = xor i64 %.0150, -1
  %i.ee = add i64 %.sroa.5797.3, %i.ed            ; 6 uses
  switch i8 %.sroa.64.3, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 1, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph
  switch i8 %.sroa.40.3, label %.invoke.sink.split [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.ef = mul i64 %i.ee, %.sroa.23.6
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit

_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.pn = phi i64 [ %i.ef, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %i.ee, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit ]
  %.0.i.in = getelementptr inbounds nuw i8, ptr %.sroa.072.6, i64 %.pn
  %.0.i = load i8, ptr %.0.i.in, align 1          ; 2 uses
  %i.eg = zext i8 %.0.i to i16
  %i.eh = icmp eq i8 %.0.i, -1
  br i1 %i.eh, label %bb.ar, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread

bb.ar:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit
  %i.ei = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.as

.invoke.sink.split:                               ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.ej = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ej, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr @.str.36, ptr %i.ek, align 8, !tbaa !327
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.ar, %bb.at
  %i.el = phi ptr [ %i.et, %bb.at ], [ %i.ei, %bb.ar ], [ %i.ej, %.invoke.sink.split ]
  %i.em = phi ptr [ @_ZTISt13runtime_error, %bb.at ], [ @_ZTISt13runtime_error, %bb.ar ], [ @_ZTISt18bad_variant_access, %.invoke.sink.split ]
  %i.en = phi ptr [ @_ZNSt13runtime_errorD1Ev, %bb.at ], [ @_ZNSt13runtime_errorD1Ev, %bb.ar ], [ @_ZNSt9exceptionD2Ev, %.invoke.sink.split ]
  invoke void @__cxa_throw(ptr nonnull %i.el, ptr nonnull %i.em, ptr nonnull %i.en) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %.invoke, %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ei) #30
  br label %bb.be

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph
  switch i8 %.sroa.40.3, label %.invoke.sink.split [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.ep = mul i64 %i.ee, %.sroa.23.6
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.072.6, i64 %i.ep
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.072.6, i64 %i.ee
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit

_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit: ; preds = %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.0.i34.in = phi ptr [ %i.eq, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %i.er, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %.0.i34 = load i16, ptr %.0.i34.in, align 1     ; 2 uses
  %i.es = icmp eq i16 %.0.i34, -1
  br i1 %i.es, label %bb.at, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread

bb.at:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit
  %i.et = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.et) #30
  br label %bb.be

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph
  switch i8 %.sroa.40.3, label %bb.av [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.thread
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ev = mul i64 %i.ee, %.sroa.23.6
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.072.6, i64 %i.ev
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.6, i64 %i.ee
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit

bb.av:                                            ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ey, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr @.str.36, ptr %i.ez, align 8, !tbaa !327
  br label %.invoke239

.invoke239:                                       ; preds = %bb.aw, %bb.av
  %i.fa = phi ptr [ %i.ey, %bb.av ], [ %i.fd, %bb.aw ]
  %i.fb = phi ptr [ @_ZTISt18bad_variant_access, %bb.av ], [ @_ZTISt13runtime_error, %bb.aw ]
  %i.fc = phi ptr [ @_ZNSt9exceptionD2Ev, %bb.av ], [ @_ZNSt13runtime_errorD1Ev, %bb.aw ]
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull %i.fb, ptr nonnull %i.fc) #34
          to label %.cont240 unwind label %bb.ax

.cont240:                                         ; preds = %.invoke239
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.0.i43.in = phi ptr [ %i.ew, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %i.ex, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %.0.i43 = load i32, ptr %.0.i43.in, align 1     ; 2 uses
  %.not = icmp ult i32 %.0.i43, 65535
  br i1 %.not, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull @.str.18)
          to label %.invoke239 unwind label %bb.ay

bb.ax:                                            ; preds = %.invoke239
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fd) #30
  br label %bb.be

_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.thread: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit
  %.0.i43113 = phi i32 [ %.0.i43, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjEEJNS2_IhEENS2_ItEES3_EERKT_RKSt7variantIJDpT0_EE.exit ]
  %i.fg = trunc nuw i32 %.0.i43113 to i16
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread

_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.thread, %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit
  %.0108 = phi i16 [ %i.eg, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit ], [ %.0.i34, %_ZNK5scene19CGLTFMeshFileLoader8AccessorItE3getEm.exit ], [ %i.fg, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIjE3getEm.exit.thread ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhEEJS3_NS2_ItEENS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItEEJNS2_IhEES3_NS2_IjEEEERKT_RKSt7variantIJDpT0_EE.exit ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0148, %.sroa.14.0149
  br i1 %.not.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread
  store i16 %.0108, ptr %.sroa.10.0148, align 2, !tbaa !231
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.ba:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIhE3getEm.exit.thread
  %i.fh = ptrtoint ptr %.sroa.14.0149 to i64
end_hunk_1
