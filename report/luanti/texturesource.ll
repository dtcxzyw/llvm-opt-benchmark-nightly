Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/texturesource?download=true
inline.NumInlined: 2115
inline.NumDeleted: 995
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13TextureSource10getPaletteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !179
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %.noexc105 unwind label %bb.al

.noexc105:                                        ; preds = %bb.ax
  %.pre.i104 = load ptr, ptr %i.en, align 8, !tbaa !172
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc105, %bb.aw
  %i.ew = phi ptr [ %.pre.i104, %.noexc105 ], [ %i.eo, %bb.aw ]
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit86 unwind label %bb.al, !inline_history !6 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit86:              ; preds = %bb.av, %bb.ay, %bb.am
  %.rhs.trunc = trunc nuw i32 %.036.fr to i16
  %i.ey = udiv i16 256, %.rhs.trunc
  %.zext = zext nneg i16 %i.ey to i32
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader

_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader: ; preds = %.noexc147, %bb.ae, %_ZN11StreamProxylsEPFRSoS0_E.exit86
  %.zext216 = phi i32 [ %.zext, %_ZN11StreamProxylsEPFRSoS0_E.exit86 ], [ 1, %bb.ae ], [ 1, %.noexc147 ]
  %.036.fr215 = phi i32 [ %.036.fr, %_ZN11StreamProxylsEPFRSoS0_E.exit86 ], [ 256, %bb.ae ], [ 256, %.noexc147 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us

_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us:     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader, %._crit_edge.us
  %i.fb = phi ptr [ %i.gs, %._crit_edge.us ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader ]
  %i.fc = phi ptr [ %i.gt, %._crit_edge.us ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader ]
  %i.fd = phi ptr [ %i.gu, %._crit_edge.us ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader ]
  %.035170.us = phi i32 [ %i.gx, %._crit_edge.us ], [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us.preheader ] ; 3 uses
  %i.fe = urem i32 %.035170.us, %i.bs
  %i.ff = udiv i32 %.035170.us, %i.bs
  %i.fg = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(41) %i.y, i32 noundef %i.fe, i32 noundef %i.ff)
          to label %.preheader.us unwind label %.split.us ; 2 uses

.preheader.us:                                    ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us
  %i.fk = phi ptr [ %i.gs, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us ], [ %i.fb, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us ] ; 8 uses
  %i.fl = phi ptr [ %i.gt, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us ], [ %i.fc, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us ] ; 5 uses
  %i.fm = phi ptr [ %i.gu, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us ], [ %i.fd, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us ] ; 3 uses
  %.0169.us = phi i32 [ %i.gv, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us ], [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us ]
  %.not.i109.us = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.i109.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader.us
  store i32 %i.fj, ptr %i.fm, align 4, !tbaa !120
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  store ptr %i.fn, ptr %i.ez, align 8, !tbaa !228
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us

bb.ba:                                            ; preds = %.preheader.us
  %i.fo = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fp = ptrtoint ptr %i.fk to i64               ; 3 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 4 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775804
  br i1 %i.fr, label %.split172.us, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ba
  %i.fs = ashr exact i64 %i.fq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.us, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 2305843009213693951)
  %i.fw = select i1 %i.fu, i64 2305843009213693951, i64 %i.fv ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #26
          to label %.noexc111.us unwind label %.loopexit163.split.us ; 9 uses

