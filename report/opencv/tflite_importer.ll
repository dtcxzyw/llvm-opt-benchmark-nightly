inline.NumInlined: 5833
inline.NumDeleted: 1620
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter11populateNetEv:bb.a
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !9  ; 3 uses
  %.not.i.i.i289 = icmp eq i16 %i.iv, 0
  br i1 %.not.i.i.i289, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge, label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %.pre = zext i32 %i.iq to i64
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.iw = zext i16 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !8
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iz
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge, %bb.bd
  %.pre-phi715 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge ], [ %i.iw, %bb.bd ]
  %.pre-phi = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge ], [ %i.iz, %bb.bd ]
  %.ph = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287._ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290_crit_edge ], [ %i.ja, %bb.bd ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store ptr %i.jb, ptr %27, align 8, !tbaa !13, !alias.scope !131
  %.not.i.i.i291 = icmp ne i16 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i291)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.pre-phi715
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.pre-phi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !11, !noalias !134
  %i.jg = shl i32 %i.jf, 2
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  store ptr %i.ji, ptr %28, align 8, !tbaa !13, !alias.scope !134
  invoke void @_ZN2cv8MatShapeC2IN11flatbuffers14VectorIteratorIiiPKhjEEEET_S7_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28)
          to label %bb.be unwind label %.loopexit600

bb.be:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290
  %i.jj = load ptr, ptr %i.cz, align 8, !tbaa !94
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.fi
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !103
  %i.jm = icmp eq i32 %i.jl, 4
  br i1 %i.jm, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.jn = load i32, ptr %26, align 4, !tbaa !137  ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 4
  br i1 %i.jo, label %bb.bj, label %bb.bh

bb.bg:                                            ; preds = %.noexc.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %.body

.loopexit600:                                     ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290, %bb.bk, %bb.bv
  %lpad.loopexit602 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.loopexit.split-lp601:                            ; preds = %bb.bh, %bb.bu
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

bb.bh:                                            ; preds = %bb.bf
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.jn, i32 0)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060514TFLiteImporter11populateNetEvE15__cv_check__214) #27
          to label %bb.bi unwind label %.loopexit.split-lp601

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bf
  %i.jq = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.jr = load <2 x i32>, ptr %i.ev, align 4, !tbaa !8
  store i32 %i.jq, ptr %i.ev, align 4, !tbaa !8
  store <2 x i32> %i.jr, ptr %i.et, align 4, !tbaa !8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %i.js = load ptr, ptr %20, align 8, !tbaa !138
  %i.jt = getelementptr inbounds nuw [52 x i8], ptr %i.js, i64 %storemerge667
  %i.ju = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.jt, ptr noundef nonnull align 4 dereferenceable(52) %26)
          to label %bb.bl unwind label %.loopexit600 ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.jv = load i8, ptr %0, align 8, !tbaa !71, !range !121, !noundef !114
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i330, label %bb.by

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i330: ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.jx = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.jy = sext i32 %i.jx to i64
  %i.jz = sub nsw i64 0, %i.jy
  %i.ka = getelementptr inbounds i8, ptr %i.fv, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 10
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i331 = icmp ne i16 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i331)
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !8
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 2 uses
  %i.kj = load i32, ptr %i.kh, align 4, !tbaa !128, !noalias !141 ; 3 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  store ptr %i.ew, ptr %29, align 8, !tbaa !68, !alias.scope !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26, !noalias !141
  store i64 %i.kk, ptr %i.g, align 8, !tbaa !69, !noalias !141
  %i.kl = icmp ugt i32 %i.kj, 15
  br i1 %i.kl, label %.noexc.i.i334, label %._crit_edge.i.i.i333

.noexc.i.i334:                                    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i330
  %i.km = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc335 unwind label %bb.bw ; 2 uses

.noexc335:                                        ; preds = %.noexc.i.i334
  store ptr %i.km, ptr %29, align 8, !tbaa !17, !alias.scope !141
  %i.kn = load i64, ptr %i.g, align 8, !tbaa !69, !noalias !141
  store i64 %i.kn, ptr %i.ew, align 8, !tbaa !21, !alias.scope !141
  br label %._crit_edge.i.i.i333

._crit_edge.i.i.i333:                             ; preds = %.noexc335, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i330
  %i.ko = phi ptr [ %i.km, %.noexc335 ], [ %i.ew, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i330 ] ; 2 uses
  switch i32 %i.kj, label %bb.bn [
    i32 1, label %bb.bm
    i32 0, label %bb.bo
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i.i333
  %i.kp = load i8, ptr %i.ki, align 4, !tbaa !21, !noalias !141
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !21
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i.i.i333
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr nonnull align 4 %i.ki, i64 %i.kk, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %._crit_edge.i.i.i333
  %i.kq = load i64, ptr %i.g, align 8, !tbaa !69, !noalias !141 ; 2 uses
  store i64 %i.kq, ptr %i.ex, align 8, !tbaa !70, !alias.scope !141
  %i.kr = load ptr, ptr %29, align 8, !tbaa !17, !alias.scope !141
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kq
  store i8 0, ptr %i.ks, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !141
  %i.kt = invoke i32 @_ZN2cv3dnn14dnn5_v202606053Net4Impl6newArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_7ArgKindEb(ptr noundef nonnull align 8 dereferenceable(1076) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 2, i1 noundef zeroext false)
          to label %bb.bp unwind label %.loopexit605 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ku = load ptr, ptr %i.ey, align 8, !tbaa !144 ; 6 uses
  %i.kv = load ptr, ptr %i.ez, align 8, !tbaa !147
  %.not.i.i337 = icmp eq ptr %i.ku, %i.kv
  br i1 %.not.i.i337, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  store ptr %i.kw, ptr %i.ey, align 8, !tbaa !144
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit

bb.br:                                            ; preds = %bb.bp
  %i.kx = load ptr, ptr %22, align 8, !tbaa !148  ; 7 uses
  %i.ky = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64               ; 3 uses
  %i.la = sub i64 %i.ky, %i.kz                    ; 4 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775804
  br i1 %i.lb, label %bb.bs, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #27
          to label %.noexc339 unwind label %.loopexit.split-lp606

.noexc339:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %i.lc = ashr exact i64 %i.la, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 2305843009213693951)
  %i.lg = select i1 %i.le, i64 2305843009213693951, i64 %i.lf ; 3 uses
  %.not.i.i.i.i338 = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i338)
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #30
          to label %.noexc340 unwind label %.loopexit605 ; 8 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.la
  store i32 %i.kt, ptr %i.lj, align 4, !tbaa !8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kx, %i.ku
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc340
  %i.lk = ptrtoaddr ptr %i.li to i64
  %49 = sub i64 %i.ky, %i.kz
  %50 = add i64 %49, -4                           ; 2 uses
  %i.ll = lshr i64 %50, 2
  %i.lm = add nuw nsw i64 %i.ll, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %50, 28
  %i.ln = sub i64 %i.kz, %i.lk
  %diff.check = icmp ugt i64 %i.ln, -32
  %or.cond920 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond920, label %.lr.ph.i.i.i.i.i.i.preheader932, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lm, 9223372036854775800     ; 3 uses
  %i.lo = shl i64 %n.vec, 2                       ; 2 uses
  %i.lp = getelementptr i8, ptr %i.li, i64 %i.lo  ; 2 uses
  %i.lq = getelementptr i8, ptr %i.kx, i64 %i.lo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.li, i64 %i.lr ; 2 uses
  %next.gep900 = getelementptr i8, ptr %i.kx, i64 %i.lr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.ls = getelementptr i8, ptr %next.gep900, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep900, align 4, !tbaa !8, !alias.scope !152, !noalias !149
  %wide.load901 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !8, !alias.scope !152, !noalias !149
  %i.lt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !8, !alias.scope !149, !noalias !152
  store <4 x i32> %wide.load901, ptr %i.lt, align 4, !tbaa !8, !alias.scope !149, !noalias !152
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader932

