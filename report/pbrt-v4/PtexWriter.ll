Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Ptex4v2_414PtexMainWriter6finishEv:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.me = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.lu, i32 noundef 40)
          to label %_ZNSt6vectorIN4Ptex4v2_49LevelInfoESaIS2_EED2Ev.exit unwind label %.thread163 ; 0 uses

_ZNSt6vectorIN4Ptex4v2_49LevelInfoESaIS2_EED2Ev.exit: ; preds = %bb.ac
  %i.mf = tail call i32 @fclose(ptr noundef nonnull %i.hq) ; 0 uses
  %i.mg = ptrtoint ptr %.sroa.098.0155 to i64
  %i.mh = sub i64 %.sink.i158, %i.mg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0155, i64 noundef %i.mh) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN4Ptex4v2_49LevelInfoESaIS2_EED2Ev.exit, %bb.a
  ret void

.thread163:                                       ; preds = %bb.aa, %bb.ab, %bb.ac
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %.sroa.098.0155, null
  br i1 %.not.i.i.i96, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.thread163, %.thread, %.thread107, %bb.ae
  %.sink.i156 = phi i64 [ %i.jw, %.thread107 ], [ %.sink.i158, %bb.ae ], [ %i.jw, %.thread ], [ %.sink.i158, %.thread163 ]
  %.sroa.098.0153 = phi ptr [ %i.ju, %.thread107 ], [ %.sroa.098.0155, %bb.ae ], [ %i.ju, %.thread ], [ %.sroa.098.0155, %.thread163 ] ; 2 uses
  %.pn.pn110 = phi { ptr, i32 } [ %i.lf, %.thread107 ], [ %lpad.thr_comm.split-lp, %bb.ae ], [ %i.ls, %.thread ], [ %lpad.thr_comm, %.thread163 ]
  %i.mi = ptrtoint ptr %.sroa.098.0153 to i64
  %i.mj = sub i64 %.sink.i156, %i.mi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0153, i64 noundef %i.mj) #28
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.ae, %bb.af, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn79 = phi { ptr, i32 } [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.al, %bb.i ], [ %.pn.pn110, %bb.af ], [ %lpad.thr_comm.split-lp, %bb.ae ]
  resume { ptr, i32 } %.pn79
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexMainWriter18generateReductionsEv(ptr noundef nonnull align 8 dereferenceable(656) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"struct.Ptex::v2_4::PtexMainWriter::LevelRec", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !154  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !165
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !154  ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.e
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.z = sub nuw nsw i64 %i.e, %i.x
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.z)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !154
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.aa = icmp ugt i64 %i.x, %i.e
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.e ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i84, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85:      ; preds = %bb.g
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !165
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

_ZNSt6vectorIjSaIjEE6resizeEm.exit86:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !154
  tail call void @_ZN4Ptex4v2_49PtexUtils11genRfaceidsEPKNS0_8FaceInfoEiPjS5_(ptr noundef nonnull %i.ae, i32 noundef %i.c, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ac)
  %i.ag = icmp sgt i32 %i.c, 0
  br i1 %i.ag, label %.lr.ph131, label %._crit_edge

.lr.ph131:                                        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit86
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ak = zext nneg i32 %i.c to i64               ; 3 uses
  br label %bb.h

.loopexit:                                        ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit, %bb.j
  %.1.lcssa = phi i32 [ %.070128, %bb.j ], [ %i.az, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit ]
  %i.al = icmp sgt i64 %indvars.iv, 1
  br i1 %i.al, label %bb.h, label %.lr.ph134, !llvm.loop !275

.lr.ph134:                                        ; preds = %.loopexit
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !148 ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.an = icmp eq i32 %i.c, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph134.new