.noexc111.us:                                     ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq
  store i32 %i.fj, ptr %i.fz, align 4, !tbaa !120
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.fk, %i.fl
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.us.preheader:                    ; preds = %.noexc111.us
  %i.ga = ptrtoaddr ptr %i.fy to i64
  %i.gb = add i64 %i.fo, -4
  %i.gc = sub i64 %i.gb, %i.fp                    ; 2 uses
  %i.gd = lshr i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gc, 28
  %i.gf = sub i64 %i.fp, %i.ga
  %diff.check = icmp ugt i64 %i.gf, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.us.preheader248, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.us.preheader
  %n.vec = and i64 %i.ge, 9223372036854775800     ; 3 uses
  %i.gg = shl i64 %n.vec, 2                       ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fy, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fk, i64 %i.gg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fy, i64 %i.gj ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.fk, i64 %i.gj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.gk = getelementptr i8, ptr %next.gep226, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep226, align 4, !tbaa !120, !alias.scope !340, !noalias !339
  %wide.load227 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !120, !alias.scope !340, !noalias !339
  %i.gl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !120, !alias.scope !339, !noalias !340
  store <4 x i32> %wide.load227, ptr %i.gl, align 4, !tbaa !120, !alias.scope !339, !noalias !340
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ge, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us.preheader248

.lr.ph.i.i.i.i.i.us.preheader248:                 ; preds = %.lr.ph.i.i.i.i.i.us.preheader, %middle.block
  %.012.i.i.i.i.i.us.ph = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.us.preheader ], [ %i.gh, %middle.block ]
  %.0911.i.i.i.i.i.us.ph = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.us.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.lr.ph.i.i.i.i.i.us.preheader248, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.us ], [ %.012.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.us.preheader248 ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.us ], [ %.0911.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.us.preheader248 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.gn = load i32, ptr %.0911.i.i.i.i.i.us, align 4, !tbaa !120, !alias.scope !340, !noalias !339
  store i32 %i.gn, ptr %.012.i.i.i.i.i.us, align 4, !tbaa !120, !alias.scope !339, !noalias !340
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 4 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.go, %i.fl
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !330

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %middle.block, %.noexc111.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.fy, %.noexc111.us ], [ %i.gh, %middle.block ], [ %i.gp, %.lr.ph.i.i.i.i.i.us ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 4 ; 2 uses
  %.not.i23.i.i.us = icmp eq ptr %i.fk, null
  br i1 %.not.i23.i.i.us, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fq) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %bb.bb, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  store ptr %i.fy, ptr %3, align 8, !tbaa !231
  store ptr %i.gq, ptr %i.ez, align 8, !tbaa !228
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fw ; 2 uses
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !232
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.az
  %i.gs = phi ptr [ %i.fy, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.fk, %bb.az ] ; 4 uses
  %i.gt = phi ptr [ %i.gr, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.fl, %bb.az ] ; 3 uses
  %i.gu = phi ptr [ %i.gq, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.fn, %bb.az ] ; 4 uses
  %i.gv = add nuw nsw i32 %.0169.us, 1            ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gv, %.zext216
  br i1 %i.gw, label %.preheader.us, label %._crit_edge.us, !llvm.loop !331

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit.us
  %i.gx = add nuw i32 %.035170.us, 1              ; 2 uses
  %exitcond178.not = icmp eq i32 %i.gx, %.036.fr215
  br i1 %exitcond178.not, label %.split175.us, label %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us, !llvm.loop !332

.split.us:                                        ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit86.split.us
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit163.split.us:                            ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit165.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.split175.us:                                     ; preds = %._crit_edge.us
  %i.gz = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ha = getelementptr i8, ptr %i.gz, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds i8, ptr %i.y, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !154
  %i.hf = add nsw i32 %i.he, -1                   ; 2 uses
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !154
  %.not.i108 = icmp eq i32 %i.hf, 0
  br i1 %.not.i108, label %bb.bc, label %_ZNK17IReferenceCounted4dropEv.exit

bb.bc:                                            ; preds = %.split175.us
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(12) %i.hc) #13, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %.split175.us, %bb.bc
  %i.hj = ptrtoint ptr %i.gu to i64
  %i.hk = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = ashr exact i64 %i.hl, 2                 ; 2 uses
  %i.hn = icmp ult i64 %i.hm, 256
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

.split172.us:                                     ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc110 unwind label %.loopexit.split-lp164

.noexc110:                                        ; preds = %.split172.us
  unreachable

