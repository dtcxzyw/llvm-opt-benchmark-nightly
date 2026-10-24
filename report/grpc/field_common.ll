Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/field_common?download=true
inline.NumInlined: 2808
inline.NumDeleted: 1055
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf8compiler4java23SetCommonFieldVariablesEPKNS0_15FieldDescriptorEPKNS2_18FieldGeneratorInfoEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEE:bb.a
  %i.iq = load i64, ptr %i.im, align 8, !tbaa !20
  store i64 %i.iq, ptr %27, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.ip, ptr %i.ir, align 8
  store i64 1, ptr %28, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.12, ptr %i.is, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull align 8 dereferenceable(48) %28)
  br label %bb.ba

bb.ax:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA2_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit190
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.it, ptr %26, align 8, !tbaa !14
  %i.iu = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.iv = load i64, ptr %i.im, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i64 %i.iv, ptr %i.g, align 8, !tbaa !16
  %i.iw = icmp ugt i64 %i.iv, 15
  br i1 %i.iw, label %.noexc.i191, label %._crit_edge.i.i

.noexc.i191:                                      ; preds = %bb.ax
  %i.ix = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.ix, ptr %26, align 8, !tbaa !18
  %i.iy = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.iy, ptr %i.it, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i191, %bb.ax
  %i.iz = phi ptr [ %i.ix, %.noexc.i191 ], [ %i.it, %bb.ax ] ; 2 uses
  switch i64 %i.iv, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.ja = load i8, ptr %i.iu, align 1, !tbaa !19
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.az:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iz, ptr align 1 %i.iu, i64 %i.iv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ay, %bb.az
  %i.jb = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !20
  %i.jd = load ptr, ptr %26, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jb
  store i8 0, ptr %i.je, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA8_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(8) @.str.13)
          to label %.noexc196 unwind label %bb.dl

.noexc196:                                        ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !24, !range !25, !alias.scope !177, !noundef !26
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc196
  %.sroa.2.0..sroa_idx.i.i.i194 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i.i195 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i194, align 8, !alias.scope !177 ; 5 uses
  store i64 7, ptr %.sroa.2.0.copyload.i.i.i195, align 8, !tbaa !28
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i195, i64 8
  store ptr @.str.13, ptr %i.ji, align 8, !tbaa !29
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i195, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i195, i64 32 ; 2 uses
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i195, i64 24
  store i64 0, ptr %i.jl, align 8, !tbaa !20
  store i8 0, ptr %i.jk, align 8, !tbaa !19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc196
  %.sroa.2.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i193 = load ptr, ptr %.sroa.2.0..sroa_idx.i192, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i193, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jm, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.dl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bc
  %i.jn = load ptr, ptr %26, align 8, !tbaa !18   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !19
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.js = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.js, ptr %30, align 8, !tbaa !14
  %i.jt = load ptr, ptr %i.dg, align 8, !tbaa !18 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 %i.jv, ptr %i.f, align 8, !tbaa !16
  %i.jw = icmp ugt i64 %i.jv, 15
  br i1 %i.jw, label %.noexc.i202, label %._crit_edge.i.i201

.noexc.i202:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.jx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.jx, ptr %30, align 8, !tbaa !18
  %i.jy = load i64, ptr %i.f, align 8, !tbaa !16
  store i64 %i.jy, ptr %i.js, align 8, !tbaa !19
  br label %._crit_edge.i.i201

._crit_edge.i.i201:                               ; preds = %.noexc.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.jz = phi ptr [ %i.jx, %.noexc.i202 ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ] ; 2 uses
  switch i64 %i.jv, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i201
  %i.ka = load i8, ptr %i.jt, align 1, !tbaa !19
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203

