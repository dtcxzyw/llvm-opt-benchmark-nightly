Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/field_common?download=true
inline.NumInlined: 2808
inline.NumDeleted: 1055
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf8compiler4java23SetCommonFieldVariablesEPKNS0_15FieldDescriptorEPKNS2_18FieldGeneratorInfoEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEE:bb.a
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.noexc253
  %.sroa.2.0..sroa_idx.i.i.i251 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i252 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i251, align 8, !alias.scope !180 ; 5 uses
  store i64 19, ptr %.sroa.2.0.copyload.i.i.i252, align 8, !tbaa !27
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i252, i64 8
  store ptr @.str.17, ptr %i.po, align 8, !tbaa !28
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i252, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i252, i64 32 ; 2 uses
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !13
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i252, i64 24
  store i64 0, ptr %i.pr, align 8, !tbaa !19
  store i8 0, ptr %i.pq, align 8, !tbaa !18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.noexc253
  %.sroa.2.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i250 = load ptr, ptr %.sroa.2.0..sroa_idx.i249, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i250, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255 unwind label %bb.du

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255: ; preds = %bb.cg
  %i.pt = load ptr, ptr %35, align 8, !tbaa !17   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !18
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !183, !range !24, !noundef !25
  %i.qa = trunc nuw i8 %i.pz to i1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.qb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 11 uses
  store ptr %i.qb, ptr %38, align 8, !tbaa !13, !alias.scope !184
  %i.qc = select i1 %i.qa, i64 25, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !184
  store i64 %i.qc, ptr %i.b, align 8, !tbaa !15, !noalias !184
  br i1 %i.qa, label %.noexc.i.i260, label %bb.ch

.noexc.i.i260:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.qd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.dw ; 2 uses

.noexc261:                                        ; preds = %.noexc.i.i260
  store ptr %i.qd, ptr %38, align 8, !tbaa !17, !alias.scope !184
  %i.qe = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !184 ; 2 uses
  store i64 %i.qe, ptr %i.qb, align 8, !tbaa !18, !alias.scope !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.qd, ptr noundef nonnull align 1 dereferenceable(25) @.str.37, i64 25, i1 false)
  %.pre2.i = load ptr, ptr %38, align 8, !tbaa !17, !alias.scope !184
  br label %bb.ch

bb.ch:                                            ; preds = %.noexc261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.qf = phi ptr [ %i.qb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pre2.i, %.noexc261 ]
  %i.qg = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.qe, %.noexc261 ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 6 uses
  store i64 %i.qg, ptr %i.qh, align 8, !tbaa !19, !alias.scope !184
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qg
  store i8 0, ptr %i.qi, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA14_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.18)
          to label %.noexc266 unwind label %bb.dx

.noexc266:                                        ; preds = %bb.ch
  %i.qj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !23, !range !24, !alias.scope !185, !noundef !25
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.noexc266
  %.sroa.2.0..sroa_idx.i.i.i264 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i265 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i264, align 8, !alias.scope !185 ; 5 uses
  store i64 13, ptr %.sroa.2.0.copyload.i.i.i265, align 8, !tbaa !27
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i265, i64 8
  store ptr @.str.18, ptr %i.qm, align 8, !tbaa !28
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i265, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i265, i64 32 ; 2 uses
  store ptr %i.qo, ptr %i.qn, align 8, !tbaa !13
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i265, i64 24
  store i64 0, ptr %i.qp, align 8, !tbaa !19
  store i8 0, ptr %i.qo, align 8, !tbaa !18
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.noexc266
  %.sroa.2.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i263 = load ptr, ptr %.sroa.2.0..sroa_idx.i262, align 8 ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i263, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !17 ; 6 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i263, i64 32 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  %i.qu = load ptr, ptr %38, align 8, !tbaa !17   ; 6 uses
  %i.qv = icmp eq ptr %i.qu, %i.qb                ; 2 uses
  br i1 %i.qt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i274: ; preds = %bb.cj
  br i1 %i.qv, label %bb.ck, label %.thread.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i268: ; preds = %bb.cj
  br i1 %i.qv, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i269

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i274
  %i.qw = load i64, ptr %i.qh, align 8, !tbaa !19 ; 3 uses
  %i.qx = icmp ult i64 %i.qw, 16
  call void @llvm.assume(i1 %i.qx)
  %.not21.i271 = icmp eq ptr %38, %i.qq
  br i1 %.not21.i271, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276, label %bb.cl, !prof !29