.lr.ph.i.i.i.i.i.i.preheader932:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lp, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.kx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader932, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader932 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader932 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.lv = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !8, !alias.scope !152, !noalias !149
  store i32 %i.lv, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !8, !alias.scope !149, !noalias !152
  %i.lw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lw, %i.ku
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !157

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc340
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.li, %.noexc340 ], [ %i.lp, %middle.block ], [ %i.lx, %.lr.ph.i.i.i.i.i.i ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.la) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.li, ptr %22, align 8, !tbaa !148
  store ptr %i.ly, ptr %i.ey, align 8, !tbaa !144
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lg
  store ptr %i.lz, ptr %i.ez, align 8, !tbaa !147
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bq
  %i.ma = phi ptr [ %i.ly, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.kw, %bb.bq ]
  %i.mb = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ew
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit
  %i.md = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #28
  %.pre712 = load ptr, ptr %i.ey, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  %i.mf = phi ptr [ %.pre712, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %i.ma, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !159
  %i.mi = sext i32 %i.mh to i64                   ; 3 uses
  %i.mj = load ptr, ptr %i.fb, align 8, !tbaa !161
  %i.mk = load ptr, ptr %i.fa, align 8, !tbaa !164 ; 2 uses
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 96                ; 2 uses
  %.not.i.i344 = icmp ugt i64 %i.mo, %i.mi
  br i1 %.not.i.i344, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.398, i64 noundef %i.mi, i64 noundef %i.mo) #27
          to label %.noexc345 unwind label %.loopexit.split-lp601

.noexc345:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.mp = getelementptr inbounds nuw [96 x i8], ptr %i.mk, i64 %i.mi ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 88
  store i32 5, ptr %i.mq, align 8, !tbaa !165
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 36
  %i.ms = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.mr, ptr noundef nonnull align 4 dereferenceable(52) %26)
          to label %bb.by unwind label %.loopexit600 ; 0 uses

bb.bw:                                            ; preds = %.noexc.i.i334
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

