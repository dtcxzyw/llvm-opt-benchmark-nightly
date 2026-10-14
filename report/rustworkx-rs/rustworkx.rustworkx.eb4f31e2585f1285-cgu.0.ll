Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market31load_coo_from_matrix_market_strdECskcxRuJ53GpR_9rustworkx:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !34706)
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !34707, !nonnull !67, !noundef !67 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !34708, !noundef !67
  %i.gc = add i64 %i.gb, -1                       ; 2 uses
  store i64 %i.gc, ptr %i.ga, align 8, !noalias !34708
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.k, label %bb.yz

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fz) #62
          to label %bb.yz unwind label %bb.m

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i, %bb.h
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34709)
  call void @llvm.experimental.noalias.scope.decl(metadata !34710)
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !34711, !nonnull !67, !noundef !67 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !34712, !noundef !67
  %i.gh = add i64 %i.gg, -1                       ; 2 uses
  store i64 %i.gh, ptr %i.gf, align 8, !noalias !34712
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.l, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ge) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.n:                                             ; preds = %bb.g
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #61
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.yz

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  store i64 0, ptr %i.fa, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 10 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 15 uses
  store i64 0, ptr %i.gm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  store i64 0, ptr %i.ez, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 10 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 15 uses
  store i64 0, ptr %i.go, align 8
  store i64 0, ptr %i.dg, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 9 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 8 uses
  store i64 0, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.fe, i64 40, i1 false)
  invoke fastcc void @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE10into_innerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ey, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ex)
          to label %bb.r unwind label %bb.q

.thread998.thread1146:                            ; preds = %bb.fl, %bb.wd
  %lpad.thr_comm1144 = landingpad { ptr, i32 }
          cleanup
  br label %.thread986

bb.q:                                             ; preds = %bb.yu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.thread986

bb.r:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ev, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ey)
          to label %bb.s unwind label %.thread1031

.thread1031:                                      ; preds = %.invoke, %bb.ec, %bb.t, %bb.fh, %bb.fc, %bb.r, %bb.ei, %bb.dc, %bb.dl, %bb.dr, %bb.dd, %bb.cz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit420, %bb.cv
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1002

bb.s:                                             ; preds = %bb.r
  %i.gs = load ptr, ptr %i.ev, align 8, !noundef !67
  %.not355 = icmp eq ptr %i.gs, null
  br i1 %.not355, label %.invoke, label %bb.t, !prof !71

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(40) %i.ev, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  invoke fastcc void @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE10into_innerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.et, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ew)
          to label %bb.u unwind label %.thread1031

.invoke:                                          ; preds = %bb.da, %bb.s
  %i.gt = phi ptr [ @1042, %bb.s ], [ @1043, %bb.da ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt) #61
          to label %.cont unwind label %.thread1031

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !34713
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.et)
          to label %.noexc410 unwind label %bb.cq

.noexc410:                                        ; preds = %bb.u
  %i.gu = load ptr, ptr %i.cz, align 8, !noalias !34713, !noundef !67
  %.not.i = icmp eq ptr %i.gu, null
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !71

bb.v:                                             ; preds = %.noexc410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i64 40, i1 false), !noalias !34713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !34713
  %i.gv = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.da)
          to label %bb.ad unwind label %bb.ac, !noalias !34713 ; 2 uses

bb.w:                                             ; preds = %.noexc410
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3213) #60
          to label %.noexc411 unwind label %bb.cq

.noexc411:                                        ; preds = %bb.w
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body17.i, %bb.ac
  %.pn11.i = phi { ptr, i32 } [ %i.hm, %bb.ac ], [ %.pn9.i, %.body17.i ], [ %.pn9.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34714)
  call void @llvm.experimental.noalias.scope.decl(metadata !34715), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34716), !noalias !34713
  %i.gw = load ptr, ptr %i.da, align 8, !alias.scope !34717, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !34718, !noundef !67
  %i.gy = add i64 %i.gx, -1                       ; 2 uses
  store i64 %i.gy, ptr %i.gw, align 8, !noalias !34718
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850

bb.x:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850 unwind label %bb.y, !noalias !34713

bb.y:                                             ; preds = %bb.x
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34719), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34720), !noalias !34713
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !34721, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !34722, !noundef !67
  %i.he = add i64 %i.hd, -1                       ; 2 uses
  store i64 %i.he, ptr %i.hc, align 8, !noalias !34722
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.z, label %.body841

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hb) #62
          to label %.body841 unwind label %bb.ab, !noalias !34713

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850: ; preds = %bb.x, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34723), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34724), !noalias !34713
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !34725, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !34726, !noundef !67
  %i.hj = add i64 %i.hi, -1                       ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !noalias !34726
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.aa, label %.body413

bb.aa:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hg) #62
          to label %.body413 unwind label %bb.cp

bb.ab:                                            ; preds = %bb.z
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34713
  unreachable

bb.ac:                                            ; preds = %bb.ag, %bb.v
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i

bb.ad:                                            ; preds = %bb.v
  %i.hn = extractvalue { ptr, i64 } %i.gv, 0      ; 6 uses
  %i.ho = extractvalue { ptr, i64 } %i.gv, 1      ; 17 uses
  %.not.i.i.i = icmp slt i64 %i.ho, 0
  br i1 %.not.i.i.i, label %bb.ag, label %bb.ae, !prof !73

bb.ae:                                            ; preds = %bb.ad
  %i.hp = icmp eq i64 %i.ho, 0                    ; 3 uses
  br i1 %i.hp, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34727
  %i.hq = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34727 ; 11 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ag, label %iter.check

iter.check:                                       ; preds = %bb.af
  %min.iters.check = icmp ult i64 %i.ho, 8
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %3 = ptrtoaddr ptr %i.hn to i64
  %i.ht = sub i64 %3, %i.hs
  %diff.check = icmp ugt i64 %i.ht, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2013 = icmp ult i64 %i.ho, 32
  br i1 %min.iters.check2013, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hu = and i64 %i.ho, 24
  %n.vec = and i64 %i.ho, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %wide.load = load <16 x i8>, ptr %i.hv, align 1, !noalias !34728 ; 2 uses
  %wide.load2014 = load <16 x i8>, ptr %i.hw, align 1, !noalias !34728 ; 2 uses
  %i.hx = add <16 x i8> %wide.load, splat (i8 -65)
  %i.hy = add <16 x i8> %wide.load2014, splat (i8 -65)
  %i.hz = icmp ult <16 x i8> %i.hx, splat (i8 26)
  %i.ia = icmp ult <16 x i8> %i.hy, splat (i8 26)
  %i.ib = select <16 x i1> %i.hz, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ic = select <16 x i1> %i.ia, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.id = or <16 x i8> %i.ib, %wide.load
  %i.ie = or <16 x i8> %i.ic, %wide.load2014
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 %index ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <16 x i8> %i.id, ptr %i.if, align 1, !noalias !34729
  store <16 x i8> %i.ie, ptr %i.ig, align 1, !noalias !34729
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !33660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ho, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hu, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2015 = and i64 %i.ho, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2016 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2018, %vec.epilog.vector.body ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hn, i64 %index2016
  %wide.load2017 = load <8 x i8>, ptr %i.ii, align 1, !noalias !34728 ; 2 uses
  %i.ij = add <8 x i8> %wide.load2017, splat (i8 -65)
  %i.ik = icmp ult <8 x i8> %i.ij, splat (i8 26)
  %i.il = select <8 x i1> %i.ik, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.im = or <8 x i8> %i.il, %wide.load2017
  %i.in = getelementptr inbounds nuw i8, ptr %i.hq, i64 %index2016
  store <8 x i8> %i.im, ptr %i.in, align 1, !noalias !34729
  %index.next2018 = add nuw i64 %index2016, 8     ; 2 uses
  %i.io = icmp eq i64 %index.next2018, %n.vec2015
  br i1 %i.io, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33661

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2019 = icmp eq i64 %i.ho, %n.vec2015
  br i1 %cmp.n2019, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph2246 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2015, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.ph2246, 1
  %xtraiter = and i64 %i.ho, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.i.i.i.i.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.ph2246
  %.val15.i.i.i.i.i.i.i.prol = load i8, ptr %i.ip, align 1, !noalias !34728, !noundef !67 ; 2 uses
  %i.iq = add i8 %.val15.i.i.i.i.i.i.i.prol, -65
  %i.ir = icmp ult i8 %i.iq, 26
  %i.is = select i1 %i.ir, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.prol = or i8 %i.is, %.val15.i.i.i.i.i.i.i.prol
  %i.it = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.ph2246
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.prol, ptr %i.it, align 1, !noalias !34729
  %i.iu = or disjoint i64 %.ph2246, 1
  br label %.preheader.i.i.i.i.prol.loopexit

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %.preheader.i.i.i.i.prol, %.preheader.i.i.i.i.preheader
  %.unr = phi i64 [ %.ph2246, %.preheader.i.i.i.i.preheader ], [ %i.iu, %.preheader.i.i.i.i.prol ]
  %i.iv = icmp eq i64 %i.ho, %.neg
  br i1 %i.iv, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ho) #61
          to label %.noexc.i unwind label %bb.ac, !noalias !34713

