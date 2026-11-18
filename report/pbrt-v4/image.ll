Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK4pbrt5Image3MAEERKNS_16ImageChannelDescERKS0_PS0_:bb.a
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx2.i) #35
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.w

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.q
  %.pr.i90 = phi ptr [ null, %bb.q ], [ %i.au, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i90, ptr %10, align 8, !tbaa !95, !alias.scope !434
  %i.av = getelementptr inbounds nuw i8, ptr %.pr.i90, i64 %.idx2.i
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !97, !alias.scope !434
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %i.aq, ptr noundef %i.at, ptr noundef %.pr.i90)
          to label %bb.t unwind label %bb.r, !noalias !434 ; 4 uses

bb.r:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %.pr.i90, null
  br i1 %.not.i.i6.i.i, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i90, i64 noundef %.idx2.i) #34, !noalias !434
  br label %.body

bb.t:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96, !alias.scope !434
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %.pr.i90 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5
  store i64 0, ptr %11, align 8, !tbaa !77
  %i.be = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  %i.bf = ptrtoint ptr %i.be to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %9, i32 noundef 2, i64 %.sroa.0.0.copyload.i, ptr %.pr.i90, i64 %i.bd, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, i64 %i.bf)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc79 unwind label %bb.y   ; 0 uses

.noexc79:                                         ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !77
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %.noexc80 unwind label %bb.y   ; 0 uses

.noexc80:                                         ; preds = %.noexc79
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %.noexc81 unwind label %bb.y   ; 0 uses

.noexc81:                                         ; preds = %.noexc80
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.y ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc81
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %9) #31
  %.not4.i.i.i83 = icmp eq ptr %.pr.i90, %i.ax
  br i1 %.not4.i.i.i83, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i91, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87
  %.05.i.i.i85 = phi ptr [ %i.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87 ], [ %.pr.i90, %_ZN4pbrt5ImageaSEOS0_.exit ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i85, align 8, !tbaa !48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86: ; preds = %.lr.ph.i.i.i84
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87: ; preds = %.lr.ph.i.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 32 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.ca, %i.ax
  br i1 %.not.i.i.i88, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i91, label %.lr.ph.i.i.i84, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i91: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i87, %_ZN4pbrt5ImageaSEOS0_.exit
  %.not.i.i1.i92 = icmp eq ptr %.pr.i90, null
  br i1 %.not.i.i1.i92, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i91
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i90, i64 noundef %.idx2.i) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i91, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %.sroa.0.0.copyload.i95146.pre = load i64, ptr %i.ah, align 4 ; 2 uses
  %.pre176 = lshr i64 %.sroa.0.0.copyload.i95146.pre, 32
  br label %bb.aa

bb.w:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.noexc81, %.noexc80, %.noexc79, %bb.u
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %9) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn64 = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.cc, %bb.x ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  br label %.body

