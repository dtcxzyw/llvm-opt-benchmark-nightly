Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market31load_coo_from_matrix_market_strdECskcxRuJ53GpR_9rustworkx:bb.a

bb.n:                                             ; preds = %bb.g
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #61
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.yz

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  store i64 0, ptr %i.fb, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 10 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 15 uses
  store i64 0, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  store i64 0, ptr %i.fa, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 10 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 15 uses
  store i64 0, ptr %i.gp, align 8
  store i64 0, ptr %i.dh, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 9 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 8 uses
  store i64 0, ptr %i.gr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 8 dereferenceable(40) %i.ff, i64 40, i1 false)
  invoke fastcc void @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE10into_innerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ez, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ey)
          to label %bb.r unwind label %bb.q

.thread998.thread1146:                            ; preds = %bb.fl, %bb.wd
  %lpad.thr_comm1144 = landingpad { ptr, i32 }
          cleanup
  br label %.thread986

bb.q:                                             ; preds = %bb.yu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.thread986

bb.r:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ew, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ez)
          to label %bb.s unwind label %.thread1031

.thread1031:                                      ; preds = %.invoke, %bb.ec, %bb.t, %bb.fh, %bb.fc, %bb.r, %bb.ei, %bb.dc, %bb.dl, %bb.dr, %bb.dd, %bb.cz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEECskcxRuJ53GpR_9rustworkx.exit420, %bb.cv
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1002

bb.s:                                             ; preds = %bb.r
  %i.gt = load ptr, ptr %i.ew, align 8, !noundef !67
  %.not355 = icmp eq ptr %i.gt, null
  br i1 %.not355, label %.invoke, label %bb.t, !prof !71

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.ew, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  invoke fastcc void @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE10into_innerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.eu, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ex)
          to label %bb.u unwind label %.thread1031

.invoke:                                          ; preds = %bb.da, %bb.s
  %i.gu = phi ptr [ @1042, %bb.s ], [ @1043, %bb.da ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu) #61
          to label %.cont unwind label %.thread1031

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !34710
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eu)
          to label %.noexc410 unwind label %bb.cq

.noexc410:                                        ; preds = %bb.u
  %i.gv = load ptr, ptr %i.cz, align 8, !noalias !34710, !noundef !67
  %.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !71

bb.v:                                             ; preds = %.noexc410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i64 40, i1 false), !noalias !34710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !34710
  %i.gw = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.da)
          to label %bb.ad unwind label %bb.ac, !noalias !34710 ; 2 uses

bb.w:                                             ; preds = %.noexc410
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3213) #60
          to label %.noexc411 unwind label %bb.cq

.noexc411:                                        ; preds = %bb.w
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body17.i, %bb.ac
  %.pn11.i = phi { ptr, i32 } [ %i.hn, %bb.ac ], [ %.pn9.i, %.body17.i ], [ %.pn9.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34711)
  call void @llvm.experimental.noalias.scope.decl(metadata !34712), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34713), !noalias !34710
  %i.gx = load ptr, ptr %i.da, align 8, !alias.scope !34714, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !34715, !noundef !67
  %i.gz = add i64 %i.gy, -1                       ; 2 uses
  store i64 %i.gz, ptr %i.gx, align 8, !noalias !34715
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850

bb.x:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850 unwind label %bb.y, !noalias !34710

bb.y:                                             ; preds = %bb.x
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34716), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34717), !noalias !34710
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !34718, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !noalias !34719, !noundef !67
  %i.hf = add i64 %i.he, -1                       ; 2 uses
  store i64 %i.hf, ptr %i.hd, align 8, !noalias !34719
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.z, label %.body841

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc) #62
          to label %.body841 unwind label %bb.ab, !noalias !34710

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850: ; preds = %bb.x, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34720), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34721), !noalias !34710
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !34722, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !34723, !noundef !67
  %i.hk = add i64 %i.hj, -1                       ; 2 uses
  store i64 %i.hk, ptr %i.hi, align 8, !noalias !34723
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.aa, label %.body413

bb.aa:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i850
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hh) #62
          to label %.body413 unwind label %bb.cp

bb.ab:                                            ; preds = %bb.z
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34710
  unreachable

bb.ac:                                            ; preds = %bb.ag, %bb.v
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i

bb.ad:                                            ; preds = %bb.v
  %i.ho = extractvalue { ptr, i64 } %i.gw, 0      ; 6 uses
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = extractvalue { ptr, i64 } %i.gw, 1      ; 17 uses
  %.not.i.i.i = icmp slt i64 %i.hq, 0
  br i1 %.not.i.i.i, label %bb.ag, label %bb.ae, !prof !73

bb.ae:                                            ; preds = %bb.ad
  %i.hr = icmp eq i64 %i.hq, 0                    ; 3 uses
  br i1 %i.hr, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34724
  %i.hs = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34724 ; 11 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ag, label %iter.check

iter.check:                                       ; preds = %bb.af
  %i.hu = ptrtoaddr ptr %i.hs to i64
  %min.iters.check = icmp ult i64 %i.hq, 8
  %i.hv = sub i64 %i.hp, %i.hu
  %diff.check = icmp ugt i64 %i.hv, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2013 = icmp ult i64 %i.hq, 32
  br i1 %min.iters.check2013, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hw = and i64 %i.hq, 24
  %n.vec = and i64 %i.hq, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load = load <16 x i8>, ptr %i.hx, align 1, !noalias !34725 ; 2 uses
  %wide.load2014 = load <16 x i8>, ptr %i.hy, align 1, !noalias !34725 ; 2 uses
  %i.hz = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ia = add <16 x i8> %wide.load2014, splat (i8 -65)
  %i.ib = icmp ult <16 x i8> %i.hz, splat (i8 26)
  %i.ic = icmp ult <16 x i8> %i.ia, splat (i8 26)
  %i.id = select <16 x i1> %i.ib, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ie = select <16 x i1> %i.ic, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.if = or <16 x i8> %i.id, %wide.load
  %i.ig = or <16 x i8> %i.ie, %wide.load2014
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hs, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <16 x i8> %i.if, ptr %i.ih, align 1, !noalias !34726
  store <16 x i8> %i.ig, ptr %i.ii, align 1, !noalias !34726
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !33657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hq, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2015 = and i64 %i.hq, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2016 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2018, %vec.epilog.vector.body ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 %index2016
  %wide.load2017 = load <8 x i8>, ptr %i.ik, align 1, !noalias !34725 ; 2 uses
  %i.il = add <8 x i8> %wide.load2017, splat (i8 -65)
  %i.im = icmp ult <8 x i8> %i.il, splat (i8 26)
  %i.in = select <8 x i1> %i.im, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.io = or <8 x i8> %i.in, %wide.load2017
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 %index2016
  store <8 x i8> %i.io, ptr %i.ip, align 1, !noalias !34726
  %index.next2018 = add nuw i64 %index2016, 8     ; 2 uses
  %i.iq = icmp eq i64 %index.next2018, %n.vec2015
  br i1 %i.iq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33658

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2019 = icmp eq i64 %i.hq, %n.vec2015
  br i1 %cmp.n2019, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph2246 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2015, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.ph2246, 1
  %xtraiter = and i64 %i.hq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.i.i.i.i.preheader
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.ph2246
  %.val15.i.i.i.i.i.i.i.prol = load i8, ptr %i.ir, align 1, !noalias !34725, !noundef !67 ; 2 uses
  %i.is = add i8 %.val15.i.i.i.i.i.i.i.prol, -65
  %i.it = icmp ult i8 %i.is, 26
  %i.iu = select i1 %i.it, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.prol = or i8 %i.iu, %.val15.i.i.i.i.i.i.i.prol
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.ph2246
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.prol, ptr %i.iv, align 1, !noalias !34726
  %i.iw = or disjoint i64 %.ph2246, 1
  br label %.preheader.i.i.i.i.prol.loopexit

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %.preheader.i.i.i.i.prol, %.preheader.i.i.i.i.preheader
  %.unr = phi i64 [ %.ph2246, %.preheader.i.i.i.i.preheader ], [ %i.iw, %.preheader.i.i.i.i.prol ]
  %i.ix = icmp eq i64 %i.hq, %.neg
  br i1 %i.ix, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.hq) #61
          to label %.noexc.i unwind label %bb.ac, !noalias !34710

.noexc.i:                                         ; preds = %bb.ag
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i
  %i.iy = phi i64 [ %i.jk, %.preheader.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.iy
  %.val15.i.i.i.i.i.i.i = load i8, ptr %i.iz, align 1, !noalias !34725, !noundef !67 ; 2 uses
  %i.ja = add i8 %.val15.i.i.i.i.i.i.i, -65
  %i.jb = icmp ult i8 %i.ja, 26
  %i.jc = select i1 %i.jb, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = or i8 %i.jc, %.val15.i.i.i.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.iy
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.jd, align 1, !noalias !34726
  %i.je = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.je
  %.val15.i.i.i.i.i.i.i.1 = load i8, ptr %i.jf, align 1, !noalias !34725, !noundef !67 ; 2 uses
  %i.jg = add i8 %.val15.i.i.i.i.i.i.i.1, -65
  %i.jh = icmp ult i8 %i.jg, 26
  %i.ji = select i1 %i.jh, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.1 = or i8 %i.ji, %.val15.i.i.i.i.i.i.i.1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.je
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.1, ptr %i.jj, align 1, !noalias !34726
  %i.jk = add nuw nsw i64 %i.iy, 2                ; 2 uses
  %i.jl = icmp eq i64 %i.jk, %i.hq
  br i1 %i.jl, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i.i.i, !llvm.loop !33659

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.ae
  %i.jm = phi ptr [ inttoptr (i64 1 to ptr), %bb.ae ], [ %i.hs, %middle.block ], [ %i.hs, %vec.epilog.middle.block ], [ %i.hs, %.preheader.i.i.i.i ], [ %i.hs, %.preheader.i.i.i.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs7_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_8SparsityNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jm, i64 noundef %i.hq)
          to label %bb.ai unwind label %bb.ah, !noalias !34710

.body17.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844, %bb.au, %bb.ch, %bb.cg, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409, %bb.ak, %bb.ah
  %.pn9.i = phi { ptr, i32 } [ %i.qm, %bb.cg ], [ %i.jp, %bb.ak ], [ %i.jn, %bb.ah ], [ %i.jp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409 ], [ %i.qm, %bb.ch ], [ %.pn7.i, %bb.au ], [ %.pn7.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844 ] ; 2 uses
  br i1 %i.hr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body17.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jm, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34727
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i

bb.ah:                                            ; preds = %bb.ci, %bb.ap, %bb.am, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

bb.ai:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34728)
  %i.jo = load i64, ptr %i.db, align 8, !range !66, !alias.scope !34728, !noalias !34710, !noundef !67
  %.not.i16.i = icmp eq i64 %i.jo, -1
  br i1 %.not.i16.i, label %bb.am, label %bb.aj, !prof !77

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !34729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !34710
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3214) #61
          to label %bb.al unwind label %bb.ak, !noalias !34729