.loopexit605:                                     ; preds = %bb.bo, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit607 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp606:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp608 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp606, %.loopexit605
  %lpad.phi609 = phi { ptr, i32 } [ %lpad.loopexit607, %.loopexit605 ], [ %lpad.loopexit.split-lp608, %.loopexit.split-lp606 ] ; 2 uses
  %i.mu = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.ew
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %bb.bx
  %i.mw = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.bw
  %.pn231 = phi { ptr, i32 } [ %i.mt, %bb.bw ], [ %lpad.phi609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %lpad.phi609, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %.body301

bb.by:                                            ; preds = %bb.bv, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.my = add nuw nsw i64 %storemerge667, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.my, %i.do
  br i1 %exitcond.not, label %._crit_edge, label %bb.am, !llvm.loop !168

.body301:                                         ; preds = %.loopexit600, %.loopexit.split-lp601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %.pn233 = phi { ptr, i32 } [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ], [ %lpad.loopexit602, %.loopexit600 ], [ %lpad.loopexit.split-lp603, %.loopexit.split-lp601 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %.body

bb.bz:                                            ; preds = %._crit_edge
  %i.mz = load ptr, ptr %i.em, align 8, !tbaa !113, !nonnull !114, !align !115
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net14setInputsNamesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %.preheader unwind label %bb.ca

.preheader:                                       ; preds = %bb.bz
  br i1 %.not.i.i.i.i, label %.loopexit599, label %.lr.ph669

bb.ca:                                            ; preds = %bb.bz
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph669:                                        ; preds = %.preheader, %bb.cb
  %.0144668 = phi i64 [ %i.ng, %bb.cb ], [ 0, %.preheader ] ; 3 uses
  %i.nb = load ptr, ptr %i.em, align 8, !tbaa !113, !nonnull !114, !align !115
  %i.nc = load ptr, ptr %19, align 8, !tbaa !105
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.nc, i64 %.0144668
  %i.ne = load ptr, ptr %20, align 8, !tbaa !138
  %i.nf = getelementptr inbounds nuw [52 x i8], ptr %i.ne, i64 %.0144668
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net13setInputShapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8MatShapeE(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %i.nd, ptr noundef nonnull align 4 dereferenceable(52) %i.nf)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %.lr.ph669
  %i.ng = add nuw nsw i64 %.0144668, 1            ; 2 uses
  %exitcond709.not = icmp eq i64 %i.ng, %i.do
  br i1 %exitcond709.not, label %.loopexit599, label %.lr.ph669, !llvm.loop !169

bb.cc:                                            ; preds = %.lr.ph669
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit599:                                     ; preds = %bb.cb, %.preheader, %._crit_edge
  %i.ni = load i32, ptr %i.cb, align 4, !tbaa !170 ; 3 uses
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = load i8, ptr %0, align 8, !tbaa !71, !range !121, !noundef !114
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.cd, label %bb.cw

bb.cd:                                            ; preds = %.loopexit599
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.nn = shl i32 %i.ni, 2
  %i.no = add i32 %i.nn, -4
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter11populateNetEv:bb.a
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !9  ; 2 uses
  %.not.i.i356 = icmp eq i16 %i.pe, 0
  br i1 %.not.i.i356, label %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread, label %_ZNK13opencv_tflite12OperatorCode23deprecated_builtin_codeEv.exit

_ZNK13opencv_tflite12OperatorCode23deprecated_builtin_codeEv.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i355
  %i.pf = zext i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !21  ; 2 uses
  %i.pi = icmp slt i8 %i.ph, 0
  br i1 %i.pi, label %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread, label %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit

_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit: ; preds = %_ZNK13opencv_tflite12OperatorCode23deprecated_builtin_codeEv.exit
  %i.pj = zext nneg i8 %i.ph to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN13opencv_tflite24EnumNamesBuiltinOperatorEvE5names, i64 %i.pj
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !54
  br label %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread

_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread: ; preds = %bb.cg, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i355, %_ZNK13opencv_tflite12OperatorCode23deprecated_builtin_codeEv.exit, %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit
  %.0.i578 = phi ptr [ @.str.9, %_ZNK13opencv_tflite12OperatorCode23deprecated_builtin_codeEv.exit ], [ %i.pl, %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit ], [ @.str.47, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i355 ], [ @.str.47, %bb.cg ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.pm, ptr %30, align 8, !tbaa !68
  %i.pn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i578) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 %i.pn, ptr %i.f, align 8, !tbaa !69
  %i.po = icmp ugt i64 %i.pn, 15
  br i1 %i.po, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread
  %i.pp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc358 unwind label %bb.ck ; 2 uses

.noexc358:                                        ; preds = %.noexc.i
  store ptr %i.pp, ptr %30, align 8, !tbaa !17
  %i.pq = load i64, ptr %i.f, align 8, !tbaa !69
  store i64 %i.pq, ptr %i.pm, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc358, %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread
  %i.pr = phi ptr [ %i.pp, %.noexc358 ], [ %i.pm, %_ZN13opencv_tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE.exit.thread ] ; 2 uses
  switch i64 %i.pn, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %bb.cj
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i
  %i.ps = load i8, ptr %.0.i578, align 1, !tbaa !21
  store i8 %i.ps, ptr %i.pr, align 1, !tbaa !21
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pr, ptr nonnull align 1 %.0.i578, i64 %i.pn, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i.i, %bb.ch, %bb.ci
  %i.pt = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.pt, ptr %i.pu, align 8, !tbaa !70
  %i.pv = load ptr, ptr %30, align 8, !tbaa !17
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pt
  store i8 0, ptr %i.pw, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.px = getelementptr inbounds nuw i8, ptr %i.oq, i64 4 ; 2 uses
  %i.py = load i32, ptr %i.oq, align 4, !tbaa !11, !noalias !172
  %i.pz = shl i32 %i.py, 2                        ; 2 uses
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qa
  %.not592670 = icmp eq i32 %i.pz, 0
  br i1 %.not592670, label %._crit_edge672, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359.lr.ph

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359.lr.ph: ; preds = %bb.cj
  %i.qc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359

bb.ck:                                            ; preds = %.noexc.i
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359.lr.ph
  %.sroa.0559.0671 = phi ptr [ %i.px, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359.lr.ph ], [ %i.tk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384 ] ; 2 uses
  %i.qh = load i32, ptr %.sroa.0559.0671, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.qi = load ptr, ptr %i.cj, align 8, !tbaa !86
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = shl i32 %i.qh, 2
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.ql ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qo ; 3 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !8
  %i.qr = sext i32 %i.qq to i64
  %i.qs = sub nsw i64 0, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.qp, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 10
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i360 = icmp ne i16 %i.qv, 0
  call void @llvm.assume(i1 %.not.i.i.i360)
  %i.qw = zext i16 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qw ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !8
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 2 uses
  %i.rc = load i32, ptr %i.ra, align 4, !tbaa !128, !noalias !175 ; 3 uses
  %i.rd = zext i32 %i.rc to i64                   ; 2 uses
  store ptr %i.qc, ptr %31, align 8, !tbaa !68, !alias.scope !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !175
  store i64 %i.rd, ptr %i.e, align 8, !tbaa !69, !noalias !175
  %i.re = icmp ugt i32 %i.rc, 15
  br i1 %i.re, label %.noexc.i.i363, label %._crit_edge.i.i.i362

.noexc.i.i363:                                    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359
  %i.rf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc364 unwind label %bb.cu ; 2 uses

.noexc364:                                        ; preds = %.noexc.i.i363
  store ptr %i.rf, ptr %31, align 8, !tbaa !17, !alias.scope !175
  %i.rg = load i64, ptr %i.e, align 8, !tbaa !69, !noalias !175
  store i64 %i.rg, ptr %i.qc, align 8, !tbaa !21, !alias.scope !175
  br label %._crit_edge.i.i.i362

._crit_edge.i.i.i362:                             ; preds = %.noexc364, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359
  %i.rh = phi ptr [ %i.rf, %.noexc364 ], [ %i.qc, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359 ] ; 2 uses
  switch i32 %i.rc, label %bb.cm [
    i32 1, label %bb.cl
    i32 0, label %bb.cn
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i362
  %i.ri = load i8, ptr %i.rb, align 4, !tbaa !21, !noalias !175
  store i8 %i.ri, ptr %i.rh, align 1, !tbaa !21
  br label %bb.cn

bb.cm:                                            ; preds = %._crit_edge.i.i.i362
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr nonnull align 4 %i.rb, i64 %i.rd, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i362
  %i.rj = load i64, ptr %i.e, align 8, !tbaa !69, !noalias !175 ; 2 uses
  store i64 %i.rj, ptr %i.qd, align 8, !tbaa !70, !alias.scope !175
  %i.rk = load ptr, ptr %31, align 8, !tbaa !17, !alias.scope !175
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rj
  store i8 0, ptr %i.rl, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !175
  %i.rm = invoke i32 @_ZN2cv3dnn14dnn5_v202606053Net4Impl6newArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_7ArgKindEb(ptr noundef nonnull align 8 dereferenceable(1076) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 3, i1 noundef zeroext false)
          to label %bb.co unwind label %.loopexit594 ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.rn = load ptr, ptr %i.qe, align 8, !tbaa !144 ; 6 uses
  %i.ro = load ptr, ptr %i.qf, align 8, !tbaa !147
  %.not.i.i366 = icmp eq ptr %i.rn, %i.ro
  br i1 %.not.i.i366, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store ptr %i.rp, ptr %i.qe, align 8, !tbaa !144
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381

bb.cq:                                            ; preds = %bb.co
  %i.rq = load ptr, ptr %23, align 8, !tbaa !148  ; 7 uses
  %i.rr = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rs = ptrtoint ptr %i.rq to i64               ; 3 uses
  %i.rt = sub i64 %i.rr, %i.rs                    ; 4 uses
  %i.ru = icmp eq i64 %i.rt, 9223372036854775804
  br i1 %i.ru, label %bb.cr, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i367

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #27
          to label %.noexc379 unwind label %.loopexit.split-lp595

.noexc379:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i367: ; preds = %bb.cq
  %i.rv = ashr exact i64 %i.rt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i368 = call i64 @llvm.umax.i64(i64 %i.rv, i64 1)
  %i.rw = add nsw i64 %.sroa.speculated.i.i.i.i368, %i.rv ; 2 uses
  %i.rx = icmp ult i64 %i.rw, %i.rv
  %i.ry = call i64 @llvm.umin.i64(i64 %i.rw, i64 2305843009213693951)
  %i.rz = select i1 %i.rx, i64 2305843009213693951, i64 %i.ry ; 3 uses
  %.not.i.i.i.i369 = icmp ne i64 %i.rz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i369)
  %i.sa = shl nuw nsw i64 %i.rz, 2
  %i.sb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sa) #30
          to label %.noexc380 unwind label %.loopexit594 ; 8 uses

.noexc380:                                        ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i367
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rt
  store i32 %i.rm, ptr %i.sc, align 4, !tbaa !8
  %.not10.i.i.i.i.i.i370 = icmp eq ptr %i.rq, %i.rn
  br i1 %.not10.i.i.i.i.i.i370, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375, label %.lr.ph.i.i.i.i.i.i371.preheader

.lr.ph.i.i.i.i.i.i371.preheader:                  ; preds = %.noexc380
  %i.sd = ptrtoaddr ptr %i.sb to i64
  %51 = sub i64 %i.rr, %i.rs
  %52 = add i64 %51, -4                           ; 2 uses
  %i.se = lshr i64 %52, 2
  %i.sf = add nuw nsw i64 %i.se, 1                ; 2 uses
  %min.iters.check906 = icmp ult i64 %52, 28
  %i.sg = sub i64 %i.rs, %i.sd
  %diff.check904 = icmp ugt i64 %i.sg, -32
  %or.cond921 = or i1 %min.iters.check906, %diff.check904
  br i1 %or.cond921, label %.lr.ph.i.i.i.i.i.i371.preheader931, label %vector.ph907

vector.ph907:                                     ; preds = %.lr.ph.i.i.i.i.i.i371.preheader
  %n.vec908 = and i64 %i.sf, 9223372036854775800  ; 3 uses
  %i.sh = shl i64 %n.vec908, 2                    ; 2 uses
  %i.si = getelementptr i8, ptr %i.sb, i64 %i.sh  ; 2 uses
  %i.sj = getelementptr i8, ptr %i.rq, i64 %i.sh
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %vector.ph907
  %index910 = phi i64 [ 0, %vector.ph907 ], [ %index.next915, %vector.body909 ] ; 2 uses
  %i.sk = shl i64 %index910, 2                    ; 2 uses
  %next.gep911 = getelementptr i8, ptr %i.sb, i64 %i.sk ; 2 uses
  %next.gep912 = getelementptr i8, ptr %i.rq, i64 %i.sk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.sl = getelementptr i8, ptr %next.gep912, i64 16
  %wide.load913 = load <4 x i32>, ptr %next.gep912, align 4, !tbaa !8, !alias.scope !181, !noalias !178
  %wide.load914 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !8, !alias.scope !181, !noalias !178
  %i.sm = getelementptr i8, ptr %next.gep911, i64 16
  store <4 x i32> %wide.load913, ptr %next.gep911, align 4, !tbaa !8, !alias.scope !178, !noalias !181
  store <4 x i32> %wide.load914, ptr %i.sm, align 4, !tbaa !8, !alias.scope !178, !noalias !181
  %index.next915 = add nuw i64 %index910, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next915, %n.vec908
  br i1 %i.sn, label %middle.block916, label %vector.body909, !llvm.loop !183

middle.block916:                                  ; preds = %vector.body909
  %cmp.n917 = icmp eq i64 %i.sf, %n.vec908
  br i1 %cmp.n917, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375, label %.lr.ph.i.i.i.i.i.i371.preheader931

.lr.ph.i.i.i.i.i.i371.preheader931:               ; preds = %.lr.ph.i.i.i.i.i.i371.preheader, %middle.block916
  %.012.i.i.i.i.i.i372.ph = phi ptr [ %i.sb, %.lr.ph.i.i.i.i.i.i371.preheader ], [ %i.si, %middle.block916 ]
  %.0911.i.i.i.i.i.i373.ph = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i371.preheader ], [ %i.sj, %middle.block916 ]
  br label %.lr.ph.i.i.i.i.i.i371