.noexc.i:                                         ; preds = %bb.ag
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i
  %i.iw = phi i64 [ %i.ji, %.preheader.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.iw
  %.val15.i.i.i.i.i.i.i = load i8, ptr %i.ix, align 1, !noalias !34728, !noundef !67 ; 2 uses
  %i.iy = add i8 %.val15.i.i.i.i.i.i.i, -65
  %i.iz = icmp ult i8 %i.iy, 26
  %i.ja = select i1 %i.iz, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = or i8 %i.ja, %.val15.i.i.i.i.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.iw
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.jb, align 1, !noalias !34729
  %i.jc = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.jc
  %.val15.i.i.i.i.i.i.i.1 = load i8, ptr %i.jd, align 1, !noalias !34728, !noundef !67 ; 2 uses
  %i.je = add i8 %.val15.i.i.i.i.i.i.i.1, -65
  %i.jf = icmp ult i8 %i.je, 26
  %i.jg = select i1 %i.jf, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.1 = or i8 %i.jg, %.val15.i.i.i.i.i.i.i.1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jc
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.1, ptr %i.jh, align 1, !noalias !34729
  %i.ji = add nuw nsw i64 %i.iw, 2                ; 2 uses
  %i.jj = icmp eq i64 %i.ji, %i.ho
  br i1 %i.jj, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i, !llvm.loop !33662

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.ae
  %i.jk = phi ptr [ inttoptr (i64 1 to ptr), %bb.ae ], [ %i.hq, %middle.block ], [ %i.hq, %vec.epilog.middle.block ], [ %i.hq, %.preheader.i.i.i.i ], [ %i.hq, %.preheader.i.i.i.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs7_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_8SparsityNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jk, i64 noundef %i.ho)
          to label %bb.ai unwind label %bb.ah, !noalias !34713

.body17.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844, %bb.au, %bb.ch, %bb.cg, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409, %bb.ak, %bb.ah
  %.pn9.i = phi { ptr, i32 } [ %i.qi, %bb.cg ], [ %i.jn, %bb.ak ], [ %i.jl, %bb.ah ], [ %i.jn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409 ], [ %i.qi, %bb.ch ], [ %.pn7.i, %bb.au ], [ %.pn7.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844 ] ; 2 uses
  br i1 %i.hp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body17.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jk, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34730
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i

bb.ah:                                            ; preds = %bb.ci, %bb.ap, %bb.am, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

bb.ai:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34731)
  %i.jm = load i64, ptr %i.db, align 8, !range !66, !alias.scope !34731, !noalias !34713, !noundef !67
  %.not.i16.i = icmp eq i64 %i.jm, -1
  br i1 %.not.i16.i, label %bb.am, label %bb.aj, !prof !77

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !34732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !34713
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3214) #61
          to label %bb.al unwind label %bb.ak, !noalias !34732

bb.ak:                                            ; preds = %bb.aj
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34733)
  call void @llvm.experimental.noalias.scope.decl(metadata !34734), !noalias !34731
  call void @llvm.experimental.noalias.scope.decl(metadata !34735), !noalias !34731
  %.val.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !34736, !noalias !34732 ; 2 uses
  %i.jo = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.jo, label %.body17.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409: ; preds = %bb.ak
  %i.jp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !34736, !noalias !34732, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34737
  br label %.body17.i

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ai
  %i.jq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.jr = load i8, ptr %i.jq, align 8, !range !69, !alias.scope !34731, !noalias !34713, !noundef !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !34713
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.et)
          to label %bb.an unwind label %bb.ah

bb.an:                                            ; preds = %bb.am
  %i.js = load ptr, ptr %i.cw, align 8, !noalias !34713, !noundef !67
  %.not2.i = icmp eq ptr %i.js, null
  br i1 %.not2.i, label %bb.ap, label %bb.ao, !prof !71

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i64 40, i1 false), !noalias !34713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !34713
  %i.jt = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cx)
          to label %bb.ax unwind label %bb.aw, !noalias !34713 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3215) #61
          to label %bb.aq unwind label %bb.ah, !noalias !34713

bb.aq:                                            ; preds = %bb.bj, %bb.ap
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i, %.body14.i, %bb.aw
  %.pn7.i = phi { ptr, i32 } [ %i.kk, %bb.aw ], [ %.pn5.i, %.body14.i ], [ %.pn5.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34738)
  call void @llvm.experimental.noalias.scope.decl(metadata !34739), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34740), !noalias !34713
  %i.ju = load ptr, ptr %i.cx, align 8, !alias.scope !34741, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !34742, !noundef !67
  %i.jw = add i64 %i.jv, -1                       ; 2 uses
  store i64 %i.jw, ptr %i.ju, align 8, !noalias !34742
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %bb.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844

bb.ar:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844 unwind label %bb.as, !noalias !34713

bb.as:                                            ; preds = %bb.ar
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34743), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34744), !noalias !34713
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !34745, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !34746, !noundef !67
  %i.kc = add i64 %i.kb, -1                       ; 2 uses
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !34746
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.at, label %.body841

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jz) #62
          to label %.body841 unwind label %bb.av, !noalias !34713

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844: ; preds = %bb.ar, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34747), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34748), !noalias !34713
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !34749, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !34750, !noundef !67
  %i.kh = add i64 %i.kg, -1                       ; 2 uses
  store i64 %i.kh, ptr %i.kf, align 8, !noalias !34750
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.au, label %.body17.i

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ke) #62
          to label %.body17.i unwind label %bb.cp

bb.av:                                            ; preds = %bb.at
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34713
  unreachable

bb.aw:                                            ; preds = %bb.ba, %bb.ao
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i

bb.ax:                                            ; preds = %bb.ao
  %i.kl = extractvalue { ptr, i64 } %i.jt, 0      ; 6 uses
  %i.km = extractvalue { ptr, i64 } %i.jt, 1      ; 17 uses
  %.not.i.i19.i = icmp slt i64 %i.km, 0
  br i1 %.not.i.i19.i, label %bb.ba, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %bb.ax
  %i.kn = icmp eq i64 %i.km, 0                    ; 3 uses
  br i1 %i.kn, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34751
  %i.ko = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34751 ; 11 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.ba, label %iter.check2035

iter.check2035:                                   ; preds = %bb.az
  %min.iters.check2022 = icmp ult i64 %i.km, 8
  %i.kq = ptrtoaddr ptr %i.ko to i64
  %4 = ptrtoaddr ptr %i.kl to i64
  %i.kr = sub i64 %4, %i.kq
  %diff.check2021 = icmp ugt i64 %i.kr, -32
  %or.cond2076 = select i1 %min.iters.check2022, i1 true, i1 %diff.check2021
  br i1 %or.cond2076, label %.preheader.i.i.i21.i.preheader, label %vector.main.loop.iter.check2023

vector.main.loop.iter.check2023:                  ; preds = %iter.check2035
  %min.iters.check2024 = icmp ult i64 %i.km, 32
  br i1 %min.iters.check2024, label %vec.epilog.ph2039, label %vector.ph2025

vector.ph2025:                                    ; preds = %vector.main.loop.iter.check2023
  %i.ks = and i64 %i.km, 24
  %n.vec2026 = and i64 %i.km, 9223372036854775776 ; 4 uses
  br label %vector.body2027