bb.be:                                            ; preds = %._crit_edge.i.i201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jz, ptr align 1 %i.jt, i64 %i.jv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203: ; preds = %._crit_edge.i.i201, %bb.bd, %bb.be
  %i.kb = load i64, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !20
  %i.kd = load ptr, ptr %30, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kb
  store i8 0, ptr %i.ke, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.kf = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.kf, ptr %29, align 8, !tbaa !14, !alias.scope !178
  %i.kg = load ptr, ptr %30, align 8, !tbaa !18, !noalias !178 ; 2 uses
  %i.kh = load i64, ptr %i.kc, align 8, !tbaa !20, !noalias !178 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !178
  store i64 %i.kh, ptr %i.e, align 8, !tbaa !16, !noalias !178
  %i.ki = icmp ugt i64 %i.kh, 15
  br i1 %i.ki, label %.noexc.i.i207, label %._crit_edge.i.i.i204

.noexc.i.i207:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc208 unwind label %bb.dm ; 2 uses

.noexc208:                                        ; preds = %.noexc.i.i207
  store ptr %i.kj, ptr %29, align 8, !tbaa !18, !alias.scope !178
  %i.kk = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !178
  store i64 %i.kk, ptr %i.kf, align 8, !tbaa !19, !alias.scope !178
  br label %._crit_edge.i.i.i204

._crit_edge.i.i.i204:                             ; preds = %.noexc208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203
  %i.kl = phi ptr [ %i.kj, %.noexc208 ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit203 ] ; 2 uses
  switch i64 %i.kh, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i204
  %i.km = load i8, ptr %i.kg, align 1, !tbaa !19
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bg:                                            ; preds = %._crit_edge.i.i.i204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.kg, i64 %i.kh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i204
  %i.kn = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !178 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !20, !alias.scope !178
  %i.kp = load ptr, ptr %29, align 8, !tbaa !18, !alias.scope !178
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 0, ptr %i.kq, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !178
  %i.kr = load i64, ptr %i.kc, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %.not.i205 = icmp eq i64 %i.kr, 0
  br i1 %.not.i205, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ks = load ptr, ptr %30, align 8, !tbaa !18, !noalias !178
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i
  %.01314.i = phi i64 [ 0, %.lr.ph.i ], [ %i.kw, %bb.bi ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.01314.i
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !19
  %51 = add i8 %i.ku, -91
  %i.kv = icmp ult i8 %51, -26                    ; 3 uses
  br i1 %i.kv, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kw = add nuw i64 %.01314.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kw, %i.kr
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.bh, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.bi, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.013.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.01314.i, %bb.bh ], [ %i.kr, %bb.bi ] ; 3 uses
  %.lcssa.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.kv, %bb.bh ], [ %i.kv, %bb.bi ]
  %i.kx = icmp ugt i64 %.013.lcssa.i, 1
  %narrow.i = and i1 %i.kx, %.lcssa.i
  %spec.select.i = sext i1 %narrow.i to i64       ; 2 uses
  %.012.i = add i64 %.013.lcssa.i, %spec.select.i ; 4 uses
  %.not21.i206 = icmp eq i64 %.012.i, 0
  br i1 %.not21.i206, label %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.critedge.i
  %i.ky = add i64 %.013.lcssa.i, %spec.select.i
  %xtraiter = and i64 %.012.i, 1
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %.lr.ph20.i.epil.preheader, label %.lr.ph20.i.preheader.new

.lr.ph20.i.preheader.new:                         ; preds = %.lr.ph20.i.preheader
  %unroll_iter = and i64 %.012.i, -2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i, %.lr.ph20.i.preheader.new
  %.019.i = phi i64 [ 0, %.lr.ph20.i.preheader.new ], [ %i.ln, %.lr.ph20.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.preheader.new ], [ %niter.next.1, %.lr.ph20.i ]
  %i.la = load ptr, ptr %29, align 8, !tbaa !18, !alias.scope !178
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %.019.i ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !19  ; 3 uses
  %52 = add i8 %i.lc, -65
  %i.ld = icmp ult i8 %52, 26
  %i.le = add nuw nsw i8 %i.lc, 32
  %i.lf = select i1 %i.ld, i8 %i.le, i8 %i.lc
  store i8 %i.lf, ptr %i.lb, align 1, !tbaa !19
  %i.lg = load ptr, ptr %29, align 8, !tbaa !18, !alias.scope !178
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.019.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !19  ; 3 uses
  %53 = add i8 %i.lj, -65
  %i.lk = icmp ult i8 %53, 26
  %i.ll = add nuw nsw i8 %i.lj, 32
  %i.lm = select i1 %i.lk, i8 %i.ll, i8 %i.lj
  store i8 %i.lm, ptr %i.li, align 1, !tbaa !19
  %i.ln = add nuw i64 %.019.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph20.i, !llvm.loop !1