bb.ak:                                            ; preds = %bb.aj
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34730)
  call void @llvm.experimental.noalias.scope.decl(metadata !34731), !noalias !34728
  call void @llvm.experimental.noalias.scope.decl(metadata !34732), !noalias !34728
  %.val.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !34733, !noalias !34729 ; 2 uses
  %i.jq = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.jq, label %.body17.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i409: ; preds = %bb.ak
  %i.jr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.jr, align 8, !alias.scope !34733, !noalias !34729, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34734
  br label %.body17.i

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ai
  %i.js = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.jt = load i8, ptr %i.js, align 8, !range !69, !alias.scope !34728, !noalias !34710, !noundef !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !34710
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eu)
          to label %bb.an unwind label %bb.ah

bb.an:                                            ; preds = %bb.am
  %i.ju = load ptr, ptr %i.cw, align 8, !noalias !34710, !noundef !67
  %.not2.i = icmp eq ptr %i.ju, null
  br i1 %.not2.i, label %bb.ap, label %bb.ao, !prof !71

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i64 40, i1 false), !noalias !34710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !34710
  %i.jv = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cx)
          to label %bb.ax unwind label %bb.aw, !noalias !34710 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3215) #61
          to label %bb.aq unwind label %bb.ah, !noalias !34710

bb.aq:                                            ; preds = %bb.bj, %bb.ap
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i, %.body14.i, %bb.aw
  %.pn7.i = phi { ptr, i32 } [ %i.km, %bb.aw ], [ %.pn5.i, %.body14.i ], [ %.pn5.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34735)
  call void @llvm.experimental.noalias.scope.decl(metadata !34736), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34737), !noalias !34710
  %i.jw = load ptr, ptr %i.cx, align 8, !alias.scope !34738, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !34739, !noundef !67
  %i.jy = add i64 %i.jx, -1                       ; 2 uses
  store i64 %i.jy, ptr %i.jw, align 8, !noalias !34739
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %bb.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844

bb.ar:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844 unwind label %bb.as, !noalias !34710

bb.as:                                            ; preds = %bb.ar
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34740), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34741), !noalias !34710
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !34742, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !34743, !noundef !67
  %i.ke = add i64 %i.kd, -1                       ; 2 uses
  store i64 %i.ke, ptr %i.kc, align 8, !noalias !34743
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.at, label %.body841

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kb) #62
          to label %.body841 unwind label %bb.av, !noalias !34710

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844: ; preds = %bb.ar, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34744), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34745), !noalias !34710
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !34746, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !34747, !noundef !67
  %i.kj = add i64 %i.ki, -1                       ; 2 uses
  store i64 %i.kj, ptr %i.kh, align 8, !noalias !34747
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.au, label %.body17.i

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i844
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kg) #62
          to label %.body17.i unwind label %bb.cp

bb.av:                                            ; preds = %bb.at
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34710
  unreachable

bb.aw:                                            ; preds = %bb.ba, %bb.ao
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i

bb.ax:                                            ; preds = %bb.ao
  %i.kn = extractvalue { ptr, i64 } %i.jv, 0      ; 6 uses
  %i.ko = ptrtoaddr ptr %i.kn to i64
  %i.kp = extractvalue { ptr, i64 } %i.jv, 1      ; 17 uses
  %.not.i.i19.i = icmp slt i64 %i.kp, 0
  br i1 %.not.i.i19.i, label %bb.ba, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %bb.ax
  %i.kq = icmp eq i64 %i.kp, 0                    ; 3 uses
  br i1 %i.kq, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34748
  %i.kr = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34748 ; 11 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.ba, label %iter.check2035

iter.check2035:                                   ; preds = %bb.az
  %i.kt = ptrtoaddr ptr %i.kr to i64
  %min.iters.check2022 = icmp ult i64 %i.kp, 8
  %i.ku = sub i64 %i.ko, %i.kt
  %diff.check2021 = icmp ugt i64 %i.ku, -32
  %or.cond2076 = select i1 %min.iters.check2022, i1 true, i1 %diff.check2021
  br i1 %or.cond2076, label %.preheader.i.i.i21.i.preheader, label %vector.main.loop.iter.check2023

vector.main.loop.iter.check2023:                  ; preds = %iter.check2035
  %min.iters.check2024 = icmp ult i64 %i.kp, 32
  br i1 %min.iters.check2024, label %vec.epilog.ph2039, label %vector.ph2025

vector.ph2025:                                    ; preds = %vector.main.loop.iter.check2023
  %i.kv = and i64 %i.kp, 24
  %n.vec2026 = and i64 %i.kp, 9223372036854775776 ; 4 uses
  br label %vector.body2027

vector.body2027:                                  ; preds = %vector.ph2025, %vector.body2027
  %index2028 = phi i64 [ 0, %vector.ph2025 ], [ %index.next2031, %vector.body2027 ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 %index2028 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %wide.load2029 = load <16 x i8>, ptr %i.kw, align 1, !noalias !34749 ; 2 uses
  %wide.load2030 = load <16 x i8>, ptr %i.kx, align 1, !noalias !34749 ; 2 uses
  %i.ky = add <16 x i8> %wide.load2029, splat (i8 -65)
  %i.kz = add <16 x i8> %wide.load2030, splat (i8 -65)
  %i.la = icmp ult <16 x i8> %i.ky, splat (i8 26)
  %i.lb = icmp ult <16 x i8> %i.kz, splat (i8 26)
  %i.lc = select <16 x i1> %i.la, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ld = select <16 x i1> %i.lb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.le = or <16 x i8> %i.lc, %wide.load2029
  %i.lf = or <16 x i8> %i.ld, %wide.load2030
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index2028 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <16 x i8> %i.le, ptr %i.lg, align 1, !noalias !34750
  store <16 x i8> %i.lf, ptr %i.lh, align 1, !noalias !34750
  %index.next2031 = add nuw i64 %index2028, 32    ; 2 uses
  %i.li = icmp eq i64 %index.next2031, %n.vec2026
  br i1 %i.li, label %middle.block2032, label %vector.body2027, !llvm.loop !33706

middle.block2032:                                 ; preds = %vector.body2027
  %cmp.n2033 = icmp eq i64 %i.kp, %n.vec2026
  br i1 %cmp.n2033, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %vec.epilog.iter.check2037

vec.epilog.iter.check2037:                        ; preds = %middle.block2032
  %min.epilog.iters.check2038 = icmp eq i64 %i.kv, 0
  br i1 %min.epilog.iters.check2038, label %.preheader.i.i.i21.i.preheader, label %vec.epilog.ph2039, !prof !147

vec.epilog.ph2039:                                ; preds = %vector.main.loop.iter.check2023, %vec.epilog.iter.check2037
  %vec.epilog.resume.val2034 = phi i64 [ %n.vec2026, %vec.epilog.iter.check2037 ], [ 0, %vector.main.loop.iter.check2023 ]
  %n.vec2040 = and i64 %i.kp, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body2041

vec.epilog.vector.body2041:                       ; preds = %vec.epilog.vector.body2041, %vec.epilog.ph2039
  %index2042 = phi i64 [ %vec.epilog.resume.val2034, %vec.epilog.ph2039 ], [ %index.next2044, %vec.epilog.vector.body2041 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kn, i64 %index2042
  %wide.load2043 = load <8 x i8>, ptr %i.lj, align 1, !noalias !34749 ; 2 uses
  %i.lk = add <8 x i8> %wide.load2043, splat (i8 -65)
  %i.ll = icmp ult <8 x i8> %i.lk, splat (i8 26)
  %i.lm = select <8 x i1> %i.ll, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ln = or <8 x i8> %i.lm, %wide.load2043
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index2042
  store <8 x i8> %i.ln, ptr %i.lo, align 1, !noalias !34750
  %index.next2044 = add nuw i64 %index2042, 8     ; 2 uses
  %i.lp = icmp eq i64 %index.next2044, %n.vec2040
  br i1 %i.lp, label %vec.epilog.middle.block2045, label %vec.epilog.vector.body2041, !llvm.loop !33707

vec.epilog.middle.block2045:                      ; preds = %vec.epilog.vector.body2041
  %cmp.n2046 = icmp eq i64 %i.kp, %n.vec2040
  br i1 %cmp.n2046, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i.preheader

.preheader.i.i.i21.i.preheader:                   ; preds = %iter.check2035, %vec.epilog.iter.check2037, %vec.epilog.middle.block2045
  %.ph2245 = phi i64 [ 0, %iter.check2035 ], [ %n.vec2026, %vec.epilog.iter.check2037 ], [ %n.vec2040, %vec.epilog.middle.block2045 ] ; 5 uses
  %.neg2253 = or disjoint i64 %.ph2245, 1
  %xtraiter2247 = and i64 %i.kp, 1
  %lcmp.mod2248.not = icmp eq i64 %xtraiter2247, 0
  br i1 %lcmp.mod2248.not, label %.preheader.i.i.i21.i.prol.loopexit, label %.preheader.i.i.i21.i.prol

.preheader.i.i.i21.i.prol:                        ; preds = %.preheader.i.i.i21.i.preheader
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.ph2245
  %.val15.i.i.i.i.i.i22.i.prol = load i8, ptr %i.lq, align 1, !noalias !34749, !noundef !67 ; 2 uses
  %i.lr = add i8 %.val15.i.i.i.i.i.i22.i.prol, -65
  %i.ls = icmp ult i8 %i.lr, 26
  %i.lt = select i1 %i.ls, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i.prol = or i8 %i.lt, %.val15.i.i.i.i.i.i22.i.prol
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.ph2245
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i.prol, ptr %i.lu, align 1, !noalias !34750
  %i.lv = or disjoint i64 %.ph2245, 1
  br label %.preheader.i.i.i21.i.prol.loopexit

.preheader.i.i.i21.i.prol.loopexit:               ; preds = %.preheader.i.i.i21.i.prol, %.preheader.i.i.i21.i.preheader
  %.unr2249 = phi i64 [ %.ph2245, %.preheader.i.i.i21.i.preheader ], [ %i.lv, %.preheader.i.i.i21.i.prol ]
  %i.lw = icmp eq i64 %i.kp, %.neg2253
  br i1 %i.lw, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.sroa.4.0.ph.i26.i = phi i64 [ 1, %bb.az ], [ 0, %bb.ax ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i26.i, i64 %i.kp) #61
          to label %.noexc27.i unwind label %bb.aw, !noalias !34710

.noexc27.i:                                       ; preds = %bb.ba
  unreachable

.preheader.i.i.i21.i:                             ; preds = %.preheader.i.i.i21.i.prol.loopexit, %.preheader.i.i.i21.i
  %i.lx = phi i64 [ %i.mj, %.preheader.i.i.i21.i ], [ %.unr2249, %.preheader.i.i.i21.i.prol.loopexit ] ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.lx
  %.val15.i.i.i.i.i.i22.i = load i8, ptr %i.ly, align 1, !noalias !34749, !noundef !67 ; 2 uses
  %i.lz = add i8 %.val15.i.i.i.i.i.i22.i, -65
  %i.ma = icmp ult i8 %i.lz, 26
  %i.mb = select i1 %i.ma, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i = or i8 %i.mb, %.val15.i.i.i.i.i.i22.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lx
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i, ptr %i.mc, align 1, !noalias !34750
  %i.md = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.md
  %.val15.i.i.i.i.i.i22.i.1 = load i8, ptr %i.me, align 1, !noalias !34749, !noundef !67 ; 2 uses
  %i.mf = add i8 %.val15.i.i.i.i.i.i22.i.1, -65
  %i.mg = icmp ult i8 %i.mf, 26
  %i.mh = select i1 %i.mg, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i23.i.1 = or i8 %i.mh, %.val15.i.i.i.i.i.i22.i.1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.md
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i23.i.1, ptr %i.mi, align 1, !noalias !34750
  %i.mj = add nuw nsw i64 %i.lx, 2                ; 2 uses
  %i.mk = icmp eq i64 %i.mj, %i.kp
  br i1 %i.mk, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i, label %.preheader.i.i.i21.i, !llvm.loop !33708

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i: ; preds = %.preheader.i.i.i21.i.prol.loopexit, %.preheader.i.i.i21.i, %middle.block2032, %vec.epilog.middle.block2045, %bb.ay
  %i.ml = phi ptr [ inttoptr (i64 1 to ptr), %bb.ay ], [ %i.kr, %middle.block2032 ], [ %i.kr, %vec.epilog.middle.block2045 ], [ %i.kr, %.preheader.i.i.i21.i ], [ %i.kr, %.preheader.i.i.i21.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs8_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_8DataTypeNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ml, i64 noundef %i.kp)
          to label %bb.bc unwind label %bb.bb, !noalias !34710

.body14.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838, %bb.bn, %bb.cc, %bb.cb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i, %bb.be, %bb.bb
  %.pn5.i = phi { ptr, i32 } [ %i.pw, %bb.cb ], [ %i.mo, %bb.be ], [ %i.mm, %bb.bb ], [ %i.mo, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i ], [ %i.pw, %bb.cc ], [ %.pn.i, %bb.bn ], [ %.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838 ] ; 2 uses
  br i1 %i.kq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i30.i: ; preds = %.body14.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ml, i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34751
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit32.i

bb.bb:                                            ; preds = %bb.cd, %bb.bj, %bb.bg, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

bb.bc:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit28.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34752)
  %i.mn = load i64, ptr %i.cy, align 8, !range !66, !alias.scope !34752, !noalias !34710, !noundef !67
  %.not.i13.i = icmp eq i64 %i.mn, -1
  br i1 %.not.i13.i, label %bb.bg, label %bb.bd, !prof !77

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !34753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !noalias !34710
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3216) #61
          to label %bb.bf unwind label %bb.be, !noalias !34753