.body:                                            ; preds = %bb.w, %bb.s, %bb.r, %bb.z
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.z ], [ %i.cb, %bb.w ], [ %i.ay, %bb.s ], [ %i.ay, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ay

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94, %bb.p
  %.sroa.322.0.extract.trunc148.pre-phi.in = phi i64 [ %.pre176, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94 ], [ %i.al, %bb.p ]
  %.sroa.0.0.copyload.i95146 = phi i64 [ %.sroa.0.0.copyload.i95146.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit94 ], [ %.sroa.0.0.copyload.i, %bb.p ]
  %.sroa.322.0.extract.trunc148.pre-phi = trunc nuw i64 %.sroa.322.0.extract.trunc148.pre-phi.in to i32
  %i.ce = icmp sgt i32 %.sroa.322.0.extract.trunc148.pre-phi, 0
  br i1 %i.ce, label %.preheader139.lr.ph, label %._crit_edge150

.preheader139.lr.ph:                              ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.lr.ph, %._crit_edge145
  %.sroa.0.0.copyload.i95175 = phi i64 [ %.sroa.0.0.copyload.i95146, %.preheader139.lr.ph ], [ %.sroa.0.0.copyload.i95, %._crit_edge145 ] ; 2 uses
  %indvars.iv164 = phi i64 [ 0, %.preheader139.lr.ph ], [ %indvars.iv.next165, %._crit_edge145 ] ; 2 uses
  %.sroa.014.0.extract.trunc142 = trunc i64 %.sroa.0.0.copyload.i95175 to i32
  %i.cn = icmp sgt i32 %.sroa.014.0.extract.trunc142, 0
  br i1 %i.cn, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader139
  %.sroa.2126.0.insert.shift = shl nuw nsw i64 %indvars.iv164, 32
  br label %bb.ab

._crit_edge145:                                   ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit100, %.preheader139
  %.sroa.0.0.copyload.i95 = phi i64 [ %.sroa.0.0.copyload.i95175, %.preheader139 ], [ %.sroa.0.0.copyload.i96, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit100 ] ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.co = ashr i64 %.sroa.0.0.copyload.i95, 32
  %i.cp = icmp slt i64 %indvars.iv.next165, %i.co
  br i1 %i.cp, label %.preheader139, label %._crit_edge150, !llvm.loop !417

bb.ab:                                            ; preds = %.lr.ph144, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit100
  %indvars.iv161 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next162, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit100 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.0125.0.insert.insert = or disjoint i64 %.sroa.2126.0.insert.shift, %indvars.iv161 ; 3 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %12, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0125.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 4294967297)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 %.sroa.0125.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 4294967297)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.ac
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !101 ; 14 uses
  %.not154 = icmp eq i64 %i.cq, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not, label %iter.check, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.cr, null
  %i.cs = select i1 %.not.i.i.us, ptr %i.cg, ptr %i.cr ; 7 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 2 uses
  %.not.i.i101.us = icmp eq ptr %i.ct, null
  %i.cu = select i1 %.not.i.i101.us, ptr %i.ci, ptr %i.ct ; 7 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cv = shl i64 %i.cq, 3
  %i.cw = getelementptr i8, ptr %.sroa.0133.0, i64 %i.cv ; 2 uses
  %i.cx = shl i64 %i.cq, 2                        ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cs, i64 %i.cx
  %bound0 = icmp ult ptr %.sroa.0133.0, %i.cy
  %bound0.a = icmp ult ptr %i.cs, %i.cw
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = getelementptr i8, ptr %i.cu, i64 %i.cx
  %bound0213 = icmp ult ptr %.sroa.0133.0, %14
  %bound1214 = icmp ult ptr %i.cu, %i.cw
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx = or i1 %found.conflict, %found.conflict215
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check216 = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check216, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cq, 12
  %n.vec = and i64 %i.cq, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %wide.load = load <4 x float>, ptr %i.da, align 4, !tbaa !79, !alias.scope !435
  %wide.load217 = load <4 x float>, ptr %i.db, align 4, !tbaa !79, !alias.scope !435
  %wide.load218 = load <4 x float>, ptr %i.dc, align 4, !tbaa !79, !alias.scope !435
  %wide.load219 = load <4 x float>, ptr %i.dd, align 4, !tbaa !79, !alias.scope !435
  %i.de = fpext <4 x float> %wide.load to <4 x double>
  %i.df = fpext <4 x float> %wide.load217 to <4 x double>
  %i.dg = fpext <4 x float> %wide.load218 to <4 x double>
  %i.dh = fpext <4 x float> %wide.load219 to <4 x double>
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %wide.load220 = load <4 x float>, ptr %i.di, align 4, !tbaa !79, !alias.scope !436
  %wide.load221 = load <4 x float>, ptr %i.dj, align 4, !tbaa !79, !alias.scope !436
  %wide.load222 = load <4 x float>, ptr %i.dk, align 4, !tbaa !79, !alias.scope !436
  %wide.load223 = load <4 x float>, ptr %i.dl, align 4, !tbaa !79, !alias.scope !436
  %i.dm = fpext <4 x float> %wide.load220 to <4 x double>
  %i.dn = fpext <4 x float> %wide.load221 to <4 x double>
  %i.do = fpext <4 x float> %wide.load222 to <4 x double>
  %i.dp = fpext <4 x float> %wide.load223 to <4 x double>
  %i.dq = fsub <4 x double> %i.de, %i.dm
  %i.dr = fsub <4 x double> %i.df, %i.dn
  %i.ds = fsub <4 x double> %i.dg, %i.do
  %i.dt = fsub <4 x double> %i.dh, %i.dp
  %i.du = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dq) ; 2 uses
  %i.dv = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dr) ; 2 uses
  %i.dw = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ds) ; 2 uses
  %i.dx = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dt) ; 2 uses
  %i.dy = fcmp une <4 x double> %i.du, splat (double +inf) ; 2 uses
  %i.dz = fcmp une <4 x double> %i.dv, splat (double +inf) ; 2 uses
  %i.ea = fcmp une <4 x double> %i.dw, splat (double +inf) ; 2 uses
  %i.eb = fcmp une <4 x double> %i.dx, splat (double +inf) ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %.sroa.0133.0, i64 %index ; 5 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 32     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 64     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ec, i64 96     ; 2 uses
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ec, <4 x i1> %i.dy, <4 x double> poison), !tbaa !166, !alias.scope !437, !noalias !438
  %wide.masked.load224 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ed, <4 x i1> %i.dz, <4 x double> poison), !tbaa !166, !alias.scope !437, !noalias !438
  %wide.masked.load225 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ee, <4 x i1> %i.ea, <4 x double> poison), !tbaa !166, !alias.scope !437, !noalias !438
  %wide.masked.load226 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ef, <4 x i1> %i.eb, <4 x double> poison), !tbaa !166, !alias.scope !437, !noalias !438
  %i.eg = fadd <4 x double> %i.du, %wide.masked.load
  %i.eh = fadd <4 x double> %i.dv, %wide.masked.load224
  %i.ei = fadd <4 x double> %i.dw, %wide.masked.load225
  %i.ej = fadd <4 x double> %i.dx, %wide.masked.load226
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eg, ptr align 8 %i.ec, <4 x i1> %i.dy), !tbaa !166, !alias.scope !437, !noalias !438
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eh, ptr align 8 %i.ed, <4 x i1> %i.dz), !tbaa !166, !alias.scope !437, !noalias !438
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ei, ptr align 8 %i.ee, <4 x i1> %i.ea), !tbaa !166, !alias.scope !437, !noalias !438
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ej, ptr align 8 %i.ef, <4 x i1> %i.eb), !tbaa !166, !alias.scope !437, !noalias !438
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec227 = and i64 %i.cq, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index228 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index228
  %wide.load229 = load <4 x float>, ptr %i.el, align 4, !tbaa !79, !alias.scope !435
  %i.em = fpext <4 x float> %wide.load229 to <4 x double>
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index228
  %wide.load230 = load <4 x float>, ptr %i.en, align 4, !tbaa !79, !alias.scope !436
  %i.eo = fpext <4 x float> %wide.load230 to <4 x double>
  %i.ep = fsub <4 x double> %i.em, %i.eo
  %i.eq = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ep) ; 2 uses
  %i.er = fcmp une <4 x double> %i.eq, splat (double +inf) ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %.sroa.0133.0, i64 %index228 ; 2 uses
  %wide.masked.load231 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.es, <4 x i1> %i.er, <4 x double> poison), !tbaa !166, !alias.scope !437, !noalias !438
  %i.et = fadd <4 x double> %i.eq, %wide.masked.load231
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.et, ptr align 8 %i.es, <4 x i1> %i.er), !tbaa !166, !alias.scope !437, !noalias !438
  %index.next232 = add nuw i64 %index228, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n233 = icmp eq i64 %i.cq, %n.vec227
  br i1 %cmp.n233, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv158.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec227, %vec.epilog.middle.block ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv158.ph, 1
  %xtraiter = and i64 %i.cq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv158.ph
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !79
  %i.ex = fpext float %i.ew to double
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv158.ph
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !79
  %i.fa = fpext float %i.ez to double
  %i.fb = fsub double %i.ex, %i.fa
  %i.fc = call noundef double @llvm.fabs.f64(double %i.fb) ; 2 uses
  %i.fd = fcmp oeq double %i.fc, +inf
  br i1 %i.fd, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, label %bb.ad

bb.ad:                                            ; preds = %vec.epilog.scalar.ph.prol
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0133.0, i64 %indvars.iv158.ph ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !166
  %i.fg = fadd double %i.fc, %i.ff
  store double %i.fg, ptr %i.fe, align 8, !tbaa !166
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.ad, %vec.epilog.scalar.ph.prol
  %indvars.iv.next159.prol = or disjoint i64 %indvars.iv158.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv158.unr = phi i64 [ %indvars.iv158.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next159.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.fh = icmp eq i64 %i.cq, %.neg
  br i1 %i.fh, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.ag
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.1, %bb.ag ], [ %indvars.iv158.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv158
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !79
  %i.fk = fpext float %i.fj to double
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv158
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !79
  %i.fn = fpext float %i.fm to double
  %i.fo = fsub double %i.fk, %i.fn
  %i.fp = call noundef double @llvm.fabs.f64(double %i.fo) ; 2 uses
  %i.fq = fcmp oeq double %i.fp, +inf
  br i1 %i.fq, label %vec.epilog.scalar.ph.1, label %bb.ae

bb.ae:                                            ; preds = %vec.epilog.scalar.ph
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0133.0, i64 %indvars.iv158 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !166
  %i.ft = fadd double %i.fp, %i.fs
  store double %i.ft, ptr %i.fr, align 8, !tbaa !166
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.ae, %vec.epilog.scalar.ph
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next159
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !79
  %i.fw = fpext float %i.fv to double
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next159
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !79
  %i.fz = fpext float %i.fy to double
  %i.ga = fsub double %i.fw, %i.fz
  %i.gb = call noundef double @llvm.fabs.f64(double %i.ga) ; 2 uses
  %i.gc = fcmp oeq double %i.gb, +inf
  br i1 %i.gc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %vec.epilog.scalar.ph.1
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0133.0, i64 %indvars.iv.next159 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !166
  %i.gf = fadd double %i.gb, %i.ge
  store double %i.gf, ptr %i.gd, align 8, !tbaa !166
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %vec.epilog.scalar.ph.1
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next159.1, %i.cq
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !424

._crit_edge:                                      ; preds = %bb.ar, %vec.epilog.scalar.ph.prol.loopexit, %bb.ag, %middle.block, %vec.epilog.middle.block, %.preheader
  store i64 0, ptr %i.cj, align 8, !tbaa !162
  %i.gg = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i98, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.gh = load i64, ptr %i.ck, align 8, !tbaa !161
  %i.gi = shl i64 %i.gh, 2
  %i.gj = load ptr, ptr %13, align 8, !tbaa !118  ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !120
end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Image3MSEERKNS_16ImageChannelDescERKS0_PS0_:bb.a
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx2.i) #35
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.aa

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.u
  %.pr.i94 = phi ptr [ null, %bb.u ], [ %i.aw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i94, ptr %11, align 8, !tbaa !95, !alias.scope !466
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr.i94, i64 %.idx2.i
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !97, !alias.scope !466
  %i.az = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %i.as, ptr noundef %i.av, ptr noundef %.pr.i94)
          to label %bb.x unwind label %bb.v, !noalias !466 ; 4 uses