vector.body2027:                                  ; preds = %vector.ph2025, %vector.body2027
  %index2028 = phi i64 [ 0, %vector.ph2025 ], [ %index.next2031, %vector.body2027 ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 %index2028 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load2029 = load <16 x i8>, ptr %i.kt, align 1, !noalias !34752 ; 2 uses
  %wide.load2030 = load <16 x i8>, ptr %i.ku, align 1, !noalias !34752 ; 2 uses
  %i.kv = add <16 x i8> %wide.load2029, splat (i8 -65)
  %i.kw = add <16 x i8> %wide.load2030, splat (i8 -65)
  %i.kx = icmp ult <16 x i8> %i.kv, splat (i8 26)
  %i.ky = icmp ult <16 x i8> %i.kw, splat (i8 26)
  %i.kz = select <16 x i1> %i.kx, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.la = select <16 x i1> %i.ky, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.lb = or <16 x i8> %i.kz, %wide.load2029
  %i.lc = or <16 x i8> %i.la, %wide.load2030
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ko, i64 %index2028 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <16 x i8> %i.lb, ptr %i.ld, align 1, !noalias !34753
  store <16 x i8> %i.lc, ptr %i.le, align 1, !noalias !34753
  %index.next2031 = add nuw i64 %index2028, 32    ; 2 uses
  %i.lf = icmp eq i64 %index.next2031, %n.vec2026
  br i1 %i.lf, label %middle.block2032, label %vector.body2027, !llvm.loop !33709

middle.block2032:                                 ; preds = %vector.body2027
  %cmp.n2033 = icmp eq i64 %i.km, %n.vec2026
  br i1 %cmp.n2033, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %vec.epilog.iter.check2037

vec.epilog.iter.check2037:                        ; preds = %middle.block2032
  %min.epilog.iters.check2038 = icmp eq i64 %i.ks, 0
  br i1 %min.epilog.iters.check2038, label %.preheader.i.i.i21.i.preheader, label %vec.epilog.ph2039, !prof !147

vec.epilog.ph2039:                                ; preds = %vector.main.loop.iter.check2023, %vec.epilog.iter.check2037
  %vec.epilog.resume.val2034 = phi i64 [ %n.vec2026, %vec.epilog.iter.check2037 ], [ 0, %vector.main.loop.iter.check2023 ]
  %n.vec2040 = and i64 %i.km, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body2041

vec.epilog.vector.body2041:                       ; preds = %vec.epilog.vector.body2041, %vec.epilog.ph2039
  %index2042 = phi i64 [ %vec.epilog.resume.val2034, %vec.epilog.ph2039 ], [ %index.next2044, %vec.epilog.vector.body2041 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kl, i64 %index2042
  %wide.load2043 = load <8 x i8>, ptr %i.lg, align 1, !noalias !34752 ; 2 uses
  %i.lh = add <8 x i8> %wide.load2043, splat (i8 -65)
  %i.li = icmp ult <8 x i8> %i.lh, splat (i8 26)
  %i.lj = select <8 x i1> %i.li, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.lk = or <8 x i8> %i.lj, %wide.load2043
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ko, i64 %index2042
  store <8 x i8> %i.lk, ptr %i.ll, align 1, !noalias !34753
  %index.next2044 = add nuw i64 %index2042, 8     ; 2 uses
  %i.lm = icmp eq i64 %index.next2044, %n.vec2040
  br i1 %i.lm, label %vec.epilog.middle.block2045, label %vec.epilog.vector.body2041, !llvm.loop !33710

vec.epilog.middle.block2045:                      ; preds = %vec.epilog.vector.body2041
  %cmp.n2046 = icmp eq i64 %i.km, %n.vec2040
  br i1 %cmp.n2046, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i.preheader

.preheader.i.i.i21.i.preheader:                   ; preds = %iter.check2035, %vec.epilog.iter.check2037, %vec.epilog.middle.block2045
  %.ph2245 = phi i64 [ 0, %iter.check2035 ], [ %n.vec2026, %vec.epilog.iter.check2037 ], [ %n.vec2040, %vec.epilog.middle.block2045 ] ; 5 uses
  %.neg2253 = or disjoint i64 %.ph2245, 1
  %xtraiter2247 = and i64 %i.km, 1
  %lcmp.mod2248.not = icmp eq i64 %xtraiter2247, 0
  br i1 %lcmp.mod2248.not, label %.preheader.i.i.i21.i.prol.loopexit, label %.preheader.i.i.i21.i.prol

.preheader.i.i.i21.i.prol:                        ; preds = %.preheader.i.i.i21.i.preheader
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.ph2245
  %.val15.i.i.i.i.i.i22.i.prol = load i8, ptr %i.ln, align 1, !noalias !34752, !noundef !67 ; 2 uses
  %i.lo = add i8 %.val15.i.i.i.i.i.i22.i.prol, -65
  %i.lp = icmp ult i8 %i.lo, 26
  %i.lq = select i1 %i.lp, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i.prol = or i8 %i.lq, %.val15.i.i.i.i.i.i22.i.prol
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.ph2245
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i.prol, ptr %i.lr, align 1, !noalias !34753
  %i.ls = or disjoint i64 %.ph2245, 1
  br label %.preheader.i.i.i21.i.prol.loopexit

.preheader.i.i.i21.i.prol.loopexit:               ; preds = %.preheader.i.i.i21.i.prol, %.preheader.i.i.i21.i.preheader
  %.unr2249 = phi i64 [ %.ph2245, %.preheader.i.i.i21.i.preheader ], [ %i.ls, %.preheader.i.i.i21.i.prol ]
  %i.lt = icmp eq i64 %i.km, %.neg2253
  br i1 %i.lt, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.sroa.4.0.ph.i26.i = phi i64 [ 1, %bb.az ], [ 0, %bb.ax ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i26.i, i64 %i.km) #61
          to label %.noexc27.i unwind label %bb.aw, !noalias !34713

.noexc27.i:                                       ; preds = %bb.ba
  unreachable

.preheader.i.i.i21.i:                             ; preds = %.preheader.i.i.i21.i.prol.loopexit, %.preheader.i.i.i21.i
  %i.lu = phi i64 [ %i.mg, %.preheader.i.i.i21.i ], [ %.unr2249, %.preheader.i.i.i21.i.prol.loopexit ] ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.lu
  %.val15.i.i.i.i.i.i22.i = load i8, ptr %i.lv, align 1, !noalias !34752, !noundef !67 ; 2 uses
  %i.lw = add i8 %.val15.i.i.i.i.i.i22.i, -65
  %i.lx = icmp ult i8 %i.lw, 26
  %i.ly = select i1 %i.lx, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i = or i8 %i.ly, %.val15.i.i.i.i.i.i22.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.lu
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i, ptr %i.lz, align 1, !noalias !34753
  %i.ma = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ma
  %.val15.i.i.i.i.i.i22.i.1 = load i8, ptr %i.mb, align 1, !noalias !34752, !noundef !67 ; 2 uses
  %i.mc = add i8 %.val15.i.i.i.i.i.i22.i.1, -65
  %i.md = icmp ult i8 %i.mc, 26
  %i.me = select i1 %i.md, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i.1 = or i8 %i.me, %.val15.i.i.i.i.i.i22.i.1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ma
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i.1, ptr %i.mf, align 1, !noalias !34753
  %i.mg = add nuw nsw i64 %i.lu, 2                ; 2 uses
  %i.mh = icmp eq i64 %i.mg, %i.km
  br i1 %i.mh, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i, !llvm.loop !33711

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i: ; preds = %.preheader.i.i.i21.i.prol.loopexit, %.preheader.i.i.i21.i, %middle.block2032, %vec.epilog.middle.block2045, %bb.ay
  %i.mi = phi ptr [ inttoptr (i64 1 to ptr), %bb.ay ], [ %i.ko, %middle.block2032 ], [ %i.ko, %vec.epilog.middle.block2045 ], [ %i.ko, %.preheader.i.i.i21.i ], [ %i.ko, %.preheader.i.i.i21.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs8_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_8DataTypeNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mi, i64 noundef %i.km)
          to label %bb.bc unwind label %bb.bb, !noalias !34713

.body14.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838, %bb.bn, %bb.cc, %bb.cb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i, %bb.be, %bb.bb
  %.pn5.i = phi { ptr, i32 } [ %i.ps, %bb.cb ], [ %i.ml, %bb.be ], [ %i.mj, %bb.bb ], [ %i.ml, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i ], [ %i.ps, %bb.cc ], [ %.pn.i, %bb.bn ], [ %.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838 ] ; 2 uses
  br i1 %i.kn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i: ; preds = %.body14.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mi, i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34754
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i

bb.bb:                                            ; preds = %bb.cd, %bb.bj, %bb.bg, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

bb.bc:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34755)
  %i.mk = load i64, ptr %i.cy, align 8, !range !66, !alias.scope !34755, !noalias !34713, !noundef !67
  %.not.i13.i = icmp eq i64 %i.mk, -1
  br i1 %.not.i13.i, label %bb.bg, label %bb.bd, !prof !77

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !34756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !noalias !34713
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3216) #61
          to label %bb.bf unwind label %bb.be, !noalias !34756

bb.be:                                            ; preds = %bb.bd
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34757)
  call void @llvm.experimental.noalias.scope.decl(metadata !34758), !noalias !34755
  call void @llvm.experimental.noalias.scope.decl(metadata !34759), !noalias !34755
  %.val.i.i.i33.i = load i64, ptr %i.cr, align 8, !alias.scope !34760, !noalias !34756 ; 2 uses
  %i.mm = icmp eq i64 %.val.i.i.i33.i, 0
  br i1 %i.mm, label %.body14.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i: ; preds = %bb.be
  %i.mn = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.val1.i.i.i35.i = load ptr, ptr %i.mn, align 8, !alias.scope !34760, !noalias !34756, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i35.i, i64 noundef %.val.i.i.i33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34761
  br label %.body14.i

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.bc
  %i.mo = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.mp = load i8, ptr %i.mo, align 8, !range !146, !alias.scope !34755, !noalias !34713, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !34713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !34713
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.et)
          to label %bb.bh unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bg
  %i.mq = load ptr, ptr %i.ct, align 8, !noalias !34713, !noundef !67
  %.not3.i = icmp eq ptr %i.mq, null
  br i1 %.not3.i, label %bb.bj, label %bb.bi, !prof !71

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !34713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !34713
  %i.mr = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cu)
          to label %bb.bq unwind label %bb.bp, !noalias !34713 ; 2 uses

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3217) #61
          to label %bb.aq unwind label %bb.bb, !noalias !34713

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i, %.body.i, %bb.bp
  %.pn.i = phi { ptr, i32 } [ %i.ni, %bb.bp ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34762)
  call void @llvm.experimental.noalias.scope.decl(metadata !34763), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34764), !noalias !34713
  %i.ms = load ptr, ptr %i.cu, align 8, !alias.scope !34765, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !34766, !noundef !67
  %i.mu = add i64 %i.mt, -1                       ; 2 uses
  store i64 %i.mu, ptr %i.ms, align 8, !noalias !34766
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %bb.bk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838

bb.bk:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838 unwind label %bb.bl, !noalias !34713

bb.bl:                                            ; preds = %bb.bk
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34767), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34768), !noalias !34713
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !34769, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !noalias !34770, !noundef !67
  %i.na = add i64 %i.mz, -1                       ; 2 uses
  store i64 %i.na, ptr %i.my, align 8, !noalias !34770
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.bm, label %.body841

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mx) #62
          to label %.body841 unwind label %bb.bo, !noalias !34713

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838: ; preds = %bb.bk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34771), !noalias !34713
  call void @llvm.experimental.noalias.scope.decl(metadata !34772), !noalias !34713
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !34773, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !34774, !noundef !67
  %i.nf = add i64 %i.ne, -1                       ; 2 uses
  store i64 %i.nf, ptr %i.nd, align 8, !noalias !34774
  %i.ng = icmp eq i64 %i.nf, 0
  br i1 %i.ng, label %bb.bn, label %.body14.i

bb.bn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nc) #62
          to label %.body14.i unwind label %bb.cp

bb.bo:                                            ; preds = %bb.bm
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34713
  unreachable