bb.be:                                            ; preds = %bb.bd
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34754)
  call void @llvm.experimental.noalias.scope.decl(metadata !34755), !noalias !34752
  call void @llvm.experimental.noalias.scope.decl(metadata !34756), !noalias !34752
  %.val.i.i.i33.i = load i64, ptr %i.cr, align 8, !alias.scope !34757, !noalias !34753 ; 2 uses
  %i.mp = icmp eq i64 %.val.i.i.i33.i, 0
  br i1 %i.mp, label %.body14.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i34.i: ; preds = %bb.be
  %i.mq = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.val1.i.i.i35.i = load ptr, ptr %i.mq, align 8, !alias.scope !34757, !noalias !34753, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i35.i, i64 noundef %.val.i.i.i33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34758
  br label %.body14.i

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.bc
  %i.mr = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ms = load i8, ptr %i.mr, align 8, !range !146, !alias.scope !34752, !noalias !34710, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !34710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !34710
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eu)
          to label %bb.bh unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bg
  %i.mt = load ptr, ptr %i.ct, align 8, !noalias !34710, !noundef !67
  %.not3.i = icmp eq ptr %i.mt, null
  br i1 %.not3.i, label %bb.bj, label %bb.bi, !prof !71

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !34710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !34710
  %i.mu = invoke fastcc { ptr, i64 } @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6as_strCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cu)
          to label %bb.bq unwind label %bb.bp, !noalias !34710 ; 2 uses

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3217) #61
          to label %bb.aq unwind label %bb.bb, !noalias !34710

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i, %.body.i, %bb.bp
  %.pn.i = phi { ptr, i32 } [ %i.nl, %bb.bp ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34759)
  call void @llvm.experimental.noalias.scope.decl(metadata !34760), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34761), !noalias !34710
  %i.mv = load ptr, ptr %i.cu, align 8, !alias.scope !34762, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !34763, !noundef !67
  %i.mx = add i64 %i.mw, -1                       ; 2 uses
  store i64 %i.mx, ptr %i.mv, align 8, !noalias !34763
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %bb.bk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838

bb.bk:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838 unwind label %bb.bl, !noalias !34710

bb.bl:                                            ; preds = %bb.bk
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34764), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34765), !noalias !34710
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !34766, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !34767, !noundef !67
  %i.nd = add i64 %i.nc, -1                       ; 2 uses
  store i64 %i.nd, ptr %i.nb, align 8, !noalias !34767
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %bb.bm, label %.body841

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.na) #62
          to label %.body841 unwind label %bb.bo, !noalias !34710

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838: ; preds = %bb.bk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34768), !noalias !34710
  call void @llvm.experimental.noalias.scope.decl(metadata !34769), !noalias !34710
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !34770, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !34771, !noundef !67
  %i.ni = add i64 %i.nh, -1                       ; 2 uses
  store i64 %i.ni, ptr %i.ng, align 8, !noalias !34771
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %bb.bn, label %.body14.i

bb.bn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i838
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nf) #62
          to label %.body14.i unwind label %bb.cp

bb.bo:                                            ; preds = %bb.bm
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !34710
  unreachable

bb.bp:                                            ; preds = %bb.bt, %bb.bi
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i

bb.bq:                                            ; preds = %bb.bi
  %i.nm = extractvalue { ptr, i64 } %i.mu, 0      ; 6 uses
  %i.nn = ptrtoaddr ptr %i.nm to i64
  %i.no = extractvalue { ptr, i64 } %i.mu, 1      ; 17 uses
  %.not.i.i37.i = icmp slt i64 %i.no, 0
  br i1 %.not.i.i37.i, label %bb.bt, label %bb.br, !prof !73

bb.br:                                            ; preds = %bb.bq
  %i.np = icmp eq i64 %i.no, 0                    ; 3 uses
  br i1 %i.np, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !34772
  %i.nq = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34772 ; 11 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.bt, label %iter.check2063

iter.check2063:                                   ; preds = %bb.bs
  %i.ns = ptrtoaddr ptr %i.nq to i64
  %min.iters.check2050 = icmp ult i64 %i.no, 8
  %i.nt = sub i64 %i.nn, %i.ns
  %diff.check2049 = icmp ugt i64 %i.nt, -32
  %or.cond2077 = select i1 %min.iters.check2050, i1 true, i1 %diff.check2049
  br i1 %or.cond2077, label %.preheader.i.i.i39.i.preheader, label %vector.main.loop.iter.check2051

vector.main.loop.iter.check2051:                  ; preds = %iter.check2063
  %min.iters.check2052 = icmp ult i64 %i.no, 32
  br i1 %min.iters.check2052, label %vec.epilog.ph2067, label %vector.ph2053

vector.ph2053:                                    ; preds = %vector.main.loop.iter.check2051
  %i.nu = and i64 %i.no, 24
  %n.vec2054 = and i64 %i.no, 9223372036854775776 ; 4 uses
  br label %vector.body2055