bb.v:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %.pr.i94, null
  br i1 %.not.i.i6.i.i, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i94, i64 noundef %.idx2.i) #34, !noalias !466
  br label %.body

bb.x:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !96, !alias.scope !466
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %.pr.i94 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 5
  store i64 0, ptr %12, align 8, !tbaa !77
  %i.bg = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  %i.bh = ptrtoint ptr %i.bg to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %10, i32 noundef 2, i64 %.sroa.0.0.copyload.i, ptr %.pr.i94, i64 %i.bf, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %12, i64 %i.bh)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %10, i64 12, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %.noexc83 unwind label %bb.ac  ; 0 uses

.noexc83:                                         ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %.noexc84 unwind label %bb.ac  ; 0 uses

.noexc84:                                         ; preds = %.noexc83
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.noexc85 unwind label %bb.ac  ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.ac ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc85
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %10) #31
  %.not4.i.i.i87 = icmp eq ptr %.pr.i94, %i.az
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i95, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91
  %.05.i.i.i89 = phi ptr [ %i.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91 ], [ %.pr.i94, %_ZN4pbrt5ImageaSEOS0_.exit ] ; 3 uses
  %i.bx = load ptr, ptr %.05.i.i.i89, align 8, !tbaa !48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90: ; preds = %.lr.ph.i.i.i88
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !38
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91: ; preds = %.lr.ph.i.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 32 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.cc, %i.az
  br i1 %.not.i.i.i92, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i95, label %.lr.ph.i.i.i88, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i95: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i91, %_ZN4pbrt5ImageaSEOS0_.exit
  %.not.i.i1.i96 = icmp eq ptr %.pr.i94, null
  br i1 %.not.i.i1.i96, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i95
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i94, i64 noundef %.idx2.i) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i95, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.sroa.0.0.copyload.i99150.pre = load i64, ptr %i.aj, align 4 ; 2 uses
  %.pre180 = lshr i64 %.sroa.0.0.copyload.i99150.pre, 32
  br label %bb.ae

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc85, %.noexc84, %.noexc83, %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %10) #31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn68 = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %i.ce, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #31
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.w, %bb.v, %bb.ad
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.ad ], [ %i.cd, %bb.aa ], [ %i.ba, %bb.w ], [ %i.ba, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bc

bb.ae:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98, %bb.t
  %.sroa.322.0.extract.trunc152.pre-phi.in = phi i64 [ %.pre180, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98 ], [ %i.an, %bb.t ]
  %.sroa.0.0.copyload.i99150 = phi i64 [ %.sroa.0.0.copyload.i99150.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit98 ], [ %.sroa.0.0.copyload.i, %bb.t ]
  %.sroa.322.0.extract.trunc152.pre-phi = trunc nuw i64 %.sroa.322.0.extract.trunc152.pre-phi.in to i32
  %i.cg = icmp sgt i32 %.sroa.322.0.extract.trunc152.pre-phi, 0
  br i1 %i.cg, label %.preheader143.lr.ph, label %._crit_edge154

.preheader143.lr.ph:                              ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %._crit_edge149
  %.sroa.0.0.copyload.i99179 = phi i64 [ %.sroa.0.0.copyload.i99150, %.preheader143.lr.ph ], [ %.sroa.0.0.copyload.i99, %._crit_edge149 ] ; 2 uses
  %indvars.iv168 = phi i64 [ 0, %.preheader143.lr.ph ], [ %indvars.iv.next169, %._crit_edge149 ] ; 2 uses
  %.sroa.014.0.extract.trunc146 = trunc i64 %.sroa.0.0.copyload.i99179 to i32
  %i.cp = icmp sgt i32 %.sroa.014.0.extract.trunc146, 0
  br i1 %i.cp, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.preheader143
  %.sroa.2130.0.insert.shift = shl nuw nsw i64 %indvars.iv168, 32
  br label %bb.af

._crit_edge149:                                   ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit104, %.preheader143
  %.sroa.0.0.copyload.i99 = phi i64 [ %.sroa.0.0.copyload.i99179, %.preheader143 ], [ %.sroa.0.0.copyload.i100, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit104 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.cq = ashr i64 %.sroa.0.0.copyload.i99, 32
  %i.cr = icmp slt i64 %indvars.iv.next169, %i.cq
  br i1 %i.cr, label %.preheader143, label %._crit_edge154, !llvm.loop !449

bb.af:                                            ; preds = %.lr.ph148, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit104
  %indvars.iv165 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next166, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit104 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %.sroa.0129.0.insert.insert = or disjoint i64 %.sroa.2130.0.insert.shift, %indvars.iv165 ; 3 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0129.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 4294967297)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 %.sroa.0129.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 4294967297)
          to label %.preheader unwind label %bb.aq