.loopexit.split-lp164:                            ; preds = %.split172.us
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit
  %i.ho = phi ptr [ %i.iv, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.gs, %_ZNK17IReferenceCounted4dropEv.exit ] ; 8 uses
  %i.hp = phi ptr [ %i.ix, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.gt, %_ZNK17IReferenceCounted4dropEv.exit ] ; 6 uses
  %i.hq = phi i64 [ %i.jb, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.hm, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.hr = phi i64 [ %i.ja, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.hl, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.hs = phi i64 [ %i.iz, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.hk, %_ZNK17IReferenceCounted4dropEv.exit ]
  %i.ht = phi ptr [ %i.iw, %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit ], [ %i.gu, %_ZNK17IReferenceCounted4dropEv.exit ] ; 3 uses
  %i.hu = ptrtoaddr ptr %i.ho to i64              ; 2 uses
  %.not.i112 = icmp eq ptr %i.ht, %i.hp
  br i1 %.not.i112, label %4, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph
  store i32 -1, ptr %i.ht, align 4, !tbaa !341
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  store ptr %i.hv, ptr %i.ez, align 8, !tbaa !228
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit

4:                                                ; preds = %.lr.ph
  %5 = icmp eq i64 %i.hr, 9223372036854775804
  br i1 %5, label %6, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i113

6:                                                ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %6
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i113: ; preds = %4
  %.sroa.speculated.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hw = add nuw nsw i64 %.sroa.speculated.i.i.i114, %i.hq ; 2 uses
  %i.hx = shl nuw nsw i64 %i.hw, 2
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #26
          to label %.noexc123 unwind label %.loopexit.a ; 9 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i113
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hr
  store i32 -1, ptr %i.hz, align 4, !tbaa !341
  %.not10.i.i.i.i.i116 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not10.i.i.i.i.i116, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i117.preheader

.lr.ph.i.i.i.i.i117.preheader:                    ; preds = %.noexc123
  %i.ia = ptrtoaddr ptr %i.hy to i64
  %i.ib = ptrtoaddr ptr %i.hp to i64
  %i.ic = add i64 %i.ib, -4
  %i.id = sub i64 %i.ic, %i.hu                    ; 2 uses
  %i.ie = lshr i64 %i.id, 2
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %i.id, 28
  %i.ig = sub i64 %i.hu, %i.ia
  %diff.check230 = icmp ugt i64 %i.ig, -32
  %or.cond246 = or i1 %min.iters.check232, %diff.check230
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i117.preheader247, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph.i.i.i.i.i117.preheader
  %n.vec234 = and i64 %i.if, 9223372036854775800  ; 3 uses
  %i.ih = shl i64 %n.vec234, 2                    ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hy, i64 %i.ih  ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ho, i64 %i.ih
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.ik = shl i64 %index236, 2                    ; 2 uses
  %next.gep237.a = getelementptr i8, ptr %i.hy, i64 %i.ik ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.ho, i64 %i.ik ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.il = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239.a = load <4 x i32>, ptr %next.gep238, align 4, !tbaa !120, !alias.scope !343, !noalias !342
  %wide.load240 = load <4 x i32>, ptr %i.il, align 4, !tbaa !120, !alias.scope !343, !noalias !342
  %i.im = getelementptr i8, ptr %next.gep237.a, i64 16
  store <4 x i32> %wide.load239.a, ptr %next.gep237.a, align 4, !tbaa !120, !alias.scope !342, !noalias !343
  store <4 x i32> %wide.load240, ptr %i.im, align 4, !tbaa !120, !alias.scope !342, !noalias !343
  %index.next241 = add nuw i64 %index236, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.in, label %middle.block242, label %vector.body235, !llvm.loop !336

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.if, %n.vec234
  br i1 %cmp.n243, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i117.preheader247

.lr.ph.i.i.i.i.i117.preheader247:                 ; preds = %.lr.ph.i.i.i.i.i117.preheader, %middle.block242
  %.012.i.i.i.i.i118.ph = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.ii, %middle.block242 ]
  %.0911.i.i.i.i.i119.ph = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.ij, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i117

.lr.ph.i.i.i.i.i117:                              ; preds = %.lr.ph.i.i.i.i.i117.preheader247, %.lr.ph.i.i.i.i.i117
  %.012.i.i.i.i.i118 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i117 ], [ %.012.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i117.preheader247 ] ; 2 uses
  %.0911.i.i.i.i.i119 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i117 ], [ %.0911.i.i.i.i.i119.ph, %.lr.ph.i.i.i.i.i117.preheader247 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.io = load i32, ptr %.0911.i.i.i.i.i119, align 4, !tbaa !120, !alias.scope !343, !noalias !342
  store i32 %i.io, ptr %.012.i.i.i.i.i118, align 4, !tbaa !120, !alias.scope !342, !noalias !343
  %i.ip = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i119, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i118, i64 4 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq ptr %i.ip, %i.hp
  br i1 %.not.i.i.i.i.i120, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i117, !llvm.loop !337

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i117, %middle.block242, %.noexc123
  %.0.lcssa.i.i.i.i.i121 = phi ptr [ %i.hy, %.noexc123 ], [ %i.ii, %middle.block242 ], [ %i.iq, %.lr.ph.i.i.i.i.i117 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i121, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.is = ptrtoint ptr %i.hp to i64
  %i.it = sub i64 %i.is, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.it) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.hy, ptr %3, align 8, !tbaa !231
  store ptr %i.ir, ptr %i.ez, align 8, !tbaa !228
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hw ; 2 uses
  store ptr %i.iu, ptr %i.fa, align 8, !tbaa !232
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bd
  %i.iv = phi ptr [ %i.hy, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ho, %bb.bd ] ; 2 uses
  %i.iw = phi ptr [ %i.ir, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hv, %bb.bd ] ; 2 uses
  %i.ix = phi ptr [ %i.iu, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hp, %bb.bd ]
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 2 uses
  %i.jb = ashr exact i64 %i.ja, 2                 ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 256
  br i1 %i.jc, label %.lr.ph, label %._crit_edge, !llvm.loop !338

7:                                                ; preds = %._crit_edge, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.a:                                      ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i113
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %6
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN5video6SColorESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %7

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %._crit_edge
  %i.je = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bf unwind label %7         ; 0 uses

bb.bf:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.jf = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN5video6SColorESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %bb.bi ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.bf
  %i.jg = load ptr, ptr %3, align 8, !tbaa !231   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  %i.jh = load ptr, ptr %i.fa, align 8, !tbaa !232
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jg to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jk) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jl = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jl)
          to label %bb.bm unwind label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #29
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.a, %.loopexit.split-lp, %.loopexit163.split.us, %.loopexit.split-lp164, %.split.us, %7, %bb.bi, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.al ], [ %8, %7 ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp164 ], [ %i.jo, %bb.bi ], [ %i.gy, %.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit165.us, %.loopexit163.split.us ], [ %lpad.loopexit.a, %.loopexit.a ]
  %i.jp = load ptr, ptr %3, align 8, !tbaa !231   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !232
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128 ], [ %i.bq, %bb.t ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.bm:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not162 = icmp eq ptr %i.jf, null
  br i1 %.not162, label %bb.bp, label %.thread

.thread:                                          ; preds = %bb.d, %bb.bm
  %.sroa.0154.0158 = phi ptr [ %i.jf, %bb.bm ], [ %i.r, %bb.d ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0154.0158, i64 40
  br label %bb.bp

.critedge:                                        ; preds = %bb.m, %.noexc137
  %i.jw = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jw)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 unwind label %bb.bn

bb.bn:                                            ; preds = %.critedge
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bp

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jz = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jz)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bp

bb.bp:                                            ; preds = %.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129, %bb.bm, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132, %bb.c
  %.347 = phi ptr [ null, %bb.c ], [ %i.jv, %.thread ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 ], [ null, %bb.bm ]
  ret ptr %.347
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !231    ; 9 uses
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
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !120
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
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
end_hunk_0