vector.body2055:                                  ; preds = %vector.ph2053, %vector.body2055
  %index2056 = phi i64 [ 0, %vector.ph2053 ], [ %index.next2059, %vector.body2055 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index2056 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load2057 = load <16 x i8>, ptr %i.nv, align 1, !noalias !34773 ; 2 uses
  %wide.load2058 = load <16 x i8>, ptr %i.nw, align 1, !noalias !34773 ; 2 uses
  %i.nx = add <16 x i8> %wide.load2057, splat (i8 -65)
  %i.ny = add <16 x i8> %wide.load2058, splat (i8 -65)
  %i.nz = icmp ult <16 x i8> %i.nx, splat (i8 26)
  %i.oa = icmp ult <16 x i8> %i.ny, splat (i8 26)
  %i.ob = select <16 x i1> %i.nz, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.oc = select <16 x i1> %i.oa, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.od = or <16 x i8> %i.ob, %wide.load2057
  %i.oe = or <16 x i8> %i.oc, %wide.load2058
  %i.of = getelementptr inbounds nuw i8, ptr %i.nq, i64 %index2056 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <16 x i8> %i.od, ptr %i.of, align 1, !noalias !34774
  store <16 x i8> %i.oe, ptr %i.og, align 1, !noalias !34774
  %index.next2059 = add nuw i64 %index2056, 32    ; 2 uses
  %i.oh = icmp eq i64 %index.next2059, %n.vec2054
  br i1 %i.oh, label %middle.block2060, label %vector.body2055, !llvm.loop !33755

middle.block2060:                                 ; preds = %vector.body2055
  %cmp.n2061 = icmp eq i64 %i.no, %n.vec2054
  br i1 %cmp.n2061, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %vec.epilog.iter.check2065

vec.epilog.iter.check2065:                        ; preds = %middle.block2060
  %min.epilog.iters.check2066 = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check2066, label %.preheader.i.i.i39.i.preheader, label %vec.epilog.ph2067, !prof !147

vec.epilog.ph2067:                                ; preds = %vector.main.loop.iter.check2051, %vec.epilog.iter.check2065
  %vec.epilog.resume.val2062 = phi i64 [ %n.vec2054, %vec.epilog.iter.check2065 ], [ 0, %vector.main.loop.iter.check2051 ]
  %n.vec2068 = and i64 %i.no, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body2069

vec.epilog.vector.body2069:                       ; preds = %vec.epilog.vector.body2069, %vec.epilog.ph2067
  %index2070 = phi i64 [ %vec.epilog.resume.val2062, %vec.epilog.ph2067 ], [ %index.next2072, %vec.epilog.vector.body2069 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nm, i64 %index2070
  %wide.load2071 = load <8 x i8>, ptr %i.oi, align 1, !noalias !34773 ; 2 uses
  %i.oj = add <8 x i8> %wide.load2071, splat (i8 -65)
  %i.ok = icmp ult <8 x i8> %i.oj, splat (i8 26)
  %i.ol = select <8 x i1> %i.ok, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.om = or <8 x i8> %i.ol, %wide.load2071
  %i.on = getelementptr inbounds nuw i8, ptr %i.nq, i64 %index2070
  store <8 x i8> %i.om, ptr %i.on, align 1, !noalias !34774
  %index.next2072 = add nuw i64 %index2070, 8     ; 2 uses
  %i.oo = icmp eq i64 %index.next2072, %n.vec2068
  br i1 %i.oo, label %vec.epilog.middle.block2073, label %vec.epilog.vector.body2069, !llvm.loop !33756

vec.epilog.middle.block2073:                      ; preds = %vec.epilog.vector.body2069
  %cmp.n2074 = icmp eq i64 %i.no, %n.vec2068
  br i1 %cmp.n2074, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i.preheader

.preheader.i.i.i39.i.preheader:                   ; preds = %iter.check2063, %vec.epilog.iter.check2065, %vec.epilog.middle.block2073
  %.ph = phi i64 [ 0, %iter.check2063 ], [ %n.vec2054, %vec.epilog.iter.check2065 ], [ %n.vec2068, %vec.epilog.middle.block2073 ] ; 5 uses
  %.neg2254 = or disjoint i64 %.ph, 1
  %xtraiter2250 = and i64 %i.no, 1
  %lcmp.mod2251.not = icmp eq i64 %xtraiter2250, 0
  br i1 %lcmp.mod2251.not, label %.preheader.i.i.i39.i.prol.loopexit, label %.preheader.i.i.i39.i.prol

.preheader.i.i.i39.i.prol:                        ; preds = %.preheader.i.i.i39.i.preheader
  %i.op = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.ph
  %.val15.i.i.i.i.i.i40.i.prol = load i8, ptr %i.op, align 1, !noalias !34773, !noundef !67 ; 2 uses
  %i.oq = add i8 %.val15.i.i.i.i.i.i40.i.prol, -65
  %i.or = icmp ult i8 %i.oq, 26
  %i.os = select i1 %i.or, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i.prol = or i8 %i.os, %.val15.i.i.i.i.i.i40.i.prol
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i.prol, ptr %i.ot, align 1, !noalias !34774
  %i.ou = or disjoint i64 %.ph, 1
  br label %.preheader.i.i.i39.i.prol.loopexit

.preheader.i.i.i39.i.prol.loopexit:               ; preds = %.preheader.i.i.i39.i.prol, %.preheader.i.i.i39.i.preheader
  %.unr2252 = phi i64 [ %.ph, %.preheader.i.i.i39.i.preheader ], [ %i.ou, %.preheader.i.i.i39.i.prol ]
  %i.ov = icmp eq i64 %i.no, %.neg2254
  br i1 %i.ov, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.sroa.4.0.ph.i44.i = phi i64 [ 1, %bb.bs ], [ 0, %bb.bq ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i44.i, i64 %i.no) #61
          to label %.noexc45.i unwind label %bb.bp, !noalias !34710

.noexc45.i:                                       ; preds = %bb.bt
  unreachable

.preheader.i.i.i39.i:                             ; preds = %.preheader.i.i.i39.i.prol.loopexit, %.preheader.i.i.i39.i
  %i.ow = phi i64 [ %i.pi, %.preheader.i.i.i39.i ], [ %.unr2252, %.preheader.i.i.i39.i.prol.loopexit ] ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.ow
  %.val15.i.i.i.i.i.i40.i = load i8, ptr %i.ox, align 1, !noalias !34773, !noundef !67 ; 2 uses
  %i.oy = add i8 %.val15.i.i.i.i.i.i40.i, -65
  %i.oz = icmp ult i8 %i.oy, 26
  %i.pa = select i1 %i.oz, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i = or i8 %i.pa, %.val15.i.i.i.i.i.i40.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ow
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i, ptr %i.pb, align 1, !noalias !34774
  %i.pc = add nuw nsw i64 %i.ow, 1                ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.pc
  %.val15.i.i.i.i.i.i40.i.1 = load i8, ptr %i.pd, align 1, !noalias !34773, !noundef !67 ; 2 uses
  %i.pe = add i8 %.val15.i.i.i.i.i.i40.i.1, -65
  %i.pf = icmp ult i8 %i.pe, 26
  %i.pg = select i1 %i.pf, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i41.i.1 = or i8 %i.pg, %.val15.i.i.i.i.i.i40.i.1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.pc
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i41.i.1, ptr %i.ph, align 1, !noalias !34774
  %i.pi = add nuw nsw i64 %i.ow, 2                ; 2 uses
  %i.pj = icmp eq i64 %i.pi, %i.no
  br i1 %i.pj, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i, label %.preheader.i.i.i39.i, !llvm.loop !33757

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i: ; preds = %.preheader.i.i.i39.i.prol.loopexit, %.preheader.i.i.i39.i, %middle.block2060, %vec.epilog.middle.block2073, %bb.br
  %i.pk = phi ptr [ inttoptr (i64 1 to ptr), %bb.br ], [ %i.nq, %middle.block2060 ], [ %i.nq, %vec.epilog.middle.block2073 ], [ %i.nq, %.preheader.i.i.i39.i ], [ %i.nq, %.preheader.i.i.i39.i.prol.loopexit ] ; 3 uses
  invoke void @_RNvXs9_NtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_marketNtB5_13StorageSchemeNtNtNtCslwFuT2d6ECx_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pk, i64 noundef %i.no)
          to label %bb.bv unwind label %bb.bu, !noalias !34710

bb.bu:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i, %bb.bx, %bb.bu
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.pl, %bb.bu ], [ %i.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i ], [ %i.pn, %bb.bx ] ; 2 uses
  br i1 %i.np, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i: ; preds = %.body.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pk, i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34775
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50.i

bb.bv:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34776)
  %i.pm = load i64, ptr %i.cv, align 8, !range !66, !alias.scope !34776, !noalias !34710, !noundef !67
  %.not.i.i = icmp eq i64 %i.pm, -1
  br i1 %.not.i.i, label %bb.bz, label %bb.bw, !prof !77

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !34777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cv, i64 32, i1 false), !noalias !34710
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3218) #61
          to label %bb.by unwind label %bb.bx, !noalias !34777

bb.bx:                                            ; preds = %bb.bw
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34778)
  call void @llvm.experimental.noalias.scope.decl(metadata !34779), !noalias !34776
  call void @llvm.experimental.noalias.scope.decl(metadata !34780), !noalias !34776
  %.val.i.i.i51.i = load i64, ptr %i.cs, align 8, !alias.scope !34781, !noalias !34777 ; 2 uses
  %i.po = icmp eq i64 %.val.i.i.i51.i, 0
  br i1 %i.po, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i52.i: ; preds = %bb.bx
  %i.pp = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i.i.i53.i = load ptr, ptr %i.pp, align 8, !alias.scope !34781, !noalias !34777, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i53.i, i64 noundef %.val.i.i.i51.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34782
  br label %.body.i

bb.by:                                            ; preds = %bb.bw
  unreachable

bb.bz:                                            ; preds = %bb.bv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.pr = load i8, ptr %i.pq, align 8, !range !146, !alias.scope !34776, !noalias !34710, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !34710
  br i1 %i.np, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i: ; preds = %bb.bz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pk, i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !34783
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i56.i, %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !34784)
  call void @llvm.experimental.noalias.scope.decl(metadata !34785)
  call void @llvm.experimental.noalias.scope.decl(metadata !34786)
  %i.ps = load ptr, ptr %i.cu, align 8, !alias.scope !34787, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !34788, !noundef !67
  %i.pu = add i64 %i.pt, -1                       ; 2 uses
  store i64 %i.pu, ptr %i.ps, align 8, !noalias !34788
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %bb.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ca:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.cb, !noalias !34710