.lr.ph.i.i.i.i.i.i371:                            ; preds = %.lr.ph.i.i.i.i.i.i371.preheader931, %.lr.ph.i.i.i.i.i.i371
  %.012.i.i.i.i.i.i372 = phi ptr [ %i.sq, %.lr.ph.i.i.i.i.i.i371 ], [ %.012.i.i.i.i.i.i372.ph, %.lr.ph.i.i.i.i.i.i371.preheader931 ] ; 2 uses
  %.0911.i.i.i.i.i.i373 = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i371 ], [ %.0911.i.i.i.i.i.i373.ph, %.lr.ph.i.i.i.i.i.i371.preheader931 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.so = load i32, ptr %.0911.i.i.i.i.i.i373, align 4, !tbaa !8, !alias.scope !181, !noalias !178
  store i32 %i.so, ptr %.012.i.i.i.i.i.i372, align 4, !tbaa !8, !alias.scope !178, !noalias !181
  %i.sp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i373, i64 4 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i372, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i374 = icmp eq ptr %i.sp, %i.rn
  br i1 %.not.i.i.i.i.i.i374, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375, label %.lr.ph.i.i.i.i.i.i371, !llvm.loop !184

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375: ; preds = %.lr.ph.i.i.i.i.i.i371, %middle.block916, %.noexc380
  %.0.lcssa.i.i.i.i.i.i376 = phi ptr [ %i.sb, %.noexc380 ], [ %i.si, %middle.block916 ], [ %i.sq, %.lr.ph.i.i.i.i.i.i371 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i376, i64 4
  %.not.i23.i.i.i377 = icmp eq ptr %i.rq, null
  br i1 %.not.i23.i.i.i377, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i378, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rt) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i378

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i378: ; preds = %bb.cs, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i375
  store ptr %i.sb, ptr %23, align 8, !tbaa !148
  store ptr %i.sr, ptr %i.qe, align 8, !tbaa !144
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rz
  store ptr %i.ss, ptr %i.qf, align 8, !tbaa !147
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i378, %bb.cp
  %i.st = load i64, ptr %i.pu, align 8, !tbaa !70
  %i.su = icmp eq i64 %i.st, 28
  br i1 %i.su, label %bb.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.ct:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381
  %i.sv = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.sw = load i128, ptr %i.sv, align 1
  %i.sx = xor i128 %i.sw, 146793563361875014108897508777796585044
  %i.sy = getelementptr i8, ptr %i.sv, i64 12
  %i.sz = load i128, ptr %i.sy, align 1
  %i.ta = xor i128 %i.sz, 153460390055445921863165327327204698484
  %i.tb = or i128 %i.sx, %i.ta
  %i.tc = icmp ne i128 %i.tb, 0
  %i.td = zext i1 %i.tc to i32
  %i.te = icmp eq i32 %i.td, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381, %bb.ct
  %i.tf = phi i1 [ false, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit381 ], [ %i.te, %bb.ct ]
  %i.tg = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.qc
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ti = load i64, ptr %i.qc, align 8, !tbaa !21
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0559.0671, i64 4 ; 2 uses
  %.not592 = icmp eq ptr %i.tk, %i.qb
  %or.cond = select i1 %i.tf, i1 true, i1 %.not592
  br i1 %or.cond, label %._crit_edge672, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i359

bb.cu:                                            ; preds = %.noexc.i.i363
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386

.loopexit594:                                     ; preds = %bb.cn, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i367
  %lpad.loopexit596 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp595:                            ; preds = %bb.cr
  %lpad.loopexit.split-lp597 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.split-lp595, %.loopexit594
  %lpad.phi598 = phi { ptr, i32 } [ %lpad.loopexit596, %.loopexit594 ], [ %lpad.loopexit.split-lp597, %.loopexit.split-lp595 ] ; 2 uses
  %i.tm = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.qc
  br i1 %i.tn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.cv
  %i.to = load i64, ptr %i.qc, align 8, !tbaa !21
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386

._crit_edge672:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %bb.cj
  %i.tq = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.pm
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %._crit_edge672
  %i.ts = load i64, ptr %i.pm, align 8, !tbaa !21
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %._crit_edge672, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.cw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386: ; preds = %bb.cv, %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  %.pn181 = phi { ptr, i32 } [ %i.tl, %bb.cu ], [ %lpad.phi598, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385 ], [ %lpad.phi598, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.tu = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.pm
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386
  %i.tw = load i64, ptr %i.pm, align 8, !tbaa !21
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %bb.ck
  %.pn181.pn.pn.pn = phi { ptr, i32 } [ %.pn181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %i.qg, %bb.ck ], [ %.pn181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %.body

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %.loopexit599
  %.not680 = icmp eq i32 %i.ni, 0
  br i1 %.not680, label %._crit_edge677, label %.lr.ph676

.lr.ph676:                                        ; preds = %bb.cw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.tz = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.uc = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.ud = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.ue = getelementptr inbounds nuw i8, ptr %36, i64 72 ; 7 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %36, i64 88 ; 6 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %36, i64 80 ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %36, i64 104 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %36, i64 120 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %36, i64 112
  %i.uk = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 9 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.un = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 9 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 7 uses
  %i.up = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 9 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 6 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.uy = getelementptr inbounds nuw i8, ptr %41, i64 72
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_1
begin_hunk_2_@_ZNSt3mapIiSt4pairIiiESt4lessIiESaIS0_IKiS1_EEEixERS4_:bb.a
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  br label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #28
  resume { ptr, i32 } %i.aa

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #28
  br label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.p, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.ab
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter8addLayerERNS1_11LayerParamsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESF_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.cv::Ptr.146", align 16     ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @_ZN2cv3dnn14dnn5_v2026060512LayerFactory19createLayerInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.146") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.b = load ptr, ptr %4, align 16, !tbaa !675   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.87)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060514TFLiteImporter8addLayerERNS1_11LayerParamsERKN13opencv_tflite8OperatorEbb, ptr noundef nonnull @.str.1, i32 noundef 479) #27
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.j ] ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !21
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.e, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.g ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ah

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113, !nonnull !114, !align !115
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.y, ptr %i.z, align 8, !tbaa !678
  %i.aa = load ptr, ptr %2, align 8, !tbaa !372   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !372 ; 2 uses
  %.not6068 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not6068, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit, %bb.k
  %i.ad = load ptr, ptr %3, align 8, !tbaa !372   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !372 ; 2 uses
  %.not6170 = icmp eq ptr %i.ad, %i.af
  br i1 %.not6170, label %._crit_edge74, label %.lr.ph73