bb.cl:                                            ; preds = %bb.ck
  switch i64 %i.qw, label %bb.cn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272
    i64 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.qy = load i8, ptr %i.qu, align 1, !tbaa !18
  store i8 %i.qy, ptr %i.qr, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qr, ptr align 1 %i.qu, i64 %i.qw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272: ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.qz = load i64, ptr %i.qh, align 8, !tbaa !19 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i263, i64 24
  store i64 %i.qz, ptr %i.ra, align 8, !tbaa !19
  %i.rb = load ptr, ptr %i.qq, align 8, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qz
  store i8 0, ptr %i.rc, align 1, !tbaa !18
  %.pre.i273 = load ptr, ptr %38, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276

.thread.i275:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i274
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i263, i64 24
  store ptr %i.qu, ptr %i.qq, align 8, !tbaa !17
  %i.re = load <2 x i64>, ptr %i.qh, align 8, !tbaa !18
  store <2 x i64> %i.re, ptr %i.rd, align 8, !tbaa !18
  br label %bb.cp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i269: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i268
  %i.rf = load i64, ptr %i.qs, align 8, !tbaa !18
  store ptr %i.qu, ptr %i.qq, align 8, !tbaa !17
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i263, i64 24
  %i.rh = load <2 x i64>, ptr %i.qh, align 8, !tbaa !18
  store <2 x i64> %i.rh, ptr %i.rg, align 8, !tbaa !18
  %.not.i270 = icmp eq ptr %i.qr, null
  br i1 %.not.i270, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i269
  store ptr %i.qr, ptr %38, align 8, !tbaa !17
  store i64 %i.rf, ptr %i.qb, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i269, %.thread.i275
  store ptr %i.qb, ptr %38, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276: ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272, %bb.co, %bb.cp
  %i.ri = phi ptr [ %.pre.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i272 ], [ %i.qr, %bb.co ], [ %i.qb, %bb.cp ], [ %i.qu, %bb.ck ]
  store i64 0, ptr %i.qh, align 8, !tbaa !19
  store i8 0, ptr %i.ri, align 1, !tbaa !18
  %i.rj = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.qb
  br i1 %i.rk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276
  %i.rl = load i64, ptr %i.qb, align 8, !tbaa !18
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ro = load i8, ptr %i.rn, align 1
  %i.rp = and i8 %i.ro, 32
  %.not = icmp eq i8 %i.rp, 0
  br i1 %.not, label %bb.cq, label %bb.ea

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i278
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !186
  %i.rs = zext i8 %i.rr to i32
  %i.rt = invoke { i64, ptr } @_ZN6google8protobuf8compiler4java13FieldTypeNameENS0_8internal19FieldDescriptorLite4TypeE(i32 noundef %i.rs)
          to label %bb.cr unwind label %51        ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.ru = extractvalue { i64, ptr } %i.rt, 0      ; 5 uses
  %i.rv = extractvalue { i64, ptr } %i.rt, 1      ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 11 uses
  store ptr %i.rw, ptr %39, align 8, !tbaa !13
  %i.rx = icmp eq ptr %i.rv, null
  %i.ry = icmp ne i64 %i.ru, 0
  %or.cond.i.i.i283 = and i1 %i.ry, %i.rx
  br i1 %or.cond.i.i.i283, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #22
          to label %.noexc286 unwind label %bb.dy