bb.cb:                                            ; preds = %bb.ca
  %i.pw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34789)
  call void @llvm.experimental.noalias.scope.decl(metadata !34790)
  %i.py = load ptr, ptr %i.px, align 8, !alias.scope !34791, !noalias !34710, !nonnull !67, !noundef !67 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !noalias !34792, !noundef !67
  %i.qa = add i64 %i.pz, -1                       ; 2 uses
  store i64 %i.qa, ptr %i.py, align 8, !noalias !34792
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %bb.cc, label %.body14.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.px) #62
          to label %.body14.i unwind label %bb.ce, !noalias !34710

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ca, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit58.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjdENCINvMB8_SB1m_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2g_10TriMatIterINtNtB8_4iter4IterjEB3f_IB3g_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx:.lr.ph.preheader
  %i.d = icmp eq i64 %.val11.i, %.val13.i
  %i.e = icmp ult i64 %.val11.i, %.val13.i
  %i.f = icmp ult i64 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.d, i1 %i.f, i1 %i.e
  br i1 %.sroa.0.0.i.i.i, label %bb.a, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.pn3, i64 24, i1 false)
  %i.g = icmp eq ptr %.pn3, %0
  br i1 %i.g, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -24 ; 4 uses
  %.val9.i = load i64, ptr %i.i, align 8, !noundef !67 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.0.i1, i64 -16
  %.val10.i = load i64, ptr %i.j, align 8, !noundef !67
  %i.k = icmp eq i64 %.val11.i, %.val9.i
  %i.l = icmp ult i64 %.val11.i, %.val9.i
  %i.m = icmp ult i64 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.k, i1 %i.m, i1 %i.l
  br i1 %.sroa.0.0.i.i15.i, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !37174
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37174
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37174
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i87 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i92 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dy, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dw, %bb.z ] ; 3 uses
  %i.i = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val8.i = load i8, ptr %i.o, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 3 uses
  %.val9.i = load i8, ptr %i.m, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67
  %i.p = icmp samesign ult i8 %.val8.i, %.val9.i  ; 2 uses
  %.not66 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, label %.lr.ph54

.lr.ph:                                           ; preds = %.preheader45, %bb.k
  %.val7.i = phi i8 [ %.val6.i, %bb.k ], [ %.val8.i, %.preheader45 ]
  %.sroa.01.0.i.i50 = phi i64 [ %i.s, %bb.k ], [ 2, %.preheader45 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i50
  %.val6.i = load i8, ptr %i.q, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 2 uses
  %i.r = icmp samesign ult i8 %.val6.i, %.val7.i
  br i1 %i.r, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i50, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph

.lr.ph54:                                         ; preds = %.preheader, %bb.l
  %.val5.i = phi i8 [ %.val.i, %bb.l ], [ %.val8.i, %.preheader ]
  %.sroa.01.1.i.i53 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.1.i.i53
  %.val.i = load i8, ptr %i.t, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 2 uses
  %i.u = icmp samesign ult i8 %.val.i, %.val5.i
  br i1 %i.u, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.l:                                             ; preds = %.lr.ph54
  %i.v = add nuw i64 %.sroa.01.1.i.i53, 1         ; 2 uses
  %exitcond73.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond73.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph54

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph54
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i53, %.lr.ph54 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i50, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90: ; preds = %.preheader
  br i1 %.not4.i92, label %bb.h, label %iter.check

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not4.i87, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.p, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.n:                                             ; preds = %bb.h
  %i.x = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, -9223372036854775808) %i.l)
  %i.y = shl nuw i64 %i.x, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.o:                                             ; preds = %bb.h
  %i.z = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.m, i64 noundef %i.z, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, %middle.block, %vec.epilog.middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i4043 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread ], [ %.sroa.0.0.i.i889599, %middle.block ], [ %.sroa.0.0.i.i889599, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i889599, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ]
  %i.ac = shl nuw i64 %.sroa.0.0.i.i4043, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37199)
  %.not.i35 = icmp eq i64 %i.ae, 0
  br i1 %.not.i35, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %iter.check

iter.check:                                       ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %bb.p
  %i.af = phi i64 [ %i.ae, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 8 uses
  %.sroa.0.0.i.i889599 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i889599 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = xor i64 %index, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.ai
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !37198, !noalias !37200
  %i.al = getelementptr i8, ptr %i.ak, i64 -15    ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.al, align 1, !alias.scope !37199, !noalias !37201
  %reverse = shufflevector <16 x i8> %wide.load8, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.aj, align 1, !alias.scope !37198, !noalias !37200
  %reverse9 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse9, ptr %i.al, align 1, !alias.scope !37199, !noalias !37201
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !37182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vec.epilog.ph, !prof !37202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.af, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.an = xor i64 %index11, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %index11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.an
  %wide.load12 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !37198, !noalias !37200
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3     ; 2 uses
  %wide.load13 = load <4 x i8>, ptr %i.aq, align 1, !alias.scope !37199, !noalias !37201
  %reverse14 = shufflevector <4 x i8> %wide.load13, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse14, ptr %i.ao, align 1, !alias.scope !37198, !noalias !37200
  %reverse15 = shufflevector <4 x i8> %wide.load12, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse15, ptr %i.aq, align 1, !alias.scope !37199, !noalias !37201
  %index.next16 = add nuw i64 %index11, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.af, %n.vec10
  br i1 %cmp.n17, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ax, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !range !149, !alias.scope !37198, !noalias !37200, !noundef !67
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !37199, !noalias !37201
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !37198, !noalias !37200
  store i8 %i.av, ptr %i.au, align 1, !alias.scope !37199, !noalias !37201
  %i.ax = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, !llvm.loop !37184

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit ], [ %i.ab, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw i64 %.sroa.09.0, 1            ; 2 uses
  %i.ba = sub i64 %factor, %i.ay
  %i.bb = add i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph60, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.159 = phi i64 [ %.sroa.02.0, %.lr.ph60 ], [ %i.bh, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.023.158 = phi i64 [ %.sroa.023.0, %.lr.ph60 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.159, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.158, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.159, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.i, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !67 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.158, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.158 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.158
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37204)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.bp) ; 3 uses
  %i.cn = icmp samesign ult i64 %3, %i.cm
  br i1 %i.cn, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.co, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !37205
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cq = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.critedge.i ]
  %i.cr = phi ptr [ %i.cz, %.preheader.i ], [ %i.co, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %.preheader.i ], [ %i.k, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.ct, align 1, !range !149, !alias.scope !37204, !noalias !37206, !noundef !67 ; 2 uses
  %.val12.i.i = load i8, ptr %i.cs, align 1, !range !149, !alias.scope !37203, !noalias !37207, !noundef !67 ; 2 uses
  %i.cv = icmp samesign ult i8 %.val.i.i, %.val12.i.i ; 2 uses
  %i.cw = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val12.i.i)
  store i8 %i.cw, ptr %i.cu, align 1, !alias.scope !37203, !noalias !37207
  %i.cx = xor i1 %i.cv, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cv to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bs
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.de = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.df = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !149, !alias.scope !37203, !noalias !37208, !noundef !67 ; 2 uses
  %.val.i18.i = load i8, ptr %i.df, align 1, !range !149, !alias.scope !37204, !noalias !37209, !noundef !67 ; 2 uses
  %i.dg = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i18.i ; 2 uses
  %i.dh = xor i1 %i.dg, true
  %i.di = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i18.i)
  store i8 %i.di, ptr %i.de, align 1, !alias.scope !37203, !noalias !37208
  %i.dj = zext i1 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
  %.val5.i = load i8, ptr %.sroa.0.0.ph129, align 1, !range !149, !alias.scope !37516, !noundef !67 ; 2 uses
  %.val6.i = load i8, ptr %i.eh, align 1, !range !149, !alias.scope !37516, !noundef !67 ; 2 uses
  %i.em = icmp samesign ult i8 %.val5.i, %.val6.i ; 2 uses
  %.val4.i = load i8, ptr %i.ej, align 1, !range !149, !alias.scope !37516, !noundef !67 ; 2 uses
  %i.en = icmp samesign ult i8 %.val5.i, %.val4.i
  %i.eo = xor i1 %i.em, %i.en
  %i.ep = icmp samesign ult i8 %.val6.i, %.val4.i
  %i.eq = xor i1 %i.em, %i.ep
  %..i.i = select i1 %i.eq, ptr %i.ej, ptr %i.eh
  %.sroa.0.0.i.i37 = select i1 %i.eo, ptr %.sroa.0.0.ph129, ptr %..i.i
  br label %bb.p

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3NtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i37, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3NtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit.i ], [ %i.el, %bb.o ]
  %i.er = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.es = sub nuw i64 %i.er, %i.c                 ; 5 uses
  %i.et = icmp ult i64 %i.es, %.sroa.16.012245
  call void @llvm.assume(i1 %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1             ; 9 uses
  store i8 %i.ev, ptr %i.a, align 1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i8, ptr %.sroa.028.0.ph126, align 1, !range !149, !noundef !67
  %i.ew = icmp ult i8 %.sroa.028.0.val, %i.ev
  br i1 %i.ew, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !37517)
  call void @llvm.experimental.noalias.scope.decl(metadata !37518)
  %i.ex = icmp samesign ult i64 %3, %.sroa.16.012245
  br i1 %i.ex, label %bb.t, label %bb.s, !prof !90

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr i8, ptr %2, i64 %.sroa.16.012245 ; 4 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.ey, %bb.s ], [ %i.hb, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph129, %bb.s ], [ %i.he, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %i.es, %bb.s ], [ %.sroa.16.012245, %bb.v ] ; 6 uses
  %i.ez = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %i.ez ; 2 uses
  %i.fb = icmp ult ptr %.sroa.9.0.i, %i.fa
  br i1 %i.fb, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.fz, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.fy, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.fv, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
  %.val20.i = load i8, ptr %.sroa.9.131.i, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.fc = icmp samesign ult i8 %.val20.i, %i.ev   ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -1
  %.sroa.01.0.i.i = select i1 %i.fc, ptr %2, ptr %i.fd
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i8 %.val20.i, ptr %i.fe, align 1, !alias.scope !37518, !noalias !37519
  %i.ff = zext i1 %i.fc to i64
  %i.fg = add i64 %.sroa.27.130.i, %i.ff          ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 1
  %.val18.i = load i8, ptr %i.fh, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.fi = icmp samesign ult i8 %.val18.i, %i.ev   ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -2
  %.sroa.01.0.i22.i = select i1 %i.fi, ptr %2, ptr %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i22.i, i64 %i.fg
  store i8 %.val18.i, ptr %i.fk, align 1, !alias.scope !37518, !noalias !37520
  %i.fl = zext i1 %i.fi to i64
  %i.fm = add i64 %i.fg, %i.fl                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 2
  %.val16.i = load i8, ptr %i.fn, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.fo = icmp samesign ult i8 %.val16.i, %i.ev   ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -3
  %.sroa.01.0.i23.i = select i1 %i.fo, ptr %2, ptr %i.fp
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i23.i, i64 %i.fm
  store i8 %.val16.i, ptr %i.fq, align 1, !alias.scope !37518, !noalias !37521
  %i.fr = zext i1 %i.fo to i64
  %i.fs = add i64 %i.fm, %i.fr                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 3
  %.val14.i = load i8, ptr %i.ft, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.fu = icmp samesign ult i8 %.val14.i, %i.ev   ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -4 ; 3 uses
  %.sroa.01.0.i24.i = select i1 %i.fu, ptr %2, ptr %i.fv
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i24.i, i64 %i.fs
  store i8 %.val14.i, ptr %i.fw, align 1, !alias.scope !37518, !noalias !37522
  %i.fx = zext i1 %i.fu to i64
  %i.fy = add i64 %i.fs, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 4 ; 3 uses
  %i.ga = icmp ult ptr %i.fz, %i.fa
  br i1 %i.ga, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.u
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.u ], [ %i.fv, %.lr.ph.i40 ] ; 3 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.u ], [ %i.fy, %.lr.ph.i40 ] ; 4 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.u ], [ %i.fz, %.lr.ph.i40 ] ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %.sroa.0.0.i38
  %i.gc = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gb
  br i1 %i.gc, label %.lr.ph38.preheader.i, label %._crit_edge39.i

