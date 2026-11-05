Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/slice_layer?download=true
inline.NumInlined: 2038
inline.NumDeleted: 693
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv3dnn14SliceLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  br i1 %.not51, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv3dnn14SliceLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 347) #20
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ar:                                            ; preds = %bb.ao
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ar
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !29
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.aq
  %.pn52 = phi { ptr, i32 } [ %i.gu, %bb.aq ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.gv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %.body

bb.as:                                            ; preds = %bb.am
  %i.hb = trunc nuw nsw i64 %i.gs to i32          ; 2 uses
  %i.hc = icmp samesign ugt i32 %narrow.i69, %i.hb
  br i1 %i.hc, label %.lr.ph125, label %.preheader

.preheader.loopexit:                              ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit
  %.pre146 = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre146, i64 %indvars.iv143 ; 2 uses
  %.phi.trans.insert149 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !tbaa !45 ; 2 uses
  %.pre151 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 2 uses
  %.pre155 = ptrtoint ptr %.pre150 to i64
  %.pre156 = ptrtoint ptr %.pre151 to i64
  %.pre158 = sub i64 %.pre155, %.pre156
  %.pre160 = ashr exact i64 %.pre158, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.as
  %.pre-phi161 = phi i64 [ %.pre160, %.preheader.loopexit ], [ %i.gs, %bb.as ]
  %i.hd = phi ptr [ %.pre151, %.preheader.loopexit ], [ %i.go, %bb.as ] ; 2 uses
  %i.he = phi ptr [ %.pre150, %.preheader.loopexit ], [ %i.gn, %bb.as ]
  %i.hf = phi ptr [ %.pre146, %.preheader.loopexit ], [ %i.gk, %bb.as ]
  %.not134 = icmp eq ptr %i.he, %i.hd
  br i1 %.not134, label %._crit_edge, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader
  %umax141 = call i64 @llvm.umax.i64(i64 %.pre-phi161, i64 1)
  br label %.lr.ph127

.lr.ph125:                                        ; preds = %bb.as, %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit
  %.027124 = phi i32 [ %i.iv, %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit ], [ %i.hb, %bb.as ]
  %i.hg = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %indvars.iv143 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !45 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !49
  %.not.i.i76 = icmp eq ptr %i.hj, %i.hl
  br i1 %.not.i.i76, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph125
  store i64 9223372034707292160, ptr %i.hj, align 4, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !45
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit

bb.au:                                            ; preds = %.lr.ph125
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !32 ; 7 uses
  %i.ho = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64               ; 4 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775800
  br i1 %i.hr, label %bb.av, label %_ZNKSt6vectorIN2cv5RangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN2cv5RangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.hs = ashr exact i64 %i.hq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 1152921504606846975)
  %i.hw = select i1 %i.hu, i64 1152921504606846975, i64 %i.hv ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #22
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIN2cv5RangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hq
  store i64 9223372034707292160, ptr %i.hz, align 4, !tbaa !20
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.hj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i.i78.preheader:                   ; preds = %.noexc82
  %i.ia = ptrtoaddr ptr %i.hy to i64
  %i.ib = add i64 %i.ho, -8
  %i.ic = sub i64 %i.ib, %i.hp                    ; 2 uses
  %i.id = lshr i64 %i.ic, 3
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check230 = icmp ult i64 %i.ic, 24
  %i.if = sub i64 %i.hp, %i.ia
  %diff.check = icmp ugt i64 %i.if, -32
  %or.cond = or i1 %min.iters.check230, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i78.preheader243, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i.i.i.i.i.i78.preheader
  %n.vec232 = and i64 %i.ie, 4611686018427387900  ; 3 uses
  %i.ig = shl i64 %n.vec232, 3                    ; 2 uses
  %i.ih = getelementptr i8, ptr %i.hy, i64 %i.ig  ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hn, i64 %i.ig
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body233 ] ; 2 uses
  %i.ij = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.hy, i64 %i.ij ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.hn, i64 %i.ij ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ik = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep236, align 4, !tbaa !20, !alias.scope !223
  %wide.load237 = load <2 x i64>, ptr %i.ik, align 4, !tbaa !20, !alias.scope !223
  %i.il = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load, ptr %next.gep235, align 4, !tbaa !20, !alias.scope !222
  store <2 x i64> %wide.load237, ptr %i.il, align 4, !tbaa !20, !alias.scope !222
  %index.next238 = add nuw i64 %index234, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.im, label %middle.block239, label %vector.body233, !llvm.loop !217