.preheader:                                       ; preds = %bb.ag
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !101 ; 14 uses
  %.not158 = icmp eq i64 %i.cs, 0
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not, label %iter.check, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.ct, null
  %i.cu = select i1 %.not.i.i.us, ptr %i.ci, ptr %i.ct ; 7 uses
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !160 ; 2 uses
  %.not.i.i105.us = icmp eq ptr %i.cv, null
  %i.cw = select i1 %.not.i.i105.us, ptr %i.ck, ptr %i.cv ; 7 uses
  %min.iters.check = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cx = shl i64 %i.cs, 3
  %i.cy = getelementptr i8, ptr %.sroa.0137.0, i64 %i.cx ; 2 uses
  %i.cz = shl i64 %i.cs, 2                        ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 %i.cz
  %bound0 = icmp ult ptr %.sroa.0137.0, %i.da
  %bound0.a = icmp ult ptr %i.cu, %i.cy
  %found.conflict = and i1 %bound0, %bound0.a
  %15 = getelementptr i8, ptr %i.cw, i64 %i.cz
  %bound0215 = icmp ult ptr %.sroa.0137.0, %15
  %bound1216 = icmp ult ptr %i.cw, %i.cy
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx = or i1 %found.conflict, %found.conflict217
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check218 = icmp ult i64 %i.cs, 16
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = and i64 %i.cs, 12
  %n.vec = and i64 %i.cs, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %wide.load = load <4 x float>, ptr %i.dc, align 4, !tbaa !79, !alias.scope !467
  %wide.load219 = load <4 x float>, ptr %i.dd, align 4, !tbaa !79, !alias.scope !467
  %wide.load220 = load <4 x float>, ptr %i.de, align 4, !tbaa !79, !alias.scope !467
  %wide.load221 = load <4 x float>, ptr %i.df, align 4, !tbaa !79, !alias.scope !467
  %i.dg = fpext <4 x float> %wide.load to <4 x double>
  %i.dh = fpext <4 x float> %wide.load219 to <4 x double>
  %i.di = fpext <4 x float> %wide.load220 to <4 x double>
  %i.dj = fpext <4 x float> %wide.load221 to <4 x double>
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %wide.load222 = load <4 x float>, ptr %i.dk, align 4, !tbaa !79, !alias.scope !468
  %wide.load223 = load <4 x float>, ptr %i.dl, align 4, !tbaa !79, !alias.scope !468
  %wide.load224 = load <4 x float>, ptr %i.dm, align 4, !tbaa !79, !alias.scope !468
  %wide.load225 = load <4 x float>, ptr %i.dn, align 4, !tbaa !79, !alias.scope !468
  %i.do = fpext <4 x float> %wide.load222 to <4 x double>
  %i.dp = fpext <4 x float> %wide.load223 to <4 x double>
  %i.dq = fpext <4 x float> %wide.load224 to <4 x double>
  %i.dr = fpext <4 x float> %wide.load225 to <4 x double>
  %i.ds = fsub <4 x double> %i.dg, %i.do          ; 2 uses
  %i.dt = fsub <4 x double> %i.dh, %i.dp          ; 2 uses
  %i.du = fsub <4 x double> %i.di, %i.dq          ; 2 uses
  %i.dv = fsub <4 x double> %i.dj, %i.dr          ; 2 uses
  %i.dw = fmul <4 x double> %i.ds, %i.ds          ; 2 uses
  %i.dx = fmul <4 x double> %i.dt, %i.dt          ; 2 uses
  %i.dy = fmul <4 x double> %i.du, %i.du          ; 2 uses
  %i.dz = fmul <4 x double> %i.dv, %i.dv          ; 2 uses
  %i.ea = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dw)
  %i.eb = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dx)
  %i.ec = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dy)
  %i.ed = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dz)
  %i.ee = fcmp une <4 x double> %i.ea, splat (double +inf) ; 2 uses
  %i.ef = fcmp une <4 x double> %i.eb, splat (double +inf) ; 2 uses
  %i.eg = fcmp une <4 x double> %i.ec, splat (double +inf) ; 2 uses
  %i.eh = fcmp une <4 x double> %i.ed, splat (double +inf) ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %.sroa.0137.0, i64 %index ; 5 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 32     ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 64     ; 2 uses
  %i.el = getelementptr i8, ptr %i.ei, i64 96     ; 2 uses
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ei, <4 x i1> %i.ee, <4 x double> poison), !tbaa !166, !alias.scope !469, !noalias !470
  %wide.masked.load226 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ej, <4 x i1> %i.ef, <4 x double> poison), !tbaa !166, !alias.scope !469, !noalias !470
  %wide.masked.load227 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ek, <4 x i1> %i.eg, <4 x double> poison), !tbaa !166, !alias.scope !469, !noalias !470
  %wide.masked.load228 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.el, <4 x i1> %i.eh, <4 x double> poison), !tbaa !166, !alias.scope !469, !noalias !470
  %i.em = fadd <4 x double> %i.dw, %wide.masked.load
  %i.en = fadd <4 x double> %i.dx, %wide.masked.load226
  %i.eo = fadd <4 x double> %i.dy, %wide.masked.load227
  %i.ep = fadd <4 x double> %i.dz, %wide.masked.load228
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.em, ptr align 8 %i.ei, <4 x i1> %i.ee), !tbaa !166, !alias.scope !469, !noalias !470
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.en, ptr align 8 %i.ej, <4 x i1> %i.ef), !tbaa !166, !alias.scope !469, !noalias !470
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eo, ptr align 8 %i.ek, <4 x i1> %i.eg), !tbaa !166, !alias.scope !469, !noalias !470
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ep, ptr align 8 %i.el, <4 x i1> %i.eh), !tbaa !166, !alias.scope !469, !noalias !470
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.cs, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next234, %vec.epilog.vector.body ] ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index230
  %wide.load231 = load <4 x float>, ptr %i.er, align 4, !tbaa !79, !alias.scope !467
  %i.es = fpext <4 x float> %wide.load231 to <4 x double>
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index230
  %wide.load232 = load <4 x float>, ptr %i.et, align 4, !tbaa !79, !alias.scope !468
  %i.eu = fpext <4 x float> %wide.load232 to <4 x double>
  %i.ev = fsub <4 x double> %i.es, %i.eu          ; 2 uses
  %i.ew = fmul <4 x double> %i.ev, %i.ev          ; 2 uses
  %i.ex = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ew)
  %i.ey = fcmp une <4 x double> %i.ex, splat (double +inf) ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %.sroa.0137.0, i64 %index230 ; 2 uses
  %wide.masked.load233 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ez, <4 x i1> %i.ey, <4 x double> poison), !tbaa !166, !alias.scope !469, !noalias !470
  %i.fa = fadd <4 x double> %i.ew, %wide.masked.load233
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.fa, ptr align 8 %i.ez, <4 x i1> %i.ey), !tbaa !166, !alias.scope !469, !noalias !470
  %index.next234 = add nuw i64 %index230, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !455

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n235 = icmp eq i64 %i.cs, %n.vec229
  br i1 %cmp.n235, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv162.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv162.ph, 1
  %xtraiter = and i64 %i.cs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv162.ph
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !79
  %i.fe = fpext float %i.fd to double
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv162.ph
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !79
  %i.fh = fpext float %i.fg to double
  %i.fi = fsub double %i.fe, %i.fh                ; 2 uses
  %i.fj = fmul double %i.fi, %i.fi                ; 2 uses
  %i.fk = call double @llvm.fabs.f64(double %i.fj)
  %i.fl = fcmp oeq double %i.fk, +inf
  br i1 %i.fl, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, label %bb.ah

bb.ah:                                            ; preds = %vec.epilog.scalar.ph.prol
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0137.0, i64 %indvars.iv162.ph ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !166
  %i.fo = fadd double %i.fj, %i.fn
  store double %i.fo, ptr %i.fm, align 8, !tbaa !166
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.ah, %vec.epilog.scalar.ph.prol
  %indvars.iv.next163.prol = or disjoint i64 %indvars.iv162.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next163.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.fp = icmp eq i64 %i.cs, %.neg
  br i1 %i.fp, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.ak
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %bb.ak ], [ %indvars.iv162.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv162
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !79
  %i.fs = fpext float %i.fr to double
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv162
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !79
  %i.fv = fpext float %i.fu to double
  %i.fw = fsub double %i.fs, %i.fv                ; 2 uses
  %i.fx = fmul double %i.fw, %i.fw                ; 2 uses
  %i.fy = call double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp oeq double %i.fy, +inf
  br i1 %i.fz, label %vec.epilog.scalar.ph.1, label %bb.ai

bb.ai:                                            ; preds = %vec.epilog.scalar.ph
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0137.0, i64 %indvars.iv162 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !166
  %i.gc = fadd double %i.fx, %i.gb
  store double %i.gc, ptr %i.ga, align 8, !tbaa !166
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.ai, %vec.epilog.scalar.ph
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next163
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !79
  %i.gf = fpext float %i.ge to double
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next163
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !79
  %i.gi = fpext float %i.gh to double
  %i.gj = fsub double %i.gf, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, %i.gj                ; 2 uses
  %i.gl = call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp oeq double %i.gl, +inf
  br i1 %i.gm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %vec.epilog.scalar.ph.1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0137.0, i64 %indvars.iv.next163 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !166
  %i.gp = fadd double %i.gk, %i.go
  store double %i.gp, ptr %i.gn, align 8, !tbaa !166
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %vec.epilog.scalar.ph.1
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next163.1, %i.cs
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !456

._crit_edge:                                      ; preds = %bb.av, %vec.epilog.scalar.ph.prol.loopexit, %bb.ak, %middle.block, %vec.epilog.middle.block, %.preheader
  store i64 0, ptr %i.cl, align 8, !tbaa !162
  %i.gq = load ptr, ptr %i.cj, align 8, !tbaa !160 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt5Image4MRSEERKNS_16ImageChannelDescERKS0_PS0_:bb.a
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx2.i) #35
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.w

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.q
  %.pr.i91 = phi ptr [ null, %bb.q ], [ %i.au, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i91, ptr %10, align 8, !tbaa !95, !alias.scope !494
  %i.av = getelementptr inbounds nuw i8, ptr %.pr.i91, i64 %.idx2.i
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !97, !alias.scope !494
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %i.aq, ptr noundef %i.at, ptr noundef %.pr.i91)
          to label %bb.t unwind label %bb.r, !noalias !494 ; 4 uses