.lr.ph134.new:                                    ; preds = %.lr.ph134
  %unroll_iter = and i64 %i.ak, 2147483646
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph131, %.loopexit
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph131 ], [ %indvars.iv.next, %.loopexit ] ; 10 uses
  %.070128 = phi i32 [ 2, %.lr.ph131 ], [ %.1.lcssa, %.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !48
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !148
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !50
  %.sroa.054.0.copyload = load i8, ptr %i.at, align 4, !tbaa !50
  %i.ax = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.054.0.copyload, i8 %.sroa.5.0.copyload)
  %i.ay = sext i8 %i.ax to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %i.ay, %bb.i ], [ 1, %bb.h ]  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, %.070128
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit
  %.1126 = phi i32 [ %i.fo, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit ], [ %.070128, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 7 uses
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !136
  %.not.i.i87 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.ai, align 8, !tbaa !138
  br label %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 5 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %bb.m, label %_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
          to label %.noexc92.a unwind label %.loopexit.split-lp

.noexc92.a:                                       ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bk = sdiv exact i64 %i.bi, 48                ; 2 uses
  %mul2.i = shl nsw i64 %i.bk, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i, i64 1) ; 2 uses
  %i.bl = icmp ult i64 %3, %i.bk
  %i.bm = tail call i64 @llvm.umin.i64(i64 %3, i64 192153584101141162)
  %i.bn = select i1 %i.bl, i64 192153584101141162, i64 %i.bm ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 48
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #27
          to label %.noexc93 unwind label %.loopexit121 ; 5 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bi ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc93, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.bp, %.noexc93 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.bf, %.noexc93 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.bs = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !139, !alias.scope !289, !noalias !288
  store <2 x ptr> %i.bs, ptr %.012.i.i.i.i, align 8, !tbaa !139, !alias.scope !288, !noalias !289
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140, !alias.scope !289, !noalias !288
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !140, !alias.scope !288, !noalias !289
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !289, !noalias !288
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !142, !alias.scope !289, !noalias !288
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !142, !alias.scope !288, !noalias !289
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !144, !alias.scope !289, !noalias !288
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !144, !alias.scope !288, !noalias !289
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !alias.scope !289, !noalias !288
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.cc, %i.bb
  br i1 %.not.i.i.i.i91, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc93
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bp, %.noexc93 ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i, label %.noexc, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ch) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.n, %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !137
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !138
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.ci, ptr %i.aj, align 8, !tbaa !136
  br label %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit

_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit:  ; preds = %bb.k, %.noexc
  %i.cj = phi ptr [ %i.ce, %.noexc ], [ %i.be, %bb.k ] ; 8 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.cj, i64 -40
  %.pre161.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151 ; 4 uses
  %.phi.trans.insert162 = getelementptr inbounds i8, ptr %i.cj, i64 -48
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !146 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -40 ; 3 uses
  %i.cm = ptrtoint ptr %.pre161.a to i64          ; 2 uses
  %i.cn = ptrtoint ptr %.pre163 to i64            ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  %i.cp = ashr exact i64 %i.co, 3                 ; 7 uses
  %i.cq = icmp ult i64 %i.cp, %indvars.iv
  br i1 %i.cq, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit
  %i.cr = sub nuw nsw i64 %indvars.iv, %i.cp      ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cj, i64 -32 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !140
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.cm
  %i.cw = ashr exact i64 %i.cv, 3                 ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cp, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = xor i64 %i.cp, 1152921504606846975
  %i.cz = icmp ule i64 %i.cw, %i.cy
  tail call void @llvm.assume(i1 %i.cz)
  %.not28.i = icmp ult i64 %i.cw, %i.cr
  br i1 %.not28.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %.pre161.a, align 8, !tbaa !66
  %i.da = getelementptr i8, ptr %.pre161.a, i64 8 ; 3 uses
  %i.db = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.p
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.db, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.da, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.p
  %.0.i.i.i.i = phi ptr [ %i.dd, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.da, %bb.p ]
  store ptr %.0.i.i.i.i, ptr %i.cl, align 8, !tbaa !151
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %.sroa.speculated.i.i95 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cr)
  %i.de = add nuw nsw i64 %.sroa.speculated.i.i95, %i.cp ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.co ; 3 uses
  store i64 0, ptr %i.dh, align 8, !tbaa !66
  %i.di = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %i.dk = getelementptr i8, ptr %i.dh, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.di, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !66
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %i.dl = icmp sgt i64 %i.co, 0
  br i1 %i.dl, label %bb.q, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %.pre163, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.pre163, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !140
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre163, i64 noundef %i.do) #28
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i: ; preds = %bb.r, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  store ptr %i.dg, ptr %i.ck, align 8, !tbaa !146
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.cr
  store ptr %i.dp, ptr %i.cl, align 8, !tbaa !151
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dq, ptr %i.cs, align 8, !tbaa !140
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit
  %i.dr = icmp ugt i64 %i.cp, %indvars.iv
  br i1 %i.dr, label %bb.t, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.pre163, i64 %indvars.iv ; 2 uses
  %.not.i.i88 = icmp eq ptr %.pre161.a, %i.ds
  br i1 %.not.i.i88, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.ds, ptr %i.cl, align 8, !tbaa !151
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i, %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i, %bb.s, %bb.t, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.cj, i64 -24 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.cj, i64 -16 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !152 ; 6 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !145 ; 8 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = ashr exact i64 %i.dz, 2                 ; 7 uses
  %i.eb = icmp ult i64 %i.ea, %indvars.iv
  br i1 %i.eb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.ec = sub nuw nsw i64 %indvars.iv, %i.ea      ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !144
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dx
  %i.eh = ashr exact i64 %i.eg, 2                 ; 2 uses
  %i.ei = icmp samesign ult i64 %i.ea, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = xor i64 %i.ea, 2305843009213693951
  %i.ek = icmp ule i64 %i.eh, %i.ej
  tail call void @llvm.assume(i1 %i.ek)
  %.not28.i97 = icmp ult i64 %i.eh, %i.ec
  br i1 %.not28.i97, label %_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN4Ptex4v2_414FaceDataHeaderEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4Ptex4v2_414FaceDataHeaderEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.u
  %i.el = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dv, i8 0, i64 %i.el, i1 false), !tbaa !111
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dv, i64 %i.el
  store ptr %scevgep.i.i.i.i, ptr %i.du, align 8, !tbaa !152
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit

_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_414PtexMainWriter24flagConstantNeighorhoodsEv:bb.a
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !96
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ko, 1
  %i.kw = lshr i32 %i.ku, %i.kv
  %.091 = and i32 %i.kw, 3                        ; 3 uses
  %.093 = load i32, ptr %i.kr, align 4, !tbaa !48 ; 6 uses
  %i.kx = zext i32 %.093 to i64
  %i.ky = icmp ne i64 %indvars.iv194, %i.kx
  %i.kz = icmp sgt i32 %.093, -1
  %or.cond = and i1 %i.ky, %i.kz
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.an
  %.lobit154.lcssa229.in = phi i8 [ %i.kg, %bb.an ], [ %i.ba, %bb.h ], [ %i.ce, %bb.l ], [ %i.di, %bb.p ], [ %i.em, %bb.t ], [ %i.fq, %bb.x ], [ %i.gu, %bb.ab ], [ %i.hy, %bb.af ], [ %i.jc, %bb.aj ]
  %.091.lcssa228 = phi i32 [ %.091, %bb.an ], [ %.091.1, %bb.h ], [ %.091.2, %bb.l ], [ %.091.3, %bb.p ], [ %.091.4, %bb.t ], [ %.091.5, %bb.x ], [ %.091.6, %bb.ab ], [ %.091.7, %bb.af ], [ %.091.8, %bb.aj ]
  %.093.lcssa227 = phi i32 [ %.093, %bb.an ], [ %.093.1, %bb.h ], [ %.093.2, %bb.l ], [ %.093.3, %bb.p ], [ %.093.4, %bb.t ], [ %.093.5, %bb.x ], [ %.093.6, %bb.ab ], [ %.093.7, %bb.af ], [ %.093.8, %bb.aj ]
  %.lobit154.lcssa229 = lshr exact i8 %.lobit154.lcssa229.in, 3
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.d
  %.0103.lcssa = phi i8 [ %i.ad, %bb.d ], [ %.lobit154.lcssa229, %.critedge.loopexit ]
  %.091.lcssa = phi i32 [ %.091161, %bb.d ], [ %.091.lcssa228, %.critedge.loopexit ]
  %.093.lcssa = phi i32 [ %.093162, %bb.d ], [ %.093.lcssa227, %.critedge.loopexit ]
  %i.la = icmp slt i32 %.093.lcssa, 0
  br i1 %i.la, label %bb.ao, label %.critedge9