bb.bp:                                            ; preds = %bb.bt, %bb.bi
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i

bb.bq:                                            ; preds = %bb.bi
  %i.nj = extractvalue { ptr, i64 } %i.mr, 0      ; 6 uses
  %i.nk = extractvalue { ptr, i64 } %i.mr, 1      ; 17 uses
  %.not.i.i37.i = icmp slt i64 %i.nk, 0
  br i1 %.not.i.i37.i, label %bb.bt, label %bb.br, !prof !73

bb.br:                                            ; preds = %bb.bq
  %i.nl = icmp eq i64 %i.nk, 0                    ; 3 uses
  br i1 %i.nl, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34775
  %i.nm = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34775 ; 11 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bt, label %iter.check2063

iter.check2063:                                   ; preds = %bb.bs
  %min.iters.check2052 = icmp ult i64 %i.nk, 8
  %i.no = ptrtoaddr ptr %i.nm to i64
  %5 = ptrtoaddr ptr %i.nj to i64
  %i.np = sub i64 %5, %i.no
  %diff.check2049 = icmp ugt i64 %i.np, -32
  %or.cond2077 = select i1 %min.iters.check2052, i1 true, i1 %diff.check2049
  br i1 %or.cond2077, label %.preheader.i.i.i39.i.preheader, label %vector.main.loop.iter.check2051

vector.main.loop.iter.check2051:                  ; preds = %iter.check2063
  %min.iters.check2052.a = icmp ult i64 %i.nk, 32
  br i1 %min.iters.check2052.a, label %vec.epilog.ph2067, label %vector.ph2053

vector.ph2053:                                    ; preds = %vector.main.loop.iter.check2051
  %i.nq = and i64 %i.nk, 24
  %n.vec2054 = and i64 %i.nk, 9223372036854775776 ; 4 uses
  br label %vector.body2055

vector.body2055:                                  ; preds = %vector.ph2053, %vector.body2055
  %index2056 = phi i64 [ 0, %vector.ph2053 ], [ %index.next2059, %vector.body2055 ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 %index2056 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load2057 = load <16 x i8>, ptr %i.nr, align 1, !noalias !34776 ; 2 uses
  %wide.load2058 = load <16 x i8>, ptr %i.ns, align 1, !noalias !34776 ; 2 uses
  %i.nt = add <16 x i8> %wide.load2057, splat (i8 -65)
  %i.nu = add <16 x i8> %wide.load2058, splat (i8 -65)
  %i.nv = icmp ult <16 x i8> %i.nt, splat (i8 26)
  %i.nw = icmp ult <16 x i8> %i.nu, splat (i8 26)
  %i.nx = select <16 x i1> %i.nv, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ny = select <16 x i1> %i.nw, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.nz = or <16 x i8> %i.nx, %wide.load2057
  %i.oa = or <16 x i8> %i.ny, %wide.load2058
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index2056 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store <16 x i8> %i.nz, ptr %i.ob, align 1, !noalias !34777
  store <16 x i8> %i.oa, ptr %i.oc, align 1, !noalias !34777
  %index.next2059 = add nuw i64 %index2056, 32    ; 2 uses
  %i.od = icmp eq i64 %index.next2059, %n.vec2054
  br i1 %i.od, label %middle.block2060, label %vector.body2055, !llvm.loop !33758

middle.block2060:                                 ; preds = %vector.body2055
  %cmp.n2061 = icmp eq i64 %i.nk, %n.vec2054
  br i1 %cmp.n2061, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %vec.epilog.iter.check2065

vec.epilog.iter.check2065:                        ; preds = %middle.block2060
  %min.epilog.iters.check2066 = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check2066, label %.preheader.i.i.i39.i.preheader, label %vec.epilog.ph2067, !prof !147

vec.epilog.ph2067:                                ; preds = %vector.main.loop.iter.check2051, %vec.epilog.iter.check2065
  %vec.epilog.resume.val2062 = phi i64 [ %n.vec2054, %vec.epilog.iter.check2065 ], [ 0, %vector.main.loop.iter.check2051 ]
  %n.vec2068 = and i64 %i.nk, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body2069

vec.epilog.vector.body2069:                       ; preds = %vec.epilog.vector.body2069, %vec.epilog.ph2067
  %index2070 = phi i64 [ %vec.epilog.resume.val2062, %vec.epilog.ph2067 ], [ %index.next2072, %vec.epilog.vector.body2069 ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nj, i64 %index2070
  %wide.load2071 = load <8 x i8>, ptr %i.oe, align 1, !noalias !34776 ; 2 uses
  %i.of = add <8 x i8> %wide.load2071, splat (i8 -65)
  %i.og = icmp ult <8 x i8> %i.of, splat (i8 26)
  %i.oh = select <8 x i1> %i.og, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.oi = or <8 x i8> %i.oh, %wide.load2071
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index2070
  store <8 x i8> %i.oi, ptr %i.oj, align 1, !noalias !34777
  %index.next2072 = add nuw i64 %index2070, 8     ; 2 uses
  %i.ok = icmp eq i64 %index.next2072, %n.vec2068
  br i1 %i.ok, label %vec.epilog.middle.block2073, label %vec.epilog.vector.body2069, !llvm.loop !33759

vec.epilog.middle.block2073:                      ; preds = %vec.epilog.vector.body2069
  %cmp.n2074 = icmp eq i64 %i.nk, %n.vec2068
  br i1 %cmp.n2074, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i.preheader

.preheader.i.i.i39.i.preheader:                   ; preds = %iter.check2063, %vec.epilog.iter.check2065, %vec.epilog.middle.block2073
  %.ph = phi i64 [ 0, %iter.check2063 ], [ %n.vec2054, %vec.epilog.iter.check2065 ], [ %n.vec2068, %vec.epilog.middle.block2073 ] ; 5 uses
  %.neg2254 = or disjoint i64 %.ph, 1
  %xtraiter2250 = and i64 %i.nk, 1
  %lcmp.mod2251.not = icmp eq i64 %xtraiter2250, 0
  br i1 %lcmp.mod2251.not, label %.preheader.i.i.i39.i.prol.loopexit, label %.preheader.i.i.i39.i.prol

.preheader.i.i.i39.i.prol:                        ; preds = %.preheader.i.i.i39.i.preheader
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.ph
  %.val15.i.i.i.i.i.i40.i.prol = load i8, ptr %i.ol, align 1, !noalias !34776, !noundef !67 ; 2 uses
  %i.om = add i8 %.val15.i.i.i.i.i.i40.i.prol, -65
  %i.on = icmp ult i8 %i.om, 26
  %i.oo = select i1 %i.on, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i.prol = or i8 %i.oo, %.val15.i.i.i.i.i.i40.i.prol
  %i.op = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i.prol, ptr %i.op, align 1, !noalias !34777
  %i.oq = or disjoint i64 %.ph, 1
  br label %.preheader.i.i.i39.i.prol.loopexit

.preheader.i.i.i39.i.prol.loopexit:               ; preds = %.preheader.i.i.i39.i.prol, %.preheader.i.i.i39.i.preheader
  %.unr2252 = phi i64 [ %.ph, %.preheader.i.i.i39.i.preheader ], [ %i.oq, %.preheader.i.i.i39.i.prol ]
  %i.or = icmp eq i64 %i.nk, %.neg2254
  br i1 %i.or, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.sroa.4.0.ph.i44.i = phi i64 [ 1, %bb.bs ], [ 0, %bb.bq ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i44.i, i64 %i.nk) #61
          to label %.noexc45.i unwind label %bb.bp, !noalias !34713

.noexc45.i:                                       ; preds = %bb.bt
  unreachable

.preheader.i.i.i39.i:                             ; preds = %.preheader.i.i.i39.i.prol.loopexit, %.preheader.i.i.i39.i
  %i.os = phi i64 [ %i.pe, %.preheader.i.i.i39.i ], [ %.unr2252, %.preheader.i.i.i39.i.prol.loopexit ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.os
  %.val15.i.i.i.i.i.i40.i = load i8, ptr %i.ot, align 1, !noalias !34776, !noundef !67 ; 2 uses
  %i.ou = add i8 %.val15.i.i.i.i.i.i40.i, -65
  %i.ov = icmp ult i8 %i.ou, 26
  %i.ow = select i1 %i.ov, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i = or i8 %i.ow, %.val15.i.i.i.i.i.i40.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.os
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i, ptr %i.ox, align 1, !noalias !34777
  %i.oy = add nuw nsw i64 %i.os, 1                ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.oy
  %.val15.i.i.i.i.i.i40.i.1 = load i8, ptr %i.oz, align 1, !noalias !34776, !noundef !67 ; 2 uses
  %i.pa = add i8 %.val15.i.i.i.i.i.i40.i.1, -65
  %i.pb = icmp ult i8 %i.pa, 26
  %i.pc = select i1 %i.pb, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i.1 = or i8 %i.pc, %.val15.i.i.i.i.i.i40.i.1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.oy
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i.1, ptr %i.pd, align 1, !noalias !34777
  %i.pe = add nuw nsw i64 %i.os, 2                ; 2 uses
  %i.pf = icmp eq i64 %i.pe, %i.nk
  br i1 %i.pf, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i, !llvm.loop !33760

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i: ; preds = %.preheader.i.i.i39.i.prol.loopexit, %.preheader.i.i.i39.i, %middle.block2060, %vec.epilog.middle.block2073, %bb.br
  %i.pg = phi ptr [ inttoptr (i64 1 to ptr), %bb.br ], [ %i.nm, %middle.block2060 ], [ %i.nm, %vec.epilog.middle.block2073 ], [ %i.nm, %.preheader.i.i.i39.i ], [ %i.nm, %.preheader.i.i.i39.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs9_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_13StorageSchemeNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pg, i64 noundef %i.nk)
          to label %bb.bv unwind label %bb.bu, !noalias !34713

bb.bu:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i, %bb.bx, %bb.bu
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ph, %bb.bu ], [ %i.pj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i ], [ %i.pj, %bb.bx ] ; 2 uses
  br i1 %i.nl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i: ; preds = %.body.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34778
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i

bb.bv:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34779)
  %i.pi = load i64, ptr %i.cv, align 8, !range !66, !alias.scope !34779, !noalias !34713, !noundef !67
  %.not.i.i = icmp eq i64 %i.pi, -1
  br i1 %.not.i.i, label %bb.bz, label %bb.bw, !prof !77

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !34780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cv, i64 32, i1 false), !noalias !34713
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3218) #61
          to label %bb.by unwind label %bb.bx, !noalias !34780