bb.r:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %.pr.i91, null
  br i1 %.not.i.i6.i.i, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i91, i64 noundef %.idx2.i) #34, !noalias !494
  br label %.body

bb.t:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96, !alias.scope !494
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %.pr.i91 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5
  store i64 0, ptr %11, align 8, !tbaa !77
  %i.be = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  %i.bf = ptrtoint ptr %i.be to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %9, i32 noundef 2, i64 %.sroa.0.0.copyload.i, ptr %.pr.i91, i64 %i.bd, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, i64 %i.bf)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc80 unwind label %bb.y   ; 0 uses

.noexc80:                                         ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !77
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %.noexc81 unwind label %bb.y   ; 0 uses

.noexc81:                                         ; preds = %.noexc80
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %.noexc82 unwind label %bb.y   ; 0 uses

.noexc82:                                         ; preds = %.noexc81
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.y ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc82
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %9) #31
  %.not4.i.i.i84 = icmp eq ptr %.pr.i91, %i.ax
  br i1 %.not4.i.i.i84, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i92, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88
  %.05.i.i.i86 = phi ptr [ %i.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88 ], [ %.pr.i91, %_ZN4pbrt5ImageaSEOS0_.exit ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i86, align 8, !tbaa !48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i86, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87: ; preds = %.lr.ph.i.i.i85
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88: ; preds = %.lr.ph.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i86, i64 32 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.ca, %i.ax
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i92, label %.lr.ph.i.i.i85, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i92: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i88, %_ZN4pbrt5ImageaSEOS0_.exit
  %.not.i.i1.i93 = icmp eq ptr %.pr.i91, null
  br i1 %.not.i.i1.i93, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i92
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i91, i64 noundef %.idx2.i) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i92, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %.sroa.0.0.copyload.i96148.pre = load i64, ptr %i.ah, align 4 ; 2 uses
  %.pre178 = lshr i64 %.sroa.0.0.copyload.i96148.pre, 32
  br label %bb.aa

bb.w:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.noexc82, %.noexc81, %.noexc80, %bb.u
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %9) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn65 = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.cc, %bb.x ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  br label %.body