bb.ao:                                            ; preds = %.critedge
  br i1 %or.cond219, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.lb = add nuw nsw i32 %i.v, %.091.lcssa
  %i.lc = urem i32 %i.lb, %i.r                    ; 2 uses
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ld
  %.497171 = load i32, ptr %i.le, align 4, !tbaa !48 ; 3 uses
  %i.lf = zext i32 %.497171 to i64
  %i.lg = icmp ne i64 %indvars.iv194, %i.lf
  %i.lh = icmp sgt i32 %.497171, -1
  %or.cond7172 = and i1 %i.lg, %i.lh
  br i1 %or.cond7172, label %.lr.ph177.preheader, label %.critedge9

.lr.ph177.preheader:                              ; preds = %bb.ap
  %i.li = shl nuw nsw i32 %i.lc, 1
  %i.lj = lshr i32 %i.ah, %i.li
  %i.lk = and i32 %i.lj, 3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph177.preheader
  %i.ll = phi i32 [ 1, %.lr.ph177.preheader ], [ %i.mn, %bb.au ] ; 2 uses
  %.4107173218 = phi i8 [ %.0103.lcssa, %.lr.ph177.preheader ], [ %.lobit149, %bb.au ]
  %.4174217 = phi i32 [ %i.lk, %.lr.ph177.preheader ], [ %.6, %bb.au ]
  %.497176216 = phi i32 [ %.497171, %.lr.ph177.preheader ], [ %.497, %bb.au ] ; 2 uses
  %i.lm = zext nneg i32 %.497176216 to i64
  %i.ln = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.lm ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !95  ; 2 uses
  %i.lq = trunc i8 %i.lp to i1
  br i1 %i.lq, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.lr = mul nsw i32 %.497176216, %i.m
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ls
  %bcmp = tail call i32 @bcmp(ptr %i.ac, ptr %i.lt, i64 %i.s)
  %.not126 = icmp eq i32 %bcmp, 0
  br i1 %.not126, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.lu = add nsw i32 %i.v, %.4174217
  %i.lv = urem i32 %i.lu, %i.r                    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.ly = load i8, ptr %i.lx, align 2, !tbaa !96
  %i.lz = zext i8 %i.ly to i32                    ; 2 uses
  %i.ma = shl nuw nsw i32 %i.lv, 1
  %i.mb = lshr i32 %i.lz, %i.ma
  %.fr151 = freeze i32 %i.mb
  %i.mc = and i32 %.fr151, 3                      ; 3 uses
  %i.md = and i8 %i.lp, 8                         ; 2 uses
  %.not150 = icmp eq i8 %i.md, 0
  %.lobit149 = lshr exact i8 %i.md, 3
  %i.me = trunc i8 %.4107173218 to i1
  %or.cond12 = select i1 %.not150, i1 true, i1 %i.me
  br i1 %or.cond12, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.urem = add nsw i32 %i.mc, -1
  %.cmp = icmp eq i32 %i.mc, 0
  %i.mf = select i1 %.cmp, i32 3, i32 %.urem      ; 2 uses
  %i.mg = shl nuw nsw i32 %i.mf, 1
  %i.mh = lshr i32 %i.lz, %i.mg
  %.fr152 = freeze i32 %i.mh
  %i.mi = and i32 %.fr152, 3                      ; 2 uses
  %.urem146 = add nsw i32 %i.mi, -1
  %.cmp147 = icmp eq i32 %i.mi, 0
  %i.mj = select i1 %.cmp147, i32 3, i32 %.urem146
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.pn.in = phi i32 [ %i.lv, %bb.as ], [ %i.mf, %bb.at ]
  %.6 = phi i32 [ %i.mc, %bb.as ], [ %i.mj, %bb.at ]
  %.pn = sext i32 %.pn.in to i64
  %.699.in = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %.pn
  %.497 = load i32, ptr %.699.in, align 4, !tbaa !48 ; 3 uses
  %i.mk = zext i32 %.497 to i64
  %i.ml = icmp eq i64 %indvars.iv194, %i.mk
  %i.mm = icmp slt i32 %.497, 0
  %or.cond7.not223 = or i1 %i.ml, %i.mm
  %i.mn = add nuw nsw i32 %i.ll, 1
  %exitcond192.not = icmp eq i32 %i.ll, 9
  %or.cond220 = select i1 %or.cond7.not223, i1 true, i1 %exitcond192.not
  br i1 %or.cond220, label %.critedge9, label %bb.aq