_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph20.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph20.i.epil.preheader

.lr.ph20.i.epil.preheader:                        ; preds = %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.019.i.epil.init = phi i64 [ 0, %.lr.ph20.i.preheader ], [ %i.ln, %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod572 = trunc i64 %.012.i to i1
  call void @llvm.assume(i1 %lcmp.mod572)
  %i.lo = load ptr, ptr %29, align 8, !tbaa !18, !alias.scope !178
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.019.i.epil.init ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !19  ; 3 uses
  %54 = add i8 %i.lq, -65
  %i.lr = icmp ult i8 %54, 26
  %i.ls = add nuw nsw i8 %i.lq, 32
  %i.lt = select i1 %i.lr, i8 %i.ls, i8 %i.lq
  store i8 %i.lt, ptr %i.lp, align 1, !tbaa !19
  br label %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph20.i.epil.preheader, %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.critedge.i
  %i.lu = load ptr, ptr %30, align 8, !tbaa !18   ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.js
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.lw = load i64, ptr %i.js, align 8, !tbaa !19
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA17_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(17) @.str.14)
          to label %.noexc216 unwind label %bb.dn

.noexc216:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !24, !range !25, !alias.scope !179, !noundef !26
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.noexc216
  %.sroa.2.0..sroa_idx.i.i.i214 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i215 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i214, align 8, !alias.scope !179 ; 5 uses
  store i64 16, ptr %.sroa.2.0.copyload.i.i.i215, align 8, !tbaa !28
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i215, i64 8
  store ptr @.str.14, ptr %i.mb, align 8, !tbaa !29
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i215, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i215, i64 32 ; 2 uses
  store ptr %i.md, ptr %i.mc, align 8, !tbaa !14
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i215, i64 24
  store i64 0, ptr %i.me, align 8, !tbaa !20
  store i8 0, ptr %i.md, align 8, !tbaa !19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.noexc216
  %.sroa.2.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i213 = load ptr, ptr %.sroa.2.0..sroa_idx.i212, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i213, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit219 unwind label %bb.dn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit219: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.mg = load ptr, ptr %29, align 8, !tbaa !18
  %i.mh = load i64, ptr %i.ko, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.mi = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler4java17IsForbiddenKotlinESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.mh, ptr %i.mg)
          to label %bb.bl unwind label %bb.do

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit219
  br i1 %i.mi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i64 1, ptr %32, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.15, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %29, align 8, !tbaa !18
  %i.ml = load i64, ptr %i.ko, align 8, !tbaa !20
  store i64 %i.ml, ptr %33, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.mk, ptr %i.mm, align 8
  store i64 1, ptr %34, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr @.str.15, ptr %i.mn, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(48) %34)
          to label %bb.bq unwind label %bb.dp

bb.bn:                                            ; preds = %bb.bl
  %i.mo = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  store ptr %i.mo, ptr %31, align 8, !tbaa !14
  %i.mp = load ptr, ptr %29, align 8, !tbaa !18   ; 2 uses
  %i.mq = load i64, ptr %i.ko, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 %i.mq, ptr %i.d, align 8, !tbaa !16
  %i.mr = icmp ugt i64 %i.mq, 15
  br i1 %i.mr, label %.noexc.i223, label %._crit_edge.i.i222

.noexc.i223:                                      ; preds = %bb.bn
  %i.ms = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc224 unwind label %bb.dp ; 2 uses

.noexc224:                                        ; preds = %.noexc.i223
  store ptr %i.ms, ptr %31, align 8, !tbaa !18
  %i.mt = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.mt, ptr %i.mo, align 8, !tbaa !19
  br label %._crit_edge.i.i222