bb.l:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.k, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit
  %.sroa.057.069 = phi ptr [ %i.bt, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ah = load ptr, ptr %4, align 16, !tbaa !675  ; 3 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !113, !nonnull !114, !align !115
  %i.aj = invoke i32 @_ZN2cv3dnn14dnn5_v202606053Net6getArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.057.069)
          to label %bb.m unwind label %.loopexit62 ; 2 uses

bb.m:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !144 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !147
  %.not.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !144
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !148 ; 7 uses
  %i.ar = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #27
          to label %.noexc unwind label %.loopexit.split-lp63

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30
          to label %.noexc29 unwind label %.loopexit62 ; 8 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  store i32 %i.aj, ptr %i.bc, align 4, !tbaa !8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.am
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc29
  %i.bd = ptrtoaddr ptr %i.bb to i64
  %8 = sub i64 %i.ar, %i.as
  %9 = add i64 %8, -4                             ; 2 uses
  %i.be = lshr i64 %9, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
  %i.bg = sub i64 %i.as, %i.bd
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aq, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bk ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.aq, i64 %i.bk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bl = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !8, !alias.scope !687, !noalias !684
  %wide.load103 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !8, !alias.scope !687, !noalias !684
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !8, !alias.scope !684, !noalias !687
  store <4 x i32> %wide.load103, ptr %i.bm, align 4, !tbaa !8, !alias.scope !684, !noalias !687
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader124

.lr.ph.i.i.i.i.i.i.preheader124:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader124 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader124 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bo = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !8, !alias.scope !687, !noalias !684
  store i32 %i.bo, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !8, !alias.scope !684, !noalias !687
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.am
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !690

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc29 ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.bb, ptr %i.ak, align 8, !tbaa !148
  store ptr %i.br, ptr %i.al, align 8, !tbaa !144
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bs, ptr %i.an, align 8, !tbaa !147
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.057.069, i64 32 ; 2 uses
  %.not60 = icmp eq ptr %i.bt, %i.ac
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.loopexit62:                                      ; preds = %.lr.ph, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit64 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp63:                             ; preds = %bb.p
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge74:                                    ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47, %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !319 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !322
  %.not.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge74
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !223 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %4, align 16, !tbaa !691
  store <2 x ptr> %i.ca, ptr %i.bv, align 8, !tbaa !691
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i.i30 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !8
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cf = atomicrmw volatile add ptr %i.cb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !319
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.cg = phi ptr [ %i.bv, %bb.r ], [ %i.bv, %bb.t ], [ %.pre.i, %bb.u ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.ch, ptr %i.bu, align 8, !tbaa !319
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.v:                                             ; preds = %._crit_edge74
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.l

.lr.ph73:                                         ; preds = %._crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47
  %.sroa.051.071 = phi ptr [ %i.dv, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47 ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.cj = load ptr, ptr %4, align 16, !tbaa !675  ; 3 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !113, !nonnull !114, !align !115
  %i.cl = invoke i32 @_ZN2cv3dnn14dnn5_v202606053Net6getArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.051.071)
          to label %bb.w unwind label %.loopexit  ; 2 uses

bb.w:                                             ; preds = %.lr.ph73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !144 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 72 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !147
  %.not.i.i32 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i32, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !144
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47

bb.y:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !148 ; 7 uses
  %i.ct = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775804
  br i1 %i.cw, label %bb.z, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i33

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #27
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i33: ; preds = %bb.y
  %i.cx = ashr exact i64 %i.cv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i34 = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i34, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 2305843009213693951)
  %i.db = select i1 %i.cz, i64 2305843009213693951, i64 %i.da ; 3 uses
  %.not.i.i.i.i35 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i35)
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #30
          to label %.noexc46 unwind label %.loopexit ; 8 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i32 %i.cl, ptr %i.de, align 4, !tbaa !8
  %.not10.i.i.i.i.i.i36 = icmp eq ptr %i.cs, %i.co
  br i1 %.not10.i.i.i.i.i.i36, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41, label %.lr.ph.i.i.i.i.i.i37.preheader

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %.noexc46
  %i.df = ptrtoaddr ptr %i.dd to i64
  %10 = sub i64 %i.ct, %i.cu
  %11 = add i64 %10, -4                           ; 2 uses
  %i.dg = lshr i64 %11, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %11, 28
  %i.di = sub i64 %i.cu, %i.df
  %diff.check106 = icmp ugt i64 %i.di, -32
  %or.cond122 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond122, label %.lr.ph.i.i.i.i.i.i37.preheader123, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i.i.i.i.i.i37.preheader
  %n.vec110 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.dj = shl i64 %n.vec110, 2                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dd, i64 %i.dj  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cs, i64 %i.dj
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.dm = shl i64 %index112, 2                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.dd, i64 %i.dm ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.cs, i64 %i.dm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.dn = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !8, !alias.scope !695, !noalias !692
  %wide.load116 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !8, !alias.scope !695, !noalias !692
  %i.do = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep113, align 4, !tbaa !8, !alias.scope !692, !noalias !695
  store <4 x i32> %wide.load116, ptr %i.do, align 4, !tbaa !8, !alias.scope !692, !noalias !695
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.dp, label %middle.block118, label %vector.body111, !llvm.loop !697

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.dh, %n.vec110
  br i1 %cmp.n119, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41, label %.lr.ph.i.i.i.i.i.i37.preheader123