.lr.ph38.preheader.i:                             ; preds = %._crit_edge.i
  %.sroa.9.1.lcssa52.i = ptrtoaddr ptr %.sroa.9.1.lcssa.i to i64 ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.9.1.lcssa.i, i64 %i.c
  %i.gd = sub i64 %.sroa.0.0.i38, %.sroa.9.1.lcssa52.i
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 %i.gd ; 3 uses
  %i.ge = add i64 %.sroa.0.0.i38, %i.c
  %i.gf = sub i64 %i.ge, %.sroa.9.1.lcssa52.i
  %i.gg = add i64 %i.e, %.sroa.0.0.i38
  %xtraiter = and i64 %i.gf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.i.prol.loopexit, label %.lr.ph38.i.prol

.lr.ph38.i.prol:                                  ; preds = %.lr.ph38.preheader.i
  %.val.i.prol = load i8, ptr %.sroa.9.1.lcssa.i, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.gh = icmp samesign ult i8 %.val.i.prol, %i.ev ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.43.1.lcssa.i, i64 -1 ; 3 uses
  %.sroa.01.0.i25.i.prol = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i.prol, i64 %.sroa.27.1.lcssa.i
  store i8 %.val.i.prol, ptr %i.gj, align 1, !alias.scope !37518, !noalias !37523
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %.sroa.27.1.lcssa.i, %i.gk      ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.1.lcssa.i, i64 1
  br label %.lr.ph38.i.prol.loopexit

.lr.ph38.i.prol.loopexit:                         ; preds = %.lr.ph38.i.prol, %.lr.ph38.preheader.i
  %.lcssa109.unr = phi ptr [ poison, %.lr.ph38.preheader.i ], [ %i.gi, %.lr.ph38.i.prol ]
  %.lcssa108.unr = phi i64 [ poison, %.lr.ph38.preheader.i ], [ %i.gl, %.lr.ph38.i.prol ]
  %.sroa.9.236.i.unr = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gm, %.lr.ph38.i.prol ]
  %.sroa.27.235.i.unr = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gl, %.lr.ph38.i.prol ]
  %.sroa.43.234.i.unr = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gi, %.lr.ph38.i.prol ]
  %i.gn = icmp eq i64 %i.gg, %.sroa.9.1.lcssa52.i
  br i1 %i.gn, label %._crit_edge39.i, label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %.lcssa109.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gw, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %.lcssa108.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gz, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %scevgep53.i, %.lr.ph38.i ], [ %scevgep53.i, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %i.go = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.012245
  br i1 %i.go, label %bb.w, label %bb.v

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.ha, %.lr.ph38.i ], [ %.sroa.9.236.i.unr, %.lr.ph38.i.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gz, %.lr.ph38.i ], [ %.sroa.27.235.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.43.234.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.val.i = load i8, ptr %.sroa.9.236.i, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.gp = icmp samesign ult i8 %.val.i, %i.ev     ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -1
  %.sroa.01.0.i25.i = select i1 %i.gp, ptr %2, ptr %i.gq
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i, i64 %.sroa.27.235.i
  store i8 %.val.i, ptr %i.gr, align 1, !alias.scope !37518, !noalias !37523
  %i.gs = zext i1 %i.gp to i64
  %i.gt = add i64 %.sroa.27.235.i, %i.gs          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 1
  %.val.i.1 = load i8, ptr %i.gu, align 1, !range !149, !alias.scope !37517, !noalias !37518, !noundef !67 ; 2 uses
  %i.gv = icmp samesign ult i8 %.val.i.1, %i.ev   ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -2 ; 3 uses
  %.sroa.01.0.i25.i.1 = select i1 %i.gv, ptr %2, ptr %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i.1, i64 %i.gt
  store i8 %.val.i.1, ptr %i.gx, align 1, !alias.scope !37518, !noalias !37523
  %i.gy = zext i1 %i.gv to i64
  %i.gz = add i64 %i.gt, %i.gy                    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 2 ; 2 uses
  %exitcond.not.i39.1 = icmp eq ptr %i.ha, %scevgep53.i
  br i1 %exitcond.not.i39.1, label %._crit_edge39.i, label %.lr.ph38.i

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hb = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -1 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.sroa.27.2.lcssa.i
  %i.hd = load i8, ptr %.sroa.9.2.lcssa.i, align 1, !alias.scope !37517, !noalias !37524
  store i8 %i.hd, ptr %i.hc, align 1, !alias.scope !37518, !noalias !37525
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 1
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge39.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph129, ptr nonnull align 1 %2, i64 %.sroa.27.2.lcssa.i, i1 false), !alias.scope !37526
  %i.hf = sub i64 %.sroa.16.012245, %.sroa.27.2.lcssa.i ; 9 uses
  %.not.i = icmp eq i64 %.sroa.16.012245, %.sroa.27.2.lcssa.i
  br i1 %.not.i, label %.loopexit, label %iter.check85

iter.check85:                                     ; preds = %bb.w
  %i.hg = getelementptr i8, ptr %.sroa.0.0.ph129, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check70, label %vec.epilog.scalar.ph86.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %iter.check85
  %min.iters.check72 = icmp ult i64 %i.hf, 32
  br i1 %min.iters.check72, label %vec.epilog.ph89, label %vector.ph73

vector.ph73:                                      ; preds = %vector.main.loop.iter.check71
  %i.hh = and i64 %i.hf, 24
  %n.vec74 = and i64 %i.hf, -32                   ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.ph73, %vector.body75
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 3 uses
  %i.hi = xor i64 %index76, -1
  %i.hj = getelementptr i8, ptr %i.ey, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hg, i64 %index76 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 -15
  %i.hm = getelementptr i8, ptr %i.hj, i64 -31
  %wide.load77 = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !37518, !noalias !37517
  %wide.load78 = load <16 x i8>, ptr %i.hm, align 1, !alias.scope !37518, !noalias !37517
  %reverse79 = shufflevector <16 x i8> %wide.load77, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse80 = shufflevector <16 x i8> %wide.load78, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hn = getelementptr i8, ptr %i.hk, i64 16
  store <16 x i8> %reverse79, ptr %i.hk, align 1, !alias.scope !37517, !noalias !37518
  store <16 x i8> %reverse80, ptr %i.hn, align 1, !alias.scope !37517, !noalias !37518
  %index.next81 = add nuw i64 %index76, 32        ; 2 uses
  %i.ho = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.ho, label %middle.block82, label %vector.body75, !llvm.loop !37483

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.hf, %n.vec74
  br i1 %cmp.n83, label %.loopexit, label %vec.epilog.iter.check87

vec.epilog.iter.check87:                          ; preds = %middle.block82
  %min.epilog.iters.check88 = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check88, label %vec.epilog.scalar.ph86.preheader, label %vec.epilog.ph89, !prof !147

vec.epilog.ph89:                                  ; preds = %vector.main.loop.iter.check71, %vec.epilog.iter.check87
  %vec.epilog.resume.val84 = phi i64 [ %n.vec74, %vec.epilog.iter.check87 ], [ 0, %vector.main.loop.iter.check71 ]
  %n.vec90 = and i64 %i.hf, -8                    ; 3 uses
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph89
  %index92 = phi i64 [ %vec.epilog.resume.val84, %vec.epilog.ph89 ], [ %index.next95, %vec.epilog.vector.body91 ] ; 3 uses
  %i.hp = xor i64 %index92, -1
  %i.hq = getelementptr i8, ptr %i.ey, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hg, i64 %index92
  %i.hs = getelementptr i8, ptr %i.hq, i64 -7
  %wide.load93 = load <8 x i8>, ptr %i.hs, align 1, !alias.scope !37518, !noalias !37517
  %reverse94 = shufflevector <8 x i8> %wide.load93, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse94, ptr %i.hr, align 1, !alias.scope !37517, !noalias !37518
  %index.next95 = add nuw i64 %index92, 8         ; 2 uses
  %i.ht = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.ht, label %vec.epilog.middle.block96, label %vec.epilog.vector.body91, !llvm.loop !37484

vec.epilog.middle.block96:                        ; preds = %vec.epilog.vector.body91
  %cmp.n97 = icmp eq i64 %i.hf, %n.vec90
  br i1 %cmp.n97, label %.loopexit, label %vec.epilog.scalar.ph86.preheader