._crit_edge.i.i222:                               ; preds = %.noexc224, %bb.bn
  %i.mu = phi ptr [ %i.ms, %.noexc224 ], [ %i.mo, %bb.bn ] ; 2 uses
  switch i64 %i.mq, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit225
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i222
  %i.mv = load i8, ptr %i.mp, align 1, !tbaa !19
  store i8 %i.mv, ptr %i.mu, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit225

bb.bp:                                            ; preds = %._crit_edge.i.i222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mu, ptr align 1 %i.mp, i64 %i.mq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit225: ; preds = %._crit_edge.i.i222, %bb.bo, %bb.bp
  %i.mw = load i64, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !20
  %i.my = load ptr, ptr %31, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mw
  store i8 0, ptr %i.mz, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit225, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA13_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) @.str.16)
          to label %.noexc230 unwind label %bb.dq

.noexc230:                                        ; preds = %bb.bq
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !24, !range !25, !alias.scope !180, !noundef !26
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.noexc230
  %.sroa.2.0..sroa_idx.i.i.i228 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i229 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i228, align 8, !alias.scope !180 ; 5 uses
  store i64 12, ptr %.sroa.2.0.copyload.i.i.i229, align 8, !tbaa !28
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i229, i64 8
  store ptr @.str.16, ptr %i.nd, align 8, !tbaa !29
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i229, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i229, i64 32 ; 2 uses
  store ptr %i.nf, ptr %i.ne, align 8, !tbaa !14
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i229, i64 24
  store i64 0, ptr %i.ng, align 8, !tbaa !20
  store i8 0, ptr %i.nf, align 8, !tbaa !19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.noexc230
  %.sroa.2.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i227 = load ptr, ptr %.sroa.2.0..sroa_idx.i226, align 8 ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i227, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !18 ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i227, i64 32 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  %i.nl = load ptr, ptr %31, align 8, !tbaa !18   ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm                ; 2 uses
  br i1 %i.nk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i237: ; preds = %bb.bs
  br i1 %i.nn, label %bb.bt, label %.thread.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i231: ; preds = %bb.bs
  br i1 %i.nn, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i232

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i237
  %i.no = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !20 ; 3 uses
  %i.nq = icmp ult i64 %i.np, 16
  call void @llvm.assume(i1 %i.nq)
  %.not21.i234 = icmp eq ptr %31, %i.nh
  br i1 %.not21.i234, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit239, label %bb.bu, !prof !30

bb.bu:                                            ; preds = %bb.bt
  switch i64 %i.np, label %bb.bw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i235
    i64 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.nr = load i8, ptr %i.nl, align 1, !tbaa !19
  store i8 %i.nr, ptr %i.ni, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i235

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ni, ptr align 1 %i.nl, i64 %i.np, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i235: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.ns = load i64, ptr %i.no, align 8, !tbaa !20 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i227, i64 24
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !20
  %i.nu = load ptr, ptr %i.nh, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.ns
  store i8 0, ptr %i.nv, align 1, !tbaa !19
  %.pre.i236 = load ptr, ptr %31, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit239

.thread.i238:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i237
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4java23SetCommonFieldVariablesEPKNS0_15FieldDescriptorEPKNS2_18FieldGeneratorInfoEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  br label %bb.ft

bb.fl:                                            ; preds = %bb.et
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fm:                                            ; preds = %bb.eu
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