.lr.ph.i.i.i.i.i.i37.preheader123:                ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %middle.block118
  %.012.i.i.i.i.i.i38.ph = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dk, %middle.block118 ]
  %.0911.i.i.i.i.i.i39.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dl, %middle.block118 ]
  br label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.preheader123, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i37.preheader123 ] ; 2 uses
  %.0911.i.i.i.i.i.i39 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i37 ], [ %.0911.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i37.preheader123 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.dq = load i32, ptr %.0911.i.i.i.i.i.i39, align 4, !tbaa !8, !alias.scope !695, !noalias !692
  store i32 %i.dq, ptr %.012.i.i.i.i.i.i38, align 4, !tbaa !8, !alias.scope !692, !noalias !695
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i39, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i38, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.dr, %i.co
  br i1 %.not.i.i.i.i.i.i40, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41, label %.lr.ph.i.i.i.i.i.i37, !llvm.loop !698

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41: ; preds = %.lr.ph.i.i.i.i.i.i37, %middle.block118, %.noexc46
  %.0.lcssa.i.i.i.i.i.i42 = phi ptr [ %i.dd, %.noexc46 ], [ %i.dk, %middle.block118 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i37 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i42, i64 4
  %.not.i23.i.i.i43 = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i.i.i43, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i44, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i44

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i44: ; preds = %bb.aa, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i41
  store ptr %i.dd, ptr %i.cm, align 8, !tbaa !148
  store ptr %i.dt, ptr %i.cn, align 8, !tbaa !144
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.du, ptr %i.cp, align 8, !tbaa !147
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backEOS3_.exit47: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i44, %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.051.071, i64 32 ; 2 uses
  %.not61 = icmp eq ptr %i.dv, %i.af
  br i1 %.not61, label %._crit_edge74, label %.lr.ph73

.loopexit:                                        ; preds = %.lr.ph73, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i33
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !223 ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dy, align 8, !tbaa !224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !226
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !204
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !699
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !204
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !699
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.eb, %bb.ae ], [ %i.el, %bb.af ]
  %i.em = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.em, label %bb.ag, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit62, %.loopexit.split-lp63, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp63 ], [ %i.ag, %bb.l ], [ %lpad.loopexit64, %.loopexit62 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn21
}

declare void @_ZN2cv3dnn14dnn5_v2026060512LayerFactory19createLayerInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.146") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.393) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  %i.q = load i64, ptr %i.k, align 8, !tbaa !21
  store i64 %i.q, ptr %i.i, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !70
  store ptr %i.k, ptr %i.h, align 8, !tbaa !17
  store i64 0, ptr %i.s, align 8, !tbaa !70
  store i8 0, ptr %i.k, align 8, !tbaa !21
  ret void
}
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !842

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !317

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !210    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i) #26
  %i.p = add i64 %.057.i.i.i, -1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !843

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !213
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.394) #27
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 44343134792571037) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 208
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i31) #26
  %i.x = add i64 %.057.i.i.i32, -1                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %.not.i.i.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !843

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #26
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #26
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !844

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !210
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !213
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !215
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN11flatbuffers14VectorIteratorIiiPKhjEEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !13
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = sdiv i64 %i.e, 4                         ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %0, align 8, !tbaa !58     ; 10 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.392) #27
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.f, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 3 uses
  %i.r = icmp sgt i64 %i.e, 3
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN11flatbuffers14VectorIteratorIiiPKhjEEEEPimT_S9_.exit

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.s = and i64 %i.e, 9223372036854775804
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.a, i64 %i.s, i1 false), !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN11flatbuffers14VectorIteratorIiiPKhjEEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN11flatbuffers14VectorIteratorIiiPKhjEEEEPimT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN11flatbuffers14VectorIteratorIiiPKhjEEEEPimT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN11flatbuffers14VectorIteratorIiiPKhjEEEEPimT_S9_.exit, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.f ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !55
  store ptr %i.u, ptr %i.g, align 8, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.k                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2
  %.not = icmp ult i64 %i.z, %i.f
  br i1 %.not, label %_ZSt9__advanceIN11flatbuffers14VectorIteratorIiiPKhjEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp sgt i64 %i.e, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.ab = lshr i64 %i.e, 2                        ; 4 uses
  %3 = icmp ne i64 %i.ab, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %i.ab, %.neg
  %5 = add nsw i64 %4, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %5, 8
  %i.ac = sub i64 %i.d, %i.k
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %5, -8                         ; 4 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ad
  %6 = sub i64 %i.ab, %n.vec
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ad   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.ag ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.i, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !8
  %wide.load39 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !8
  %i.ai = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load, ptr %next.gep38, align 4, !tbaa !8
  store <4 x i32> %wide.load39, ptr %i.ai, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !845

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.ph81 = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i ], [ %i.ae, %middle.block ]
  %.06.i.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %6, %middle.block ]
  %.045.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ak = phi ptr [ %i.am, %scalar.ph ], [ %.ph81, %scalar.ph.preheader ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.ao, %scalar.ph ], [ %.06.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.045.i.i.i.i.i = phi ptr [ %i.an, %scalar.ph ], [ %.045.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  store i32 %i.al, ptr %.045.i.i.i.i.i, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = add nsw i64 %.06.i.i.i.i.i, -1
  %i.ap = icmp samesign ugt i64 %.06.i.i.i.i.i, 1
  br i1 %i.ap, label %scalar.ph, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit, !llvm.loop !846

_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit: ; preds = %scalar.ph, %middle.block, %bb.f
  %.04.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.f ], [ %i.af, %middle.block ], [ %i.an, %scalar.ph ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, %.04.lcssa.i.i.i.i.i
  br i1 %.not.i7, label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit
  store ptr %.04.lcssa.i.i.i.i.i, ptr %i.v, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZSt9__advanceIN11flatbuffers14VectorIteratorIiiPKhjEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.aq = and i64 %i.y, 4294967292                ; 5 uses
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 5 uses
  %i.ar = ptrtoint ptr %.sink.i to i64
  %.not30 = icmp eq i64 %i.aq, 0
  br i1 %.not30, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZSt9__advanceIN11flatbuffers14VectorIteratorIiiPKhjEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.as = lshr exact i64 %i.aq, 2                 ; 4 uses
  %min.iters.check45 = icmp samesign ult i64 %i.aq, 32
  %i.at = sub i64 %i.d, %i.k
  %diff.check43 = icmp ugt i64 %i.at, -32
  %or.cond79 = or i1 %min.iters.check45, %diff.check43
  br i1 %or.cond79, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i.i.i.i9
  %n.vec47 = and i64 %i.as, 1073741816            ; 3 uses
  %i.au = shl nuw nsw i64 %n.vec47, 2             ; 2 uses
  %i.av = getelementptr i8, ptr %i.a, i64 %i.au
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr i8, ptr %i.i, i64 %i.au
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.ay = shl i64 %index49, 2                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.a, i64 %i.ay ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load52 = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !8
  %wide.load53 = load <4 x i32>, ptr %i.az, align 4, !tbaa !8
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load52, ptr %next.gep51, align 4, !tbaa !8
  store <4 x i32> %wide.load53, ptr %i.ba, align 4, !tbaa !8
  %index.next54 = add nuw i64 %index49, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.bb, label %middle.block55, label %vector.body48, !llvm.loop !847

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.as, %n.vec47
  br i1 %cmp.n56, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.lr.ph.i.i.i.i.i9, %middle.block55
  %.ph80 = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i9 ], [ %i.av, %middle.block55 ]
  %.06.i.i.i.i.i10.ph = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i9 ], [ %i.aw, %middle.block55 ]
  %.045.i.i.i.i.i11.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i9 ], [ %i.ax, %middle.block55 ]
  br label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.preheader, %scalar.ph44
  %i.bc = phi ptr [ %i.be, %scalar.ph44 ], [ %.ph80, %scalar.ph44.preheader ] ; 2 uses
  %.06.i.i.i.i.i10 = phi i64 [ %i.bg, %scalar.ph44 ], [ %.06.i.i.i.i.i10.ph, %scalar.ph44.preheader ] ; 2 uses
  %.045.i.i.i.i.i11 = phi ptr [ %i.bf, %scalar.ph44 ], [ %.045.i.i.i.i.i11.ph, %scalar.ph44.preheader ] ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  store i32 %i.bd, ptr %.045.i.i.i.i.i11, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11, i64 4
  %i.bg = add nsw i64 %.06.i.i.i.i.i10, -1
  %i.bh = icmp samesign ugt i64 %.06.i.i.i.i.i10, 1
  br i1 %i.bh, label %scalar.ph44, label %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12, !llvm.loop !848