middle.block239:                                  ; preds = %vector.body233
  %cmp.n240 = icmp eq i64 %i.ie, %n.vec232
  br i1 %cmp.n240, label %_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78.preheader243

.lr.ph.i.i.i.i.i.i78.preheader243:                ; preds = %.lr.ph.i.i.i.i.i.i78.preheader, %middle.block239
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i78.preheader ], [ %i.ih, %middle.block239 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i78.preheader ], [ %i.ii, %middle.block239 ]
  br label %.lr.ph.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i78:                             ; preds = %.lr.ph.i.i.i.i.i.i78.preheader243, %.lr.ph.i.i.i.i.i.i78
  %.012.i.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i78 ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i78.preheader243 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i78.preheader243 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.in = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !20, !alias.scope !223
  store i64 %i.in, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !20, !alias.scope !222
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i79 = icmp eq ptr %i.io, %i.hj
  br i1 %.not.i.i.i.i.i.i79, label %_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78, !llvm.loop !218

_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i78, %middle.block239, %.noexc82
  %.0.lcssa.i.i.i.i.i.i80 = phi ptr [ %i.hy, %.noexc82 ], [ %i.ih, %middle.block239 ], [ %i.ip, %.lr.ph.i.i.i.i.i.i78 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ir = load ptr, ptr %i.hk, align 8, !tbaa !49
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.it) #21
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv5RangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN2cv5RangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.hy, ptr %i.hh, align 8, !tbaa !32
  store ptr %i.iq, ptr %i.hi, align 8, !tbaa !45
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.iu, ptr %i.hk, align 8, !tbaa !49
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at
  %i.iv = add nuw nsw i32 %.027124, 1             ; 2 uses
  %i.iw = load i32, ptr %11, align 4, !tbaa !23
  %19 = icmp sgt i32 %i.iw, %i.iv
  br i1 %19, label %.lr.ph125, label %.preheader.loopexit, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.bc, %.preheader
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.ix = load ptr, ptr %i.gc, align 8, !tbaa !106 ; 2 uses
  %i.iy = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = sdiv exact i64 %i.jb, 208
  %i.jd = icmp ugt i64 %i.jc, %indvars.iv.next144
  br i1 %i.jd, label %bb.am, label %._crit_edge131, !llvm.loop !220

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.bc
  %indvars.iv138 = phi i64 [ 0, %.lr.ph127.preheader ], [ %indvars.iv.next139, %bb.bc ] ; 4 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv138 ; 3 uses
  %i.jf = load i32, ptr %11, align 4, !tbaa !23
  %narrow.i83 = call i32 @llvm.smax.i32(i32 %i.jf, i32 1)
  %i.jg = zext nneg i32 %narrow.i83 to i64
  %i.jh = icmp samesign ult i64 %indvars.iv138, %i.jg
  br i1 %i.jh, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph127
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.3, i32 noundef 97) #20
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.noexc88
  unreachable