.critedge9:                                       ; preds = %bb.am, %bb.g, %bb.k, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.aj, %bb.au, %bb.ap, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mo = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.mo, label %bb.d, label %.thread, !llvm.loop !292

.thread:                                          ; preds = %.critedge9
  %i.mp = or i8 %i.z, 4
  store i8 %i.mp, ptr %i.y, align 1, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.preheader, %bb.ak, %.lr.ph, %bb.e, %.lr.ph.1, %bb.i, %.lr.ph.2, %bb.m, %.lr.ph.3, %bb.q, %.lr.ph.4, %bb.u, %.lr.ph.5, %bb.y, %.lr.ph.6, %bb.ac, %.lr.ph.7, %bb.ag, %bb.aq, %bb.ar, %.thread, %bb.b
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond197.not, label %._crit_edge, label %bb.b, !llvm.loop !293
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexMainWriter13writeMetaDataEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 6                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %wide.trip.count = and i64 %i.o, 2147483647
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit
  %i.s = ptrtoint ptr %.sroa.11101.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.11101.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %.sroa.095.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.095.1, %._crit_edge.loopexit ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.u = load i32, ptr %i.t, align 4, !tbaa !298
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.095.0152 = phi ptr [ null, %.lr.ph ], [ %.sroa.095.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.sroa.11101.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.11101.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 7 uses
  %.sroa.15.0150 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %indvars.iv ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 1024
  br i1 %i.af, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.11101.0151, %.sroa.15.0150
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %.sroa.11101.0151, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.11101.0151, i64 8
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = ptrtoint ptr %.sroa.11101.0151 to i64
  %i.ai = ptrtoint ptr %.sroa.095.0152 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
          to label %.noexc unwind label %.loopexit.split-lp127

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3
  %mul2.i.i.i = ashr exact i64 %i.aj, 2
  %2 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.am = icmp ult i64 %2, %i.al
  %i.an = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc60 unwind label %.loopexit126 ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.aj ; 2 uses
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !163
  %i.as = icmp sgt i64 %i.aj, 0
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.095.0152, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc60
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.095.0152, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0152, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

.loopexit126:                                     ; preds = %_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit77

.loopexit.split-lp127:                            ; preds = %bb.f
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit77

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !19
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.a, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !106
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !48
  %i.bc = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, i1 noundef zeroext false)
          to label %.noexc61 unwind label %bb.k   ; 0 uses

.noexc61:                                         ; preds = %bb.i
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.be = load i8, ptr %i.a, align 1, !tbaa !50
  %i.bf = zext i8 %i.be to i32
  %i.bg = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.bd, i32 noundef %i.bf, i1 noundef zeroext false)
          to label %.noexc62 unwind label %bb.k   ; 0 uses

.noexc62:                                         ; preds = %.noexc61
  %i.bh = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, i1 noundef zeroext false)
          to label %.noexc63 unwind label %bb.k   ; 0 uses