.noexc286:                                        ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ru, ptr %i.a, align 8, !tbaa !15
  %i.rz = icmp ugt i64 %i.ru, 15
  br i1 %i.rz, label %.noexc.i.i.i285, label %._crit_edge.i.i.i.i284

.noexc.i.i.i285:                                  ; preds = %bb.ct
  %i.sa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc287 unwind label %bb.dy ; 2 uses

.noexc287:                                        ; preds = %.noexc.i.i.i285
  store ptr %i.sa, ptr %39, align 8, !tbaa !17
  %i.sb = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.sb, ptr %i.rw, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i284

._crit_edge.i.i.i.i284:                           ; preds = %.noexc287, %bb.ct
  %i.sc = phi ptr [ %i.sa, %.noexc287 ], [ %i.rw, %bb.ct ] ; 2 uses
  switch i64 %i.ru, label %bb.cv [
    i64 1, label %bb.cu
    i64 0, label %bb.cw
  ]

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i284
  %i.sd = load i8, ptr %i.rv, align 1, !tbaa !18
  store i8 %i.sd, ptr %i.sc, align 1, !tbaa !18
  br label %bb.cw

bb.cv:                                            ; preds = %._crit_edge.i.i.i.i284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr align 1 %i.rv, i64 %i.ru, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %._crit_edge.i.i.i.i284
  %i.se = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 6 uses
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !19
  %i.sg = load ptr, ptr %39, align 8, !tbaa !17
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.se
  store i8 0, ptr %i.sh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA22_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) @.str.19)
          to label %.noexc293 unwind label %bb.dz

.noexc293:                                        ; preds = %bb.cw
  %i.si = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !23, !range !24, !alias.scope !187, !noundef !25
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc293
  %.sroa.2.0..sroa_idx.i.i.i291 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i.i292 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i291, align 8, !alias.scope !187 ; 5 uses
  store i64 21, ptr %.sroa.2.0.copyload.i.i.i292, align 8, !tbaa !27
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i292, i64 8
  store ptr @.str.19, ptr %i.sl, align 8, !tbaa !28
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i292, i64 16
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i292, i64 32 ; 2 uses
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i292, i64 24
  store i64 0, ptr %i.so, align 8, !tbaa !19
  store i8 0, ptr %i.sn, align 8, !tbaa !18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.noexc293
  %.sroa.2.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i290 = load ptr, ptr %.sroa.2.0..sroa_idx.i289, align 8 ; 5 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i290, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !17 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i290, i64 32 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  %i.st = load ptr, ptr %39, align 8, !tbaa !17   ; 6 uses
  %i.su = icmp eq ptr %i.st, %i.rw                ; 2 uses
  br i1 %i.ss, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i300: ; preds = %bb.cy
  br i1 %i.su, label %bb.cz, label %.thread.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i294: ; preds = %bb.cy
  br i1 %i.su, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i295

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i300
  %i.sv = load i64, ptr %i.sf, align 8, !tbaa !19 ; 3 uses
  %i.sw = icmp ult i64 %i.sv, 16
  call void @llvm.assume(i1 %i.sw)
  %.not21.i297 = icmp eq ptr %39, %i.sp
  br i1 %.not21.i297, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302, label %bb.da, !prof !29

bb.da:                                            ; preds = %bb.cz
  switch i64 %i.sv, label %bb.dc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.sx = load i8, ptr %i.st, align 1, !tbaa !18
  store i8 %i.sx, ptr %i.sq, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sq, ptr align 1 %i.st, i64 %i.sv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298: ; preds = %bb.dc, %bb.db, %bb.da
  %i.sy = load i64, ptr %i.sf, align 8, !tbaa !19 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i290, i64 24
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !19
  %i.ta = load ptr, ptr %i.sp, align 8, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.sy
  store i8 0, ptr %i.tb, align 1, !tbaa !18
  %.pre.i299 = load ptr, ptr %39, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302