bb.az:                                            ; preds = %.noexc88
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.az
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !29
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.ba:                                            ; preds = %.lr.ph127
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv138
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !20 ; 7 uses
  %i.jq = load i32, ptr %i.je, align 4            ; 2 uses
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jr = load i32, ptr %.sroa_idx.i, align 4
  %.not.i = icmp eq i32 %i.jq, %i.jp
  %.pre.i = sub nsw i32 0, %i.jp                  ; 2 uses
  br i1 %.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.js = add nsw i32 %i.jp, -1
  %.sroa.speculated8.i = call i32 @llvm.smax.i32(i32 %i.jq, i32 %.pre.i)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.js, i32 %.sroa.speculated8.i) ; 2 uses
  %i.jt = icmp slt i32 %.sroa.speculated.i, 0
  %i.ju = select i1 %i.jt, i32 %i.jp, i32 0
  %spec.select.i92 = add nsw i32 %i.ju, %.sroa.speculated.i
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.0.0.i = phi i32 [ %spec.select.i92, %bb.bb ], [ %i.jp, %bb.ba ]
  %.sroa.speculated31.i = call i32 @llvm.smax.i32(i32 %i.jr, i32 %.pre.i)
  %.sroa.speculated19.i = call i32 @llvm.smin.i32(i32 %i.jp, i32 %.sroa.speculated31.i) ; 2 uses
  %i.jv = icmp slt i32 %.sroa.speculated19.i, 0
  %i.jw = select i1 %i.jv, i32 %i.jp, i32 0
  %spec.select35.i = add nsw i32 %i.jw, %.sroa.speculated19.i
  %.sroa.8.0.insert.ext.i = zext i32 %spec.select35.i to i64
  %.sroa.8.0.insert.shift.i = shl nuw i64 %.sroa.8.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.je, align 4, !tbaa !20
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %umax141
  br i1 %exitcond142.not, label %._crit_edge, label %.lr.ph127, !llvm.loop !221

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv5RangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av, %bb.ax, %bb.t, %bb.j, %bb.l
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %._crit_edge131
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !18 ; 3 uses
  %i.jz = load ptr, ptr %i.gg, align 8, !tbaa !19 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 2                 ; 4 uses
  %i.ke = load ptr, ptr %7, align 8, !tbaa !105
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !114
  %i.kh = sext i32 %i.kg to i64                   ; 5 uses
  %.not = icmp eq i64 %i.kd, %i.kh
  br i1 %.not, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 1, ptr %i.a, align 4, !tbaa !20
  %i.ki = icmp ult i64 %i.kd, %i.kh
  br i1 %i.ki, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kj = sub nuw nsw i64 %i.kh, %i.kd
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr %i.jy, i64 noundef %i.kj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge unwind label %bb.bi

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge: ; preds = %bb.bf
  %.pre147.pre = load ptr, ptr %8, align 8, !tbaa !105
  %.pre148.pre = load ptr, ptr %i.gc, align 8, !tbaa !106
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.bg:                                            ; preds = %bb.be
  %i.kk = icmp ugt i64 %i.kd, %i.kh
  br i1 %i.kk, label %bb.bh, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kh ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.jy, %i.kl
  br i1 %.not.i.i93, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bh
  store ptr %i.kl, ptr %i.jx, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.bh, %bb.bg
  %.pre148 = phi ptr [ %.pre148.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge ], [ %.pre148154, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre148154, %bb.bh ], [ %.pre148154, %bb.bg ]
  %.pre147 = phi ptr [ %.pre147.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge ], [ %i.ge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ge, %bb.bh ], [ %i.ge, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.bd, %._crit_edge131
  %i.kn = phi ptr [ %.pre148, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %.pre148154, %bb.bd ], [ %.pre148154, %._crit_edge131 ] ; 2 uses
  %i.ko = phi ptr [ %.pre147, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.ge, %bb.bd ], [ %i.ge, %._crit_edge131 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.not4.i.i.i95 = icmp eq ptr %i.ko, %i.kn
  br i1 %.not4.i.i.i95, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %bb.bj, %.lr.ph.i.i.i96
  %.05.i.i.i97 = phi ptr [ %i.kp, %.lr.ph.i.i.i96 ], [ %i.ko, %bb.bj ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i97) #19
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i97, i64 208 ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.kp, %i.kn
  br i1 %.not.i.i.i98, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i96, !llvm.loop !3

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i96
  %.pr.i99 = load ptr, ptr %8, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bj
  %i.kq = phi ptr [ %.pr.i99, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ko, %bb.bj ] ; 3 uses
  %.not.i.i1.i100 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i1.i100, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !107
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kv) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.kw = load ptr, ptr %7, align 8, !tbaa !105   ; 3 uses
  %i.kx = load ptr, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i101 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not4.i.i.i101, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i107, label %.lr.ph.i.i.i102

.lr.ph.i.i.i102:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i102
  %.05.i.i.i103 = phi ptr [ %i.ky, %.lr.ph.i.i.i102 ], [ %i.kw, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i103) #19
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i103, i64 208 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.ky, %i.kx
  br i1 %.not.i.i.i104, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i105, label %.lr.ph.i.i.i102, !llvm.loop !3

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i105: ; preds = %.lr.ph.i.i.i102
  %.pr.i106 = load ptr, ptr %7, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i107

end_hunk_0