.noexc63:                                         ; preds = %.noexc62
  %i.bi = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 4, i1 noundef zeroext false)
          to label %.noexc64 unwind label %bb.k   ; 0 uses

.noexc64:                                         ; preds = %.noexc63
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !48
  %i.bl = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.bj, i32 noundef %i.bk, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.noexc64
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !50
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bn, 6
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !48
  %i.bq = add i32 %i.bo, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.br = load i32, ptr %i.r, align 4, !tbaa !298
  %i.bs = add i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.r, align 4, !tbaa !298
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

bb.k:                                             ; preds = %.noexc64, %.noexc63, %.noexc62, %.noexc61, %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit77

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.j
  %.sroa.15.1 = phi ptr [ %.sroa.15.0150, %bb.j ], [ %i.au, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.15.0150, %bb.d ] ; 2 uses
  %.sroa.11101.1 = phi ptr [ %.sroa.11101.0151, %bb.j ], [ %i.at, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ag, %bb.d ] ; 2 uses
  %.sroa.095.1 = phi ptr [ %.sroa.095.0152, %bb.j ], [ %i.aq, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.095.0152, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !294

bb.l:                                             ; preds = %._crit_edge
  %i.bu = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !299
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit77

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit77

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !43, !range !44, !noundef !45
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i, label %_ZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEi.exit

.lr.ph.i:                                         ; preds = %bb.n, %.noexc66
  %.09.i = phi i32 [ %i.cb, %.noexc66 ], [ 8, %bb.n ] ; 2 uses
  %i.bz = call i32 @llvm.umin.i32(i32 %.09.i, i32 16384)
  %i.ca = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull @_ZZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEiE5zeros, i32 noundef %i.bz)
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %.lr.ph.i
  %i.cb = sub nsw i32 %.09.i, %i.ca               ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i, label %_ZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEi.exit, !llvm.loop !2

_ZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEi.exit: ; preds = %.noexc66, %bb.n
  %i.cd = ptrtoint ptr %.sroa.095.0.lcssa to i64  ; 2 uses
  %i.ce = sub i64 %.sroa.11101.0.lcssa, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 5 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.o:                                             ; preds = %_ZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEi.exit
  %i.ci = and i64 %i.cf, 2147483647               ; 6 uses
  %.not.i.i.i.i67 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i67, label %.lr.ph157, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #27
          to label %.noexc68 unwind label %bb.r   ; 6 uses

.noexc68:                                         ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci ; 3 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !66
  %i.cm = add nsw i64 %i.ci, -1                   ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0                    ; 2 uses
  br i1 %i.cn, label %bb.q, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc68
  %i.co = getelementptr i8, ptr %i.ck, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68
  %i.cp = shl nuw nsw i64 %i.ci, 2
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #27
          to label %.noexc72 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit75.thread ; 5 uses

.noexc72:                                         ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ci ; 2 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !48
  br i1 %i.cn, label %.lr.ph157, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc72
  %i.cs = getelementptr i8, ptr %i.cq, i64 4
  %.idx.i.i.i.i.i.i.i70 = shl nuw nsw i64 %i.cm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %.idx.i.i.i.i.i.i.i70, i1 false), !tbaa !48
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.o, %.noexc72, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.1192.0112 = phi ptr [ %i.cl, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cl, %.noexc72 ], [ null, %bb.o ] ; 4 uses
  %.sroa.088.0108 = phi ptr [ %i.ck, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ck, %.noexc72 ], [ null, %bb.o ] ; 8 uses
  %.sroa.081.0 = phi ptr [ %i.cq, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cq, %.noexc72 ], [ null, %bb.o ] ; 10 uses
  %.sroa.12.0 = phi ptr [ %i.cr, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cr, %.noexc72 ], [ null, %bb.o ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %wide.trip.count175 = and i64 %i.cf, 2147483647
  br label %bb.s

.lr.ph159:                                        ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %wide.trip.count181 = and i64 %i.cf, 2147483647
  br label %bb.u

bb.r:                                             ; preds = %bb.p
end_hunk_1