bb.bx:                                            ; preds = %bb.bw
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34781)
  call void @llvm.experimental.noalias.scope.decl(metadata !34782), !noalias !34779
  call void @llvm.experimental.noalias.scope.decl(metadata !34783), !noalias !34779
  %.val.i.i.i51.i = load i64, ptr %i.cs, align 8, !alias.scope !34784, !noalias !34780 ; 2 uses
  %i.pk = icmp eq i64 %.val.i.i.i51.i, 0
  br i1 %i.pk, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i: ; preds = %bb.bx
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i.i.i53.i = load ptr, ptr %i.pl, align 8, !alias.scope !34784, !noalias !34780, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i53.i, i64 noundef %.val.i.i.i51.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34785
  br label %.body.i

bb.by:                                            ; preds = %bb.bw
  unreachable

bb.bz:                                            ; preds = %bb.bv
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.pn = load i8, ptr %i.pm, align 8, !range !146, !alias.scope !34779, !noalias !34713, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !34713
  br i1 %i.nl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i: ; preds = %bb.bz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34786
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i, %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !34787)
  call void @llvm.experimental.noalias.scope.decl(metadata !34788)
  call void @llvm.experimental.noalias.scope.decl(metadata !34789)
  %i.po = load ptr, ptr %i.cu, align 8, !alias.scope !34790, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
  %i.pp = load i64, ptr %i.po, align 8, !noalias !34791, !noundef !67
  %i.pq = add i64 %i.pp, -1                       ; 2 uses
  store i64 %i.pq, ptr %i.po, align 8, !noalias !34791
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %bb.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ca:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.cb, !noalias !34713

bb.cb:                                            ; preds = %bb.ca
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34792)
  call void @llvm.experimental.noalias.scope.decl(metadata !34793)
  %i.pu = load ptr, ptr %i.pt, align 8, !alias.scope !34794, !noalias !34713, !nonnull !67, !noundef !67 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs1zNYWXRTdJn_9quick_xml6reader15buffered_readerINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEINtB4_9XmlSourceQINtNtB11_3vec3VechEE8peek_oneCskcxRuJ53GpR_9rustworkx:bb.a
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCslwFuT2d6ECx_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.ab = lshr i64 %i.y, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !67, !noundef !67
  %i.af = invoke noundef i8 %i.ae(i32 noundef %i.ac)
          to label %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.q, !inline_history !22

bb.f:                                             ; preds = %bb.d
  %i.ag = lshr i64 %i.y, 32
  %i.ah = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ag to i8  ; 2 uses
  %i.ai = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.ai)
  br label %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !111, !noundef !67
  br label %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %.val4, i64 31
  %i.am = load i8, ptr %i.al, align 8, !range !111, !noundef !67
  br label %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit

.loopexit:                                        ; preds = %_RNvXs5_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskcxRuJ53GpR_9rustworkx.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.n
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %_RNvXs5_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskcxRuJ53GpR_9rustworkx.exit.thread25
  %i.ao = phi ptr [ %.pre.i.i, %_RNvXs5_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskcxRuJ53GpR_9rustworkx.exit.thread25 ], [ %i.an, %.loopexit ]
  %i.ap = phi i64 [ 0, %_RNvXs5_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskcxRuJ53GpR_9rustworkx.exit.thread25 ], [ %i.n, %.loopexit ]
  %i.aq = phi i64 [ %i.s, %_RNvXs5_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskcxRuJ53GpR_9rustworkx.exit.thread25 ], [ %i.o, %.loopexit ]
  %.not = icmp eq i64 %i.aq, %i.ap
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.ao, align 1, !noundef !67
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.5.0 = phi i8 [ %i.ar, %bb.j ], [ undef, %bb.i ]
  %.sroa.0.0 = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.5.0, ptr %i.at, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i8 [ 0, %bb.k ], [ 1, %bb.m ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.h, %bb.g, %bb.f, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.am, %bb.h ], [ %switch.idx.cast.i.i.i, %bb.f ], [ %i.ak, %bb.g ], [ %i.af, %.noexc ]
  %i.au = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %i.au, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val4, ptr %i.av, align 8
  br label %bb.l

bb.n:                                             ; preds = %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155400
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx.exit
    i64 3, label %bb.o
    i64 0, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx.exit
    i64 1, label %bb.p
  ], !prof !106

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.ax = and i64 %i.y, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.m, align 8, !alias.scope !155401, !noalias !155400
  store i8 3, ptr %i.a, align 8, !alias.scope !155401, !noalias !155400
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !155400
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.q:                                             ; preds = %bb.e, %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #63
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.ba

bb.s:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !67 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155543)
  %i.d = shl i64 %i.c, 2                          ; 4 uses
  %i.e = icmp ugt i64 %i.c, 4611686018427387903
  %.not.i.i = icmp ugt i64 %i.d, 9223372036854775804
  %or.cond.i.i = or i1 %i.e, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !155544
  %i.g = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !155544 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.g to i64
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.d) #61, !noalias !155543
  unreachable

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.d
  %.sroa.10.0.i = phi i64 [ %i.i, %bb.d ], [ 4, %bb.b ]
  %.sroa.4.0.i = phi i64 [ %i.c, %bb.d ], [ 0, %bb.b ] ; 8 uses
  %i.j = inttoptr i64 %.sroa.10.0.i to ptr
  %i.k = icmp samesign ule i64 %i.c, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !155543
  store i64 %.sroa.4.0.i, ptr %i.a, align 8, !alias.scope !155543
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store ptr %i.j, ptr %i.m, align 8, !alias.scope !155543
  %.val.i = load i64, ptr %1, align 8, !alias.scope !155545, !noalias !155546 ; 4 uses
  %i.n = icmp eq i64 %i.c, 0
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !155545, !noalias !155546 ; 2 uses
  %.not.i.i2 = icmp ult i64 %.val2.i, %.val.i
  %i.p = select i1 %.not.i.i2, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.p    ; 4 uses
  %i.q = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.q, %i.c
  br i1 %.not11.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nuw nsw i64 %i.c, %i.q
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = add i64 %.sroa.04.0.i.i, %i.c
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.u = icmp eq i64 %.val, 0
  br i1 %i.u, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.i
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !67, !noundef !67
  %i.v = shl nuw i64 %.val, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit, %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.h ], [ %.sroa.04.0.i.i, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.5.0.i = phi i64 [ %i.s, %bb.h ], [ %.val.i, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %i.r, %bb.g ], [ 0, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx.exit ] ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !155545, !noalias !155546, !nonnull !67, !noundef !67 ; 19 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %.idx8 = shl i64 %.sroa.0.0.i, 2                ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx8 ; 11 uses
  %.idx = shl i64 %.sroa.5.0.i, 2                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 3 uses
  %.idx10 = shl i64 %.sroa.11.0.i, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155547)
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub nuw nsw i64 %.sroa.5.0.i, %.sroa.0.0.i ; 10 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = add nuw nsw i64 %.sroa.11.0.i, %i.ad    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155548)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %.sroa.4.0.i
  br i1 %i.ah, label %bb.k, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.af, i64 noundef 4, i64 noundef 4)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !70, !alias.scope !155549, !noalias !155550 ; 5 uses
  %.pre7.i.i = load i64, ptr %i.ag, align 8, !alias.scope !155549, !noalias !155550 ; 5 uses
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !155549, !noalias !155550 ; 5 uses
  %.pre8.i.i = sub i64 %.sroa.4.0.i, %.pre7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155551)
  %.not.i.i.i = icmp ugt i64 %.pre, %.pre8.i.i
  br i1 %.not.i.i.i, label %bb.m, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = sub i64 %.sroa.4.0.i, %.pre             ; 4 uses
  %i.aj = sub i64 %.pre7.i.i, %i.ai               ; 3 uses
  %i.ak = icmp ule i64 %i.ai, %i.aj
  %i.al = sub nsw i64 %.pre.i.i, %.sroa.4.0.i
  %.not2.i.i.i = icmp ult i64 %i.al, %i.aj
  %or.cond.i.i.i = select i1 %i.ak, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = sub i64 %.pre.i.i, %i.ai                ; 3 uses
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !155549, !noalias !155550, !nonnull !67, !noundef !67 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.pre
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.aq = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.ao, i64 %i.aq, i1 false), !noalias !155552
  store i64 %i.am, ptr %i.l, align 8, !alias.scope !155549, !noalias !155550
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.m, align 8, !alias.scope !155549, !noalias !155550, !nonnull !67, !noundef !67 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.4.0.i
  %i.at = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull align 4 %i.ar, i64 %i.at, i1 false), !noalias !155552
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.j, %bb.o, %bb.n, %bb.l
  %i.au = phi i64 [ %.pre.i.i, %bb.o ], [ %.pre.i.i, %bb.l ], [ %.pre.i.i, %bb.n ], [ %.sroa.4.0.i, %bb.j ] ; 5 uses
  %i.av = phi i64 [ %.pre, %bb.o ], [ %.pre, %bb.l ], [ %i.am, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %i.aw = phi i64 [ %.pre7.i.i, %bb.o ], [ %.pre7.i.i, %bb.l ], [ %.pre7.i.i, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %.not.i = icmp ult i64 %i.ax, %i.au
  %i.ay = select i1 %.not.i, i64 0, i64 %i.au     ; 3 uses
  %.sroa.02.0.i = sub nuw i64 %i.ax, %i.ay        ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155553)
  %i.az = sub i64 %i.au, %.sroa.02.0.i            ; 8 uses
  %.not.i.i3 = icmp ult i64 %i.az, %i.af
  br i1 %.not.i.i3, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155555, !nonnull !67 ; 3 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %.sroa.02.0.i ; 4 uses
  %i.be = sub i64 %.idx, %.idx8
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add i64 %i.ay, %i.au
  %i.bh = xor i64 %i.aw, -1
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = sub i64 %i.bi, %i.av
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj) ; 3 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check74 = icmp samesign ult i64 %i.bk, 12
  br i1 %min.iters.check74, label %scalar.ph73, label %vector.memcheck71