.thread.i301:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i300
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i290, i64 24
  store ptr %i.st, ptr %i.sp, align 8, !tbaa !17
  %i.td = load <2 x i64>, ptr %i.sf, align 8, !tbaa !18
  store <2 x i64> %i.td, ptr %i.tc, align 8, !tbaa !18
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i295: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i294
  %i.te = load i64, ptr %i.sr, align 8, !tbaa !18
  store ptr %i.st, ptr %i.sp, align 8, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i290, i64 24
  %i.tg = load <2 x i64>, ptr %i.sf, align 8, !tbaa !18
  store <2 x i64> %i.tg, ptr %i.tf, align 8, !tbaa !18
  %.not.i296 = icmp eq ptr %i.sq, null
  br i1 %.not.i296, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i295
  store ptr %i.sq, ptr %39, align 8, !tbaa !17
  store i64 %i.te, ptr %i.rw, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i295, %.thread.i301
  store ptr %i.rw, ptr %39, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302: ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298, %bb.dd, %bb.de
  %i.th = phi ptr [ %.pre.i299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i298 ], [ %i.sq, %bb.dd ], [ %i.rw, %bb.de ], [ %i.st, %bb.cz ]
  store i64 0, ptr %i.sf, align 8, !tbaa !19
  store i8 0, ptr %i.th, align 1, !tbaa !18
  %i.ti = load ptr, ptr %39, align 8, !tbaa !17   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.rw
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302
  %i.tk = load i64, ptr %i.rw, align 8, !tbaa !18
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.ft