.body:                                            ; preds = %bb.w, %bb.s, %bb.r, %bb.z
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.z ], [ %i.cb, %bb.w ], [ %i.ay, %bb.s ], [ %i.ay, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ay

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95, %bb.p
  %.sroa.323.0.extract.trunc150.pre-phi.in = phi i64 [ %.pre178, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95 ], [ %i.al, %bb.p ]
  %.sroa.0.0.copyload.i96148 = phi i64 [ %.sroa.0.0.copyload.i96148.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit95 ], [ %.sroa.0.0.copyload.i, %bb.p ]
  %.sroa.323.0.extract.trunc150.pre-phi = trunc nuw i64 %.sroa.323.0.extract.trunc150.pre-phi.in to i32
  %i.ce = icmp sgt i32 %.sroa.323.0.extract.trunc150.pre-phi, 0
  br i1 %i.ce, label %.preheader141.lr.ph, label %._crit_edge152

.preheader141.lr.ph:                              ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.lr.ph, %._crit_edge147
  %.sroa.0.0.copyload.i96177 = phi i64 [ %.sroa.0.0.copyload.i96148, %.preheader141.lr.ph ], [ %.sroa.0.0.copyload.i96, %._crit_edge147 ] ; 2 uses
  %indvars.iv166 = phi i64 [ 0, %.preheader141.lr.ph ], [ %indvars.iv.next167, %._crit_edge147 ] ; 2 uses
  %.sroa.015.0.extract.trunc144 = trunc i64 %.sroa.0.0.copyload.i96177 to i32
  %i.cn = icmp sgt i32 %.sroa.015.0.extract.trunc144, 0
  br i1 %i.cn, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %.preheader141
  %.sroa.2128.0.insert.shift = shl nuw nsw i64 %indvars.iv166, 32
  br label %bb.ab

._crit_edge147:                                   ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101, %.preheader141
  %.sroa.0.0.copyload.i96 = phi i64 [ %.sroa.0.0.copyload.i96177, %.preheader141 ], [ %.sroa.0.0.copyload.i97, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101 ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.co = ashr i64 %.sroa.0.0.copyload.i96, 32
  %i.cp = icmp slt i64 %indvars.iv.next167, %i.co
  br i1 %i.cp, label %.preheader141, label %._crit_edge152, !llvm.loop !478

bb.ab:                                            ; preds = %.lr.ph146, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101
  %indvars.iv163 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next164, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.0127.0.insert.insert = or disjoint i64 %.sroa.2128.0.insert.shift, %indvars.iv163 ; 3 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %12, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0127.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 4294967297)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 %.sroa.0127.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 4294967297)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.ac
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !101 ; 10 uses
  %.not156 = icmp eq i64 %i.cq, 0
  br i1 %.not156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.cr, null
  %i.cs = select i1 %.not.i.i.us, ptr %i.cg, ptr %i.cr ; 6 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 2 uses
  %.not.i.i102.us = icmp eq ptr %i.ct, null
  %i.cu = select i1 %.not.i.i102.us, ptr %i.ci, ptr %i.ct ; 6 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us
  %i.cv = shl i64 %i.cq, 3
  %i.cw = getelementptr i8, ptr %.sroa.0135.0, i64 %i.cv ; 2 uses
  %i.cx = shl i64 %i.cq, 2                        ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cs, i64 %i.cx
  %bound0 = icmp ult ptr %.sroa.0135.0, %i.cy
  %bound0.a = icmp ult ptr %i.cs, %i.cw
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = getelementptr i8, ptr %i.cu, i64 %i.cx
  %bound0213 = icmp ult ptr %.sroa.0135.0, %14
  %bound1214 = icmp ult ptr %i.cu, %i.cw
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx = or i1 %found.conflict, %found.conflict215
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index
  %wide.load = load <4 x float>, ptr %i.cz, align 4, !tbaa !79, !alias.scope !495
  %i.da = fpext <4 x float> %wide.load to <4 x double>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index
  %wide.load216 = load <4 x float>, ptr %i.db, align 4, !tbaa !79, !alias.scope !496
  %i.dc = fpext <4 x float> %wide.load216 to <4 x double> ; 2 uses
  %i.dd = fsub <4 x double> %i.da, %i.dc          ; 2 uses
  %i.de = fmul <4 x double> %i.dd, %i.dd
  %i.df = fadd <4 x double> %i.dc, splat (double 1.000000e-02) ; 2 uses
  %i.dg = fmul <4 x double> %i.df, %i.df
  %i.dh = fdiv <4 x double> %i.de, %i.dg          ; 2 uses
  %i.di = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dh)
  %i.dj = fcmp une <4 x double> %i.di, splat (double +inf) ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %.sroa.0135.0, i64 %index ; 2 uses
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.dk, <4 x i1> %i.dj, <4 x double> poison), !tbaa !166, !alias.scope !497, !noalias !498
  %i.dl = fadd <4 x double> %i.dh, %wide.masked.load
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dl, ptr align 8 %i.dk, <4 x i1> %i.dj), !tbaa !166, !alias.scope !497, !noalias !498
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !483

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv160.ph, 1
  %xtraiter = and i64 %i.cq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv160.ph
  %i.do = load float, ptr %i.dn, align 4, !tbaa !79
  %i.dp = fpext float %i.do to double
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv160.ph
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !79
  %i.ds = fpext float %i.dr to double             ; 2 uses
  %i.dt = fsub double %i.dp, %i.ds                ; 2 uses
  %i.du = fmul double %i.dt, %i.dt
  %i.dv = fadd double %i.ds, 1.000000e-02         ; 2 uses
  %i.dw = fmul double %i.dv, %i.dv
  %i.dx = fdiv double %i.du, %i.dw                ; 2 uses
  %i.dy = call double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp oeq double %i.dy, +inf
  br i1 %i.dz, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.prol
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0135.0, i64 %indvars.iv160.ph ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !166
  %i.ec = fadd double %i.dx, %i.eb
  store double %i.ec, ptr %i.ea, align 8, !tbaa !166
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.ad, %scalar.ph.prol
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %scalar.ph.preheader ], [ %indvars.iv.next161.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.ed = icmp eq i64 %i.cq, %.neg
  br i1 %i.ed, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %bb.ag ], [ %indvars.iv160.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv160
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !79
  %i.eg = fpext float %i.ef to double
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv160
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !79
  %i.ej = fpext float %i.ei to double             ; 2 uses
  %i.ek = fsub double %i.eg, %i.ej                ; 2 uses
  %i.el = fmul double %i.ek, %i.ek
  %i.em = fadd double %i.ej, 1.000000e-02         ; 2 uses
  %i.en = fmul double %i.em, %i.em
  %i.eo = fdiv double %i.el, %i.en                ; 2 uses
  %i.ep = call double @llvm.fabs.f64(double %i.eo)
  %i.eq = fcmp oeq double %i.ep, +inf
  br i1 %i.eq, label %scalar.ph.1, label %bb.ae

bb.ae:                                            ; preds = %scalar.ph
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0135.0, i64 %indvars.iv160 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !166
  %i.et = fadd double %i.eo, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !166
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ae, %scalar.ph
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next161
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !79
  %i.ew = fpext float %i.ev to double
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next161
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !79
  %i.ez = fpext float %i.ey to double             ; 2 uses
  %i.fa = fsub double %i.ew, %i.ez                ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = fadd double %i.ez, 1.000000e-02         ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc
  %i.fe = fdiv double %i.fb, %i.fd                ; 2 uses
  %i.ff = call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp oeq double %i.ff, +inf
  br i1 %i.fg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %scalar.ph.1
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0135.0, i64 %indvars.iv.next161 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !166
  %i.fj = fadd double %i.fe, %i.fi
  store double %i.fj, ptr %i.fh, align 8, !tbaa !166
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %scalar.ph.1
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next161.1, %i.cq
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !484

._crit_edge:                                      ; preds = %bb.ar, %scalar.ph.prol.loopexit, %bb.ag, %middle.block, %.preheader
  store i64 0, ptr %i.cj, align 8, !tbaa !162
  %i.fk = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i99, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.fl = load i64, ptr %i.ck, align 8, !tbaa !161
  %i.fm = shl i64 %i.fl, 2
  %i.fn = load ptr, ptr %13, align 8, !tbaa !118  ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull %i.fk, i64 noundef %i.fm, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.ai, !inline_history !1

bb.ai:                                            ; preds = %bb.ah
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %._crit_edge, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  store i64 0, ptr %i.cl, align 8, !tbaa !162
  %i.ft = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i100, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101, label %bb.aj

bb.aj:                                            ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.fu = load i64, ptr %i.cm, align 8, !tbaa !161
  %i.fv = shl i64 %i.fu, 2
  %i.fw = load ptr, ptr %12, align 8, !tbaa !118  ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !120
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.ft, i64 noundef %i.fv, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101 unwind label %bb.ak, !inline_history !1

bb.ak:                                            ; preds = %bb.aj
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %.sroa.0.0.copyload.i97 = load i64, ptr %i.ah, align 4 ; 2 uses
  %i.gc = shl i64 %.sroa.0.0.copyload.i97, 32
  %i.gd = ashr exact i64 %i.gc, 32
  %i.ge = icmp slt i64 %indvars.iv.next164, %i.gd
  br i1 %i.ge, label %bb.ab, label %._crit_edge147, !llvm.loop !485

bb.al:                                            ; preds = %bb.ab
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit107

bb.am:                                            ; preds = %bb.ac
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ar
  %i.gh = phi i64 [ %i.ho, %bb.ar ], [ %i.cq, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %.lr.ph ] ; 5 uses
  %i.gi = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gi, null
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd8optionalIPKNS_13RGBColorSpaceEEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pstdlsIPKN4pbrt13RGBColorSpaceEEERSoS5_RKNS_8optionalIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.141, i64 noundef 17) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZTSPKN4pbrt13RGBColorSpaceE, i64 noundef 24) ; 0 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.142, i64 noundef 12) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.143, i64 noundef 7) ; 0 uses
  %i.h = load i8, ptr %i.a, align 8, !tbaa !51, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.107, i32 noundef 240, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(4) @.str.108) #33
  unreachable

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !195
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.140, i64 noundef 2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.144, i64 noundef 25) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit
  %.0 = phi ptr [ %i.k, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit ], [ %0, %bb.d ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E9_M_invokeERKSt9_Any_dataOlSB_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 8 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 6 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1585 ; 2 uses
  %sext.i.i.i = shl i64 %.val3, 32
  %i.d = ashr exact i64 %sext.i.i.i, 32           ; 2 uses
  %i.e = icmp sgt i64 %.val4, %i.d
  br i1 %i.e, label %.preheader39.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.lr.ph.i.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load i32, ptr %i.f, align 4, !tbaa !74   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader39.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.i.i.i:                               ; preds = %.preheader39.lr.ph.i.i.i, %._crit_edge61.i.i.i
  %i.v = phi i32 [ %i.x, %._crit_edge61.i.i.i ], [ %i.t, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %._crit_edge61.i.i.i ], [ %i.d, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph60.i.i.i, label %._crit_edge61.i.i.i

.lr.ph60.i.i.i:                                   ; preds = %.preheader39.i.i.i
  %.sroa.238.0.insert.ext.i.i.i = shl i64 %indvars.iv70.i.i.i, 32 ; 2 uses
  br label %bb.b

._crit_edge61.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.preheader39.i.i.i
  %i.x = phi i32 [ %i.v, %.preheader39.i.i.i ], [ %i.ey, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ]
  %indvars.iv.next71.i.i.i = add nsw i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next71.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %.preheader39.i.i.i, !llvm.loop !1572

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.lr.ph60.i.i.i
  %indvars.iv67.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i ], [ %indvars.iv.next68.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1586, !nonnull !53, !align !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !101 ; 9 uses
  %i.ab = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 7 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store i64 %i.ac, ptr %3, align 8, !tbaa !139
  store ptr null, ptr %i.h, align 8, !tbaa !160
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aa, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ad = shl i64 %i.aa, 2                        ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ad, i64 noundef 4), !inline_history !1573
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.ai, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.h, align 8, !tbaa !160
  br label %.lr.ph.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %.pre74.i.i.i = shl nuw nsw i64 %i.aa, 2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre74.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.ad, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.aj = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.ad, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.ak = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ] ; 3 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not.i9.i.i.i.i.i, ptr %i.k, ptr %i.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %.pre-phi.i.i.i, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %.not55.i.i.i = icmp slt i32 %i.ap, 0
  br i1 %.not55.i.i.i, label %._crit_edge58.i.i.i, label %.lr.ph57.i.i.i