vector.memcheck71:                                ; preds = %bb.q
  %2 = ptrtoaddr ptr %i.bb to i64
  %i.bm = shl i64 %.sroa.02.0.i, 2
  %3 = ptrtoaddr ptr %i.x to i64
  %i.bn = add i64 %i.bm, %2
  %i.bo = add i64 %.idx8, %3
  %i.bp = sub i64 %i.bo, %i.bn
  %diff.check72 = icmp ugt i64 %i.bp, -32
  br i1 %diff.check72, label %scalar.ph73, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck71
  %i.bq = and i64 %i.bl, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec76 = sub nsw i64 %i.bl, %i.bs             ; 4 uses
  %i.bt = sub i64 %i.az, %n.vec76
  %i.bu = shl i64 %n.vec76, 2
  %i.bv = getelementptr i8, ptr %i.z, i64 %i.bu
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.bw = shl i64 %index78, 2
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load79 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !155556, !noalias !155557
  %wide.load80 = load <4 x i32>, ptr %i.bx, align 4, !alias.scope !155556, !noalias !155557
  %i.by = getelementptr [4 x i8], ptr %i.bd, i64 %index78 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store <4 x i32> %wide.load79, ptr %i.by, align 4, !noalias !155558
  store <4 x i32> %wide.load80, ptr %i.bz, align 4, !noalias !155558
  %index.next81 = add nuw i64 %index78, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.ca, label %scalar.ph73, label %vector.body77, !llvm.loop !155450

scalar.ph73:                                      ; preds = %vector.body77, %vector.memcheck71, %bb.q
  %bc.resume.val83 = phi i64 [ 0, %vector.memcheck71 ], [ 0, %bb.q ], [ %n.vec76, %vector.body77 ] ; 2 uses
  %bc.resume.val84 = phi i64 [ %i.az, %vector.memcheck71 ], [ %i.az, %bb.q ], [ %i.bt, %vector.body77 ]
  %bc.resume.val85 = phi ptr [ %i.z, %vector.memcheck71 ], [ %i.z, %bb.q ], [ %i.bv, %vector.body77 ]
  br label %bb.r

bb.r:                                             ; preds = %scalar.ph73, %bb.s
  %indvar = phi i64 [ 0, %scalar.ph73 ], [ %indvar.next, %bb.s ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %bc.resume.val83, %scalar.ph73 ], [ %i.dh, %bb.s ] ; 6 uses
  %.promoted5.i.i.i.i = phi i64 [ %bc.resume.val84, %scalar.ph73 ], [ %i.df, %bb.s ] ; 4 uses
  %i.cb = phi ptr [ %bc.resume.val85, %scalar.ph73 ], [ %i.de, %bb.s ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.aa
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader, label %bb.s

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.r
  %i.cc = and i64 %.sroa.11.0.i, 4611686018427387903
  %i.cd = add i64 %i.ay, %i.au
  %i.ce = xor i64 %i.aw, -1
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = add i64 %i.av, %i.bk
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ch) ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check89 = icmp samesign ult i64 %i.ci, 16
  br i1 %min.iters.check89, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133, label %vector.memcheck86

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133: ; preds = %vector.body92, %vector.memcheck86, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader
  %.sroa.9.1.i.ph = phi ptr [ %i.x, %vector.memcheck86 ], [ %i.x, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cv, %vector.body92 ]
  %.sroa.8.2.i.i.ph = phi i64 [ %.sroa.8.1.i.i, %vector.memcheck86 ], [ %.sroa.8.1.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cw, %vector.body92 ]
  %.ph134 = phi i64 [ %.promoted5.i.i.i.i, %vector.memcheck86 ], [ %.promoted5.i.i.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader ], [ %i.cx, %vector.body92 ]
  br label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

vector.memcheck86:                                ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader
  %i.ck = add i64 %bc.resume.val83, %.sroa.02.0.i
  %i.cl = shl i64 %i.ck, 2
  %i.cm = add i64 %i.cl, %i.bc
  %i.cn = sub i64 %i.cm, %i.y
  %i.co = shl i64 %indvar, 2
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = add i64 %i.cp, -1
  %diff.check87 = icmp ult i64 %i.cq, 31
  br i1 %diff.check87, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck86
  %i.cr = and i64 %i.cj, 7                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 8, i64 %i.cr
  %n.vec91 = sub nsw i64 %i.cj, %i.ct             ; 4 uses
  %i.cu = shl i64 %n.vec91, 2
  %i.cv = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.cw = add i64 %.sroa.8.1.i.i, %n.vec91
  %i.cx = sub i64 %.promoted5.i.i.i.i, %n.vec91
  %i.cy = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.1.i.i
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next97, %vector.body92 ] ; 3 uses
  %i.cz = shl i64 %index93, 2
  %next.gep94 = getelementptr i8, ptr %i.x, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load95 = load <4 x i32>, ptr %next.gep94, align 4, !alias.scope !155559, !noalias !155560
  %wide.load96 = load <4 x i32>, ptr %i.da, align 4, !alias.scope !155559, !noalias !155560
  %i.db = getelementptr [4 x i8], ptr %i.cy, i64 %index93 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store <4 x i32> %wide.load95, ptr %i.db, align 4, !noalias !155561
  store <4 x i32> %wide.load96, ptr %i.dc, align 4, !noalias !155561
  %index.next97 = add nuw i64 %index93, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next97, %n.vec91
  br i1 %i.dd, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133, label %vector.body92, !llvm.loop !155468

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i = load i32, ptr %i.cb, align 4, !alias.scope !155556, !noalias !155557, !noundef !67
  %i.df = add nsw i64 %.promoted5.i.i.i.i, -1     ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.1.i.i
  store i32 %.val5.i.i.i.i.i.i.i.i, ptr %i.dg, align 4, !noalias !155558
  %i.dh = add nuw nsw i64 %.sroa.8.1.i.i, 1
  %i.di = icmp eq i64 %i.df, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.di, label %.loopexit.i.i, label %bb.r, !llvm.loop !155469

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133, %bb.t
  %.sroa.9.1.i = phi ptr [ %i.dk, %bb.t ], [ %.sroa.9.1.i.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133 ] ; 3 uses
  %.sroa.8.2.i.i = phi i64 [ %i.dn, %bb.t ], [ %.sroa.8.2.i.i.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133 ] ; 3 uses
  %i.dj = phi i64 [ %i.dl, %bb.t ], [ %.ph134, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.preheader133 ]
  %.not.not.not.i4.not.not.i.not.i.not.i.i.i.i.i = icmp eq ptr %.sroa.9.1.i, %i.ab
  br i1 %.not.not.not.i4.not.not.i.not.i.not.i.i.i.i.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i, i64 4 ; 2 uses
  %.val5.i5.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.1.i, align 4, !alias.scope !155559, !noalias !155560, !noundef !67
  %i.dl = add nsw i64 %i.dj, -1                   ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.8.2.i.i
  store i32 %.val5.i5.i.i.i.i.i.i.i, ptr %i.dm, align 4, !noalias !155561
  %i.dn = add nuw nsw i64 %.sroa.8.2.i.i, 1
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, !llvm.loop !155470