bb.df:                                            ; preds = %.noexc.i.i.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.dg:                                            ; preds = %bb.d
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.to = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.p
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.dg
  %i.tq = load i64, ptr %i.p, align 8, !tbaa !18
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.tr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.df
  %.pn = phi { ptr, i32 } [ %i.tm, %bb.df ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %i.tn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.fv

bb.dh:                                            ; preds = %.noexc.i.i.i115
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

bb.di:                                            ; preds = %bb.q
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tu = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.bs
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.di
  %i.tw = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %bb.dh
  %.pn73 = phi { ptr, i32 } [ %i.ts, %bb.dh ], [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %i.tt, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.fv

bb.dj:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEixIA21_cSC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSO_EclL_ZSt7declvalIRSH_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit
  %i.ty = landingpad { ptr, i32 }
          cleanup
  %i.tz = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.dj
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !18
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.fv

bb.dk:                                            ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.ue = landingpad { ptr, i32 }
          cleanup
  %i.uf = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.fq
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.dk
  %i.uh = load i64, ptr %i.fq, align 8, !tbaa !18
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.ui) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.fv

bb.dl:                                            ; preds = %bb.bc, %bb.ba
  %i.uj = landingpad { ptr, i32 }
          cleanup
  %i.uk = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.um = icmp eq ptr %i.uk, %i.ul
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.dl
  %i.un = load i64, ptr %i.ul, align 8, !tbaa !18
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.uo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.fv

bb.dm:                                            ; preds = %.noexc.i.i207
  %i.up = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uq = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.js
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.dm
  %i.us = load i64, ptr %i.js, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.sink.split

bb.dn:                                            ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %bb.ec, %bb.ea
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit219
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dp:                                            ; preds = %.noexc.i223, %bb.bm
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

bb.dq:                                            ; preds = %bb.bq
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.dq
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !18
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324, %bb.dp
  %.pn75 = phi { ptr, i32 } [ %i.uv, %bb.dp ], [ %i.uw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324 ], [ %i.uw, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.do
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %i.uu, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.fu

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dt:                                            ; preds = %.noexc.i246, %bb.ca
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

bb.du:                                            ; preds = %bb.cg, %bb.ce
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vf = load ptr, ptr %35, align 8, !tbaa !17   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.du
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !18
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327, %bb.dt
  %.pn79 = phi { ptr, i32 } [ %i.vd, %bb.dt ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327 ], [ %i.ve, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %bb.ds
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ %i.vc, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.fu

bb.dw:                                            ; preds = %.noexc.i.i260
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

bb.dx:                                            ; preds = %bb.ch
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vm = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.qb
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.dx
  %i.vo = load i64, ptr %i.qb, align 8, !tbaa !18
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330, %bb.dw
  %.pn82 = phi { ptr, i32 } [ %i.vk, %bb.dw ], [ %i.vl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330 ], [ %i.vl, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %bb.fu

51:                                               ; preds = %bb.cq
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.dy:                                            ; preds = %.noexc.i.i.i285, %bb.cs
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.dz:                                            ; preds = %bb.cw
  %i.vr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vs = load ptr, ptr %39, align 8, !tbaa !17   ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.rw
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.dz
  %i.vu = load i64, ptr %i.rw, align 8, !tbaa !18
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.dz, %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333, %51
  %.pn84.pn = phi { ptr, i32 } [ %52, %51 ], [ %i.vq, %bb.dy ], [ %i.vr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333 ], [ %i.vr, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.fu

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i278
  %i.vw = invoke noundef i32 @_ZN6google8protobuf8compiler4java11GetJavaTypeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0)
          to label %bb.eb unwind label %bb.dn

bb.eb:                                            ; preds = %bb.ea
  %i.vx = icmp eq i32 %i.vw, 8
  br i1 %i.vx, label %bb.ec, label %bb.et

bb.ec:                                            ; preds = %bb.eb
  %i.vy = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.ed unwind label %bb.dn

bb.ed:                                            ; preds = %bb.ec
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !188
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 51
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !18, !range !24, !noundef !25
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.ee, label %bb.et

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.wf = load i8, ptr %i.we, align 2, !tbaa !186
  %i.wg = zext i8 %i.wf to i32
  %i.wh = invoke { i64, ptr } @_ZN6google8protobuf8compiler4java13FieldTypeNameENS0_8internal19FieldDescriptorLite4TypeE(i32 noundef %i.wg)
          to label %bb.ef unwind label %bb.ep     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.wi = extractvalue { i64, ptr } %i.wh, 0
  %i.wj = extractvalue { i64, ptr } %i.wh, 1
  store i64 %i.wi, ptr %41, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %i.wj, ptr %.sroa.2.0..sroa_idx.i336, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  store i64 3, ptr %42, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr @.str.20, ptr %i.wk, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(48) %42)
          to label %bb.eg unwind label %bb.eq

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA22_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) @.str.19)
          to label %.noexc341 unwind label %bb.er

.noexc341:                                        ; preds = %bb.eg
  %i.wl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wm = load i8, ptr %i.wl, align 8, !tbaa !23, !range !24, !alias.scope !189, !noundef !25
  %i.wn = trunc nuw i8 %i.wm to i1
  br i1 %i.wn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.noexc341
  %.sroa.2.0..sroa_idx.i.i.i339 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i340 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i339, align 8, !alias.scope !189 ; 5 uses
  store i64 21, ptr %.sroa.2.0.copyload.i.i.i340, align 8, !tbaa !27
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i340, i64 8
  store ptr @.str.19, ptr %i.wo, align 8, !tbaa !28
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i340, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i340, i64 32 ; 2 uses
  store ptr %i.wq, ptr %i.wp, align 8, !tbaa !13
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i340, i64 24
  store i64 0, ptr %i.wr, align 8, !tbaa !19
  store i8 0, ptr %i.wq, align 8, !tbaa !18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.noexc341
  %.sroa.2.0..sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i338 = load ptr, ptr %.sroa.2.0..sroa_idx.i337, align 8 ; 5 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i338, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !17 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i338, i64 32 ; 2 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu
  %i.ww = load ptr, ptr %40, align 8, !tbaa !17   ; 6 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx                ; 2 uses
  br i1 %i.wv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i349: ; preds = %bb.ei
  br i1 %i.wy, label %bb.ej, label %.thread.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i343: ; preds = %bb.ei
  br i1 %i.wy, label %bb.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i344

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i349
  %i.wz = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !19 ; 3 uses
  %i.xb = icmp ult i64 %i.xa, 16
  call void @llvm.assume(i1 %i.xb)
  %.not21.i346 = icmp eq ptr %40, %i.ws
  br i1 %.not21.i346, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351, label %bb.ek, !prof !29

bb.ek:                                            ; preds = %bb.ej
  switch i64 %i.xa, label %bb.em [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347
    i64 1, label %bb.el
  ]

bb.el:                                            ; preds = %bb.ek
  %i.xc = load i8, ptr %i.ww, align 1, !tbaa !18
  store i8 %i.xc, ptr %i.wt, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347

bb.em:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wt, ptr align 1 %i.ww, i64 %i.xa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347: ; preds = %bb.em, %bb.el, %bb.ek
  %i.xd = load i64, ptr %i.wz, align 8, !tbaa !19 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i338, i64 24
  store i64 %i.xd, ptr %i.xe, align 8, !tbaa !19
  %i.xf = load ptr, ptr %i.ws, align 8, !tbaa !17
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xd
  store i8 0, ptr %i.xg, align 1, !tbaa !18
  %.pre.i348 = load ptr, ptr %40, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351

.thread.i350:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i349
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i338, i64 24
  store ptr %i.ww, ptr %i.ws, align 8, !tbaa !17
  %i.xi = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.xj = load <2 x i64>, ptr %i.xi, align 8, !tbaa !18
  store <2 x i64> %i.xj, ptr %i.xh, align 8, !tbaa !18
  br label %bb.eo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i344: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i343
  %i.xk = load i64, ptr %i.wu, align 8, !tbaa !18
  store ptr %i.ww, ptr %i.ws, align 8, !tbaa !17
  %i.xl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i338, i64 24
  %i.xn = load <2 x i64>, ptr %i.xl, align 8, !tbaa !18
  store <2 x i64> %i.xn, ptr %i.xm, align 8, !tbaa !18
  %.not.i345 = icmp eq ptr %i.wt, null
  br i1 %.not.i345, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i344
  store ptr %i.wt, ptr %40, align 8, !tbaa !17
  store i64 %i.xk, ptr %i.wx, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i344, %.thread.i350
  store ptr %i.wx, ptr %40, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351: ; preds = %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347, %bb.en, %bb.eo
  %i.xo = phi ptr [ %.pre.i348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i347 ], [ %i.wt, %bb.en ], [ %i.wx, %bb.eo ], [ %i.ww, %bb.ej ]
  %i.xp = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.xp, align 8, !tbaa !19
  store i8 0, ptr %i.xo, align 1, !tbaa !18
  %i.xq = load ptr, ptr %40, align 8, !tbaa !17   ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.xs = icmp eq ptr %i.xq, %i.xr
  br i1 %i.xs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351
  %i.xt = load i64, ptr %i.xr, align 8, !tbaa !18
  %i.xu = add i64 %i.xt, 1
  call void @_ZdlPvm(ptr noundef %i.xq, i64 noundef %i.xu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.ft

bb.ep:                                            ; preds = %bb.ee
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eq:                                            ; preds = %bb.ef
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

bb.er:                                            ; preds = %bb.eg
  %i.xx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xy = load ptr, ptr %40, align 8, !tbaa !17   ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ya = icmp eq ptr %i.xy, %i.xz
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.er
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !18
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.eq
  %.pn93 = phi { ptr, i32 } [ %i.xw, %bb.eq ], [ %i.xx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %i.xx, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.es

end_hunk_0