.lr.ph57.i.i.i:                                   ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = load ptr, ptr %i.h, align 8             ; 4 uses
  %.not.i.i27.i.i.i = icmp eq ptr %i.ar, null
  %i.as = select i1 %.not.i.i27.i.i.i, ptr %i.k, ptr %i.ar ; 10 uses
  %i.at = trunc nuw nsw i64 %indvars.iv67.i.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph57.i.i.i
  %.02256.i.i.i = phi i32 [ %i.aq, %.lr.ph57.i.i.i ], [ %i.dc, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.au = add nsw i32 %.02256.i.i.i, %i.at
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !1586, !nonnull !53, !align !214
  %.sroa.037.0.insert.ext.i.i.i = zext i32 %i.au to i64
  %.sroa.037.0.insert.insert.i.i.i = or disjoint i64 %.sroa.238.0.insert.ext.i.i.i, %.sroa.037.0.insert.ext.i.i.i
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 %.sroa.037.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 4294967297)
          to label %.preheader.i.i.i unwind label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !1588, !nonnull !53, !align !244
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !35 ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !160 ; 4 uses
  br i1 %i.ay, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !1589, !nonnull !53, !align !214
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  %i.bc = add nsw i32 %i.bb, %.02256.i.i.i
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd ; 8 uses
  %.not.i.i26.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.bg = select i1 %.not.i.i26.i.i.i, ptr %i.p, ptr %.pre.i.i.i ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ax to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %i.ax, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.as, i64 %i.bh  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bd, 2
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %bound0 = icmp ult ptr %i.as, %i.bl
  %bound0.a = icmp ult ptr %i.bf, %i.bi
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.bg, i64 %i.bh
  %bound099 = icmp ult ptr %i.as, %5
  %bound1100 = icmp ult ptr %i.bg, %i.bi
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check102 = icmp ult i32 %i.ax, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %i.bn = load float, ptr %i.bf, align 4, !tbaa !79, !alias.scope !1590
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bn, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %wide.load = load <8 x float>, ptr %i.bo, align 4, !tbaa !79, !alias.scope !1591
  %wide.load103 = load <8 x float>, ptr %i.bp, align 4, !tbaa !79, !alias.scope !1591
  %wide.load104 = load <8 x float>, ptr %i.bq, align 4, !tbaa !79, !alias.scope !1591
  %wide.load105 = load <8 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1591
  %i.bs = fmul <8 x float> %broadcast.splat, %wide.load
  %i.bt = fmul <8 x float> %broadcast.splat, %wide.load103
  %i.bu = fmul <8 x float> %broadcast.splat, %wide.load104
  %i.bv = fmul <8 x float> %broadcast.splat, %wide.load105
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96 ; 2 uses
  %wide.load106 = load <8 x float>, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load107 = load <8 x float>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load108 = load <8 x float>, ptr %i.by, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load109 = load <8 x float>, ptr %i.bz, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %i.ca = fadd <8 x float> %i.bs, %wide.load106
  %i.cb = fadd <8 x float> %i.bt, %wide.load107
  %i.cc = fadd <8 x float> %i.bu, %wide.load108
  %i.cd = fadd <8 x float> %i.bv, %wide.load109
  store <8 x float> %i.ca, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.cb, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.cc, ptr %i.by, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.cd, ptr %i.bz, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %i.cf = load float, ptr %i.bf, align 4, !tbaa !79, !alias.scope !1590
  %broadcast.splatinsert113 = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat114 = shufflevector <4 x float> %broadcast.splatinsert113, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index111
  %wide.load112 = load <4 x float>, ptr %i.cg, align 4, !tbaa !79, !alias.scope !1591
  %i.ch = fmul <4 x float> %broadcast.splat114, %wide.load112
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index111 ; 2 uses
  %wide.load115 = load <4 x float>, ptr %i.ci, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %i.cj = fadd <4 x float> %i.ch, %wide.load115
  store <4 x float> %i.cj, ptr %i.ci, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1579

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count.i.i.i
  br i1 %cmp.n117, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cl = load float, ptr %i.bf, align 4, !tbaa !79
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i.prol
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !79
  %i.co = fmul float %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !79
  %i.cr = fadd float %i.co, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1580

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  store i64 0, ptr %i.q, align 8, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i64, ptr %i.r, align 8, !tbaa !161
  %i.cv = shl i64 %i.cu, 2
  %i.cw = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !120
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.cv, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.dc = add nsw i32 %.02256.i.i.i, 1
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %.not.not.i.i.i = icmp slt i32 %.02256.i.i.i, %i.de
  br i1 %.not.not.i.i.i, label %bb.d, label %._crit_edge58.i.i.i, !llvm.loop !1581

bb.g:                                             ; preds = %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dg = load float, ptr %i.bf, align 4, !tbaa !79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i
  %i.di = load float, ptr %i.dh, align 4, !tbaa !79
  %i.dj = fmul float %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !79
  %i.dm = fadd float %i.dj, %i.dl
  store float %i.dm, ptr %i.dk, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dn = load float, ptr %i.bf, align 4, !tbaa !79
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i
  %i.dp = load float, ptr %i.do, align 4, !tbaa !79
  %i.dq = fmul float %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !79
  %i.dt = fadd float %i.dq, %i.ds
  store float %i.dt, ptr %i.dr, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.du = load float, ptr %i.bf, align 4, !tbaa !79
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.1
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !79
  %i.dx = fmul float %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.1 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !79
  %i.ea = fadd float %i.dx, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.eb = load float, ptr %i.bf, align 4, !tbaa !79
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.2
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !79
  %i.ee = fmul float %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.2 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !79
  %i.eh = fadd float %i.ee, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1582