bb.fn:                                            ; preds = %bb.ev
  %i.abd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abe = load ptr, ptr %43, align 8, !tbaa !18  ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.fn
  %i.abh = load i64, ptr %i.abf, align 8, !tbaa !19
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383, %bb.fm
  %.pn87 = phi { ptr, i32 } [ %i.abc, %bb.fm ], [ %i.abd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383 ], [ %i.abd, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %bb.fl
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ], [ %i.abb, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.fu

bb.fp:                                            ; preds = %bb.ff
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fg
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

bb.fr:                                            ; preds = %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEEC2IRA22_KcS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  %i.abl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  %i.abm = load ptr, ptr %i.zu, align 8, !tbaa !18 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.zv
  br i1 %i.abn, label %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386: ; preds = %bb.fr
  %i.abo = load i64, ptr %i.zv, align 8, !tbaa !19
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #21
  br label %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388

_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386
  %i.abq = load ptr, ptr %47, align 8, !tbaa !18  ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.zx
  br i1 %i.abr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388
  %i.abs = load i64, ptr %i.zx, align 8, !tbaa !19
  %i.abt = add i64 %i.abs, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.fq
  %.pn90 = phi { ptr, i32 } [ %i.abk, %bb.fq ], [ %i.abl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %i.abl, %_ZNSt4pairISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS2_SaIcEEEED2Ev.exit388 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %bb.fp
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %i.abj, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  br label %bb.fu

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.abu = load ptr, ptr %29, align 8, !tbaa !18  ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.kf
  br i1 %i.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.ft
  %i.abw = load i64, ptr %i.kf, align 8, !tbaa !19
  %i.abx = add i64 %i.abw, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.abx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  ret void

bb.fu:                                            ; preds = %bb.fs, %bb.fo, %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %bb.dv, %bb.dr, %bb.dn
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %bb.es ], [ %.pn90.pn, %bb.fs ], [ %i.ul, %bb.dn ], [ %.pn87.pn, %bb.fo ], [ %.pn84.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %.pn79.pn, %bb.dv ], [ %.pn75.pn.pn, %bb.dr ] ; 2 uses
  %i.aby = load ptr, ptr %29, align 8, !tbaa !18  ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.kf
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %bb.fu
  %i.aca = load i64, ptr %i.kf, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  %.sink571 = phi i64 [ %i.aca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %i.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ]
  %.sink = phi ptr [ %i.aby, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %i.ui, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ]
  %.pn93.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn93.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %i.uh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ]
  %i.acb = add i64 %.sink571, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.acb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.sink.split, %bb.fu, %bb.dm
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.uh, %bb.dm ], [ %.pn93.pn.pn, %bb.fu ], [ %.pn93.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %i.ub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320 ], [ %i.tw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ]
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6google8protobuf8compiler4java17FieldConstantNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8compiler4java17IsForbiddenKotlinESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4java21GetKotlinPropertyNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %0, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = load i64, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.01314 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01314
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %2 = add i8 %i.r, -91
  %i.s = icmp ult i8 %2, -26                      ; 3 uses
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw i64 %.01314, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.o
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !0

.critedge:                                        ; preds = %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.013.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.o, %bb.e ], [ %.01314, %bb.d ] ; 3 uses
  %.lcssa = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  %i.u = icmp ugt i64 %.013.lcssa, 1
  %narrow = and i1 %i.u, %.lcssa
  %spec.select = sext i1 %narrow to i64           ; 2 uses
  %.012 = add i64 %.013.lcssa, %spec.select       ; 4 uses
  %.not21 = icmp eq i64 %.012, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %.critedge
  %i.v = add i64 %.013.lcssa, %spec.select
  %xtraiter = and i64 %.012, 1
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %.lr.ph20.epil.preheader, label %.lr.ph20.preheader.new