vec.epilog.scalar.ph86.preheader:                 ; preds = %iter.check85, %vec.epilog.iter.check87, %vec.epilog.middle.block96
  %.sroa.08.043.i.ph = phi i64 [ 0, %iter.check85 ], [ %n.vec74, %vec.epilog.iter.check87 ], [ %n.vec90, %vec.epilog.middle.block96 ]
  br label %vec.epilog.scalar.ph86

vec.epilog.scalar.ph86:                           ; preds = %vec.epilog.scalar.ph86.preheader, %vec.epilog.scalar.ph86
  %.sroa.08.043.i = phi i64 [ %i.hu, %vec.epilog.scalar.ph86 ], [ %.sroa.08.043.i.ph, %vec.epilog.scalar.ph86.preheader ] ; 3 uses
  %i.hu = add nuw i64 %.sroa.08.043.i, 1          ; 2 uses
  %i.hv = xor i64 %.sroa.08.043.i, -1
  %i.hw = getelementptr i8, ptr %i.ey, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hg, i64 %.sroa.08.043.i
  %i.hy = load i8, ptr %i.hw, align 1, !alias.scope !37518, !noalias !37517
  store i8 %i.hy, ptr %i.hx, align 1, !alias.scope !37517, !noalias !37518
  %exitcond54.not.i = icmp eq i64 %i.hu, %i.hf
  br i1 %exitcond54.not.i, label %.loopexit, label %vec.epilog.scalar.ph86, !llvm.loop !37485

.loopexit:                                        ; preds = %vec.epilog.scalar.ph86, %middle.block82, %vec.epilog.middle.block96, %bb.w
  %i.hz = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.hz, label %.thread, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.012245
  br i1 %.not.i41, label %bb.y, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit, !prof !71

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1533, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #60, !noalias !37527
  unreachable

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit: ; preds = %bb.x
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph129) ]
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.ia, i64 noundef %i.hf, ptr noalias nofree noundef nonnull %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable_or_null(1) %i.a) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ib = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ib, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.q, %.loopexit
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %i.es ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37528)
  call void @llvm.experimental.noalias.scope.decl(metadata !37529)
  %i.id = icmp samesign ult i64 %3, %.sroa.16.012245
  br i1 %i.id, label %bb.aa, label %bb.z, !prof !90

bb.z:                                             ; preds = %.thread
  %i.ie = getelementptr i8, ptr %2, i64 %.sroa.16.012245 ; 4 uses
  %i.if = add i64 %i.c, -1
  br label %bb.ab

bb.aa:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.ad, %bb.z
  %.sroa.43.0.i43 = phi ptr [ %i.ie, %bb.z ], [ %i.ki, %bb.ad ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.z ], [ %i.kl, %bb.ad ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph129, %bb.z ], [ %i.km, %bb.ad ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %i.es, %bb.z ], [ %.sroa.16.012245, %bb.ad ] ; 6 uses
  %i.ig = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %i.ig ; 2 uses
  %i.ii = icmp ult ptr %.sroa.9.0.i45, %i.ih
  br i1 %i.ii, label %.lr.ph.i71, label %._crit_edge.i47

.lr.ph.i71:                                       ; preds = %bb.ab
  %.val21.i72 = load i8, ptr %i.ic, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i71
  %.sroa.9.131.i73 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i71 ], [ %i.jg, %bb.ac ] ; 5 uses
  %.sroa.27.130.i74 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i71 ], [ %i.jf, %bb.ac ] ; 2 uses
  %.sroa.43.129.i75 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i71 ], [ %i.jc, %bb.ac ] ; 4 uses
  %.val20.i76 = load i8, ptr %.sroa.9.131.i73, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.ij = icmp samesign uge i8 %.val21.i72, %.val20.i76 ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.129.i75, i64 -1
  %.sroa.01.0.i.i77 = select i1 %i.ij, ptr %2, ptr %i.ik
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i77, i64 %.sroa.27.130.i74
  store i8 %.val20.i76, ptr %i.il, align 1, !alias.scope !37529, !noalias !37530
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.27.130.i74, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i73, i64 1
  %.val18.i78 = load i8, ptr %i.io, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.ip = icmp samesign uge i8 %.val21.i72, %.val18.i78 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.129.i75, i64 -2
  %.sroa.01.0.i22.i79 = select i1 %i.ip, ptr %2, ptr %i.iq
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i22.i79, i64 %i.in
  store i8 %.val18.i78, ptr %i.ir, align 1, !alias.scope !37529, !noalias !37531
  %i.is = zext i1 %i.ip to i64
  %i.it = add i64 %i.in, %i.is                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i73, i64 2
  %.val16.i80 = load i8, ptr %i.iu, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.iv = icmp samesign uge i8 %.val21.i72, %.val16.i80 ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %.sroa.43.129.i75, i64 -3
  %.sroa.01.0.i23.i81 = select i1 %i.iv, ptr %2, ptr %i.iw
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i23.i81, i64 %i.it
  store i8 %.val16.i80, ptr %i.ix, align 1, !alias.scope !37529, !noalias !37532
  %i.iy = zext i1 %i.iv to i64
  %i.iz = add i64 %i.it, %i.iy                    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i73, i64 3
  %.val14.i82 = load i8, ptr %i.ja, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.jb = icmp samesign uge i8 %.val21.i72, %.val14.i82 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.43.129.i75, i64 -4 ; 3 uses
  %.sroa.01.0.i24.i83 = select i1 %i.jb, ptr %2, ptr %i.jc
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i24.i83, i64 %i.iz
  store i8 %.val14.i82, ptr %i.jd, align 1, !alias.scope !37529, !noalias !37533
  %i.je = zext i1 %i.jb to i64
  %i.jf = add i64 %i.iz, %i.je                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i73, i64 4 ; 3 uses
  %i.jh = icmp ult ptr %i.jg, %i.ih
  br i1 %i.jh, label %bb.ac, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.ac, %bb.ab
  %.sroa.43.1.lcssa.i48 = phi ptr [ %.sroa.43.0.i43, %bb.ab ], [ %i.jc, %bb.ac ] ; 3 uses
  %.sroa.27.1.lcssa.i49 = phi i64 [ %.sroa.27.0.i44, %bb.ab ], [ %i.jf, %bb.ac ] ; 4 uses
  %.sroa.9.1.lcssa.i50 = phi ptr [ %.sroa.9.0.i45, %bb.ab ], [ %i.jg, %bb.ac ] ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %.sroa.0.0.i46
  %i.jj = icmp ult ptr %.sroa.9.1.lcssa.i50, %i.ji
  br i1 %i.jj, label %.lr.ph38.preheader.i59, label %._crit_edge39.i51

.lr.ph38.preheader.i59:                           ; preds = %._crit_edge.i47
  %.sroa.9.1.lcssa52.i60 = ptrtoaddr ptr %.sroa.9.1.lcssa.i50 to i64 ; 3 uses
  %scevgep.i61 = getelementptr i8, ptr %.sroa.9.1.lcssa.i50, i64 %i.c
  %i.jk = sub i64 %.sroa.0.0.i46, %.sroa.9.1.lcssa52.i60
  %scevgep53.i62 = getelementptr i8, ptr %scevgep.i61, i64 %i.jk ; 3 uses
  %.val13.i68 = load i8, ptr %i.ic, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 3 uses
  %i.jl = add i64 %.sroa.0.0.i46, %i.c
  %i.jm = sub i64 %i.jl, %.sroa.9.1.lcssa52.i60
  %i.jn = add i64 %i.if, %.sroa.0.0.i46
  %xtraiter157 = and i64 %i.jm, 1
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph38.i63.prol.loopexit, label %.lr.ph38.i63.prol

.lr.ph38.i63.prol:                                ; preds = %.lr.ph38.preheader.i59
  %.val.i67.prol = load i8, ptr %.sroa.9.1.lcssa.i50, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.jo = icmp samesign uge i8 %.val13.i68, %.val.i67.prol ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.43.1.lcssa.i48, i64 -1 ; 3 uses
  %.sroa.01.0.i25.i69.prol = select i1 %i.jo, ptr %2, ptr %i.jp
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i69.prol, i64 %.sroa.27.1.lcssa.i49
  store i8 %.val.i67.prol, ptr %i.jq, align 1, !alias.scope !37529, !noalias !37534
  %i.jr = zext i1 %i.jo to i64
  %i.js = add i64 %.sroa.27.1.lcssa.i49, %i.jr    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.9.1.lcssa.i50, i64 1
  br label %.lr.ph38.i63.prol.loopexit

.lr.ph38.i63.prol.loopexit:                       ; preds = %.lr.ph38.i63.prol, %.lr.ph38.preheader.i59
  %.lcssa133.unr = phi ptr [ poison, %.lr.ph38.preheader.i59 ], [ %i.jp, %.lr.ph38.i63.prol ]
  %.lcssa132.unr = phi i64 [ poison, %.lr.ph38.preheader.i59 ], [ %i.js, %.lr.ph38.i63.prol ]
  %.sroa.9.236.i64.unr = phi ptr [ %.sroa.9.1.lcssa.i50, %.lr.ph38.preheader.i59 ], [ %i.jt, %.lr.ph38.i63.prol ]
  %.sroa.27.235.i65.unr = phi i64 [ %.sroa.27.1.lcssa.i49, %.lr.ph38.preheader.i59 ], [ %i.js, %.lr.ph38.i63.prol ]
  %.sroa.43.234.i66.unr = phi ptr [ %.sroa.43.1.lcssa.i48, %.lr.ph38.preheader.i59 ], [ %i.jp, %.lr.ph38.i63.prol ]
  %i.ju = icmp eq i64 %i.jn, %.sroa.9.1.lcssa52.i60
  br i1 %i.ju, label %._crit_edge39.i51, label %.lr.ph38.i63