.loopexit.i.i:                                    ; preds = %bb.s, %bb.p
  %.sroa.062.0.copyload.i.i = phi ptr [ %i.z, %bb.p ], [ %i.de, %bb.s ] ; 8 uses
  %i.dp = icmp eq ptr %.sroa.062.0.copyload.i.i, %i.aa
  br i1 %i.dp, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.dq = ptrtoint ptr %.sroa.062.0.copyload.i.i to i64 ; 2 uses
  %i.dr = sub nuw i64 %i.ac, %i.dq                ; 2 uses
  %i.ds = lshr i64 %i.dr, 2                       ; 7 uses
  %i.dt = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155562, !nonnull !67, !noundef !67 ; 7 uses
  %min.iters.check105 = icmp ult i64 %i.dr, 32
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = sub i64 %i.dq, %i.du
  %diff.check103 = icmp ugt i64 %i.dv, -32
  %or.cond = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %bb.u
  %n.vec107 = and i64 %i.ds, 4611686018427387896  ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %index109 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load110 = load <4 x i32>, ptr %i.dw, align 4, !alias.scope !155563, !noalias !155564
  %wide.load111 = load <4 x i32>, ptr %i.dx, align 4, !alias.scope !155563, !noalias !155564
  %i.dy = getelementptr [4 x i8], ptr %i.dt, i64 %index109 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <4 x i32> %wide.load110, ptr %i.dy, align 4, !noalias !155565
  store <4 x i32> %wide.load111, ptr %i.dz, align 4, !noalias !155565
  %index.next112 = add nuw i64 %index109, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ea, label %middle.block113, label %vector.body108, !llvm.loop !155489

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %i.ds, %n.vec107
  br i1 %cmp.n114, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %bb.u, %middle.block113
  %.ph132 = phi i64 [ 0, %bb.u ], [ %n.vec107, %middle.block113 ] ; 3 uses
  %xtraiter145 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader, %scalar.ph104.prol
  %i.eb = phi i64 [ %i.ee, %scalar.ph104.prol ], [ %.ph132, %scalar.ph104.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph104.prol ], [ 0, %scalar.ph104.preheader ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eb
  %.val8.i.i.i.i.i.prol = load i32, ptr %i.ec, align 4, !alias.scope !155563, !noalias !155564, !noundef !67
  %i.ed = getelementptr [4 x i8], ptr %i.dt, i64 %i.eb
  store i32 %.val8.i.i.i.i.i.prol, ptr %i.ed, align 4, !noalias !155565
  %i.ee = add nuw i64 %i.eb, 1                    ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol, !llvm.loop !155490

scalar.ph104.prol.loopexit:                       ; preds = %scalar.ph104.prol, %scalar.ph104.preheader
  %.unr148 = phi i64 [ %.ph132, %scalar.ph104.preheader ], [ %i.ee, %scalar.ph104.prol ]
  %i.ef = sub nsw i64 %.ph132, %i.ds
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104
  %i.eh = phi i64 [ %i.et, %scalar.ph104 ], [ %.unr148, %scalar.ph104.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eh
  %.val8.i.i.i.i.i = load i32, ptr %i.ei, align 4, !alias.scope !155563, !noalias !155564, !noundef !67
  %i.ej = getelementptr [4 x i8], ptr %i.dt, i64 %i.eh
  store i32 %.val8.i.i.i.i.i, ptr %i.ej, align 4, !noalias !155565
  %i.ek = add nuw i64 %i.eh, 1                    ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.ek
  %.val8.i.i.i.i.i.1 = load i32, ptr %i.el, align 4, !alias.scope !155563, !noalias !155564, !noundef !67
  %i.em = getelementptr [4 x i8], ptr %i.dt, i64 %i.ek
  store i32 %.val8.i.i.i.i.i.1, ptr %i.em, align 4, !noalias !155565
  %i.en = add nuw i64 %i.eh, 2                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.en
  %.val8.i.i.i.i.i.2 = load i32, ptr %i.eo, align 4, !alias.scope !155563, !noalias !155564, !noundef !67
  %i.ep = getelementptr [4 x i8], ptr %i.dt, i64 %i.en
  store i32 %.val8.i.i.i.i.i.2, ptr %i.ep, align 4, !noalias !155565
  %i.eq = add nuw i64 %i.eh, 3                    ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i, i64 %i.eq
  %.val8.i.i.i.i.i.3 = load i32, ptr %i.er, align 4, !alias.scope !155563, !noalias !155564, !noundef !67
  %i.es = getelementptr [4 x i8], ptr %i.dt, i64 %i.eq
  store i32 %.val8.i.i.i.i.i.3, ptr %i.es, align 4, !noalias !155565
  %i.et = add nuw i64 %i.eh, 4                    ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ds
  br i1 %i.eu, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, label %scalar.ph104, !llvm.loop !155491

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i: ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104, %middle.block113
  %i.ev = add i64 %i.ds, %i.az
  br label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.t, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i, %.loopexit.i.i
  %.sroa.9.0.i43 = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.x, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ %i.dk, %bb.t ] ; 8 uses
  %.sroa.8.5.i.i = phi i64 [ %i.az, %.loopexit.i.i ], [ %i.ev, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ %i.az, %bb.t ] ; 2 uses
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.ds, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit.i.i ], [ 0, %bb.t ] ; 5 uses
  %i.ew = icmp eq ptr %.sroa.9.0.i43, %i.ab
  br i1 %i.ew, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ex = ptrtoint ptr %.sroa.9.0.i43 to i64      ; 2 uses
  %i.ey = sub nuw i64 %i.ae, %i.ex                ; 2 uses
  %i.ez = lshr i64 %i.ey, 2                       ; 6 uses
  %i.fa = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155566, !nonnull !67, !noundef !67 ; 7 uses
  %min.iters.check119 = icmp ult i64 %i.ey, 48
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck116