.lr.ph20.preheader.new:                           ; preds = %.lr.ph20.preheader
  %unroll_iter = and i64 %.012, -2
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20, %.lr.ph20.preheader.new
  %.019 = phi i64 [ 0, %.lr.ph20.preheader.new ], [ %i.ak, %.lr.ph20 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph20.preheader.new ], [ %niter.next.1, %.lr.ph20 ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.019 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19    ; 3 uses
  %3 = add i8 %i.z, -65
  %i.aa = icmp ult i8 %3, 26
  %i.ab = add nuw nsw i8 %i.z, 32
  %i.ac = select i1 %i.aa, i8 %i.ab, i8 %i.z
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !19
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.019
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 3 uses
  %4 = add i8 %i.ag, -65
  %i.ah = icmp ult i8 %4, 26
  %i.ai = add nuw nsw i8 %i.ag, 32
  %i.aj = select i1 %i.ah, i8 %i.ai, i8 %i.ag
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !19
  %i.ak = add nuw i64 %.019, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph20, !llvm.loop !1

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph20
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph20.epil.preheader

.lr.ph20.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph20.preheader
  %.019.epil.init = phi i64 [ 0, %.lr.ph20.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.012 to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.al = load ptr, ptr %0, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.019.epil.init ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19  ; 3 uses
  %5 = add i8 %i.an, -65
  %i.ao = icmp ult i8 %5, 26
  %i.ap = add nuw nsw i8 %i.an, 32
  %i.aq = select i1 %i.ao, i8 %i.ap, i8 %i.an
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph20.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i64, ptr } @_ZN6google8protobuf8compiler4java13FieldTypeNameENS0_8internal19FieldDescriptorLite4TypeE(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6google8protobuf8compiler4java11GetJavaTypeEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4java23SetCommonOneofVariablesEPKNS0_15FieldDescriptorEPKNS2_18OneofGeneratorInfoEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 6 uses
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %5 = alloca %"struct.std::pair", align 8        ; 6 uses
  %6 = alloca %"struct.std::pair", align 8        ; 6 uses
  %7 = alloca %"struct.std::pair", align 8        ; 6 uses
  %8 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"struct.std::pair", align 8        ; 6 uses
  %10 = alloca %"struct.std::pair", align 8       ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %22 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %26 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %28 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) @.str.23)
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24, !range !25, !alias.scope !233, !noundef !26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA11_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !233 ; 5 uses
  store i64 10, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr @.str.23, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !20
  store i8 0, ptr %i.g, align 8, !tbaa !19
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA11_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA11_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit: ; preds = %bb.a, %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA23_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(23) @.str.24)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !24, !range !25, !alias.scope !234, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA11_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit
  %.sroa.2.0..sroa_idx.i.i.i24 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i25 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i24, align 8, !alias.scope !234 ; 5 uses
  store i64 22, ptr %.sroa.2.0.copyload.i.i.i25, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i25, i64 8
  store ptr @.str.24, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i25, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i25, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i25, i64 24
  store i64 0, ptr %i.q, align 8, !tbaa !20
  store i8 0, ptr %i.p, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA11_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit
  %.sroa.2.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i22, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i23, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 16
  %.not.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !26 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !237
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !238
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = select i1 %.not.i, i64 0, i64 %i.ab
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ai = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ag, ptr noundef nonnull %i.ah)
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  store i64 %i.al, ptr %12, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.an, ptr %11, align 8, !tbaa !14, !alias.scope !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !239
  store i64 %i.al, ptr %i.a, align 8, !tbaa !16, !noalias !239
  %i.ao = icmp ugt i64 %i.al, 15
  br i1 %i.ao, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %11, align 8, !tbaa !18, !alias.scope !239
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !239
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !19, !alias.scope !239
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.ar = phi ptr [ %i.ap, %.noexc.i.i ], [ %i.an, %bb.d ] ; 2 uses
  switch i64 %i.al, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i8, ptr %i.ah, align 8, !tbaa !19
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !19
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 8 %i.ah, i64 %i.al, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.at = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !239 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !20, !alias.scope !239
  %i.av = load ptr, ptr %11, align 8, !tbaa !18, !alias.scope !239
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA12_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(12) @.str.25)
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !24, !range !25, !alias.scope !240, !noundef !26
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i28 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i29 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i28, align 8, !alias.scope !240 ; 5 uses
  store i64 11, ptr %.sroa.2.0.copyload.i.i.i29, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i29, i64 8
  store ptr @.str.25, ptr %i.ba, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i29, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i29, i64 32 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i29, i64 24
  store i64 0, ptr %i.bd, align 8, !tbaa !20
  store i8 0, ptr %i.bc, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i27 = load ptr, ptr %.sroa.2.0..sroa_idx.i26, align 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i27, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i27, i64 32 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
end_hunk_1