_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12: ; preds = %scalar.ph44, %middle.block55, %_ZSt9__advanceIN11flatbuffers14VectorIteratorIiiPKhjEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bi = sub i64 %i.c, %i.ar                     ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 3
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN11flatbuffers14VectorIteratorIiiPKhjEEPiiET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12
  %i.bk = lshr i64 %i.bi, 2                       ; 5 uses
  %7 = icmp ne i64 %i.bk, 0
  %.neg78 = sext i1 %7 to i64
  %8 = add nsw i64 %i.bk, %.neg78
  %9 = add nsw i64 %8, 1                          ; 3 uses
  %min.iters.check63 = icmp ult i64 %9, 12
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bl = add i64 %i.aq, %i.d
  %i.bm = sub i64 %i.bl, %i.x
  %diff.check61 = icmp ugt i64 %i.bm, -32
  br i1 %diff.check61, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck60
  %n.vec65 = and i64 %9, -8                       ; 4 uses
  %i.bn = shl i64 %n.vec65, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %.sink.i, i64 %i.bn
  %10 = sub i64 %i.bk, %n.vec65
  %i.bp = getelementptr i8, ptr %i.w, i64 %i.bn   ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.bq = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %.sink.i, i64 %i.bq ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.w, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !8
  %wide.load71 = load <4 x i32>, ptr %i.br, align 4, !tbaa !8
  %i.bs = getelementptr i8, ptr %next.gep69, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep69, align 4, !tbaa !8
  store <4 x i32> %wide.load71, ptr %i.bs, align 4, !tbaa !8
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.bt, label %middle.block73, label %vector.body66, !llvm.loop !849

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %9, %n.vec65
  br i1 %cmp.n74, label %_ZSt22__uninitialized_copy_aIN11flatbuffers14VectorIteratorIiiPKhjEEPiiET0_T_S7_S6_RSaIT1_E.exit, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck60, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block73
  %.ph = phi ptr [ %.sink.i, %vector.memcheck60 ], [ %.sink.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bo, %middle.block73 ]
  %.06.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bk, %vector.memcheck60 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %10, %middle.block73 ]
  %.045.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck60 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bp, %middle.block73 ]
  br label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.preheader, %scalar.ph62
  %i.bu = phi ptr [ %i.bw, %scalar.ph62 ], [ %.ph, %scalar.ph62.preheader ] ; 2 uses
  %.06.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %scalar.ph62 ], [ %.06.i.i.i.i.i.i.i.i.ph, %scalar.ph62.preheader ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %scalar.ph62 ], [ %.045.i.i.i.i.i.i.i.i.ph, %scalar.ph62.preheader ] ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  store i32 %i.bv, ptr %.045.i.i.i.i.i.i.i.i, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.by = add nsw i64 %.06.i.i.i.i.i.i.i.i, -1
  %i.bz = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %scalar.ph62, label %_ZSt22__uninitialized_copy_aIN11flatbuffers14VectorIteratorIiiPKhjEEPiiET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !850

_ZSt22__uninitialized_copy_aIN11flatbuffers14VectorIteratorIiiPKhjEEPiiET0_T_S7_S6_RSaIT1_E.exit: ; preds = %scalar.ph62, %middle.block73, %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12
  %.04.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit12 ], [ %i.bp, %middle.block73 ], [ %i.bx, %scalar.ph62 ]
  store ptr %.04.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit:    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIN11flatbuffers14VectorIteratorIiiPKhjEEPiET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIN11flatbuffers14VectorIteratorIiiPKhjEEPiiET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !8      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !851

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !8
  store i32 %i.s, ptr %i.d, align 4, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !55
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !851

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !8
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !852

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !853

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !855

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !55
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !851

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !55
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec115, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat117, ptr %i.bj, align 4, !tbaa !8
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !856

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !857

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !58    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.395) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec141, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat143, ptr %i.ck, align 4, !tbaa !8
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !858

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !859

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !851

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !8
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !851

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !58
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !67
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, cv::Mat>, std::_Select1st<std::pair<const int, cv::Mat>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !860
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #30 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !92
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  store i32 %i.f, ptr %i.c, align 8, !tbaa !862
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !864
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_:bb.a
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !89 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !89 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !867

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !74
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !864  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !103    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !851

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre101 = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !103
  store i32 %i.s, ptr %i.d, align 4, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre101, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !104
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !851

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !103
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %bb.k
  %n.vec132 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec132, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.aj = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> %broadcast.splat134, ptr %next.gep137, align 4, !tbaa !103
  store <4 x i32> %broadcast.splat134, ptr %i.ak, align 4, !tbaa !103
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.al, label %middle.block139, label %vector.body135, !llvm.loop !868

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.ag, %n.vec132
  br i1 %cmp.n140, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block139
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block139 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !103
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !869

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !103
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !103
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !871