vector.memcheck116:                               ; preds = %bb.v
  %i.fb = ptrtoaddr ptr %i.fa to i64
  %i.fc = shl nuw i64 %.sroa.9.0.i.i.i, 2
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = sub i64 %i.ex, %i.fd
  %diff.check117 = icmp ugt i64 %i.fe, -32
  br i1 %diff.check117, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.ez, 4611686018427387896  ; 4 uses
  %i.ff = add nuw nsw i64 %.sroa.9.0.i.i.i, %n.vec121
  %i.fg = getelementptr [4 x i8], ptr %i.fa, i64 %.sroa.9.0.i.i.i
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %index123 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !155567, !noalias !155568
  %wide.load125 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !155567, !noalias !155568
  %i.fj = getelementptr [4 x i8], ptr %i.fg, i64 %index123 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store <4 x i32> %wide.load124, ptr %i.fj, align 4, !noalias !155569
  store <4 x i32> %wide.load125, ptr %i.fk, align 4, !noalias !155569
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.fl, label %middle.block127, label %vector.body122, !llvm.loop !155504

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.ez, %n.vec121
  br i1 %cmp.n128, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck116, %bb.v, %middle.block127
  %.ph = phi i64 [ %.sroa.9.0.i.i.i, %vector.memcheck116 ], [ %.sroa.9.0.i.i.i, %bb.v ], [ %i.ff, %middle.block127 ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck116 ], [ 0, %bb.v ], [ %n.vec121, %middle.block127 ] ; 3 uses
  %xtraiter149 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader, %scalar.ph118.prol
  %i.fm = phi i64 [ %i.fp, %scalar.ph118.prol ], [ %.ph, %scalar.ph118.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.prol = phi i64 [ %i.fq, %scalar.ph118.prol ], [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %scalar.ph118.prol ], [ 0, %scalar.ph118.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i.prol
  %.val8.i3.i.i.i.i.prol = load i32, ptr %i.fn, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fo = getelementptr [4 x i8], ptr %i.fa, i64 %i.fm
  store i32 %.val8.i3.i.i.i.i.prol, ptr %i.fo, align 4, !noalias !155569
  %i.fp = add i64 %i.fm, 1                        ; 2 uses
  %i.fq = add nuw i64 %.sroa.01.0.i2.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol, !llvm.loop !155505

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.unr152 = phi i64 [ %.ph, %scalar.ph118.preheader ], [ %i.fp, %scalar.ph118.prol ]
  %.sroa.01.0.i2.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ], [ %i.fq, %scalar.ph118.prol ]
  %i.fr = sub nsw i64 %.sroa.01.0.i2.i.i.i.i.ph, %i.ez
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %i.ft = phi i64 [ %i.gi, %scalar.ph118 ], [ %.unr152, %scalar.ph118.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i.i.i = phi i64 [ %i.gj, %scalar.ph118 ], [ %.sroa.01.0.i2.i.i.i.i.unr, %scalar.ph118.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %.val8.i3.i.i.i.i = load i32, ptr %i.fu, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fv = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  store i32 %.val8.i3.i.i.i.i, ptr %i.fv, align 4, !noalias !155569
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.val8.i3.i.i.i.i.1 = load i32, ptr %i.fx, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fy = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  store i32 %.val8.i3.i.i.i.i.1, ptr %i.fz, align 4, !noalias !155569
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val8.i3.i.i.i.i.2 = load i32, ptr %i.gb, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gc = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store i32 %.val8.i3.i.i.i.i.2, ptr %i.gd, align 4, !noalias !155569
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %.val8.i3.i.i.i.i.3 = load i32, ptr %i.gf, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gg = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  store i32 %.val8.i3.i.i.i.i.3, ptr %i.gh, align 4, !noalias !155569
  %i.gi = add i64 %i.ft, 4
  %i.gj = add nuw i64 %.sroa.01.0.i2.i.i.i.i, 4   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.ez
  br i1 %i.gk, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118, !llvm.loop !155506

_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i: ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block127
  %i.gl = add i64 %.sroa.8.5.i.i, %i.ez
  br label %.loopexit

bb.w:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gm = icmp samesign eq i64 %.idx8, %.idx
  br i1 %i.gm, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155570, !nonnull !67, !noundef !67 ; 2 uses
  %i.go = getelementptr [4 x i8], ptr %i.gn, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.x
  %i.gp = ptrtoaddr ptr %i.gn to i64
  %i.gq = shl i64 %.sroa.02.0.i, 2
  %4 = ptrtoaddr ptr %i.x to i64
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = add i64 %.idx8, %4
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check = icmp ugt i64 %i.gt, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !155571, !noalias !155572
  %wide.load55 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !155571, !noalias !155572
  %i.gw = getelementptr [4 x i8], ptr %i.go, i64 %index ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store <4 x i32> %wide.load, ptr %i.gw, align 4, !noalias !155573
  store <4 x i32> %wide.load55, ptr %i.gx, align 4, !noalias !155573
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !155525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.x, %middle.block
  %.sroa.8.8.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.x ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.sroa.5.0.i, %.sroa.0.0.i
  %xtraiter = and i64 %i.gz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i.prol
  %.val8.i.i.i38.i.i.prol = load i32, ptr %i.ha, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hb = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i.prol
  store i32 %.val8.i.i.i38.i.i.prol, ptr %i.hb, align 4, !noalias !155573
  %i.hc = add nuw i64 %.sroa.8.8.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155526

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.unr = phi i64 [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hd = sub i64 %.sroa.0.0.i, %.sroa.5.0.i
  %i.he = add i64 %i.hd, %.sroa.8.8.i.i.ph
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i = phi i64 [ %i.hr, %scalar.ph ], [ %.sroa.8.8.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i
  %.val8.i.i.i38.i.i = load i32, ptr %i.hg, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hh = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i
  store i32 %.val8.i.i.i38.i.i, ptr %i.hh, align 4, !noalias !155573
  %i.hi = add nuw i64 %.sroa.8.8.i.i, 1           ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hi
  %.val8.i.i.i38.i.i.1 = load i32, ptr %i.hj, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hk = getelementptr [4 x i8], ptr %i.go, i64 %i.hi
  store i32 %.val8.i.i.i38.i.i.1, ptr %i.hk, align 4, !noalias !155573
  %i.hl = add nuw i64 %.sroa.8.8.i.i, 2           ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hl
  %.val8.i.i.i38.i.i.2 = load i32, ptr %i.hm, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hn = getelementptr [4 x i8], ptr %i.go, i64 %i.hl
  store i32 %.val8.i.i.i38.i.i.2, ptr %i.hn, align 4, !noalias !155573
  %i.ho = add nuw i64 %.sroa.8.8.i.i, 3           ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ho
  %.val8.i.i.i38.i.i.3 = load i32, ptr %i.hp, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hq = getelementptr [4 x i8], ptr %i.go, i64 %i.ho
  store i32 %.val8.i.i.i38.i.i.3, ptr %i.hq, align 4, !noalias !155573
  %i.hr = add nuw i64 %.sroa.8.8.i.i, 4           ; 2 uses
  %i.hs = icmp eq i64 %i.hr, %i.ad
  br i1 %i.hs, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph, !llvm.loop !155527

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w
  %i.ht = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.ht, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i
  %i.hu = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155574, !nonnull !67, !noundef !67 ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check59 = icmp ult i64 %.sroa.11.0.i, 16
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %bb.y
  %i.hw = ptrtoaddr ptr %i.hu to i64
  %5 = shl i64 %.sroa.02.0.i, 2
  %6 = ptrtoaddr ptr %i.x to i64
  %7 = add i64 %.idx, %i.hw
  %i.hx = add i64 %7, %5
  %i.hy = add i64 %.idx8, %6
  %i.hz = sub i64 %i.hy, %i.hx
  %diff.check57 = icmp ugt i64 %i.hz, -32
  br i1 %diff.check57, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %.sroa.11.0.i, -8            ; 4 uses
  %i.ia = add i64 %i.ad, %n.vec61
  %i.ib = getelementptr [4 x i8], ptr %i.hv, i64 %i.ad
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index63 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load64 = load <4 x i32>, ptr %i.ic, align 4, !alias.scope !155575, !noalias !155576
  %wide.load65 = load <4 x i32>, ptr %i.id, align 4, !alias.scope !155575, !noalias !155576
  %i.ie = getelementptr [4 x i8], ptr %i.ib, i64 %index63 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16
  store <4 x i32> %wide.load64, ptr %i.ie, align 4, !noalias !155577
  store <4 x i32> %wide.load65, ptr %i.if, align 4, !noalias !155577
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.ig = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ig, label %middle.block67, label %vector.body62, !llvm.loop !155540

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i64 %.sroa.11.0.i, %n.vec61
  br i1 %cmp.n68, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck56, %bb.y, %middle.block67
  %.ph140 = phi i64 [ %i.ad, %vector.memcheck56 ], [ %i.ad, %bb.y ], [ %i.ia, %middle.block67 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %bb.y ], [ %n.vec61, %middle.block67 ] ; 3 uses
  %xtraiter142 = and i64 %.sroa.11.0.i, 3         ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %i.ih = phi i64 [ %i.ik, %scalar.ph58.prol ], [ %.ph140, %scalar.ph58.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.prol = phi i64 [ %i.il, %scalar.ph58.prol ], [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i.prol
  %.val8.i3.i.i42.i.i.prol = load i32, ptr %i.ii, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ij = getelementptr [4 x i8], ptr %i.hv, i64 %i.ih
  store i32 %.val8.i3.i.i42.i.i.prol, ptr %i.ij, align 4, !noalias !155577
  %i.ik = add i64 %i.ih, 1                        ; 2 uses
  %i.il = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !155541

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.unr = phi i64 [ %.ph140, %scalar.ph58.preheader ], [ %i.ik, %scalar.ph58.prol ]
  %.sroa.01.0.i2.i.i41.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ], [ %i.il, %scalar.ph58.prol ]
  %i.im = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.ph, %.sroa.11.0.i
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %i.io = phi i64 [ %i.jd, %scalar.ph58 ], [ %.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i = phi i64 [ %i.je, %scalar.ph58 ], [ %.sroa.01.0.i2.i.i41.i.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %.val8.i3.i.i42.i.i = load i32, ptr %i.ip, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.iq = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  store i32 %.val8.i3.i.i42.i.i, ptr %i.iq, align 4, !noalias !155577
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.val8.i3.i.i42.i.i.1 = load i32, ptr %i.is, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.it = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iu = getelementptr i8, ptr %i.it, i64 4
  store i32 %.val8.i3.i.i42.i.i.1, ptr %i.iu, align 4, !noalias !155577
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.val8.i3.i.i42.i.i.2 = load i32, ptr %i.iw, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ix = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store i32 %.val8.i3.i.i42.i.i.2, ptr %i.iy, align 4, !noalias !155577
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %.val8.i3.i.i42.i.i.3 = load i32, ptr %i.ja, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.jb = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.jc = getelementptr i8, ptr %i.jb, i64 12
  store i32 %.val8.i3.i.i42.i.i.3, ptr %i.jc, align 4, !noalias !155577
  %i.jd = add i64 %i.io, 4
  %i.je = add nuw i64 %.sroa.01.0.i2.i.i41.i.i, 4 ; 2 uses
  %i.jf = icmp eq i64 %i.je, %.sroa.11.0.i
  br i1 %i.jf, label %.loopexit, label %scalar.ph58, !llvm.loop !155542

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %middle.block67, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.gl, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i ], [ %.sroa.8.5.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ad, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i ], [ %i.af, %middle.block67 ], [ %.sroa.8.2.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.af, %scalar.ph58 ], [ %i.af, %scalar.ph58.prol.loopexit ]
  %i.jg = add i64 %.sroa.8.0.i.i, %i.aw
  store i64 %i.jg, ptr %i.ag, align 8, !alias.scope !155554, !noalias !155555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155616)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !155617, !noalias !155613, !noundef !67 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !155618, !noalias !155613, !nonnull !67, !noundef !67 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !155619, !noundef !67 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !155620, !noalias !155621, !noundef !67 ; 3 uses
  %.not7.i.i23.i = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  br i1 %.not7.i.i23.i, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i, label %.thread._crit_edge.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !155622, !noalias !155623, !noundef !67 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !155622, !noalias !155613, !nonnull !67 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !noalias !155619, !noundef !67
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14.i.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !155624, !noalias !155625
  %i.z = ptrtoint ptr %.val14.i.i.pre.i to i64
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, %i.n
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.thread._crit_edge.i, %bb.d, %.thread.i
  %i.ae = phi ptr [ %i.j, %.thread._crit_edge.i ], [ %i.t, %bb.d ], [ null, %.thread.i ]
  %i.af = phi i32 [ %i.h, %.thread._crit_edge.i ], [ %i.u, %bb.d ], [ %i.h, %.thread.i ]
  %i.ag = phi ptr [ %i.f, %.thread._crit_edge.i ], [ null, %bb.d ], [ %i.f, %.thread.i ]
  %.sink24.i.i.i = phi i64 [ %i.ad, %.thread._crit_edge.i ], [ %i.y, %bb.d ], [ %i.n, %.thread.i ] ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sink24.i.i.i, i64 3) ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = shl i64 %i.ai, 2                        ; 4 uses
  %i.ak = icmp samesign ugt i64 %.sink24.i.i.i, 4611686018427387902
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775804
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %.not.i.i, !prof !73
  br i1 %or.cond.i.i, label %bb.i, label %bb.e, !prof !73

bb.e:                                             ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !155626
  %i.am = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !155626 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.h:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !155613, !noalias !155614
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8, !alias.scope !155613, !noalias !155614
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !alias.scope !155613, !noalias !155614
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2o_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterB11_EINtNtNtB2s_5slice4iter4IterB11_EEEE9from_iterCskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.f, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.ph.i = phi i64 [ %i.aj, %bb.f ], [ undef, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.416.0.ph.i = phi i64 [ 4, %bb.f ], [ 0, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i, i64 %.sroa.10.0.ph.i) #61, !noalias !155615
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.g, %bb.e
end_hunk_1