._crit_edge58.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.ei = phi ptr [ %i.am, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %i.ar, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %i.ej = load ptr, ptr %i.s, align 8, !tbaa !1594, !nonnull !53, !align !214 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %indvars.iv67.i.i.i, %.sroa.238.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !75 ; 2 uses
  %i.em = trunc i64 %i.el to i32
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E9_M_invokeERKSt9_Any_dataOlSB_":bb.a
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %._crit_edge61.i.i.i, %bb.a, %.preheader39.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt5Image14GaussianFilterERKNS_16ImageChannelDescEifE3$_0", ptr %0, align 8, !tbaa !216
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %.val, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !1595
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #34
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E9_M_invokeERKSt9_Any_dataOlSB_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 8 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %sext.i.i.i = shl i64 %.val3, 32
  %i.c = ashr exact i64 %sext.i.i.i, 32           ; 2 uses
  %i.d = icmp sgt i64 %.val4, %i.c
  br i1 %i.d, label %.preheader39.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.lr.ph.i.i.i:                         ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 7 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1609
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load i32, ptr %i.f, align 4, !tbaa !74   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader39.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.i.i.i:                               ; preds = %.preheader39.lr.ph.i.i.i, %._crit_edge61.i.i.i
  %i.w = phi i32 [ %i.z, %._crit_edge61.i.i.i ], [ %i.u, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %._crit_edge61.i.i.i ], [ %i.c, %.preheader39.lr.ph.i.i.i ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph60.i.i.i, label %._crit_edge61.i.i.i

.lr.ph60.i.i.i:                                   ; preds = %.preheader39.i.i.i
  %i.y = trunc nsw i64 %indvars.iv70.i.i.i to i32
  %.sroa.2.0.insert.ext.i.i.i = shl i64 %indvars.iv70.i.i.i, 32
  br label %bb.b

._crit_edge61.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.preheader39.i.i.i
  %i.z = phi i32 [ %i.w, %.preheader39.i.i.i ], [ %i.ez, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ]
  %indvars.iv.next71.i.i.i = add nsw i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next71.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %.preheader39.i.i.i, !llvm.loop !1596

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.lr.ph60.i.i.i
  %indvars.iv67.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i ], [ %indvars.iv.next68.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !1610, !nonnull !53, !align !214
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !101 ; 9 uses
  %i.ad = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 7 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %3, align 8, !tbaa !139
  store ptr null, ptr %i.h, align 8, !tbaa !160
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ac, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = shl i64 %i.ac, 2                        ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.af, i64 noundef 4), !inline_history !1597
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.ak, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.h, align 8, !tbaa !160
  br label %.lr.ph.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %.pre74.i.i.i = shl nuw nsw i64 %i.ac, 2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre74.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.af, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.al = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.af, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.am = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ] ; 3 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = select i1 %.not.i9.i.i.i.i.i, ptr %i.k, ptr %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %.pre-phi.i.i.i, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %i.ao = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %.not55.i.i.i = icmp slt i32 %i.ar, 0
  br i1 %.not55.i.i.i, label %._crit_edge58.i.i.i, label %.lr.ph57.i.i.i

.lr.ph57.i.i.i:                                   ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.as = sub nsw i32 0, %i.ar
  %i.at = load ptr, ptr %i.h, align 8             ; 4 uses
  %.not.i.i27.i.i.i = icmp eq ptr %i.at, null
  %i.au = select i1 %.not.i.i27.i.i.i, ptr %i.k, ptr %i.at ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph57.i.i.i
  %.02256.i.i.i = phi i32 [ %i.as, %.lr.ph57.i.i.i ], [ %i.dd, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !1612, !nonnull !53, !align !214
  %i.aw = add nsw i32 %.02256.i.i.i, %i.y
  %.sroa.238.0.insert.ext.i.i.i = zext i32 %i.aw to i64
  %.sroa.238.0.insert.shift.i.i.i = shl nuw i64 %.sroa.238.0.insert.ext.i.i.i, 32
  %.sroa.037.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.238.0.insert.shift.i.i.i, %indvars.iv67.i.i.i
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.av, i64 %.sroa.037.0.insert.insert.i.i.i, i64 4294967297)
          to label %.preheader.i.i.i unwind label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !1613, !nonnull !53, !align !244
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !160 ; 4 uses
  br i1 %i.az, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !1614, !nonnull !53, !align !214
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = add nsw i32 %i.bc, %.02256.i.i.i
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.be ; 8 uses
  %.not.i.i26.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.bh = select i1 %.not.i.i26.i.i.i, ptr %i.q, ptr %.pre.i.i.i ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ay to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %i.ay, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.au, i64 %i.bi  ; 2 uses
  %i.bk = shl nuw nsw i64 %i.be, 2
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %bound0 = icmp ult ptr %i.au, %i.bm
  %bound0.a = icmp ult ptr %i.bg, %i.bj
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.bh, i64 %i.bi
  %bound099 = icmp ult ptr %i.au, %5
  %bound1100 = icmp ult ptr %i.bh, %i.bj
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check102 = icmp ult i32 %i.ay, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %i.bo = load float, ptr %i.bg, align 4, !tbaa !79, !alias.scope !1615
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bo, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %wide.load = load <8 x float>, ptr %i.bp, align 4, !tbaa !79, !alias.scope !1616
  %wide.load103 = load <8 x float>, ptr %i.bq, align 4, !tbaa !79, !alias.scope !1616
  %wide.load104 = load <8 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1616
  %wide.load105 = load <8 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !1616
  %i.bt = fmul <8 x float> %broadcast.splat, %wide.load
  %i.bu = fmul <8 x float> %broadcast.splat, %wide.load103
  %i.bv = fmul <8 x float> %broadcast.splat, %wide.load104
  %i.bw = fmul <8 x float> %broadcast.splat, %wide.load105
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 2 uses
  %wide.load106 = load <8 x float>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load107 = load <8 x float>, ptr %i.by, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load108 = load <8 x float>, ptr %i.bz, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load109 = load <8 x float>, ptr %i.ca, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %i.cb = fadd <8 x float> %i.bt, %wide.load106
  %i.cc = fadd <8 x float> %i.bu, %wide.load107
  %i.cd = fadd <8 x float> %i.bv, %wide.load108
  %i.ce = fadd <8 x float> %i.bw, %wide.load109
  store <8 x float> %i.cb, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.cc, ptr %i.by, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.cd, ptr %i.bz, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.ce, ptr %i.ca, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !1602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %i.cg = load float, ptr %i.bg, align 4, !tbaa !79, !alias.scope !1615
  %broadcast.splatinsert113 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat114 = shufflevector <4 x float> %broadcast.splatinsert113, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index111
  %wide.load112 = load <4 x float>, ptr %i.ch, align 4, !tbaa !79, !alias.scope !1616
  %i.ci = fmul <4 x float> %broadcast.splat114, %wide.load112
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index111 ; 2 uses
  %wide.load115 = load <4 x float>, ptr %i.cj, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %i.ck = fadd <4 x float> %i.ci, %wide.load115
  store <4 x float> %i.ck, ptr %i.cj, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1603

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count.i.i.i
  br i1 %cmp.n117, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cm = load float, ptr %i.bg, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i.prol
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = fmul float %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !79
  %i.cs = fadd float %i.cp, %i.cr
  store float %i.cs, ptr %i.cq, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1604

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ct = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  store i64 0, ptr %i.r, align 8, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i64, ptr %i.s, align 8, !tbaa !161
  %i.cw = shl i64 %i.cv, 2
  %i.cx = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !120
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.cw, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.dd = add nsw i32 %.02256.i.i.i, 1
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35
  %.not.not.i.i.i = icmp slt i32 %.02256.i.i.i, %i.df
  br i1 %.not.not.i.i.i, label %bb.d, label %._crit_edge58.i.i.i, !llvm.loop !1605

bb.g:                                             ; preds = %bb.d
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dh = load float, ptr %i.bg, align 4, !tbaa !79
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !79
  %i.dk = fmul float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !79
  %i.dn = fadd float %i.dk, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.do = load float, ptr %i.bg, align 4, !tbaa !79
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !79
  %i.dr = fmul float %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !79
  %i.du = fadd float %i.dr, %i.dt
  store float %i.du, ptr %i.ds, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dv = load float, ptr %i.bg, align 4, !tbaa !79
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i.1
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !79
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.1 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !79
  %i.eb = fadd float %i.dy, %i.ea
  store float %i.eb, ptr %i.dz, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ec = load float, ptr %i.bg, align 4, !tbaa !79
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i.2
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !79
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.2 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !79
  %i.ei = fadd float %i.ef, %i.eh
  store float %i.ei, ptr %i.eg, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1606

._crit_edge58.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.ej = phi ptr [ %i.ao, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %i.at, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !1619, !nonnull !53, !align !214 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv67.i.i.i, %.sroa.2.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !75 ; 2 uses
  %i.en = trunc i64 %i.em to i32
end_hunk_4