._crit_edge39.i51:                                ; preds = %.lr.ph38.i63.prol.loopexit, %.lr.ph38.i63, %._crit_edge.i47
  %.sroa.43.2.lcssa.i52 = phi ptr [ %.sroa.43.1.lcssa.i48, %._crit_edge.i47 ], [ %.lcssa133.unr, %.lr.ph38.i63.prol.loopexit ], [ %i.kd, %.lr.ph38.i63 ]
  %.sroa.27.2.lcssa.i53 = phi i64 [ %.sroa.27.1.lcssa.i49, %._crit_edge.i47 ], [ %.lcssa132.unr, %.lr.ph38.i63.prol.loopexit ], [ %i.kg, %.lr.ph38.i63 ] ; 9 uses
  %.sroa.9.2.lcssa.i54 = phi ptr [ %.sroa.9.1.lcssa.i50, %._crit_edge.i47 ], [ %scevgep53.i62, %.lr.ph38.i63 ], [ %scevgep53.i62, %.lr.ph38.i63.prol.loopexit ] ; 2 uses
  %i.jv = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.012245
  br i1 %i.jv, label %bb.ae, label %bb.ad

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.prol.loopexit, %.lr.ph38.i63
  %.sroa.9.236.i64 = phi ptr [ %i.kh, %.lr.ph38.i63 ], [ %.sroa.9.236.i64.unr, %.lr.ph38.i63.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i65 = phi i64 [ %i.kg, %.lr.ph38.i63 ], [ %.sroa.27.235.i65.unr, %.lr.ph38.i63.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i66 = phi ptr [ %i.kd, %.lr.ph38.i63 ], [ %.sroa.43.234.i66.unr, %.lr.ph38.i63.prol.loopexit ] ; 2 uses
  %.val.i67 = load i8, ptr %.sroa.9.236.i64, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.jw = icmp samesign uge i8 %.val13.i68, %.val.i67 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.sroa.43.234.i66, i64 -1
  %.sroa.01.0.i25.i69 = select i1 %i.jw, ptr %2, ptr %i.jx
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i69, i64 %.sroa.27.235.i65
  store i8 %.val.i67, ptr %i.jy, align 1, !alias.scope !37529, !noalias !37534
  %i.jz = zext i1 %i.jw to i64
  %i.ka = add i64 %.sroa.27.235.i65, %i.jz        ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i64, i64 1
  %.val.i67.1 = load i8, ptr %i.kb, align 1, !range !149, !alias.scope !37528, !noalias !37529, !noundef !67 ; 2 uses
  %i.kc = icmp samesign uge i8 %.val13.i68, %.val.i67.1 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %.sroa.43.234.i66, i64 -2 ; 3 uses
  %.sroa.01.0.i25.i69.1 = select i1 %i.kc, ptr %2, ptr %i.kd
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i25.i69.1, i64 %i.ka
  store i8 %.val.i67.1, ptr %i.ke, align 1, !alias.scope !37529, !noalias !37534
  %i.kf = zext i1 %i.kc to i64
  %i.kg = add i64 %i.ka, %i.kf                    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i64, i64 2 ; 2 uses
  %exitcond.not.i70.1 = icmp eq ptr %i.kh, %scevgep53.i62
  br i1 %exitcond.not.i70.1, label %._crit_edge39.i51, label %.lr.ph38.i63

bb.ad:                                            ; preds = %._crit_edge39.i51
  %i.ki = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i52, i64 -1
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.27.2.lcssa.i53
  %i.kk = load i8, ptr %.sroa.9.2.lcssa.i54, align 1, !alias.scope !37528, !noalias !37535
  store i8 %i.kk, ptr %i.kj, align 1, !alias.scope !37529, !noalias !37536
  %i.kl = add i64 %.sroa.27.2.lcssa.i53, 1
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i54, i64 1
  br label %bb.ab

bb.ae:                                            ; preds = %._crit_edge39.i51
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph129, ptr nonnull align 1 %2, i64 %.sroa.27.2.lcssa.i53, i1 false), !alias.scope !37537
  %i.kn = sub i64 %.sroa.16.012245, %.sroa.27.2.lcssa.i53 ; 11 uses
  %.not.i55 = icmp eq i64 %.sroa.16.012245, %.sroa.27.2.lcssa.i53
  br i1 %.not.i55, label %.outer._crit_edge.thread, label %iter.check

iter.check:                                       ; preds = %bb.ae
  %i.ko = getelementptr i8, ptr %.sroa.0.0.ph129, i64 %.sroa.27.2.lcssa.i53 ; 3 uses
  %min.iters.check = icmp ult i64 %i.kn, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check61 = icmp ult i64 %i.kn, 32
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kp = and i64 %i.kn, 24
  %n.vec = and i64 %i.kn, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kq = xor i64 %index, -1
  %i.kr = getelementptr i8, ptr %i.ie, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %i.ko, i64 %index ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kr, i64 -15
  %i.ku = getelementptr i8, ptr %i.kr, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kt, align 1, !alias.scope !37529, !noalias !37528
  %wide.load62 = load <16 x i8>, ptr %i.ku, align 1, !alias.scope !37529, !noalias !37528
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse63 = shufflevector <16 x i8> %wide.load62, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kv = getelementptr i8, ptr %i.ks, i64 16
  store <16 x i8> %reverse, ptr %i.ks, align 1, !alias.scope !37528, !noalias !37529
  store <16 x i8> %reverse63, ptr %i.kv, align 1, !alias.scope !37528, !noalias !37529
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !37504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kn, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.kn, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.kx = xor i64 %index65, -1
  %i.ky = getelementptr i8, ptr %i.ie, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.ko, i64 %index65
  %i.la = getelementptr i8, ptr %i.ky, i64 -7
  %wide.load66 = load <8 x i8>, ptr %i.la, align 1, !alias.scope !37529, !noalias !37528
  %reverse67 = shufflevector <8 x i8> %wide.load66, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse67, ptr %i.kz, align 1, !alias.scope !37528, !noalias !37529
  %index.next68 = add nuw i64 %index65, 8         ; 2 uses
  %i.lb = icmp eq i64 %index.next68, %n.vec64
  br i1 %i.lb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37505

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.kn, %n.vec64
  br i1 %cmp.n69, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.08.043.i57.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.08.043.i57 = phi i64 [ %i.lc, %vec.epilog.scalar.ph ], [ %.sroa.08.043.i57.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.lc = add nuw i64 %.sroa.08.043.i57, 1        ; 2 uses
  %i.ld = xor i64 %.sroa.08.043.i57, -1
  %i.le = getelementptr i8, ptr %i.ie, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.ko, i64 %.sroa.08.043.i57
  %i.lg = load i8, ptr %i.le, align 1, !alias.scope !37529, !noalias !37528
  store i8 %i.lg, ptr %i.lf, align 1, !alias.scope !37528, !noalias !37529
  %exitcond54.not.i58 = icmp eq i64 %i.lc, %i.kn
  br i1 %exitcond54.not.i58, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph, !llvm.loop !37506

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lh = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.012245
  br i1 %i.lh, label %bb.af, label %.outer, !prof !71

.outer._crit_edge.thread:                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph129, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lj = icmp ult i64 %i.kn, 33
  br i1 %i.lj, label %.outer._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i53, i64 noundef %.sroa.16.012245, i64 noundef %.sroa.16.012245, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1106) #60
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef range(i32 0, 119) %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 7 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph438 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.amh, %.outer ] ; 23 uses
  %.sroa.16.0.ph437 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.als, %.outer ] ; 2 uses
  %.sroa.025.0.ph436 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.hl, %.outer ] ; 2 uses
  %.sroa.028.0.ph435 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph438, i64 4
  %i.f = ptrtoint ptr %.sroa.0.0.ph438 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph435, null
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph435, i64 4
  %i.h = icmp eq i32 %.sroa.025.0.ph436, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph1146

bb.b:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.i = icmp eq i32 %i.hl, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph1146

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit, %bb.a
  %.sroa.0.0.ph.lcssa339 = phi ptr [ %.sroa.0.0.ph438, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %0, %bb.a ], [ %i.amh, %.outer ] ; 9 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %1, %bb.a ], [ %i.als, %.outer ] ; 10 uses
  %.val40 = load ptr, ptr %6, align 8             ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37880)
  call void @llvm.experimental.noalias.scope.decl(metadata !37881)
  %i.j = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1t_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1s_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1v_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5d_5types3any5PyAnyEB58_NtB1x_10UndirectedENCINvB3h_9is_planarB4x_Es_0NtB3h_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.k = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.l = icmp samesign ult i64 %3, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %.sroa.16.0.lcssa, 1            ; 9 uses
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.n, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa339, i64 %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40) ]
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa339, ptr noundef nonnull align 4 %2, ptr noundef %i.r, ptr nonnull readonly %.val40)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa339, i64 %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u, ptr nonnull readonly %.val40)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40) ]
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa339, ptr noundef nonnull align 4 %2, ptr nonnull readonly %.val40)
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef %i.p, ptr noundef %i.q, ptr nonnull readonly %.val40)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %.sroa.0.0.ph.lcssa339, align 4, !alias.scope !37880, !noalias !37881
  store i64 %i.v, ptr %2, align 4, !alias.scope !37881, !noalias !37880
  %i.w = load i64, ptr %i.p, align 4, !alias.scope !37880, !noalias !37881
  store i64 %i.w, ptr %i.q, align 4, !alias.scope !37881, !noalias !37880
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37882
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !37882
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.m, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !37882
  %i.x = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.m
  br label %bb.p

.loopexit2.i:                                     ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB18_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4T_5types3any5PyAnyEB4O_NtB1d_10UndirectedENCINvB2X_9is_planarB4d_Es_0NtB2X_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.p
  br i1 %.not.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.loopexit2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37882
  call void @llvm.experimental.noalias.scope.decl(metadata !37883)
  %i.y = add nsw i64 %.sroa.16.0.lcssa, -1        ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y
  %i.aa = getelementptr [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa339, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40) ]
  br label %bb.o

._crit_edge.i.i:                                  ; preds = %.noexc30.i
  %i.ad = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.ae = getelementptr i8, ptr %i.bg, i64 8
  %i.af = and i64 %.sroa.16.0.lcssa, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp ult ptr %i.bb, %i.ad               ; 3 uses
  %.sroa.04.0..sroa.09.0.i.i = select i1 %i.ah, ptr %i.bb, ptr %i.bd
  %i.ai = load i64, ptr %.sroa.04.0..sroa.09.0.i.i, align 4, !alias.scope !37884, !noalias !37880
  store i64 %i.ai, ptr %i.ay, align 4, !alias.scope !37880, !noalias !37884
  %i.aj = zext i1 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aj
  %i.al = xor i1 %i.ah, true
end_hunk_2