_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !104
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.m, label %bb.n, !prof !851

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.o, label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %1, align 4, !tbaa !103
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.o, %bb.n, %bb.m
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.o ], [ %.0.i.i.i.i.i, %bb.n ], [ %.pre, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !104
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i73.preheader

.lr.ph.i.i.i73.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %7, 28
  br i1 %min.iters.check117, label %.lr.ph.i.i.i73.preheader155, label %vector.ph118

vector.ph118:                                     ; preds = %.lr.ph.i.i.i73.preheader
  %n.vec119 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec119, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next125, %vector.body122 ] ; 2 uses
  %i.bi = shl i64 %index123, 2
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep124, i64 16
  store <4 x i32> %broadcast.splat121, ptr %next.gep124, align 4, !tbaa !103
  store <4 x i32> %broadcast.splat121, ptr %i.bj, align 4, !tbaa !103
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.bk, label %middle.block126, label %vector.body122, !llvm.loop !872

middle.block126:                                  ; preds = %vector.body122
  %cmp.n127 = icmp eq i64 %i.bf, %n.vec119
  br i1 %cmp.n127, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i73.preheader155

.lr.ph.i.i.i73.preheader155:                      ; preds = %.lr.ph.i.i.i73.preheader, %middle.block126
  %.06.i.i.i74.ph = phi ptr [ %1, %.lr.ph.i.i.i73.preheader ], [ %i.bh, %middle.block126 ]
  br label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %.lr.ph.i.i.i73.preheader155, %.lr.ph.i.i.i73
  %.06.i.i.i74 = phi ptr [ %i.bl, %.lr.ph.i.i.i73 ], [ %.06.i.i.i74.ph, %.lr.ph.i.i.i73.preheader155 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i74, align 4, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i74, i64 4 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i75, label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i73, !llvm.loop !873

bb.p:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !94    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.q, label %_ZNKSt6vectorIN2cv10DataLayoutESaIS1_EE12_M_check_lenEmPKc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.395) #27
  unreachable

_ZNKSt6vectorIN2cv10DataLayoutESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.p
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i.i.i.i77, label %bb.r

bb.r:                                             ; preds = %_ZNKSt6vectorIN2cv10DataLayoutESaIS1_EE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #30
  br label %.lr.ph.preheader.i.i.i.i.i.i.i77

.lr.ph.preheader.i.i.i.i.i.i.i77:                 ; preds = %bb.r, %_ZNKSt6vectorIN2cv10DataLayoutESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.r ], [ null, %_ZNKSt6vectorIN2cv10DataLayoutESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i78 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i78
  %.pre.i.i.i.i.i.i.i79 = load i32, ptr %3, align 4, !tbaa !103 ; 2 uses
  %i.cd = add nsw i64 %.idx.i.i.i.i.i78, -4       ; 2 uses
  %i.ce = lshr exact i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.cd, 28
  br i1 %min.iters.check143, label %.lr.ph.i.i.i.i.i.i.i80.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i77
  %n.vec145 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.cg = shl i64 %n.vec145, 2
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.cg
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i.i79, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body148 ] ; 2 uses
  %i.ci = shl i64 %index149, 2
  %next.gep150 = getelementptr i8, ptr %i.cb, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x i32> %broadcast.splat147, ptr %next.gep150, align 4, !tbaa !103
  store <4 x i32> %broadcast.splat147, ptr %i.cj, align 4, !tbaa !103
  %index.next151 = add nuw i64 %index149, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.ck, label %middle.block152, label %vector.body148, !llvm.loop !874

middle.block152:                                  ; preds = %vector.body148
  %cmp.n153 = icmp eq i64 %i.cf, %n.vec145
  br i1 %cmp.n153, label %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit84, label %.lr.ph.i.i.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i.i.i80.preheader:                 ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i77, %middle.block152
  %.06.i.i.i.i.i.i.i81.ph = phi ptr [ %i.cb, %.lr.ph.preheader.i.i.i.i.i.i.i77 ], [ %i.ch, %middle.block152 ]
  br label %.lr.ph.i.i.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i.i80:                           ; preds = %.lr.ph.i.i.i.i.i.i.i80.preheader, %.lr.ph.i.i.i.i.i.i.i80
  %.06.i.i.i.i.i.i.i81 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i80 ], [ %.06.i.i.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i.i.i80.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i.i.i.i79, ptr %.06.i.i.i.i.i.i.i81, align 4, !tbaa !103
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i82 = icmp eq ptr %i.cl, %i.cc
  br i1 %.not.i.i.i.i.i.i.i82, label %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit84, label %.lr.ph.i.i.i.i.i.i.i80, !llvm.loop !875

_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit84: ; preds = %.lr.ph.i.i.i.i.i.i.i80, %middle.block152
  %i.cm = icmp sgt i64 %i.bx, 4
  br i1 %i.cm, label %bb.s, label %bb.t, !prof !851

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit84
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN2cv10DataLayoutEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit84
  %i.cn = icmp eq i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.u:                                             ; preds = %bb.t
  %i.co = load i32, ptr %i.bm, align 4, !tbaa !103
  store i32 %i.co, ptr %i.ca, align 4, !tbaa !103
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.u, %bb.t, %bb.s
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cq = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cr = icmp sgt i64 %i.cq, 4
  br i1 %i.cr, label %bb.v, label %bb.w, !prof !851

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %1, i64 %i.cq, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.cs = icmp eq i64 %i.cq, 4
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ct = load i32, ptr %1, align 4, !tbaa !103
  store i32 %i.ct, ptr %i.cp, align 4, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.cu = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  %.not.i86 = icmp eq ptr %i.bm, null
  br i1 %.not.i86, label %_ZNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cv) #28
  br label %_ZNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.y, %bb.z
  store ptr %i.ca, ptr %0, align 8, !tbaa !94
  store ptr %i.cu, ptr %i.c, align 8, !tbaa !104
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !95
  br label %_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit

_ZSt4fillIPN2cv10DataLayoutES1_EvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i73, %.lr.ph.i.i.i, %middle.block126, %middle.block139, %_ZSt22__uninitialized_move_aIPN2cv10DataLayoutES2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %_ZNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = load i32, ptr %2, align 4, !tbaa !8
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !89 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i
end_hunk_4
