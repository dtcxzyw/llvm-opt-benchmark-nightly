Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEB2d_NtB1d_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB2i_3err5PyErrEB3H_:bb.a
  br i1 %i.arc, label %select.unfold.i.i.i.i.i.i.i.i.i.i, label %.split1070

.split1070:                                       ; preds = %bb.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hg, %.split1070
  %.val10.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split1070 ], [ %i.bbz, %bb.hg ] ; 3 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.bcd, i64 %.val10.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i = load i32, ptr %i.bap, align 4, !noalias !14407 ; 2 uses
  %i.baq = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14408, !noundef !67
  %i.bar = zext i32 %.val15.i.i.i.i.i.i.i.i to i64
  %i.bas = xor i64 %.sroa.28.0.copyload, %i.bar
  %i.bat = zext i64 %i.bas to i128
  %i.bau = zext i64 %i.baq to i128
  %i.bav = mul nuw i128 %i.bau, %i.bat            ; 2 uses
  %i.baw = lshr i128 %i.bav, 64
  %i.bax = xor i128 %i.baw, %i.bav
  %i.bay = trunc i128 %i.bax to i64               ; 2 uses
  %i.baz = lshr i64 %i.bay, 57
  %i.bba = trunc nuw nsw i64 %i.baz to i8
  %i.bbb = insertelement <16 x i8> poison, i8 %i.bba, i64 0
  %i.bbc = shufflevector <16 x i8> %i.bbb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hf, %bb.hc
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.hc ], [ %i.bbt, %bb.hf ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bay, %bb.hc ], [ %i.bbu, %bb.hf ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload ; 3 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bbd, align 1, !noalias !14409 ; 2 uses
  %i.bbe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, %i.bbc
  %i.bbf = bitcast <16 x i1> %i.bbe to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bbf, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.hd, %bb.he
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bbs, %bb.he ], [ %i.bbf, %bb.hd ] ; 3 uses
  %i.bbg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbh = zext nneg i16 %i.bbg to i64
  %i.bbi = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bbh
  %i.bbj = and i64 %i.bbi, %.sroa.13.0.copyload
  %i.bbk = sub nsw i64 0, %i.bbj
  %i.bbl = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bbk ; 2 uses
  %i.bbm = getelementptr inbounds i8, ptr %i.bbl, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bbm, align 4, !noalias !14410, !noundef !67
  %i.bbn = icmp eq i32 %.val15.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bbn, label %bb.hg, label %bb.he, !prof !77

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.he, %bb.hd
  %i.bbo = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bbp = bitcast <16 x i1> %i.bbo to i16
  %i.bbq = icmp eq i16 %i.bbp, 0
  br i1 %i.bbq, label %bb.hf, label %select.unfold.i.i.i.i.i.i.i.i.i.i, !prof !71

bb.he:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbr = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bbs = and i16 %i.bbr, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bbs, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbt = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bbu = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bbt
  br label %bb.hd

select.unfold.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.hb, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1211) #60
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !14407

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbv = getelementptr inbounds i8, ptr %i.bbl, i64 -4
  %i.bbw = load i32, ptr %i.bbv, align 4, !noalias !14411, !noundef !67
  %i.bbx = zext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw [8 x i8], ptr %i.bcb, i64 %.val10.i.i.i.i.i.i.i.i
  store i64 %i.bbx, ptr %i.bby, align 8, !noalias !14412
  %i.bbz = add i64 %.val10.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, %i.bao
  br i1 %i.bca, label %.loopexit, label %bb.hc

bb.hh:                                            ; preds = %bb.gx, %bb.gz
  %.sroa.10.0.i.i345 = phi i64 [ %i.bam, %bb.gz ], [ 8, %bb.gx ]
  %.sroa.47.0.i.i = phi i64 [ %i.bag, %bb.gz ], [ 0, %bb.gx ] ; 6 uses
  %i.bcb = inttoptr i64 %.sroa.10.0.i.i345 to ptr ; 6 uses
  %i.bcc = icmp samesign ule i64 %i.bag, %.sroa.47.0.i.i
  call void @llvm.assume(i1 %i.bcc)
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bad, i64 4
  %or.cond = icmp ult i64 %i.baf, 2
  br i1 %or.cond, label %.loopexit, label %bb.hb

.body.i.i:                                        ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  %i.bce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcf = icmp eq i64 %.sroa.47.0.i.i, 0
  br i1 %i.bcf, label %.body350, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i348

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i348: ; preds = %.body.i.i
  %i.bcg = shl nuw i64 %.sroa.47.0.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcb, i64 noundef %i.bcg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14413
  br label %.body350

.loopexit:                                        ; preds = %bb.hg, %bb.hh
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.hh ], [ %i.bao, %bb.hg ] ; 8 uses
  store i64 %.sroa.47.0.i.i, ptr %i.w, align 8, !alias.scope !14414, !noalias !14415
  store ptr %i.bcb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14414, !noalias !14415
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14414, !noalias !14415
  %i.bch = invoke fastcc noundef align 8 ptr @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBO_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa, i32 %.sroa.9579.12.extract.trunc2331)
          to label %.noexc353 unwind label %.thread722.loopexit ; 3 uses

.noexc353:                                        ; preds = %.loopexit
  %.not.i352 = icmp eq ptr %i.bch, null
  br i1 %.not.i352, label %bb.hi, label %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit355, !prof !71

bb.hi:                                            ; preds = %.noexc353
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #60
          to label %.noexc354 unwind label %.thread722.loopexit.split-lp

.noexc354:                                        ; preds = %bb.hi
  unreachable

.thread722.loopexit:                              ; preds = %.loopexit
  %lpad.loopexit754 = landingpad { ptr, i32 }
          cleanup
  br label %.thread719

.thread722.loopexit.split-lp:                     ; preds = %select.unfold734.invoke, %.invoke1771, %bb.hm, %bb.hi
  %lpad.loopexit.split-lp755 = landingpad { ptr, i32 }
          cleanup
  br label %.thread719thread-pre-split

_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit355: ; preds = %.noexc353
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 8
  %i.bcj = load ptr, ptr %i.bci, align 8, !nonnull !67, !noundef !67 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bch, i64 16
  %i.bcl = load i64, ptr %i.bck, align 8, !noundef !67 ; 4 uses
  %.idx1111 = shl nuw nsw i64 %i.bcl, 2
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %.idx1111
  %i.bcn = call i64 @llvm.usub.sat.i64(i64 %i.bcl, i64 1) ; 4 uses
  %i.bco = shl i64 %i.bcn, 3                      ; 4 uses
  %i.bcp = icmp samesign ugt i64 %i.bcn, 2305843009213693951
  %.not.i.i.i357 = icmp ugt i64 %i.bco, 9223372036854775800
  %or.cond.i.i.i358 = or i1 %i.bcp, %.not.i.i.i357
  br i1 %or.cond.i.i.i358, label %bb.hm, label %bb.hj, !prof !73

bb.hj:                                            ; preds = %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit355
  %i.bcq = icmp eq i64 %i.bco, 0
  br i1 %i.bcq, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i359, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14416
  %i.bcr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bco, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14416 ; 2 uses
  %i.bcs = icmp eq ptr %i.bcr, null
  br i1 %i.bcs, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bct = ptrtoint ptr %i.bcr to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i359

bb.hm:                                            ; preds = %bb.hk, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit355
  %.sroa.47.0.ph.i.i369 = phi i64 [ 8, %bb.hk ], [ 0, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit355 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i369, i64 %i.bco) #61
          to label %.noexc370 unwind label %.thread722.loopexit.split-lp

.noexc370:                                        ; preds = %bb.hm
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i359: ; preds = %bb.hl, %bb.hj
  %.sroa.10.0.i.i360 = phi i64 [ %i.bct, %bb.hl ], [ 8, %bb.hj ]
  %.sroa.47.0.i.i361 = phi i64 [ %i.bcn, %bb.hl ], [ 0, %bb.hj ] ; 7 uses
  %i.bcu = inttoptr i64 %.sroa.10.0.i.i360 to ptr ; 5 uses
  %i.bcv = icmp samesign ule i64 %i.bcn, %.sroa.47.0.i.i361
  call void @llvm.assume(i1 %i.bcv)
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.bcl, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.hn, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i359
  %i.bcw = icmp samesign ult i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bcw)
  br label %bb.hv

bb.hn:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i359
  br i1 %i.arc, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split1071.preheader

.split1071.preheader:                             ; preds = %bb.hn
  %i.bcx = add nsw i64 %i.bcl, -1
  br label %.split1071

.split1071:                                       ; preds = %.split1071.preheader, %bb.hs
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bel, %bb.hs ], [ 0, %.split1071.preheader ] ; 3 uses
  %i.bcy = phi i64 [ %i.bdb, %bb.hs ], [ %i.bcx, %.split1071.preheader ]
  %i.bcz = phi ptr [ %i.bda, %bb.hs ], [ %i.bcm, %.split1071.preheader ] ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bcj, %i.bcz
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit, label %bb.ho

bb.ho:                                            ; preds = %.split1071
  %i.bda = getelementptr inbounds i8, ptr %i.bcz, i64 -4 ; 2 uses
  %.val11.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bda, align 4, !noalias !14417 ; 2 uses
  %i.bdb = add i64 %i.bcy, -1                     ; 2 uses
  %i.bdc = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14418, !noundef !67
  %i.bdd = zext i32 %.val11.i.i.i.i.i.i.i.i.i.i to i64
  %i.bde = xor i64 %.sroa.28.0.copyload, %i.bdd
  %i.bdf = zext i64 %i.bde to i128
  %i.bdg = zext i64 %i.bdc to i128
  %i.bdh = mul nuw i128 %i.bdg, %i.bdf            ; 2 uses
  %i.bdi = lshr i128 %i.bdh, 64
  %i.bdj = xor i128 %i.bdi, %i.bdh
  %i.bdk = trunc i128 %i.bdj to i64               ; 2 uses
  %i.bdl = lshr i64 %i.bdk, 57
  %i.bdm = trunc nuw nsw i64 %i.bdl to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.bdn = insertelement <16 x i8> poison, i8 %i.bdm, i64 0
  %i.bdo = shufflevector <16 x i8> %i.bdn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hr, %bb.ho
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ho ], [ %i.bef, %bb.hr ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bdk, %bb.ho ], [ %i.beg, %bb.hr ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload ; 3 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bdp, align 1, !noalias !14419 ; 2 uses
  %i.bdq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bdo
  %i.bdr = bitcast <16 x i1> %i.bdq to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bdr, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hp, %bb.hq
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bee, %bb.hq ], [ %i.bdr, %bb.hp ] ; 3 uses
  %i.bds = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bdt = zext nneg i16 %i.bds to i64
  %i.bdu = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bdt
  %i.bdv = and i64 %i.bdu, %.sroa.13.0.copyload
  %i.bdw = sub nsw i64 0, %i.bdv
  %i.bdx = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bdw ; 2 uses
  %i.bdy = getelementptr inbounds i8, ptr %i.bdx, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bdy, align 4, !noalias !14420, !noundef !67
  %i.bdz = icmp eq i32 %.val11.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdz, label %bb.hs, label %bb.hq, !prof !77

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.hq, %bb.hp
  %i.bea = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.beb = bitcast <16 x i1> %i.bea to i16
  %i.bec = icmp eq i16 %i.beb, 0
  br i1 %i.bec, label %bb.hr, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

bb.hq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bed = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bee = and i16 %i.bed, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bee, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bef = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.beg = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bef
  br label %bb.hp

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.hn, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1212) #60
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i366, !noalias !14417

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.beh = getelementptr inbounds i8, ptr %i.bdx, i64 -4
  %i.bei = load i32, ptr %i.beh, align 4, !noalias !14421, !noundef !67
  %i.bej = zext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.bcu, i64 %.val6.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bej, ptr %i.bek, align 8, !noalias !14422
  %i.bel = add nuw nsw i64 %.val6.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bem = icmp eq i64 %i.bdb, 0
  br i1 %i.bem, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit, label %.split1071

.body.i.i366:                                     ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ben = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beo = icmp eq i64 %.sroa.47.0.i.i361, 0
  br i1 %i.beo, label %.thread719thread-pre-split, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i367

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i367: ; preds = %.body.i.i366
  %i.bep = shl nuw i64 %.sroa.47.0.i.i361, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcu, i64 noundef %i.bep, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14423
  br label %.thread719thread-pre-split

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit: ; preds = %.split1071, %bb.hs
  %.us-phi.ph = phi i64 [ %i.bel, %bb.hs ], [ %.val6.i.i.i.i.i.i.i.i.i.i, %.split1071 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14424)
  %i.beq = sub nsw i64 %.sroa.47.0.i.i, %.sroa.5.0.copyload.sink.i.i.i.i.i.i
  %i.ber = icmp ugt i64 %.us-phi.ph, %i.beq
  br i1 %i.ber, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, !prof !14425

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %.sroa.5.0.copyload.sink.i.i.i.i.i.i, i64 noundef %.us-phi.ph, i64 noundef 8, i64 noundef 8)
          to label %.noexc374 unwind label %bb.hu

.noexc374:                                        ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.bes = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14424, !noundef !67 ; 2 uses
  %i.bet = icmp ult i64 %i.bes, 1152921504606846976
  call void @llvm.assume(i1 %i.bet)
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14424
  br label %bb.ht

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit
  %i.beu = icmp samesign ult i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.beu)
  %.not.i373 = icmp eq i64 %.us-phi.ph, 0
  br i1 %.not.i373, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, %.noexc374
  %i.bev = phi ptr [ %.pre, %.noexc374 ], [ %i.bcb, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.bew = phi i64 [ %i.bes, %.noexc374 ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr %i.bev, i64 %i.bew
  %i.bey = shl nuw nsw i64 %.us-phi.ph, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bex, ptr nonnull readonly align 8 %i.bcu, i64 %i.bey, i1 false), !noalias !14424
  br label %bb.hv

bb.hu:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.bez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfa = icmp eq i64 %.sroa.47.0.i.i361, 0
  br i1 %i.bfa, label %.thread719thread-pre-split, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i376

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i376: ; preds = %bb.hu
  %i.bfb = shl nuw i64 %.sroa.47.0.i.i361, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcu, i64 noundef %i.bfb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14426
  br label %.thread719thread-pre-split

bb.hv:                                            ; preds = %bb.ht, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread
  %.val1.i417 = phi ptr [ %i.bev, %bb.ht ], [ %i.bcb, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.bcb, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ] ; 4 uses
  %.val6.i.i.lcssa.sink.i.i.i.i.i.i.i.i728 = phi i64 [ %.us-phi.ph, %bb.ht ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ]
  %i.bfc = phi i64 [ %i.bew, %bb.ht ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ]
  %i.bfd = add i64 %i.bfc, %.val6.i.i.lcssa.sink.i.i.i.i.i.i.i.i728 ; 2 uses
  store i64 %i.bfd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14424
  %i.bfe = icmp eq i64 %.sroa.47.0.i.i361, 0
  br i1 %i.bfe, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit382, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i380

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i380: ; preds = %bb.hv
  %i.bff = shl nuw i64 %.sroa.47.0.i.i361, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcu, i64 noundef %i.bff, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14427
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit382

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit382: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i380, %bb.hv
  br i1 %i.arc, label %select.unfold734.invoke, label %bb.hw

bb.hw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit382
  %i.bfg = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14428, !noundef !67
  %i.bfh = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %i.bfi = xor i64 %i.bfh, %.sroa.28.0.copyload
  %i.bfj = zext i64 %i.bfi to i128
  %i.bfk = zext i64 %i.bfg to i128                ; 2 uses
  %i.bfl = mul nuw i128 %i.bfk, %i.bfj            ; 2 uses
  %i.bfm = lshr i128 %i.bfl, 64
  %i.bfn = xor i128 %i.bfm, %i.bfl
  %i.bfo = trunc i128 %i.bfn to i64               ; 2 uses
  %i.bfp = lshr i64 %i.bfo, 57
  %i.bfq = trunc nuw nsw i64 %i.bfp to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.bfr = insertelement <16 x i8> poison, i8 %i.bfq, i64 0
  %i.bfs = shufflevector <16 x i8> %i.bfr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %bb.hw
  %.sroa.011.0.i.i.i384 = phi i64 [ 0, %bb.hw ], [ %i.bgj, %bb.hz ]
  %.pn.i.i385 = phi i64 [ %i.bfo, %bb.hw ], [ %i.bgk, %bb.hz ]
  %.sroa.01.0.i.i.i386 = and i64 %.pn.i.i385, %.sroa.13.0.copyload ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i386
  %.sroa.0.0.copyload.i24.i.i387 = load <16 x i8>, ptr %i.bft, align 1, !noalias !14429 ; 2 uses
  %i.bfu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i387, %i.bfs
  %i.bfv = bitcast <16 x i1> %i.bfu to i16        ; 2 uses
  %.not.i.not30.i.i388 = icmp eq i16 %i.bfv, 0
  br i1 %.not.i.not30.i.i388, label %._crit_edge.i.i393, label %.lr.ph.i.i389

.lr.ph.i.i389:                                    ; preds = %bb.hx, %bb.hy
  %.sroa.05.0.i31.i.i390 = phi i16 [ %i.bgi, %bb.hy ], [ %i.bfv, %bb.hx ] ; 3 uses
  %i.bfw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i390, i1 true)
  %i.bfx = zext nneg i16 %i.bfw to i64
  %i.bfy = add i64 %.sroa.01.0.i.i.i386, %i.bfx
  %i.bfz = and i64 %i.bfy, %.sroa.13.0.copyload
  %i.bga = sub nsw i64 0, %i.bfz
  %i.bgb = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bga ; 2 uses
  %i.bgc = getelementptr inbounds i8, ptr %i.bgb, i64 -8
  %.val2.i.i.i391 = load i32, ptr %i.bgc, align 4, !noalias !14430, !noundef !67
  %i.bgd = icmp eq i32 %.val2.i.i.i391, %.sroa.9579.8.extract.trunc
  br i1 %i.bgd, label %bb.ia, label %bb.hy, !prof !77

._crit_edge.i.i393:                               ; preds = %bb.hy, %bb.hx
  %i.bge = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i387, splat (i8 -1)
  %i.bgf = bitcast <16 x i1> %i.bge to i16
  %i.bgg = icmp eq i16 %i.bgf, 0
  br i1 %i.bgg, label %bb.hz, label %select.unfold734.invoke, !prof !71

bb.hy:                                            ; preds = %.lr.ph.i.i389
  %i.bgh = add i16 %.sroa.05.0.i31.i.i390, -1
  %i.bgi = and i16 %i.bgh, %.sroa.05.0.i31.i.i390 ; 2 uses
  %.not.i.not.i.i392 = icmp eq i16 %i.bgi, 0
  br i1 %.not.i.not.i.i392, label %._crit_edge.i.i393, label %.lr.ph.i.i389

bb.hz:                                            ; preds = %._crit_edge.i.i393
  %i.bgj = add i64 %.sroa.011.0.i.i.i384, 16      ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_NtB16_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.g, %bb.h
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.bx, %bb.h ], [ %i.bk, %bb.g ] ; 3 uses
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.01.0.i.i.i.i9.i, %i.bm
  %i.bo = and i64 %i.bn, %i.x
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.br, align 4, !noalias !28067, !noundef !67
  %i.bs = icmp eq i32 %.val13.i, %.val2.i.i.i.i14.i
  br i1 %i.bs, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, label %bb.h, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.h, %bb.g
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, !prof !71

bb.h:                                             ; preds = %.lr.ph.i.i.i12.i
  %i.bw = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.bx = and i16 %i.bw, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.i:                                             ; preds = %._crit_edge.i.i.i16.i
  %i.by = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.bz = add i64 %.sroa.01.0.i.i.i.i9.i, %i.by
  br label %bb.g

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i: ; preds = %._crit_edge.i.i.i16.i, %.lr.ph.i.i.i12.i
  %i.ca = phi ptr [ %i.bq, %.lr.ph.i.i.i12.i ], [ null, %._crit_edge.i.i.i16.i ] ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ca, null         ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  br i1 %.not.i.i.i, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i, label %._crit_edge.i, label %.split

.split:                                           ; preds = %bb.j
  %.val.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !28056, !noundef !67
  %.val1.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !28056, !noundef !67
  %i.cc = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.cc, label %bb.k, label %._crit_edge.i

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i, label %._crit_edge.i, label %bb.k

._crit_edge.i:                                    ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, %bb.k, %.split, %bb.j, %.lr.ph.i.preheader.split.us, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %i.e, %.lr.ph.i.preheader.split.us ], [ %.sroa.5.04.i, %bb.j ], [ %.sroa.5.04.i, %.split ], [ %.sroa.5.04.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ %0, %bb.k ]
  store i32 %.val15.i, ptr %.sroa.5.0.lcssa.i, align 4, !alias.scope !28056
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBO_INtB4_16ParallelSliceMutBO_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBQ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB55_5types3any5PyAnyEB50_NtBS_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %.split, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit
  store i32 %.val13.i, ptr %.sroa.5.04.i, align 4, !alias.scope !28056
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBO_INtB4_16ParallelSliceMutBO_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBQ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB55_5types3any5PyAnyEB50_NtBS_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit, %._crit_edge.i
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYB12_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef range(i64 1, 10) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp samesign ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %.preheader, !prof !90

.preheader:                                       ; preds = %bb.a
  %i.a = icmp samesign ult i64 %2, %1
  br i1 %i.a, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.01 = phi i64 [ %i.b, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit ], [ %2, %.preheader ] ; 2 uses
  %i.b = add nuw nsw i64 %.sroa.0.01, 1           ; 3 uses
  %i.c = getelementptr [4 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -4       ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 -8       ; 3 uses
  %.val13.i = load i32, ptr %i.d, align 4, !alias.scope !28070, !noundef !67 ; 3 uses
  %.val14.i = load i32, ptr %i.e, align 4, !alias.scope !28070, !noundef !67 ; 2 uses
  %i.f = icmp ult i32 %.val13.i, %.val14.i
  br i1 %i.f, label %bb.c, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  store i32 %.val14.i, ptr %i.d, align 4, !alias.scope !28070
  %i.g = add nsw i64 %.sroa.0.01, -1              ; 2 uses
  %.not2.i = icmp eq i64 %i.g, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.d ], [ %.sroa.5.03.i, %.lr.ph.i ]
  store i32 %.val13.i, ptr %.sroa.5.0.lcssa.i, align 4, !alias.scope !28070
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.04.i = phi i64 [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.5.03.i = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = add nsw i64 %.sroa.02.04.i, -1           ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h ; 2 uses
  %.val12.i = load i32, ptr %i.i, align 4, !alias.scope !28070, !noundef !67 ; 2 uses
  %i.j = icmp ult i32 %.val13.i, %.val12.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %.val12.i, ptr %.sroa.5.03.i, align 4, !alias.scope !28070
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBO_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit, %._crit_edge.i
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 192153584101141163) %1, i64 noundef range(i64 0, 192153584101141162) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add nsw i64 %2, -1
  %or.cond = icmp ult i64 %i.a, %1
  br i1 %or.cond, label %.preheader, label %bb.b, !prof !125

.preheader:                                       ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, %1
  br i1 %i.b, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit
  %.sroa.0.01 = phi i64 [ %i.c, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit ], [ %2, %.preheader ] ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.01, 1           ; 3 uses
  %i.d = getelementptr [48 x i8], ptr %0, i64 %i.c ; 10 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -48      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 -96      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28088)
  %i.g = getelementptr i8, ptr %i.d, i64 -8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !28089, !noalias !28090, !noundef !67 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 -56
  %i.j = load double, ptr %i.i, align 8, !alias.scope !28091, !noalias !28092, !noundef !67 ; 2 uses
  %.not1.i.i = fcmp une double %i.h, %i.j
  br i1 %.not1.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, label %.split.i

.split.i:                                         ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.k = getelementptr i8, ptr %i.d, i64 -64
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !28091, !noalias !28092, !noundef !67
  %i.m = getelementptr i8, ptr %i.d, i64 -16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !28089, !noalias !28090, !noundef !67 ; 2 uses
  %i.o = getelementptr i8, ptr %i.d, i64 -72
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !28091, !noalias !28092, !noundef !67 ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 -24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !28089, !noalias !28090, !noundef !67 ; 3 uses
  %i.s = icmp eq i64 %i.r, %i.p
  %i.t = icmp ult i64 %i.r, %i.p
  %i.u = icmp ult i64 %i.n, %i.l
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %bb.c, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.v = fcmp ult double %i.h, %i.j
  br i1 %i.v, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit._crit_edge.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit._crit_edge.i: ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i
  %.sroa.45.0..sroa_idx.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 -24
  %.sroa.45.0.copyload.pre.i = load i64, ptr %.sroa.45.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28093
  %.sroa.56.0..sroa_idx.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 -16
  %.sroa.56.0.copyload.pre.i = load i64, ptr %.sroa.56.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28093
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit._crit_edge.i, %.split.i
  %.sroa.56.0.copyload.i = phi i64 [ %.sroa.56.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit._crit_edge.i ], [ %i.n, %.split.i ] ; 2 uses
  %.sroa.45.0.copyload.i = phi i64 [ %.sroa.45.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit._crit_edge.i ], [ %i.r, %.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !28093
  %i.w = add nsw i64 %.sroa.0.01, -1              ; 2 uses
  %.not9.i = icmp eq i64 %i.w, 0
  br i1 %.not9.i, label %.split8._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.011.i = phi i64 [ %i.x, %bb.d ], [ %i.w, %bb.c ]
  %.sroa.5.010.i = phi ptr [ %i.y, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.x = add i64 %.sroa.02.011.i, -1              ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.x ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !28094, !noalias !28095, !noundef !67 ; 2 uses
  %.not1.i11.i = fcmp une double %i.h, %i.aa
  br i1 %.not1.i11.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit14.i, label %.split8.i

.split8.i:                                        ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !28094, !noalias !28095, !noundef !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !28094, !noalias !28095, !noundef !67 ; 2 uses
  %i.af = icmp eq i64 %.sroa.45.0.copyload.i, %i.ae
  %i.ag = icmp ult i64 %.sroa.45.0.copyload.i, %i.ae
  %i.ah = icmp ult i64 %.sroa.56.0.copyload.i, %i.ac
  %spec.select.i12.i = select i1 %i.af, i1 %i.ah, i1 %i.ag
  br i1 %spec.select.i12.i, label %bb.d, label %.split8._crit_edge.i

.split8._crit_edge.i:                             ; preds = %bb.d, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit14.i, %.split8.i, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.d ], [ %.sroa.5.010.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit14.i ], [ %.sroa.5.010.i, %.split8.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  %.sroa.4.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 24
  store i64 %.sroa.45.0.copyload.i, ptr %.sroa.4.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28093
  %.sroa.5.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 32
  store i64 %.sroa.56.0.copyload.i, ptr %.sroa.5.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28093
  %.sroa.6.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 40
  store double %i.h, ptr %.sroa.6.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit14.i: ; preds = %.lr.ph.i
  %i.ai = fcmp ult double %i.h, %i.aa
  br i1 %i.ai, label %bb.d, label %.split8._crit_edge.i

bb.d:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit14.i, %.split8.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.010.i, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !alias.scope !28093
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.split8._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrE0E0EB5P_.exit: ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, %.split8._crit_edge.i
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4M_5types3any5PyAnyEB4H_NtB3H_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4M_3err5PyErrEs4_0E0EB6b_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 192153584101141163) %1, i64 noundef range(i64 0, 192153584101141162) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add nsw i64 %2, -1
  %or.cond = icmp ult i64 %i.a, %1
  br i1 %or.cond, label %.preheader, label %bb.b, !prof !125

.preheader:                                       ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, %1
  br i1 %i.b, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit
  %.sroa.0.01 = phi i64 [ %i.c, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit ], [ %2, %.preheader ] ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.01, 1           ; 3 uses
  %i.d = getelementptr [48 x i8], ptr %0, i64 %i.c ; 10 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -48      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 -96      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28113)
  %i.g = getelementptr i8, ptr %i.d, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !28114, !noalias !28115, !noundef !67 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 -72
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !28116, !noalias !28117, !noundef !67 ; 2 uses
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %.split.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i

.split.i:                                         ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.l = getelementptr i8, ptr %i.d, i64 -56
  %i.m = load double, ptr %i.l, align 8, !alias.scope !28116, !noalias !28117, !noundef !67
  %i.n = getelementptr i8, ptr %i.d, i64 -8
  %i.o = load double, ptr %i.n, align 8, !alias.scope !28114, !noalias !28115, !noundef !67 ; 2 uses
  %i.p = getelementptr i8, ptr %i.d, i64 -64
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !28116, !noalias !28117, !noundef !67 ; 2 uses
  %i.r = getelementptr i8, ptr %i.d, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !28114, !noalias !28115, !noundef !67 ; 3 uses
  %i.t = icmp eq i64 %i.s, %i.q
  %i.u = icmp ult i64 %i.s, %i.q
  %i.v = fcmp ult double %i.o, %i.m
  %spec.select.i.i = select i1 %i.t, i1 %i.v, i1 %i.u
  br i1 %spec.select.i.i, label %bb.c, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.w = icmp ult i64 %i.h, %i.j
  br i1 %i.w, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i: ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i
  %.sroa.56.0..sroa_idx.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 -16
  %.sroa.56.0.copyload.pre.i = load i64, ptr %.sroa.56.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28118
  %.sroa.67.0..sroa_idx.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 -8
  %.sroa.67.0.copyload.pre.i = load double, ptr %.sroa.67.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28118
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i, %.split.i
  %.sroa.67.0.copyload.i = phi double [ %.sroa.67.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i ], [ %i.o, %.split.i ] ; 2 uses
  %.sroa.56.0.copyload.i = phi i64 [ %.sroa.56.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i ], [ %i.s, %.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !28118
  %i.x = add nsw i64 %.sroa.0.01, -1              ; 2 uses
  %.not9.i = icmp eq i64 %i.x, 0
  br i1 %.not9.i, label %.split8._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.011.i = phi i64 [ %i.y, %bb.d ], [ %i.x, %bb.c ]
  %.sroa.5.010.i = phi ptr [ %i.z, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.y = add i64 %.sroa.02.011.i, -1              ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !28119, !noalias !28120, !noundef !67 ; 2 uses
  %i.ac = icmp eq i64 %i.h, %i.ab
  br i1 %i.ac, label %.split8.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit13.i

.split8.i:                                        ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !28119, !noalias !28120, !noundef !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !28119, !noalias !28120, !noundef !67 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.56.0.copyload.i, %i.ag
  %i.ai = icmp ult i64 %.sroa.56.0.copyload.i, %i.ag
  %i.aj = fcmp ult double %.sroa.67.0.copyload.i, %i.ae
  %spec.select.i12.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i12.i, label %bb.d, label %.split8._crit_edge.i

.split8._crit_edge.i:                             ; preds = %bb.d, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit13.i, %.split8.i, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.d ], [ %.sroa.5.010.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit13.i ], [ %.sroa.5.010.i, %.split8.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  %.sroa.4.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 24
  store i64 %i.h, ptr %.sroa.4.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28118
  %.sroa.5.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 32
  store i64 %.sroa.56.0.copyload.i, ptr %.sroa.5.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28118
  %.sroa.6.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 40
  store double %.sroa.67.0.copyload.i, ptr %.sroa.6.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit13.i: ; preds = %.lr.ph.i
  %i.ak = icmp ult i64 %i.h, %i.ab
  br i1 %i.ak, label %bb.d, label %.split8._crit_edge.i

bb.d:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit13.i, %.split8.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.010.i, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !alias.scope !28118
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.split8._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCINvBQ_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB3q_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4v_3err5PyErrEs4_0E0EB5U_.exit: ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i, %.split8._crit_edge.i
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2Y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 576460752303423488) %1, i64 noundef range(i64 0, 576460752303423487) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add nsw i64 %2, -1
  %or.cond = icmp ult i64 %i.a, %1
  br i1 %or.cond, label %.preheader, label %bb.b, !prof !125

.preheader:                                       ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, %1
  br i1 %i.b, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEE9index_mutCskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit
  %.sroa.0.01 = phi i64 [ %i.c, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit ], [ %2, %.preheader ] ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.01, 1           ; 3 uses
  %i.d = getelementptr [16 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %.val9.i = load double, ptr %i.e, align 8, !alias.scope !28123, !noundef !67 ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %.val10.i = load double, ptr %i.f, align 8, !alias.scope !28123, !noundef !67
  %i.g = fcmp ult double %.val9.i, %.val10.i
  br i1 %i.g, label %bb.c, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit

bb.c:                                             ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.h = getelementptr i8, ptr %i.d, i64 -32      ; 3 uses
  %i.i = getelementptr i8, ptr %i.d, i64 -16      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !28123, !noundef !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !alias.scope !28123
  %i.k = add nsw i64 %.sroa.0.01, -1              ; 2 uses
  %.not2.i = icmp eq i64 %i.k, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.h, %bb.c ], [ %0, %bb.d ], [ %.sroa.5.03.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.j, ptr %.sroa.5.0.lcssa.i, align 8, !alias.scope !28123
  %.sroa.41.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 8
  store double %.val9.i, ptr %.sroa.41.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28123
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.04.i = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %.sroa.5.03.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.l = add i64 %.sroa.02.04.i, -1               ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val8.i = load double, ptr %i.n, align 8, !alias.scope !28123, !noundef !67
  %i.o = fcmp ult double %.val9.i, %.val8.i
  br i1 %i.o, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.03.i, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !28123
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2I_.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEE9index_mutCskcxRuJ53GpR_9rustworkx.exit, %._crit_edge.i
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB4m_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 288230376151711744) %1, i64 noundef range(i64 0, 288230376151711743) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add nsw i64 %2, -1
  %or.cond = icmp ult i64 %i.a, %1
  br i1 %or.cond, label %.preheader, label %bb.b, !prof !125

.preheader:                                       ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, %1
  br i1 %i.b, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2P_5types3any5PyAnyEEEE9index_mutCskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2P_5types3any5PyAnyEEEE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit
  %.sroa.0.01 = phi i64 [ %i.c, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit ], [ %2, %.preheader ] ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.01, 1           ; 3 uses
  %i.d = getelementptr [32 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -32      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 -64      ; 4 uses
  %.val9.i = load double, ptr %i.e, align 8, !alias.scope !28126, !noundef !67 ; 3 uses
  %.val10.i = load double, ptr %i.f, align 8, !alias.scope !28126, !noundef !67
  %i.g = fcmp ult double %.val9.i, %.val10.i
  br i1 %i.g, label %bb.c, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit

bb.c:                                             ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2P_5types3any5PyAnyEEEE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.d, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !28126
  %i.h = add nsw i64 %.sroa.0.01, -1              ; 2 uses
  %.not3.i = icmp eq i64 %i.h, 0
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.sroa.5.0.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.d ], [ %.sroa.5.04.i, %.lr.ph.i ] ; 2 uses
  store double %.val9.i, ptr %.sroa.5.0.lcssa.i, align 8, !alias.scope !28126
  %.sroa.5.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.5.0.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.05.i = phi i64 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %.sroa.5.04.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = add i64 %.sroa.02.05.i, -1               ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.i ; 3 uses
  %.val8.i = load double, ptr %i.j, align 8, !alias.scope !28126, !noundef !67
  %i.k = fcmp ult double %.val9.i, %.val8.i
  br i1 %i.k, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.04.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !alias.scope !28126
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENCINvYSBO_INtB4_16ParallelSliceMutBO_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB46_.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2P_5types3any5PyAnyEEEE9index_mutCskcxRuJ53GpR_9rustworkx.exit, %._crit_edge.i
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2P_5types3any5PyAnyEEEE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef range(i64 1, 10) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp samesign ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %.preheader, !prof !90

.preheader:                                       ; preds = %bb.a
  %i.a = icmp samesign ult i64 %2, %1
  br i1 %i.a, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph, label %._crit_edge

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph: ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !28135, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val4.i.i = load ptr, ptr %i.b, align 8, !noalias !28135 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !28136, !noundef !67 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  br label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit
  %.sroa.0.027 = phi i64 [ %2, %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph ], [ %i.h, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.027, 1          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28135)
  %i.i = getelementptr [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8       ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 -16      ; 3 uses
  %.val15.i = load i64, ptr %i.j, align 8, !alias.scope !28135, !noundef !67 ; 10 uses
  %.val16.i = load i64, ptr %i.k, align 8, !alias.scope !28135 ; 8 uses
  %i.l = icmp ult i64 %.val15.i, %i.d
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.m = load i64, ptr %i.e, align 8, !noalias !28136, !noundef !67 ; 6 uses
  %i.n = icmp ult i64 %.val15.i, %i.m
  br i1 %i.n, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i, label %bb.e

bb.d:                                             ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val15.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1475) #60, !noalias !28136
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val15.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476) #60, !noalias !28136
  unreachable

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !noalias !28136, !nonnull !67, !noundef !67 ; 3 uses
  %i.p = load ptr, ptr %i.g, align 8, !noalias !28136, !nonnull !67, !noundef !67 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val15.i
  %i.r = load i64, ptr %i.q, align 8, !noalias !28136, !noundef !67 ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val15.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !28136, !noundef !67 ; 4 uses
  %i.u = icmp ult i64 %.val16.i, %i.d
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i
  %i.v = icmp ult i64 %.val16.i, %i.m
  br i1 %i.v, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i, label %bb.h

bb.g:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val16.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1475) #60, !noalias !28137
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val16.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476) #60, !noalias !28137
  unreachable

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val16.i
  %i.x = load i64, ptr %i.w, align 8, !noalias !28137, !noundef !67 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val16.i
  %i.z = load i64, ptr %i.y, align 8, !noalias !28137, !noundef !67 ; 2 uses
  %i.aa = icmp eq i64 %i.r, %i.x
  %i.ab = icmp ult i64 %i.r, %i.x
  %i.ac = icmp eq i64 %i.t, %i.z
  %i.ad = icmp ult i64 %i.t, %i.z
  %i.ae = icmp ult i64 %.val16.i, %.val15.i
  %spec.select.i.i = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  %.sroa.0.1.in.i.i.i = select i1 %i.aa, i1 %spec.select.i.i, i1 %i.ab
  br i1 %.sroa.0.1.in.i.i.i, label %bb.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit

bb.i:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i
  store i64 %.val16.i, ptr %i.j, align 8, !alias.scope !28135
  %i.af = add nsw i64 %.sroa.0.027, -1            ; 2 uses
  %.not7.i = icmp eq i64 %i.af, 0
  br i1 %.not7.i, label %._crit_edge.i, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i: ; preds = %bb.i, %bb.l
  %.sroa.02.09.i = phi i64 [ %i.ag, %bb.l ], [ %i.af, %bb.i ]
  %.sroa.5.08.i = phi ptr [ %i.ah, %bb.l ], [ %i.k, %bb.i ] ; 3 uses
  %i.ag = add nsw i64 %.sroa.02.09.i, -1          ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 2 uses
  %.val13.i = load i64, ptr %i.ah, align 8, !alias.scope !28135 ; 7 uses
  %i.ai = icmp ult i64 %.val13.i, %i.d
  br i1 %i.ai, label %bb.j, label %.invoke

bb.j:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i
  %i.aj = icmp ult i64 %.val13.i, %i.m
  br i1 %i.aj, label %bb.k, label %.invoke

.invoke:                                          ; preds = %bb.j, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i
  %i.ak = phi i64 [ %i.d, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i ], [ %i.m, %bb.j ]
  %i.al = phi ptr [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i ], [ @1476, %bb.j ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val13.i, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) #60
          to label %.cont unwind label %bb.m, !noalias !28135

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge.i:                                    ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.5.0.lcssa.i = phi ptr [ %i.k, %bb.i ], [ %0, %bb.l ], [ %.sroa.5.08.i, %bb.k ]
  store i64 %.val15.i, ptr %.sroa.5.0.lcssa.i, align 8, !alias.scope !28135
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val13.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !28138, !noundef !67 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val13.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !28138, !noundef !67 ; 2 uses
  %i.aq = icmp eq i64 %i.r, %i.an
  %i.ar = icmp ult i64 %i.r, %i.an
  %i.as = icmp eq i64 %i.t, %i.ap
  %i.at = icmp ult i64 %i.t, %i.ap
  %i.au = icmp ult i64 %.val13.i, %.val15.i
  %spec.select.i20.i = select i1 %i.as, i1 %i.au, i1 %i.at
  %.sroa.0.1.in.i.i21.i = select i1 %i.aq, i1 %spec.select.i20.i, i1 %i.ar
  br i1 %.sroa.0.1.in.i.i21.i, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  store i64 %.val13.i, ptr %.sroa.5.08.i, align 8, !alias.scope !28135
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %._crit_edge.i, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i19.i

bb.m:                                             ; preds = %.invoke
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i, ptr %.sroa.5.08.i, align 8, !alias.scope !28135
  resume { ptr, i32 } %i.av

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2v_.exit: ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i, %._crit_edge.i
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %._crit_edge, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef range(i64 1, 10) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp samesign ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %.preheader, !prof !90

.preheader:                                       ; preds = %bb.a
  %i.a = icmp samesign ult i64 %2, %1
  br i1 %i.a, label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph, label %._crit_edge

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph: ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !28147, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val4.i.i = load ptr, ptr %i.b, align 8, !noalias !28147 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !28148, !noundef !67 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  br label %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #60
  unreachable

._crit_edge:                                      ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2v_.exit, %.preheader
  ret void

_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2v_.exit
  %.sroa.0.027 = phi i64 [ %2, %_RNvXs8_NtNtCslwFuT2d6ECx_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSjE9index_mutCskcxRuJ53GpR_9rustworkx.exit.lr.ph ], [ %i.h, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort11insert_tailjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2r_11Vf2ppSorterINtB2r_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2v_.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_8DirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3w_E11is_feasible0EB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35516
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.b, align 8, !noalias !35516
  invoke void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods9is_truthy(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !35515

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.07.0.copyload.i.i) #63
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i unwind label %bb.q, !noalias !35516

bb.n:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !35516, !noundef !67
  %i.ah = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.p, label %bb.o, !prof !125

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.07.0.copyload.i.i)
          to label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i unwind label %.loopexit

bb.p:                                             ; preds = %bb.n
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.07.0.copyload.i.i) #59, !noalias !35516
  br label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !35516
  unreachable

_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i: ; preds = %bb.o, %bb.p, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35516
  %i.aj = load i8, ptr %i.c, align 8, !range !69, !noalias !35515, !noundef !67
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i
  %i.al = load i8, ptr %i.p, align 1, !range !69, !noalias !35515, !noundef !67
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.u, label %bb.t

bb.s:                                             ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i
  %.sroa.1045.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %.sroa.1045, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.86.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.86, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx, i64 64, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  br label %bb.e

bb.t:                                             ; preds = %bb.g, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  br label %bb.f

bb.u:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.10.064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  store i8 0, ptr %i.ao, align 1
  %i.ap = icmp eq ptr %i.q, %i.j
  br i1 %i.ap, label %._crit_edge68, label %.lr.ph

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split: ; preds = %bb.e, %._crit_edge68, %._crit_edge68.thread
  %.sink30.i8293.sink = phi ptr [ %.sink30.i82, %._crit_edge68 ], [ %i.e, %._crit_edge68.thread ], [ %.sink30.i83, %bb.e ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink30.i8293.sink, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split, %._crit_edge68, %bb.e
  ret void

._crit_edge68:                                    ; preds = %bb.u, %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit
  %.sink30.i82 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit ], [ %i.e, %bb.u ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aq, align 1
  store i8 0, ptr %0, align 8
  br i1 %i.d, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtCs68Jln09rRqb_8petgraph10UndirectedEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [88 x i8], align 8                ; 14 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [88 x i8], align 8                ; 14 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !67
  %i.o = icmp eq i64 %i.n, %4
  br i1 %i.o, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !35743, !noalias !35744, !noundef !67 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit119, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !35745, !noalias !35746, !nonnull !67, !noundef !67 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !35745, !noalias !35746, !noundef !67 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6.i.i = load i64, ptr %i.z, align 8, !alias.scope !35745, !noalias !35746, !noundef !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i61 = load ptr, ptr %i.aa, align 8, !nonnull !67 ; 2 uses
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.12159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.gep182 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.8172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.9173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.10174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.12175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.13177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep220 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.8207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.9208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.10209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.11210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.12211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.13213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35747)
  %i.an = load ptr, ptr %0, align 8, !alias.scope !35747, !noalias !35748, !nonnull !67, !noundef !67 ; 4 uses
  %.val24.i = load <16 x i8>, ptr %i.an, align 16, !noalias !35749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35750
  %i.ao = icmp eq i64 %4, 0
  br i1 %i.ao, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.as = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %bb.c ] ; 2 uses
  %i.at = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %bb.c ]
  %.val68.i.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 16, !noalias !35751
  %i.au = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i, splat (i8 -1)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.au to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.sroa.5.0 = phi ptr [ %i.ar, %bb.c ], [ %i.aw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i = phi ptr [ %i.an, %bb.c ], [ %i.av, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.aq, %bb.c ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ax = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = and i16 %i.ax, %.lcssa.i.i.i.i.i.i
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = getelementptr inbounds [4 x i8], ptr %.sroa.09.0.copyload.i.i, i64 %i.bb
  %i.bd = add i64 %4, -1                          ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %.val.i.i.i = load i32, ptr %i.be, align 4, !noalias !35752, !noundef !67
  %i.bf = zext i32 %.val.i.i.i to i64
  %i.bg = tail call i64 @llvm.umax.i64(i64 %4, i64 4) ; 3 uses
  %i.bh = shl i64 %i.bg, 3                        ; 3 uses
  %i.bi = icmp ugt i64 %4, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bh, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bi, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.d, !prof !73

bb.d:                                             ; preds = %._crit_edge17.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !35753
  %i.bj = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35753 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.e, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge17.i.i.i.i.i.i
  %.sroa.416.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %._crit_edge17.i.i.i.i.i.i ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i.i, i64 %i.bh) #61, !noalias !35750
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d
  store i64 %i.bf, ptr %i.bj, align 8, !noalias !35750
  store i64 %i.bg, ptr %i.d, align 8, !noalias !35750
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !35750
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !35750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35755)
  %i.bl = icmp eq i64 %i.bd, 0
  br i1 %i.bl, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i, %.noexc.i.i
  %i.bm = phi ptr [ %i.cg, %.noexc.i.i ], [ %i.bj, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.bn = phi i64 [ %i.ci, %.noexc.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 5 uses
  %.lcssa16.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i, %.noexc.i.i ], [ %.sroa.5.0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.bo = phi i16 [ %i.bx, %.noexc.i.i ], [ %i.ba, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.val712.i.i.i.i = phi i64 [ %i.ca, %.noexc.i.i ], [ %i.bd, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.lcssa61011.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i, %.noexc.i.i ], [ %.sroa.09.0.copyload.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bp = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa61011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val68.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !35756
  %i.br = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -64 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.br to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.lcssa15.i.i.i.i = phi ptr [ %.lcssa16.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa69.i.i.i.i = phi ptr [ %.lcssa61011.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.bo, %.lr.ph.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bu = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i16 %i.bu, %.lcssa.i.i.i.i.i.i.i.i
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [4 x i8], ptr %.lcssa69.i.i.i.i, i64 %i.by
  %i.ca = add i64 %.val712.i.i.i.i, -1            ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %.val.i.i.i.i.i = load i32, ptr %i.cb, align 4, !noalias !35757, !noundef !67
  %i.cc = zext i32 %.val.i.i.i.i.i to i64
  %i.cd = icmp samesign ult i64 %i.bn, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.d, align 8, !range !70, !alias.scope !35758, !noalias !35759, !noundef !67
  %i.cf = icmp eq i64 %i.bn, %i.ce
  br i1 %i.cf, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.noexc.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %._crit_edge17.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bn, i64 noundef %.val712.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i unwind label %bb.f, !noalias !35750

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35758, !noalias !35759
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i, %._crit_edge17.i.i.i.i.i.i.i.i
  %i.cg = phi ptr [ %.pre.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i ], [ %i.bm, %._crit_edge17.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.bn
  store i64 %i.cc, ptr %i.ch, align 8, !noalias !35760
  %i.ci = add nuw nsw i64 %i.bn, 1                ; 3 uses
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !35758, !noalias !35759
  %i.cj = icmp eq i64 %i.ca, 0
  br i1 %i.cj, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35761)
  %.val.i8.i.i = load i64, ptr %i.d, align 8, !alias.scope !35761, !noalias !35750 ; 2 uses
  %i.cl = icmp eq i64 %.val.i8.i.i, 0
  br i1 %i.cl, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.f
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35761, !noalias !35750, !nonnull !67, !noundef !67
  %i.cm = shl nuw i64 %.val.i8.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35762
  br label %common.resume

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit: ; preds = %.noexc.i.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.d, align 8, !noalias !35763
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !35763
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit

common.resume:                                    ; preds = %bb.h, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.f, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.ck, %bb.f ], [ %i.fp, %bb.p ], [ %i.ck, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.cr, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.cr, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit, %bb.b
  %.sroa.8.0 = phi i64 [ 0, %bb.b ], [ %i.ci, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %.sroa.6.0.copyload.pre, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit ], [ %i.bj, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.sroa.0.0315 = phi i64 [ 0, %bb.b ], [ %.sroa.0.0.copyload.pre, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2G_10UndirectedE0EE11spec_extendB3z_.exit.i.i.loopexit ], [ %i.bg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35764)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !35764, !noalias !35765, !noundef !67 ; 3 uses
  %i.cp = load i64, ptr %3, align 8, !range !70, !alias.scope !35764, !noalias !35765, !noundef !67
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.g, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.g:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE8push_mutCskcxRuJ53GpR_9rustworkx.exit unwind label %bb.h, !noalias !35765

bb.h:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = icmp eq i64 %.sroa.0.0315, 0
  br i1 %i.cs, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.h
  %i.ct = shl nuw i64 %.sroa.0.0315, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35766
  br label %common.resume

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs11simple_enumNtB2L_10UndirectedE0EE9from_iterB3E_.exit, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !35764, !noalias !35765, !nonnull !67, !noundef !67
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.co ; 3 uses
  store i64 %.sroa.0.0315, ptr %i.cw, align 8, !noalias !35764
  %.sroa.6.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx136, align 8, !noalias !35764
  %.sroa.8.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx138, align 8, !noalias !35764
  %i.cx = add i64 %i.co, 1
  store i64 %i.cx, ptr %i.cn, align 8, !alias.scope !35764, !noalias !35765
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit119

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125
  %i.cy = phi i64 [ %i.r, %.lr.ph ], [ %i.vb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125 ]
  %.sroa.0.0399 = phi i1 [ false, %.lr.ph ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125 ] ; 3 uses
  %i.cz = load ptr, ptr %1, align 8, !alias.scope !35767, !noalias !35744, !nonnull !67, !noundef !67 ; 8 uses
  %i.da = load i64, ptr %i.p, align 8, !alias.scope !35767, !noalias !35744, !noundef !67 ; 3 uses
  %.val24.i57 = load <16 x i8>, ptr %i.cz, align 16, !noalias !35768
  %i.db = icmp sgt <16 x i8> %.val24.i57, splat (i8 -1)
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not10.i = icmp eq i16 %i.dc, 0
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.pn316 = phi ptr [ %i.de, %.lr.ph.i ], [ %i.cz, %bb.i ]
  %i.dd = phi ptr [ %i.dg, %.lr.ph.i ], [ %i.cz, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.pn316, i64 16 ; 2 uses
  %.val68.i = load <16 x i8>, ptr %i.de, align 16, !noalias !35769
  %i.df = icmp sgt <16 x i8> %.val68.i, splat (i8 -1)
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 -64 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.df to i16       ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i, %bb.i
  %i.dh = phi ptr [ %i.cz, %bb.i ], [ %i.dg, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.dc, %bb.i ], [ %.cast.i, %.lr.ph.i ]
  %i.di = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !noundef !67 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35770)
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !35771, !noalias !35772, !noundef !67
  %i.do = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !35773, !noundef !67
  %i.dp = zext i32 %i.dn to i64                   ; 3 uses
  %i.dq = xor i64 %.val.i, %i.dp
  %i.dr = zext i64 %i.dq to i128
  %i.ds = zext i64 %i.do to i128
  %i.dt = mul nuw i128 %i.ds, %i.dr               ; 2 uses
  %i.du = lshr i128 %i.dt, 64
  %i.dv = xor i128 %i.du, %i.dt
  %i.dw = trunc i128 %i.dv to i64                 ; 2 uses
  %i.dx = lshr i64 %i.dw, 57
  %i.dy = trunc nuw nsw i64 %i.dx to i8
  %i.dz = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> poison, <16 x i32> zeroinitializer
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  br i1 %spec.select.i.i.i.i.i.i.i.i144.i, label %bb.dv, label %bb.dt, !prof !77

._crit_edge.i.i.i.i146.i:                         ; preds = %bb.dt, %bb.ds
  %i.ajq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i138.i, splat (i8 -1)
  %i.ajr = bitcast <16 x i1> %i.ajq to i16
  %i.ajs = icmp eq i16 %i.ajr, 0
  br i1 %i.ajs, label %bb.du, label %select.unfold.i.i147.i, !prof !71

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i140.i
  %i.ajt = add i16 %.sroa.05.0.i31.i.i.i.i141.i, -1
  %i.aju = and i16 %i.ajt, %.sroa.05.0.i31.i.i.i.i141.i ; 2 uses
  %.not.i.not.i.i.i.i145.i = icmp eq i16 %i.aju, 0
  br i1 %.not.i.not.i.i.i.i145.i, label %._crit_edge.i.i.i.i146.i, label %.lr.ph.i.i.i.i140.i

bb.du:                                            ; preds = %._crit_edge.i.i.i.i146.i
  %i.ajv = add i64 %.sroa.011.0.i.i.i.i.i135.i, 16 ; 2 uses
  %i.ajw = add i64 %.sroa.01.0.i.i.i.i.i137.i, %i.ajv
  br label %bb.ds

select.unfold.i.i147.i:                           ; preds = %._crit_edge.i.i.i.i146.i, %.lr.ph95.i96.us
  call void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #60, !noalias !38447
  unreachable

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i140.i
  %i.ajx = getelementptr inbounds i8, ptr %i.ajl, i64 -8
  %i.ajy = load i64, ptr %i.ajx, align 8, !noalias !38447, !noundef !67
  %i.ajz = xor i64 %.val.i.i.i134.i, %.val13.i100
  %i.aka = zext i64 %i.ajz to i128
  %i.akb = mul nuw i128 %i.aik, %i.aka            ; 2 uses
  %i.akc = lshr i128 %i.akb, 64
  %i.akd = xor i128 %i.akc, %i.akb
  %i.ake = trunc i128 %i.akd to i64               ; 2 uses
  %i.akf = lshr i64 %i.ake, 57
  %i.akg = trunc nuw nsw i64 %i.akf to i8
  %i.akh = insertelement <16 x i8> poison, i8 %i.akg, i64 0
  %i.aki = shufflevector <16 x i8> %i.akh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %bb.dv
  %.sroa.011.0.i.i.i.i7.i148.i = phi i64 [ 0, %bb.dv ], [ %i.alb, %bb.dy ]
  %.pn.i.i.i8.i149.i = phi i64 [ %i.ake, %bb.dv ], [ %i.alc, %bb.dy ]
  %.sroa.01.0.i.i.i.i9.i150.i = and i64 %.pn.i.i.i8.i149.i, %i.aiv ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %.sroa.01.0.i.i.i.i9.i150.i
  %.sroa.0.0.copyload.i24.i.i.i10.i151.i = load <16 x i8>, ptr %i.akj, align 1, !noalias !38484 ; 2 uses
  %i.akk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i151.i, %i.aki
  %i.akl = bitcast <16 x i1> %i.akk to i16        ; 2 uses
  %.not.i.not30.i.i.i11.i152.i = icmp eq i16 %i.akl, 0
  br i1 %.not.i.not30.i.i.i11.i152.i, label %._crit_edge.i.i.i18.i159.i, label %.lr.ph.i.i.i12.i153.i

.lr.ph.i.i.i12.i153.i:                            ; preds = %bb.dw, %bb.dx
  %.sroa.05.0.i31.i.i.i13.i154.i = phi i16 [ %i.ala, %bb.dx ], [ %i.akl, %bb.dw ] ; 3 uses
  %i.akm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i154.i, i1 true)
  %i.akn = zext nneg i16 %i.akm to i64
  %i.ako = add i64 %.sroa.01.0.i.i.i.i9.i150.i, %i.akn
  %i.akp = and i64 %i.ako, %i.aiv
  %i.akq = sub nsw i64 0, %i.akp
  %i.akr = getelementptr inbounds [16 x i8], ptr %i.aiw, i64 %i.akq ; 3 uses
  %i.aks = getelementptr inbounds i8, ptr %i.akr, i64 -16
  %.val2.i.i.i.i14.i155.i = load i32, ptr %i.aks, align 4, !noalias !38485, !noundef !67
  %i.akt = getelementptr i8, ptr %i.akr, i64 -12
  %.val3.i.i.i.i15.i156.i = load i32, ptr %i.akt, align 4, !noalias !38485
  %i.aku = icmp eq i32 %.val2.i.i.i.i14.i155.i, %i.aja
  %i.akv = icmp eq i32 %.val3.i.i.i.i15.i156.i, %i.ajc
  %spec.select.i.i.i.i.i.i.i16.i157.i = select i1 %i.aku, i1 %i.akv, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i157.i, label %_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx.exit161.i, label %bb.dx, !prof !77

._crit_edge.i.i.i18.i159.i:                       ; preds = %bb.dx, %bb.dw
  %i.akw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i151.i, splat (i8 -1)
  %i.akx = bitcast <16 x i1> %i.akw to i16
  %i.aky = icmp eq i16 %i.akx, 0
  br i1 %i.aky, label %bb.dy, label %select.unfold.i19.i160.i, !prof !71

bb.dx:                                            ; preds = %.lr.ph.i.i.i12.i153.i
  %i.akz = add i16 %.sroa.05.0.i31.i.i.i13.i154.i, -1
  %i.ala = and i16 %i.akz, %.sroa.05.0.i31.i.i.i13.i154.i ; 2 uses
  %.not.i.not.i.i.i17.i158.i = icmp eq i16 %i.ala, 0
  br i1 %.not.i.not.i.i.i17.i158.i, label %._crit_edge.i.i.i18.i159.i, label %.lr.ph.i.i.i12.i153.i

bb.dy:                                            ; preds = %._crit_edge.i.i.i18.i159.i
  %i.alb = add i64 %.sroa.011.0.i.i.i.i7.i148.i, 16 ; 2 uses
  %i.alc = add i64 %.sroa.01.0.i.i.i.i9.i150.i, %i.alb
  br label %bb.dw

select.unfold.i19.i160.i:                         ; preds = %._crit_edge.i.i.i18.i159.i
  call void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #60, !noalias !38447
  unreachable

_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx.exit161.i: ; preds = %.lr.ph.i.i.i12.i153.i
  %i.ald = getelementptr inbounds i8, ptr %i.akr, i64 -8
  %i.ale = load i64, ptr %i.ald, align 8, !noalias !38447, !noundef !67
  %i.alf = icmp uge i64 %i.ajy, %i.ale            ; 2 uses
  %i.alg = getelementptr inbounds i8, ptr %.sroa.43.291.i99, i64 -8 ; 3 uses
  %.sroa.01.0.i44.i = select i1 %i.alf, ptr %2, ptr %i.alg
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i44.i, i64 %.sroa.27.292.i98
  store i64 %.val13.i100, ptr %i.alh, align 4, !alias.scope !38446, !noalias !38486
  %i.ali = zext i1 %i.alf to i64
  %i.alj = add i64 %.sroa.27.292.i98, %i.ali      ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.sroa.9.293.i97, i64 8 ; 3 uses
  %i.all = icmp ult ptr %i.alk, %i.aib
  br i1 %i.all, label %.lr.ph95.i96, label %._crit_edge96.i88

bb.dz:                                            ; preds = %._crit_edge96.i88
  %i.alm = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i89, i64 -8
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i90
  %i.alo = load i64, ptr %.sroa.9.2.lcssa.i91, align 4, !alias.scope !38445, !noalias !38487
  store i64 %i.alo, ptr %i.aln, align 4, !alias.scope !38446, !noalias !38488
  %i.alp = add i64 %.sroa.27.2.lcssa.i90, 1
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i91, i64 8
  br label %bb.cl

bb.ea:                                            ; preds = %._crit_edge96.i88
  %i.alr = shl nuw nsw i64 %.sroa.27.2.lcssa.i90, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph438, ptr nonnull align 4 %2, i64 %i.alr, i1 false), !alias.scope !38447
  %i.als = sub i64 %.sroa.16.03861144, %.sroa.27.2.lcssa.i90 ; 7 uses
  %.not.i92 = icmp eq i64 %.sroa.16.03861144, %.sroa.27.2.lcssa.i90
  br i1 %.not.i92, label %.outer._crit_edge.thread, label %.lr.ph102.i93

.lr.ph102.i93:                                    ; preds = %bb.ea
  %i.alt = getelementptr [8 x i8], ptr %.sroa.0.0.ph438, i64 %.sroa.27.2.lcssa.i90 ; 2 uses
  %min.iters.check = icmp ult i64 %i.als, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph102.i93
  %n.vec = and i64 %i.als, -4                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.alu = xor i64 %index, -1
  %i.alv = getelementptr [8 x i8], ptr %i.xi, i64 %i.alu ; 2 uses
  %i.alw = getelementptr [8 x i8], ptr %i.alt, i64 %index ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alv, i64 -8
  %i.aly = getelementptr i8, ptr %i.alv, i64 -24
  %wide.load = load <2 x i64>, ptr %i.alx, align 4, !alias.scope !38446, !noalias !38445
  %wide.load1155 = load <2 x i64>, ptr %i.aly, align 4, !alias.scope !38446, !noalias !38445
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse1156 = shufflevector <2 x i64> %wide.load1155, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.alz = getelementptr i8, ptr %i.alw, i64 16
  store <2 x i64> %reverse, ptr %i.alw, align 4, !alias.scope !38445, !noalias !38446
  store <2 x i64> %reverse1156, ptr %i.alz, align 4, !alias.scope !38445, !noalias !38446
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ama = icmp eq i64 %index.next, %n.vec
  br i1 %i.ama, label %middle.block, label %vector.body, !llvm.loop !38368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.als, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1e_ENCINvB2_9quicksortB1d_NCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1d_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1g_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB1i_10UndirectedENCINvB3o_9is_planarB4E_Es_0NtB3o_9NonPlanarEs_0E0E0ECskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph102.i93, %middle.block
  %.sroa.08.0100.i94.ph = phi i64 [ 0, %.lr.ph102.i93 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.08.0100.i94 = phi i64 [ %i.amb, %scalar.ph ], [ %.sroa.08.0100.i94.ph, %scalar.ph.preheader ] ; 3 uses
  %i.amb = add nuw i64 %.sroa.08.0100.i94, 1      ; 2 uses
  %i.amc = xor i64 %.sroa.08.0100.i94, -1
  %i.amd = getelementptr [8 x i8], ptr %i.xi, i64 %i.amc
  %i.ame = getelementptr [8 x i8], ptr %i.alt, i64 %.sroa.08.0100.i94
  %i.amf = load i64, ptr %i.amd, align 4, !alias.scope !38446, !noalias !38445
  store i64 %i.amf, ptr %i.ame, align 4, !alias.scope !38445, !noalias !38446
  %exitcond.not.i95 = icmp eq i64 %i.amb, %i.als
  br i1 %exitcond.not.i95, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1e_ENCINvB2_9quicksortB1d_NCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1d_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1g_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB1i_10UndirectedENCINvB3o_9is_planarB4E_Es_0NtB3o_9NonPlanarEs_0E0E0ECskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph, !llvm.loop !38369

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1e_ENCINvB2_9quicksortB1d_NCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1d_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1g_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB1i_10UndirectedENCINvB3o_9is_planarB4E_Es_0NtB3o_9NonPlanarEs_0E0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %scalar.ph, %middle.block
  %i.amg = icmp ugt i64 %.sroa.27.2.lcssa.i90, %.sroa.16.03861144
  br i1 %i.amg, label %bb.eb, label %.outer, !prof !71

.outer._crit_edge.thread:                         ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1t_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1s_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1v_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5d_5types3any5PyAnyEB58_NtB1x_10UndirectedENCINvB3h_9is_planarB4x_Es_0NtB3h_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1e_ENCINvB2_9quicksortB1d_NCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1d_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1g_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB1i_10UndirectedENCINvB3o_9is_planarB4E_Es_0NtB3o_9NonPlanarEs_0E0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph438, i64 %.sroa.27.2.lcssa.i90 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ami = icmp ult i64 %i.als, 33
  br i1 %i.ami, label %.outer._crit_edge, label %.lr.ph

bb.eb:                                            ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1e_ENCINvB2_9quicksortB1d_NCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1d_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1g_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB1i_10UndirectedENCINvB3o_9is_planarB4E_Es_0NtB3o_9NonPlanarEs_0E0E0ECskcxRuJ53GpR_9rustworkx.exit
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i90, i64 noundef %.sroa.16.03861144, i64 noundef %.sroa.16.03861144, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1106) #60
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort8heapsortTjjdENCINvMB8_SB15_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1Z_10TriMatIterINtNtB8_4iter4IterjEB2Y_IB2Z_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 33, 384307168202282326) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.03 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit ]
  %i.d = add nsw i64 %.sroa.0.03, -1              ; 6 uses
  %.not7 = icmp ult i64 %i.d, %1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !38498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %1) ; 4 uses
  %i.h = icmp ule i64 %.sroa.04.0, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.j = or disjoint i64 %i.i, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.j, %i.g
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

.lr.ph:                                           ; preds = %bb.f, %.preheader.i.preheader
  %i.k = phi i64 [ %i.ah, %.preheader.i.preheader ], [ %i.j, %bb.f ] ; 3 uses
  %i.l = phi i64 [ %i.ag, %.preheader.i.preheader ], [ %i.i, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %.preheader.i.preheader ], [ %.sroa.04.0, %bb.f ]
  %i.m = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m ; 2 uses
  %.val = load i64, ptr %i.o, align 8, !noundef !67 ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val8 = load i64, ptr %i.q, align 8, !noundef !67
  %.val9 = load i64, ptr %i.p, align 8, !noundef !67 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val10 = load i64, ptr %i.r, align 8, !noundef !67
  %i.s = icmp eq i64 %.val, %.val9
  %i.t = icmp ult i64 %.val, %.val9
  %i.u = icmp ult i64 %.val8, %.val10
  %.sroa.0.0.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  %i.v = zext i1 %.sroa.0.0.i.i to i64
  %i.w = add nuw nsw i64 %i.k, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.w, %bb.g ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.04.0.i ; 4 uses
  %.val11 = load i64, ptr %i.x, align 8, !noundef !67 ; 3 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %.val12 = load i64, ptr %i.z, align 8, !noundef !67 ; 2 uses
  %.val13 = load i64, ptr %i.y, align 8, !noundef !67 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  %.val14 = load i64, ptr %i.aa, align 8, !noundef !67 ; 2 uses
  %i.ab = icmp eq i64 %.val11, %.val13
  %i.ac = icmp ult i64 %.val11, %.val13
  %i.ad = icmp ult i64 %.val12, %.val14
  %.sroa.0.0.i.i15 = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %.sroa.0.0.i.i15, label %.preheader.i.preheader, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

.preheader.i.preheader:                           ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38500)
  store i64 %.val13, ptr %i.x, align 8, !alias.scope !38499, !noalias !38500
  store i64 %.val11, ptr %i.y, align 8, !alias.scope !38500, !noalias !38499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38502)
  store i64 %.val14, ptr %i.z, align 8, !alias.scope !38501, !noalias !38502
  store i64 %.val12, ptr %i.aa, align 8, !alias.scope !38502, !noalias !38501
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38504)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.ae, align 8, !alias.scope !38503, !noalias !38504
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.af, align 8, !alias.scope !38504, !noalias !38503
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.ae, align 8, !alias.scope !38503, !noalias !38504
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.af, align 8, !alias.scope !38504, !noalias !38503
  %i.ag = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ah, %i.g
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable8heapsort9sift_downTjjdENCINvMB8_SB16_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB20_10TriMatIterINtNtB8_4iter4IterjEB2Z_IB30_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %.preheader.i.preheader, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort9quicksortTjjdENCINvMB8_SB17_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB21_10TriMatIterINtNtB8_4iter4IterjEB30_IB31_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [1152 x i8], align 8              ; 17 uses
  %i.h = icmp samesign ult i64 %1, 33
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph17

.lr.ph:                                           ; preds = %.backedge
  %i.j = icmp eq i32 %i.fw, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph17

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 7 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38555
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38557)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjjdENCINvMB8_SB1s_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2m_10TriMatIterINtNtB8_4iter4IterjEB3l_IB3m_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val16.i.i = load i64, ptr %i.n, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 32
  %.val17.i.i = load i64, ptr %i.o, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %.val18.i.i = load i64, ptr %.sroa.0.0.lcssa, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val19.i.i = load i64, ptr %i.p, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %i.q = icmp eq i64 %.val16.i.i, %.val18.i.i
  %i.r = icmp ult i64 %.val16.i.i, %.val18.i.i
  %i.s = icmp ult i64 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.q, i1 %i.s, i1 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48
  %.val12.i.i = load i64, ptr %i.t, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 80
  %.val13.i.i = load i64, ptr %i.v, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %.val14.i.i = load i64, ptr %i.u, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val15.i.i = load i64, ptr %i.w, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %i.x = icmp eq i64 %.val12.i.i, %.val14.i.i
  %i.y = icmp ult i64 %.val12.i.i, %.val14.i.i
  %i.z = icmp ult i64 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.x, i1 %i.z, i1 %i.y ; 2 uses
  %i.aa = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.lcssa, i64 %i.aa ; 4 uses
  %i.ac = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ad ; 5 uses
  %i.af = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.lcssa, i64 %i.af ; 5 uses
  %i.ah = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ah ; 4 uses
  %.val8.i.i = load i64, ptr %i.ag, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val9.i.i = load i64, ptr %i.aj, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %.val10.i.i = load i64, ptr %i.ab, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ab, i64 8
  %.val11.i.i = load i64, ptr %i.ak, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %i.al = icmp eq i64 %.val8.i.i, %.val10.i.i
  %i.am = icmp ult i64 %.val8.i.i, %.val10.i.i
  %i.an = icmp ult i64 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.al, i1 %i.an, i1 %i.am ; 3 uses
  %.val4.i.i = load i64, ptr %i.ai, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ai, i64 8
  %.val5.i.i = load i64, ptr %i.ao, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %.val6.i.i = load i64, ptr %i.ae, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 8
  %.val7.i.i = load i64, ptr %i.ap, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %i.aq = icmp eq i64 %.val4.i.i, %.val6.i.i
  %i.ar = icmp ult i64 %.val4.i.i, %.val6.i.i
  %i.as = icmp ult i64 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.aq, i1 %i.as, i1 %i.ar ; 3 uses
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ag, ptr %i.ab, !unpredictable !67
  %i.au = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ae, ptr %i.ai, !unpredictable !67
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ag, ptr %i.ae, !unpredictable !67
  %i.aw = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.av, !unpredictable !67 ; 4 uses
  %i.ax = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ae, ptr %i.ag, !unpredictable !67
  %i.ay = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ai, ptr %i.ax, !unpredictable !67 ; 4 uses
  %.val.i.i = load i64, ptr %i.ay, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val1.i.i = load i64, ptr %i.az, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %.val2.i.i = load i64, ptr %i.aw, align 8, !alias.scope !38556, !noalias !38557, !noundef !67 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %.val3.i.i = load i64, ptr %i.ba, align 8, !alias.scope !38556, !noalias !38557, !noundef !67
  %i.bb = icmp eq i64 %.val.i.i, %.val2.i.i
  %i.bc = icmp ult i64 %.val.i.i, %.val2.i.i
  %i.bd = icmp ult i64 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.bb, i1 %i.bd, i1 %i.bc ; 2 uses
  %i.be = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.ay, ptr %i.aw, !unpredictable !67
  %i.bf = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.aw, ptr %i.ay, !unpredictable !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !38558
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !38558
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !38558
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph43___pyfunction_directed_barabasi_albert_graph:bb.a
.noexc36.i.i.i:                                   ; preds = %.lr.ph58.i.i.i
  %i.ha = load i64, ptr %i.m, align 8, !range !123, !noalias !117914, !noundef !67 ; 3 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.ha, 2
  br i1 %cond.i.i.i.i.i, label %bb.ar, label %bb.ap, !prof !79

bb.ap:                                            ; preds = %.noexc36.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117915)
  %.not.i.i.i.i.i.i60 = icmp eq i64 %i.ha, -1
  br i1 %.not.i.i.i.i.i.i60, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.aq, !prof !77

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !117916
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !117915, !noalias !117917
  store i64 %i.ha, ptr %i.j, align 8, !noalias !117916
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.aq, %bb.ao
  %.sink557.i.sroa.phi.i = phi ptr [ %.sink557.i.sroa.gep.i, %bb.ao ], [ %.sink557.i.sroa.gep131.i, %bb.aq ]
  %.sink557.i.i = phi ptr [ %i.n, %bb.ao ], [ %i.j, %bb.aq ]
  %.sink.i.i = phi i64 [ %i.gx, %bb.ao ], [ %i.hc, %bb.aq ]
  %i.hd = phi ptr [ @4184, %bb.ao ], [ @616, %bb.aq ]
  store i64 %.sink.i.i, ptr %.sink557.i.sroa.phi.i, align 8, !noalias !117908
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink557.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !117908

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ar:                                            ; preds = %.noexc36.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !117914
  %i.hf = load i64, ptr %i.he, align 8, !noalias !117914, !noundef !67
  store i64 %i.hf, ptr %i.l, align 8, !noalias !117914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !117914
  store ptr %i.l, ptr %i.k, align 8, !noalias !117914
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !117914
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @616) #60
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !117908

.noexc38.i.i.i:                                   ; preds = %bb.ar
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !117914
  %exitcond68.not.i.i.i = icmp eq i64 %i.gy, %i.bn
  br i1 %exitcond68.not.i.i.i, label %.loopexit165.i.i, label %.lr.ph58.i.i.i

bb.as:                                            ; preds = %.loopexit.split-lp.i.i.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !117908
  unreachable

.loopexit165.i.i:                                 ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.loopexit42.i.i.i
  %.sroa.097.0.copyload98.i.i = load i64, ptr %i.p, align 8, !noalias !117918 ; 2 uses
  %.sroa.7.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx100.i.i, i64 64, i1 false), !noalias !117918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !117908
  %i.hh = icmp eq i64 %.sroa.097.0.copyload98.i.i, -1
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit165.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cn

bb.au:                                            ; preds = %.loopexit165.i.i
  %.sroa.4123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4123.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, i64 64, i1 false), !noalias !117900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  store i64 %.sroa.097.0.copyload98.i.i, ptr %i.u, align 8, !noalias !117900
  br label %bb.aw

bb.av:                                            ; preds = %bb.bb, %.split280.us.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

bb.aw:                                            ; preds = %bb.au, %bb.ak
  %.sroa.011.1.i.i = phi i8 [ 0, %bb.ak ], [ 1, %bb.au ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %.val35.i.i = load i64, ptr %i.hj, align 8, !noalias !117900, !noundef !67 ; 5 uses
  %i.hk = icmp ult i64 %.val35.i.i, %i.bn
  %i.hl = icmp ugt i64 %.val35.i.i, %i.be
  %or.cond.i.i = or i1 %i.hk, %i.hl
  %i.hm = inttoptr i64 %.val35.i.i to ptr         ; 2 uses
  br i1 %or.cond.i.i, label %bb.ci, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !117900
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.val31.i.i = load ptr, ptr %i.hn, align 8, !noalias !117900, !nonnull !67, !noundef !67 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %.val32.i.i = load i64, ptr %i.ho, align 8, !noalias !117900, !noundef !67 ; 5 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %.val32.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117919)
  call void @llvm.experimental.noalias.scope.decl(metadata !117920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !117921
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.hq, align 8, !noalias !117900 ; 6 uses
  %i.ht = load i64, ptr %i.hr, align 8, !noalias !117900 ; 9 uses
  %i.hu = inttoptr i64 %i.ht to ptr               ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.preheader.i.i
  %i.hv = phi i64 [ 0, %.preheader.preheader.i.i ], [ %i.hz, %.preheader.i.i.backedge ] ; 3 uses
  %i.hw = phi ptr [ %.val31.i.i, %.preheader.preheader.i.i ], [ %i.hy, %.preheader.i.i.backedge ] ; 3 uses
  %i.hx = icmp eq ptr %i.hw, %i.hp
  br i1 %i.hx, label %.loopexit14.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  %i.hz = add i64 %i.hv, 1                        ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !117922, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.backedge, label %bb.ay

.preheader.i.i.backedge:                          ; preds = %bb.ax, %.loopexit.i.i.i.i.i
  br label %.preheader.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ia = and i64 %i.hv, 4294967295               ; 2 uses
  %i.ib = icmp ugt i64 %.val32.i.i, %i.ia
  br i1 %i.ib, label %bb.az, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %i.ia ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !117923, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ie, align 8, !noalias !117923
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !117924
  %i.if = zext i32 %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i to i64
  %i.ig = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i, %bb.az, %bb.ay
  %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.ay ], [ 4294967295, %bb.az ] ; 2 uses
  %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.if, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.ay ], [ 4294967295, %bb.az ] ; 2 uses
  %i.ih = icmp ugt i64 %i.ht, %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ih, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i

.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = phi i64 [ %i.io, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ii ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !117925, !noundef !67
  %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load i32, ptr %i.il, align 8, !noalias !117925, !noundef !67
  %i.in = add i64 %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.io = zext i32 %i.im to i64                   ; 2 uses
  %i.ip = icmp ugt i64 %i.ht, %i.io
  br i1 %i.ip, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i

.split.i.i5.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iq = icmp ugt i64 %i.ht, %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i
  br i1 %i.iq, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i
  %i.ir = phi i64 [ %i.ix, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iw, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ]
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ir ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !noalias !117926, !noundef !67
  %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i, label %.split280.us.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.split280.us.i.i:                                 ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc44.i.i unwind label %bb.av, !noalias !117900

.noexc44.i.i:                                     ; preds = %.split280.us.i.i
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !noalias !117926, !noundef !67
  %i.iw = add i64 %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ix = zext i32 %i.iv to i64                   ; 2 uses
  %i.iy = icmp ugt i64 %i.ht, %i.ix
  br i1 %i.iy, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iw, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iz = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i2.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %.preheader.i.i.backedge, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i
  %i.ja = trunc i64 %i.hv to i32                  ; 2 uses
  %i.jb = add i64 %i.iz, -1                       ; 2 uses
  %i.jc = call i64 @llvm.umax.i64(i64 %i.iz, i64 4) ; 3 uses
  %i.jd = shl i64 %i.jc, 2                        ; 3 uses
  %i.je = icmp ugt i64 %i.iz, 4611686018427387903
  %.not.i.i.i43.i.i = icmp ugt i64 %i.jd, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.je, %.not.i.i.i43.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.bb, label %bb.ba, !prof !73

bb.ba:                                            ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !117927
  %i.jf = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !117927 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.bb, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.loopexit14.i.i.i.i.i:                            ; preds = %.preheader.i.i
  store i64 0, ptr %i.t, align 8, !alias.scope !117928, !noalias !117929
  %i.jh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.jh, align 8, !alias.scope !117928, !noalias !117929
  %i.ji = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ji, align 8, !alias.scope !117928, !noalias !117929
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ba, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i
  %.sroa.463.0.ph.i.i.i.i = phi i64 [ 4, %bb.ba ], [ 0, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.463.0.ph.i.i.i.i, i64 %i.jd) #61
          to label %.noexc45.i.i unwind label %bb.av, !noalias !117900

.noexc45.i.i:                                     ; preds = %bb.bb
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ba
  store i32 %i.ja, ptr %i.jf, align 4, !noalias !117921
  store i64 %i.jc, ptr %i.i, align 8, !noalias !117921
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !117921
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !117921
  call void @llvm.experimental.noalias.scope.decl(metadata !117930)
  call void @llvm.experimental.noalias.scope.decl(metadata !117931)
  %.not.i.i.i.i.i49.i.i282.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i.i49.i.i282.i.i, label %.preheader94.i.i.i.i, label %.noexc10.i.i.i.i.preheader

.preheader94.i.i.i.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.preheader94.i.i.i.i.backedge
  %.sroa.41.6.i.i.i.i = phi i64 [ %i.jm, %.preheader94.i.i.i.i.backedge ], [ %i.hz, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 3 uses
  %i.jj = phi ptr [ %i.jl, %.preheader94.i.i.i.i.backedge ], [ %i.hy, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 3 uses
  %i.jk = icmp eq ptr %i.jj, %i.hp
  br i1 %i.jk, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader94.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jm = add i64 %.sroa.41.6.i.i.i.i, 1          ; 2 uses
  %.val.i.i.i.i.i.i.i.i20.i.i.i.i = load ptr, ptr %i.jj, align 8, !noalias !117932, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i21.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i20.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i21.i.i.i.i, label %.preheader94.i.i.i.i.backedge, label %bb.bd

.preheader94.i.i.i.i.backedge:                    ; preds = %bb.bc, %.loopexit.i.i28.i.i.i.i
  br label %.preheader94.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jn = and i64 %.sroa.41.6.i.i.i.i, 4294967295 ; 2 uses
  %i.jo = icmp ugt i64 %.val32.i.i, %i.jn
  br i1 %i.jo, label %bb.be, label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %i.jn ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !117933, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i39.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i39.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i: ; preds = %bb.be
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i41.i.i.i.i = load i32, ptr %i.jr, align 8, !noalias !117933
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i43.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i42.i.i.i.i, align 4, !noalias !117934
  %i.js = zext i32 %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i43.i.i.i.i to i64
  %i.jt = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i41.i.i.i.i to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i:          ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i, %bb.be, %bb.bd
  %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i = phi i64 [ %i.jt, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i ], [ 4294967295, %bb.bd ], [ 4294967295, %bb.be ] ; 2 uses
  %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i = phi i64 [ %i.js, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i ], [ 4294967295, %bb.bd ], [ 4294967295, %bb.be ] ; 2 uses
  %i.ju = icmp ugt i64 %i.ht, %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i
  br i1 %i.ju, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i

.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i:           ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i
  %i.jv = phi i64 [ %i.kb, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ]
  %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i = phi i64 [ %i.ka, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !117935, !noundef !67
  %.not.i.us.i.i.i.i.i.i.i.i.i.i36.i.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.us.i.i.i.i.i.i.i.i.i.i36.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i: ; preds = %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !noalias !117935, !noundef !67
  %i.ka = add i64 %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, 1 ; 2 uses
  %i.kb = zext i32 %i.jz to i64                   ; 2 uses
  %i.kc = icmp ugt i64 %i.ht, %i.kb
  br i1 %i.kc, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i

.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i:            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i
  %.sroa.0.0.i.i2.i.i.i.i.i.i27.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ], [ %i.ka, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i ]
  %i.kd = icmp ugt i64 %i.ht, %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i
  br i1 %i.kd, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i, label %.loopexit.i.i28.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i:            ; preds = %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i
  %i.ke = phi i64 [ %i.kk, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ], [ %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ]
  %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %i.kj, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ], [ 0, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ]
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ke ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !117936, !noundef !67
  %.not43.i.i.i10.i.i.i.i.i.i.i.i32.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not43.i.i.i10.i.i.i.i.i.i.i.i32.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i, !prof !71

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !117936, !noundef !67
  %i.kj = add i64 %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i31.i.i.i.i, 1 ; 2 uses
  %i.kk = zext i32 %i.ki to i64                   ; 2 uses
  %i.kl = icmp ugt i64 %i.ht, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i, label %.loopexit.i.i28.i.i.i.i

.loopexit.i.i28.i.i.i.i:                          ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i29.i.i.i.i = phi i64 [ 0, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ], [ %i.kj, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ]
  %i.km = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i29.i.i.i.i, %.sroa.0.0.i.i2.i.i.i.i.i.i27.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i49.i.i.i.i = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i.i.i49.i.i.i.i, label %.preheader94.i.i.i.i.backedge, label %..lr.ph.i.i.i.i_crit_edge.i.i

..lr.ph.i.i.i.i_crit_edge.i.i:                    ; preds = %.loopexit.i.i28.i.i.i.i
  %i.kn = trunc i64 %.sroa.41.6.i.i.i.i to i32
  br label %.noexc10.i.i.i.i.preheader

.noexc10.i.i.i.i.preheader:                       ; preds = %..lr.ph.i.i.i.i_crit_edge.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.41.0.i.i.i.i.ph = phi i64 [ %i.jm, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.hz, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.3360.0.i.i.i.i.ph = phi ptr [ %i.jl, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.hy, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.10.0.i.i.in.i.i.ph = phi i64 [ %i.km, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.jb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph = phi i32 [ %i.kn, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.ja, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  br label %.noexc10.i.i.i.i.outer

..noexc10.i.i.i.loopexit_crit_edge.i:             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ko = trunc i64 %.sroa.41.2.i.i.i.i to i32
  br label %.noexc10.i.i.i.i.outer

.noexc10.i.i.i.i.outer:                           ; preds = %.noexc10.i.i.i.i.preheader, %..noexc10.i.i.i.loopexit_crit_edge.i
  %.ph = phi ptr [ %i.jf, %.noexc10.i.i.i.i.preheader ], [ %i.ku, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.41.0.i.i.i.i.ph613 = phi i64 [ %.sroa.41.0.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.ld, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.3360.0.i.i.i.i.ph614 = phi ptr [ %.sroa.3360.0.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.lc, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.10.0.i.i.in.i.i.ph615 = phi i64 [ %.sroa.10.0.i.i.in.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.md, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.ph616 = phi i64 [ %i.jc, %.noexc10.i.i.i.i.preheader ], [ %i.kv, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.ph617 = phi i64 [ 1, %.noexc10.i.i.i.i.preheader ], [ %i.kx, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph618 = phi i32 [ %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.ko, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  br label %.noexc10.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %.noexc10.i.i.i.i.outer, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.kp = phi ptr [ %i.ku, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph, %.noexc10.i.i.i.i.outer ]
  %.sroa.10.0.i.i.in.i.i = phi i64 [ %.sroa.10.0.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.in.i.i.ph615, %.noexc10.i.i.i.i.outer ] ; 2 uses
  %i.kq = phi i64 [ %i.kv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph616, %.noexc10.i.i.i.i.outer ] ; 3 uses
  %i.kr = phi i64 [ %i.kx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph617, %.noexc10.i.i.i.i.outer ] ; 4 uses
  %.sroa.10.0.i.i.i.i = add i64 %.sroa.10.0.i.i.in.i.i, -1 ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, 2305843009213693952
  call void @llvm.assume(i1 %i.ks)
  %i.kt = icmp eq i64 %i.kr, %i.kq
  br i1 %i.kt, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.kq, i64 noundef %.sroa.10.0.i.i.in.i.i, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117921

.noexc9.i.i.i.i:                                  ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i
  %.pre3.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !70, !alias.scope !117937, !noalias !117938
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !117937, !noalias !117938
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i, %.noexc10.i.i.i.i
  %i.ku = phi ptr [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.kp, %.noexc10.i.i.i.i ] ; 3 uses
  %i.kv = phi i64 [ %.pre3.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.kq, %.noexc10.i.i.i.i ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kr
  store i32 %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph618, ptr %i.kw, align 4, !noalias !117939
  %i.kx = add nuw nsw i64 %i.kr, 1                ; 3 uses
  store i64 %i.kx, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !117937, !noalias !117938
  %i.ky = load ptr, ptr %i.hq, align 8, !noalias !117900 ; 3 uses
  %i.kz = load i64, ptr %i.hr, align 8, !noalias !117900 ; 5 uses
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 8, !noalias !117900 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !117900 ; 2 uses
  %.not.i.i.i.i.i.i.i.i236.i = icmp eq i64 %.sroa.10.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i236.i, label %.preheader.i.i.i.i, label %.noexc10.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.backedge
  %.sroa.41.2.i.i.i.i = phi i64 [ %i.ld, %.preheader.i.i.i.i.backedge ], [ %.sroa.41.0.i.i.i.i.ph613, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 3 uses
  %i.la = phi ptr [ %i.lc, %.preheader.i.i.i.i.backedge ], [ %.sroa.3360.0.i.i.i.i.ph614, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 3 uses
  %i.lb = icmp eq ptr %i.la, %i.hp
  br i1 %i.lb, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit313.i.i, label %bb.bf

bb.bf:                                            ; preds = %.preheader.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.ld = add i64 %.sroa.41.2.i.i.i.i, 1          ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.la, align 8, !noalias !117940, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.backedge, label %bb.bg

.preheader.i.i.i.i.backedge:                      ; preds = %bb.bf, %.loopexit.i.i.i.i.i.i
  br label %.preheader.i.i.i.i
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx13token_swapper19graph_token_swapper:bb.a
  %i.ta = trunc i128 %i.sz to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133413)
  call void @llvm.experimental.noalias.scope.decl(metadata !133414)
  %i.tb = lshr i64 %i.ta, 57
  %i.tc = trunc nuw nsw i64 %i.tb to i8
  %i.td = load i64, ptr %i.hz, align 8, !alias.scope !133415, !noalias !133416, !noundef !67 ; 2 uses
  %i.te = load ptr, ptr %i.fc, align 8, !alias.scope !133415, !noalias !133416, !nonnull !67, !noundef !67 ; 2 uses
  %i.tf = insertelement <16 x i8> poison, i8 %i.tc, i64 0
  %i.tg = shufflevector <16 x i8> %i.tf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %bb.ck
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ck ], [ %i.tx, %bb.cn ]
  %.pn.i.i.i.i = phi i64 [ %i.ta, %bb.ck ], [ %i.ty, %bb.cn ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.td ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.th, align 1, !noalias !133417 ; 2 uses
  %i.ti = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.tg
  %i.tj = bitcast <16 x i1> %i.ti to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.tj, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cl, %bb.cm
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.tw, %bb.cm ], [ %i.tj, %bb.cl ] ; 3 uses
  %i.tk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.tl = zext nneg i16 %i.tk to i64
  %i.tm = add i64 %.sroa.01.0.i.i.i.i.i, %i.tl
  %i.tn = and i64 %i.tm, %i.td
  %i.to = sub nsw i64 0, %i.tn
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.to ; 2 uses
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -8
  %.val2.i.i.i.i.i = load i32, ptr %i.tq, align 4, !noalias !133418, !noundef !67
  %i.tr = icmp eq i32 %.val2.i.i.i.i.i, %i.sp
  br i1 %i.tr, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_E9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.cm, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.cm, %bb.cl
  %i.ts = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.tt = bitcast <16 x i1> %i.ts to i16
  %i.tu = icmp eq i16 %i.tt, 0
  br i1 %i.tu, label %bb.cn, label %select.unfold.i.i, !prof !71

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i
  %i.tv = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.tw = and i16 %i.tv, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i116.i.i = icmp eq i16 %i.tw, 0
  br i1 %.not.i.not.i.i116.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i
  %i.tx = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ty = add i64 %.sroa.01.0.i.i.i.i.i, %i.tx
  br label %bb.cl

bb.co:                                            ; preds = %bb.ch
  %i.tz = load i64, ptr %i.am, align 8, !range !68, !alias.scope !133305, !noalias !133311, !noundef !67
  %i.ua = trunc nuw i64 %i.tz to i1
  br i1 %i.ua, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ub = load i64, ptr %i.fa, align 8, !alias.scope !133305, !noalias !133311, !noundef !67
  %i.uc = mul i64 %i.ub, 6364136223846793005
  %i.ud = add i64 %i.uc, -6812164046247290893     ; 4 uses
  %i.ue = lshr i64 %i.ud, 45
  %i.uf = lshr i64 %i.ud, 27
  %i.ug = xor i64 %i.ue, %i.uf
  %i.uh = trunc i64 %i.ug to i32                  ; 2 uses
  %i.ui = lshr i64 %i.ud, 59
  %i.uj = trunc nuw nsw i64 %i.ui to i32
  %i.uk = call noundef i32 @llvm.fshr.i32(i32 %i.uh, i32 %i.uh, i32 range(i32 0, 32) %i.uj)
  %i.ul = mul i64 %i.ud, 6364136223846793005
  %i.um = add i64 %i.ul, -6812164046247290893     ; 4 uses
  %i.un = lshr i64 %i.um, 45
  %i.uo = lshr i64 %i.um, 27
  %i.up = xor i64 %i.un, %i.uo
  %i.uq = trunc i64 %i.up to i32                  ; 2 uses
  %i.ur = lshr i64 %i.um, 59
  %i.us = trunc nuw nsw i64 %i.ur to i32
  %i.ut = call noundef i32 @llvm.fshr.i32(i32 %i.uq, i32 %i.uq, i32 range(i32 0, 32) %i.us)
  %i.uu = mul i64 %i.um, 6364136223846793005
  %i.uv = add i64 %i.uu, -6812164046247290893     ; 4 uses
  %i.uw = lshr i64 %i.uv, 45
  %i.ux = lshr i64 %i.uv, 27
  %i.uy = xor i64 %i.uw, %i.ux
  %i.uz = trunc i64 %i.uy to i32                  ; 2 uses
  %i.va = lshr i64 %i.uv, 59
  %i.vb = trunc nuw nsw i64 %i.va to i32
  %i.vc = call noundef i32 @llvm.fshr.i32(i32 %i.uz, i32 %i.uz, i32 range(i32 0, 32) %i.vb)
  %i.vd = mul i64 %i.uv, 6364136223846793005
  %i.ve = add i64 %i.vd, -6812164046247290893     ; 4 uses
  %i.vf = lshr i64 %i.ve, 45
  %i.vg = lshr i64 %i.ve, 27
  %i.vh = xor i64 %i.vf, %i.vg
  %i.vi = trunc i64 %i.vh to i32                  ; 2 uses
  %i.vj = lshr i64 %i.ve, 59
  %i.vk = trunc nuw nsw i64 %i.vj to i32
  %i.vl = call noundef i32 @llvm.fshr.i32(i32 %i.vi, i32 %i.vi, i32 range(i32 0, 32) %i.vk)
  %i.vm = mul i64 %i.ve, 6364136223846793005
  %i.vn = add i64 %i.vm, -6812164046247290893     ; 4 uses
  %i.vo = lshr i64 %i.vn, 45
  %i.vp = lshr i64 %i.vn, 27
  %i.vq = xor i64 %i.vo, %i.vp
  %i.vr = trunc i64 %i.vq to i32                  ; 2 uses
  %i.vs = lshr i64 %i.vn, 59
  %i.vt = trunc nuw nsw i64 %i.vs to i32
  %i.vu = call noundef i32 @llvm.fshr.i32(i32 %i.vr, i32 %i.vr, i32 range(i32 0, 32) %i.vt)
  %i.vv = mul i64 %i.vn, 6364136223846793005
  %i.vw = add i64 %i.vv, -6812164046247290893     ; 4 uses
  %i.vx = lshr i64 %i.vw, 45
  %i.vy = lshr i64 %i.vw, 27
  %i.vz = xor i64 %i.vx, %i.vy
  %i.wa = trunc i64 %i.vz to i32                  ; 2 uses
  %i.wb = lshr i64 %i.vw, 59
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = call noundef i32 @llvm.fshr.i32(i32 %i.wa, i32 %i.wa, i32 range(i32 0, 32) %i.wc)
  %i.we = mul i64 %i.vw, 6364136223846793005
  %i.wf = add i64 %i.we, -6812164046247290893     ; 4 uses
  %i.wg = lshr i64 %i.wf, 45
  %i.wh = lshr i64 %i.wf, 27
  %i.wi = xor i64 %i.wg, %i.wh
  %i.wj = trunc i64 %i.wi to i32                  ; 2 uses
  %i.wk = lshr i64 %i.wf, 59
  %i.wl = trunc nuw nsw i64 %i.wk to i32
  %i.wm = call noundef i32 @llvm.fshr.i32(i32 %i.wj, i32 %i.wj, i32 range(i32 0, 32) %i.wl)
  %i.wn = mul i64 %i.wf, 6364136223846793005
  %i.wo = add i64 %i.wn, -6812164046247290893     ; 3 uses
  %i.wp = lshr i64 %i.wo, 45
  %i.wq = lshr i64 %i.wo, 27
  %i.wr = xor i64 %i.wp, %i.wq
  %i.ws = trunc i64 %i.wr to i32                  ; 2 uses
  %i.wt = lshr i64 %i.wo, 59
  %i.wu = trunc nuw nsw i64 %i.wt to i32
  %i.wv = call noundef i32 @llvm.fshr.i32(i32 %i.ws, i32 %i.ws, i32 range(i32 0, 32) %i.wu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !133419
  store i32 %i.uk, ptr %i.o, align 4, !noalias !133419
  %.sroa.5.0..sroa_idx.i118.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.ut, ptr %.sroa.5.0..sroa_idx.i118.i.i, align 4, !noalias !133419
  %.sroa.6.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.vc, ptr %.sroa.6.0..sroa_idx.i119.i.i, align 4, !noalias !133419
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.vl, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !133419
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.vu, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !133419
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %i.wd, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !133419
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.wm, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !133419
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.wv, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !133419
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.o)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.cf, !noalias !133308

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !133419
  %.pre547.i.i = load i128, ptr %i.af, align 16, !noalias !133309
  %.phi.trans.insert548.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.pre549.i.i = load i128, ptr %.phi.trans.insert548.i.i, align 16, !noalias !133309
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !133309
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.ae)
          to label %bb.cr unwind label %bb.cf, !noalias !133308

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !133420)
  call void @llvm.experimental.noalias.scope.decl(metadata !133421)
  %i.ww = load i32, ptr %i.ae, align 16, !range !76, !alias.scope !133421, !noalias !133422, !noundef !67
  %i.wx = trunc nuw i32 %i.ww to i1
  br i1 %i.wx, label %bb.cs, label %bb.ct, !prof !71

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !133423
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.wz = load i32, ptr %i.wy, align 4, !range !180, !alias.scope !133421, !noalias !133422, !noundef !67
  store i32 %i.wz, ptr %i.aa, align 4, !noalias !133423
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1605) #60
          to label %.noexc31.i.i unwind label %bb.cf, !noalias !133308

.noexc31.i.i:                                     ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.xb = load i128, ptr %i.xa, align 16, !alias.scope !133421, !noalias !133422, !noundef !67 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.xd = load i128, ptr %i.xc, align 16, !alias.scope !133421, !noalias !133422, !noundef !67 ; 2 uses
  store i128 %i.xb, ptr %i.af, align 16, !alias.scope !133420, !noalias !133424
  %i.xe = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i128 %i.xd, ptr %i.xe, align 16, !alias.scope !133420, !noalias !133424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !133309
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.xf = phi i128 [ %.pre549.i.i, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.xd, %bb.ct ] ; 2 uses
  %i.xg = phi i128 [ %.pre547.i.i, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.xb, %bb.ct ]
  %i.xh = load i64, ptr %i.ez, align 8, !alias.scope !133305, !noalias !133311, !noundef !67 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !133425
  %i.xi = icmp eq i64 %i.xh, 0
  br i1 %i.xi, label %.thread379.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xj = add i64 %i.xh, -1                       ; 2 uses
  %i.xk = mul i128 %i.xg, 47026247687942121848144207491837523525
  %i.xl = add i128 %i.xk, %i.xf                   ; 4 uses
  %i.xm = lshr i128 %i.xl, 122
  %i.xn = trunc nuw nsw i128 %i.xm to i64
  %i.xo = lshr i128 %i.xl, 64
  %i.xp = xor i128 %i.xo, %i.xl
  %i.xq = trunc i128 %i.xp to i64                 ; 2 uses
  %i.xr = call noundef i64 @llvm.fshr.i64(i64 %i.xq, i64 %i.xq, i64 %i.xn)
  %i.xs = call i64 @llvm.umax.i64(i64 %i.xh, i64 4) ; 4 uses
  %i.xt = shl i64 %i.xs, 3                        ; 3 uses
  %i.xu = icmp ugt i64 %i.xh, 2305843009213693951
  %.not.i.i121.i.i = icmp ugt i64 %i.xt, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.xu, %.not.i.i121.i.i
  br i1 %or.cond.i.i.i.i, label %bb.cx, label %bb.cw, !prof !73

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !133426
  %i.xv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.xt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !133426 ; 5 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %bb.cx, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.416.0.ph.i.i.i = phi i64 [ 8, %bb.cw ], [ 0, %bb.cv ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i.i.i, i64 %i.xt) #61
          to label %.noexc125.i.i unwind label %bb.cf, !noalias !133308

.noexc125.i.i:                                    ; preds = %bb.cx
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cw
  store i64 %i.xr, ptr %i.xv, align 8, !noalias !133427
  store i64 %i.xs, ptr %i.n, align 8, !noalias !133425
  %.sroa.4.0..sroa_idx.i122.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.xv, ptr %.sroa.4.0..sroa_idx.i122.i.i, align 8, !noalias !133425
  %.sroa.6.0..sroa_idx.i123.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i123.i.i, align 8, !noalias !133425
  call void @llvm.experimental.noalias.scope.decl(metadata !133428)
  call void @llvm.experimental.noalias.scope.decl(metadata !133429)
  %i.xx = icmp eq i64 %i.xj, 0
  br i1 %i.xx, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cy
  %i.xy = phi ptr [ %i.yn, %bb.cy ], [ %i.xv, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.xz = phi i64 [ %i.yo, %bb.cy ], [ %i.xs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  %i.ya = phi i64 [ %i.yq, %bb.cy ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %.val68.i.i.i.i.i = phi i64 [ %i.yc, %bb.cy ], [ %i.xj, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.yb = phi i128 [ %i.ye, %bb.cy ], [ %i.xl, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.yc = add i64 %.val68.i.i.i.i.i, -1           ; 2 uses
  %i.yd = mul i128 %i.yb, 47026247687942121848144207491837523525
  %i.ye = add i128 %i.yd, %i.xf                   ; 4 uses
  %i.yf = lshr i128 %i.ye, 122
  %i.yg = trunc nuw nsw i128 %i.yf to i64
  %i.yh = lshr i128 %i.ye, 64
  %i.yi = xor i128 %i.yh, %i.ye
  %i.yj = trunc i128 %i.yi to i64                 ; 2 uses
  %i.yk = call noundef i64 @llvm.fshr.i64(i64 %i.yj, i64 %i.yj, i64 %i.yg)
  %i.yl = icmp samesign ult i64 %i.ya, 1152921504606846976
  call void @llvm.assume(i1 %i.yl)
  %i.ym = icmp eq i64 %i.ya, %i.xz
  br i1 %i.ym, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.cy

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i47
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.xz, i64 noundef %.val68.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i.i unwind label %bb.cz, !noalias !133427

.noexc.i.i.i:                                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre9.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !70, !alias.scope !133430, !noalias !133431
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i122.i.i, align 8, !alias.scope !133430, !noalias !133431
  br label %bb.cy

bb.cy:                                            ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i47
  %i.yn = phi ptr [ %i.xy, %.lr.ph.i.i.i.i.i47 ], [ %.pre.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %i.yo = phi i64 [ %i.xz, %.lr.ph.i.i.i.i.i47 ], [ %.pre9.i.i.i.i.i, %.noexc.i.i.i ]
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %i.ya
  store i64 %i.yk, ptr %i.yp, align 8, !noalias !133432
  %i.yq = add nuw nsw i64 %i.ya, 1                ; 2 uses
  store i64 %i.yq, ptr %.sroa.6.0..sroa_idx.i123.i.i, align 8, !alias.scope !133430, !noalias !133431
  %i.yr = icmp eq i64 %i.yc, 0
  br i1 %i.yr, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i.i.i47

bb.cz:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.n, align 8, !noalias !133425 ; 2 uses
  %i.yt = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.yt, label %.body102.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i124.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i124.i.i: ; preds = %bb.cz
  %.val9.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i122.i.i, align 8, !noalias !133425, !nonnull !67, !noundef !67
  %i.yu = shl nuw i64 %.val8.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.yu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !133427
  br label %.body102.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.cy
  %.sroa.0217.0.copyload218.pre.i.i = load i64, ptr %i.n, align 8, !noalias !133433
  %.sroa.5219.0.copyload221.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i122.i.i, align 8, !noalias !133433
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.5219.0.copyload221.i.i = phi ptr [ %.sroa.5219.0.copyload221.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.xv, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %.sroa.0217.0.copyload218.i.i = phi i64 [ %.sroa.0217.0.copyload218.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.xs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !133425
  %i.yv = ptrtoint ptr %.sroa.5219.0.copyload221.i.i to i64
  %.val50.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !133305, !noalias !133311, !nonnull !67, !align !98, !noundef !67
  %i.yw = getelementptr i8, ptr %.val50.i.i, i64 48
  %.val.i128.i.i = load i64, ptr %i.yw, align 8, !noalias !133308, !noundef !67
  %i.yx = load i64, ptr %i.fb, align 8, !alias.scope !133305, !noalias !133311, !noundef !67
  %.not412.i.i = icmp ult i64 %.val.i128.i.i, %i.yx
  br i1 %.not412.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.thread379.i.i:                                   ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !133425
  %.val50383.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !133305, !noalias !133311, !nonnull !67, !align !98, !noundef !67
  %i.yy = getelementptr i8, ptr %.val50383.i.i, i64 48
  %.val.i128384.i.i = load i64, ptr %i.yy, align 8, !noalias !133308, !noundef !67
  %i.yz = load i64, ptr %i.fb, align 8, !alias.scope !133305, !noalias !133311, !noundef !67
  %.not413.i.i = icmp ult i64 %.val.i128384.i.i, %i.yz
  br i1 %.not413.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread390.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %.thread379.i.i, %.loopexit.i.i
  %i.za = phi i64 [ 8, %.thread379.i.i ], [ %i.yv, %.loopexit.i.i ]
  %.sroa.0217.0388.i.i = phi i64 [ 0, %.thread379.i.i ], [ %.sroa.0217.0.copyload218.i.i, %.loopexit.i.i ]
  %i.zb = inttoptr i64 %.sroa.0217.0388.i.i to ptr
  %i.zc = inttoptr i64 %i.xh to ptr
  br label %bb.dh

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.i.i
  %i.zd = icmp samesign ult i64 %i.xh, 1152921504606846976
  call void @llvm.assume(i1 %i.zd)
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5219.0.copyload221.i.i, i64 %i.xh ; 2 uses
  %.not.i132.i.i = icmp eq ptr %.sroa.5219.0.copyload221.i.i, null
  br i1 %.not.i132.i.i, label %bb.dh, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread390.i.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread390.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i, %.thread379.i.i
  %i.zf = phi ptr [ %i.ze, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ inttoptr (i64 8 to ptr), %.thread379.i.i ] ; 2 uses
  %.sroa.5219.0387396.i.i = phi ptr [ %.sroa.5219.0.copyload221.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ inttoptr (i64 8 to ptr), %.thread379.i.i ] ; 7 uses
  %.val5.i.i.i.i.i = phi i64 [ %.sroa.0217.0.copyload218.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %.thread379.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !133434
  store ptr %.sroa.5219.0387396.i.i, ptr %i.m, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.0..sroa_idx241.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.5219.0387396.i.i, ptr %.sroa.6240.0..sroa_idx241.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.9.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val5.i.i.i.i.i, ptr %.sroa.6240.sroa.9.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.10.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.zf, ptr %.sroa.6240.sroa.10.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.11.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.am, ptr %.sroa.6240.sroa.11.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.12.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.aj, ptr %.sroa.6240.sroa.12.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.13.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ai, ptr %.sroa.6240.sroa.13.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.14.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.ah, ptr %.sroa.6240.sroa.14.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  %.sroa.6240.sroa.15.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.ag, ptr %.sroa.6240.sroa.15.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, align 8, !alias.scope !133435, !noalias !133436
  call void @llvm.experimental.noalias.scope.decl(metadata !133437)
  call void @llvm.experimental.noalias.scope.decl(metadata !133438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !133439
  call void @llvm.experimental.noalias.scope.decl(metadata !133440)
  call void @llvm.experimental.noalias.scope.decl(metadata !133441)
  %i.zg = icmp eq ptr %.sroa.5219.0387396.i.i, %i.zf
  br i1 %i.zg, label %.thread.i.i.i.i.i, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread390.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.5219.0387396.i.i, i64 8
  store ptr %i.zh, ptr %.sroa.6240.0..sroa_idx241.i.i, align 8, !alias.scope !133442, !noalias !133443
  %i.zi = load i64, ptr %.sroa.5219.0387396.i.i, align 8, !noalias !133444, !noundef !67
  invoke fastcc void @_RNCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB7_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_NtB1k_10UndirectedEE3maps0_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.6240.sroa.11.0..sroa.6240.0..sroa_idx241.sroa_idx.i.i, i64 noundef %i.zi) #64
          to label %.noexc.i.i.i.i.i unwind label %bb.df, !noalias !133445

.noexc.i.i.i.i.i:                                 ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !133439 ; 4 uses
  %.not.i.i.i.i135.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i135.i.i, label %.thread.i.i.i.i.i, label %bb.da

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread390.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !133439
  %i.zj = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.zj, label %_RINvMs0_Cs7vnRxUTcH2t_10rayon_condINtB6_12CondIteratorINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtBX_3vec8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1Z_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB3d_10UndirectedEE3maps0_0EINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEB1R_EE10min_by_keyINtNtB5U_6result6ResultjNtB1Z_14MapNotPossibleENCB1T_s1_0ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %.noexc.i.i.i.i.i
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.48.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !133439 ; 2 uses
  %.sroa.5.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i.i, align 8, !noalias !133439 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !133439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !133446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !133447
  call void @llvm.experimental.noalias.scope.decl(metadata !133448)
  call void @llvm.experimental.noalias.scope.decl(metadata !133449)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !133450, !noalias !133451 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !133450, !noalias !133451 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !133450, !noalias !133451 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !133450, !noalias !133451, !nonnull !67, !noundef !67 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.not.not21.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.9.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.not21.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout25graph_kamada_kawai_layout:bb.a
bb.bp:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i, %bb.bn, %bb.ab
  %.sroa.7219.0.ph.i = phi i64 [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ 0, %bb.bn ], [ %.sroa.064.0.copyload.i.i, %bb.ab ]
  %.sroa.12.0.ph.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ null, %bb.bn ], [ %.sroa.465.0.copyload.i.i, %bb.ab ]
  %.sroa.21.0.ph.i = phi i64 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ undef, %bb.bn ], [ %.sroa.21.32.copyload.i, %bb.ab ]
  %.sroa.20.0.ph.i = phi ptr [ @518, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ @518, %bb.bn ], [ %.sroa.20.32.copyload.i, %bb.ab ]
  %.sroa.19.0.ph.i = phi ptr [ %i.dd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ %i.dd, %bb.bn ], [ %.sroa.19.32.copyload.i, %bb.ab ]
  %.sroa.17.0.ph.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ null, %bb.bn ], [ %.sroa.17.32.copyload.i, %bb.ab ]
  %.sroa.14.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ 1, %bb.bn ], [ %.sroa.566.0.copyload.i.i, %bb.ab ]
  %i.is = phi <2 x i32> [ <i32 3, i32 undef>, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ <i32 3, i32 undef>, %bb.bn ], [ %i.cq, %bb.ab ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7219.0.ph.i, ptr %i.it, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.4294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.4294.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.5295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.0.ph.i, ptr %.sroa.5295.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.6296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.0.ph.i, ptr %.sroa.6296.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.19.0.ph.i, ptr %.sroa.7297.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.8298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.20.0.ph.i, ptr %.sroa.8298.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.9299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.21.0.ph.i, ptr %.sroa.9299.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  %.sroa.10300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i32> %i.is, ptr %.sroa.10300.0..sroa_idx.i, align 8, !alias.scope !138112, !noalias !138122
  store i64 1, ptr %0, align 8, !alias.scope !138112, !noalias !138122
  %i.iu = icmp eq i64 %.sroa.0212.0.i, 0
  br i1 %i.iu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit129.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i127.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i127.i: ; preds = %bb.bp
  %i.iv = shl nuw i64 %.sroa.0212.0.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138182
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit129.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i117.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphudNtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !138120
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity15conn_components20connected_componentsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2E_5types3any5PyAnyEB2z_NtB1z_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %bb.br unwind label %bb.bq, !noalias !138119

.body139.i:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.bq
  %.sroa.023.4.i = phi i1 [ %.sroa.023.6.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ true, %bb.bq ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.022.4.i = phi i1 [ %.sroa.022.6.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ true, %bb.bq ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.iy, %bb.bq ], [ %i.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ %.pn.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ %.pn.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %i.iw = icmp eq i64 %.sroa.414.0.i.i.i, 0
  br i1 %i.iw, label %.body123.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i130.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i130.i: ; preds = %.body139.i
  %i.ix = shl nuw i64 %.sroa.414.0.i.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138120
  br label %.body123.i

bb.bq:                                            ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

bb.br:                                            ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !138120
  %i.iz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !138120, !nonnull !67, !noundef !67 ; 15 uses
  %i.jb = load i64, ptr %i.x, align 8, !range !70, !noalias !138120, !noundef !67 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !138120, !noundef !67 ; 3 uses
  %i.je = icmp ult i64 %i.jd, 230584300921369396
  call void @llvm.assume(i1 %i.je)
  %.idx.i = mul nuw nsw i64 %i.jd, 40
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138183)
  call void @llvm.experimental.noalias.scope.decl(metadata !138184)
  %i.jg = mul i64 %i.jb, 40                       ; 9 uses
  %i.jh = udiv i64 %i.jg, 24                      ; 2 uses
  %.not76.i.i.i.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not76.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.body.i.i131.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = ptrtoint ptr %i.kf to i64
  %i.jk = sub nuw i64 %i.ji, %i.jj
  %i.jl = udiv exact i64 %i.jk, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !138185), !noalias !138184
  %i.jm = icmp eq ptr %i.jf, %i.kf
  br i1 %i.jm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i

.lr.ph.i.i.i.i1.i.i:                              ; preds = %.body.i.i131.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.jo, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %.body.i.i131.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.jo = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !alias.scope !138185, !noalias !138186 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jn, i64 8
  %.val9.i.i.i.i.i.i = load i64, ptr %i.jp, align 8, !alias.scope !138185, !noalias !138186, !noundef !67 ; 4 uses
  %i.jq = icmp eq i64 %.val9.i.i.i.i.i.i, 0
  br i1 %i.jq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i1.i.i
  %i.jr = shl i64 %.val9.i.i.i.i.i.i, 2
  %i.js = icmp slt i64 %.val9.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.js), !noalias !138184
  %i.jt = and i64 %i.jr, -16                      ; 2 uses
  %i.ju = add i64 %i.jt, 16                       ; 2 uses
  %i.jv = add nsw i64 %.val9.i.i.i.i.i.i, 17
  %i.jw = add i64 %i.jv, %i.ju                    ; 4 uses
  %i.jx = icmp uge i64 %i.jw, %i.ju
  %i.jy = icmp ult i64 %i.jw, 9223372036854775793
  call void @llvm.assume(i1 %i.jx), !noalias !138184
  call void @llvm.assume(i1 %i.jy), !noalias !138184
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i.i) ], !noalias !138184
  %i.jz = icmp eq i64 %i.jw, 0
  br i1 %i.jz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ka = sub nuw nsw i64 -16, %i.jt
  %i.kb = getelementptr inbounds i8, ptr %.val8.i.i.i.i.i.i, i64 %i.ka
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kb, i64 noundef %i.jw, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !138187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bs, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i1.i.i
  %i.kc = icmp eq i64 %i.jo, %i.jl
  br i1 %i.kc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.body.i.i131.i
  %i.kd = icmp eq i64 %i.jb, 0
  br i1 %i.kd, label %.body139.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ja, i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138186
  br label %.body139.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.br, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_10UndirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i
  %i.ke = phi ptr [ %i.kf, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_10UndirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i ], [ %i.ja, %bb.br ] ; 4 uses
  %.sroa.4.077.i.i.i.i.i.i = phi ptr [ %i.of, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_10UndirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i ], [ %i.ja, %bb.br ] ; 6 uses
  %.sroa.013.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ke, align 8, !noalias !138188, !nonnull !67, !noundef !67 ; 6 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.sroa.414.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !138188 ; 8 uses
  %.sroa.615.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %.sroa.615.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.615.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !138188 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 5 uses
  %i.kg = icmp eq i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.kg, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.bv

.body.i.i.i.i.i.i.i.i:                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.bu
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ng, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i ], [ %i.kt, %bb.bu ], [ %i.mx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kh = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.kh, label %.body.i.i.i.i.i.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ki = shl i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 2
  %i.kj = icmp slt i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.kj), !noalias !138189
  %i.kk = and i64 %i.ki, -16                      ; 2 uses
  %i.kl = add i64 %i.kk, 16                       ; 2 uses
  %i.km = add nsw i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 17
  %i.kn = add i64 %i.km, %i.kl                    ; 4 uses
  %i.ko = icmp uge i64 %i.kn, %i.kl
  %i.kp = icmp ult i64 %i.kn, 9223372036854775793
  call void @llvm.assume(i1 %i.ko), !noalias !138189
  call void @llvm.assume(i1 %i.kp), !noalias !138189
  %i.kq = icmp eq i64 %i.kn, 0
  br i1 %i.kq, label %.body.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = sub nuw nsw i64 -16, %i.kk
  %i.ks = getelementptr inbounds i8, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, i64 %i.kr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !138190
  br label %.body.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bx
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, align 16, !noalias !138191
  %i.ku = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kx = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kw, %bb.bv ] ; 2 uses
  %i.ky = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.0.copyload.i.i.i.i.i.i, %bb.bv ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.kx, align 16, !noalias !138192
  %i.kz = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -64 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.kz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi ptr [ %i.kw, %bb.bv ], [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.copyload.i.i.i.i.i.i, %bb.bv ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.kv, %bb.bv ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lc = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ld = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.le = zext nneg i16 %i.ld to i64
  %i.lf = and i16 %i.lc, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = sub nsw i64 0, %i.le
  %i.lh = getelementptr inbounds [4 x i8], ptr %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.lg
  %i.li = add i64 %.sroa.615.0.copyload.i.i.i.i.i.i, -1 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 -4
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.lj, align 4, !noalias !138193, !noundef !67
  %i.lk = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ll = call i64 @llvm.umax.i64(i64 %.sroa.615.0.copyload.i.i.i.i.i.i, i64 4) ; 3 uses
  %i.lm = shl i64 %i.ll, 3                        ; 3 uses
  %i.ln = icmp ugt i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.lm, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ln, %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw, !prof !73

bb.bw:                                            ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !138194
  %i.lo = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138194 ; 5 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bx, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.416.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.bw ], [ 0, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.lm) #61
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.bu, !noalias !138190

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bx
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  store i64 %i.lk, ptr %i.lo, align 8, !noalias !138195
  %i.lq = icmp eq i64 %i.li, 0
  br i1 %i.lq, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.017.0.i.i.i.i.i.i = phi i64 [ %.sroa.017.1.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.ll, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.lr = phi ptr [ %i.mt, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ls = phi i64 [ %i.mv, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.lt = phi i16 [ %i.mc, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lf, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val712.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mf, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.li, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lt, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lu = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.lv = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lu, align 16, !noalias !138196
  %i.lw = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -64 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.lw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa15.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lz = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ma = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = and i16 %i.lz, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = sub nsw i64 0, %i.mb
  %i.me = getelementptr inbounds [4 x i8], ptr %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.md
  %i.mf = add i64 %.val712.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 -4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.mg, align 4, !noalias !138197, !noundef !67
  %i.mh = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.mi = icmp samesign ult i64 %i.ls, 1152921504606846976
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp eq i64 %i.ls, %.sroa.017.0.i.i.i.i.i.i
  br i1 %i.mj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = icmp ult i64 %.sroa.615.0.copyload.i.i.i.i.i.i, %.sroa.017.0.i.i.i.i.i.i
  br i1 %i.mk, label %.loopexit.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 1
  %i.mm = call i64 @llvm.umax.i64(i64 %i.ml, i64 %.sroa.615.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.mn = call i64 @llvm.umax.i64(i64 %i.mm, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !138198)
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.mm, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit29.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, !prof !73

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.mo = shl nuw nsw i64 %i.mn, 3                ; 3 uses
  %i.mp = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i.i.i.i.i.i) ], !noalias !138199
  %i.mq = icmp samesign uge i64 %i.mo, %i.mp
  call void @llvm.assume(i1 %i.mq), !noalias !138199
  %i.mr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.9.0.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.mp, i64 noundef range(i64 1, 17) 8, i64 noundef range(i64 0, -9223372036854775808) %i.mo) #59, !noalias !138200 ; 3 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.bz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  store i64 8, ptr %.sroa.524.i.i.i.i.i.i, align 8, !alias.scope !138198, !noalias !138201
  br label %.loopexit29.i.i.i.i.i.i

.loopexit29.i.i.i.i.i.i:                          ; preds = %bb.by, %bb.bz
  %.sink8.i.sroa.phi.ph.i.i.i.i.i.i = phi ptr [ %.sroa.10.i.i.i.i.i.i, %bb.bz ], [ %.sroa.524.i.i.i.i.i.i, %bb.by ]
  %.sink6.i.ph.i.i.i.i.i.i = phi i64 [ %i.mo, %bb.bz ], [ 0, %bb.by ]
  store i64 %.sink6.i.ph.i.i.i.i.i.i, ptr %.sink8.i.sroa.phi.ph.i.i.i.i.i.i, align 8, !alias.scope !138198, !noalias !138201
  %.sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.0..sroa.524.i.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.8.25.i.i.i.i.i.i = load i64, ptr %.sroa.524.i.i.i.i.i.i, align 8, !range !128, !noalias !138201, !noundef !67
  %.sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i.i.i.i.i.i = load i64, ptr %.sroa.10.i.i.i.i.i.i, align 8, !noalias !138201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i
  %.sroa.5.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i ], [ undef, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.0..sroa.524.i.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.8.25.i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph.i.i.i.i.i.i.i, i64 %.sroa.5.0.i.ph.i.i.i.i.i.i.i) #61
          to label %.noexc.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !138188

.noexc.i.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  br label %.noexc.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i.i = phi ptr [ %i.mr, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 12 uses
  %.sroa.017.1.i.i.i.i.i.i = phi i64 [ %i.mn, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.mt = phi ptr [ %i.mr, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ls
  store i64 %i.mh, ptr %i.mu, align 8, !noalias !138202
  %i.mv = add nuw nsw i64 %i.ls, 1
  %i.mw = icmp eq i64 %i.mf, 0
  br i1 %i.mw, label %bb.ca, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  %i.my = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i.i.i.i.i.i, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138203
  br label %.body.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.mz = icmp samesign ult i64 %i.ls, 20
  br i1 %i.mz, label %bb.cc, label %bb.cb, !prof !77

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 %.sroa.9.1.i.i.i.i.i.i, i64 noundef %.sroa.615.0.copyload.i.i.i.i.i.i, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !138190

bb.cc:                                            ; preds = %bb.ca
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 3
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.01.i.i.i.i.i.i.i.i.i, %bb.cc ] ; 4 uses
  %.pn3.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i, %bb.cc ] ; 3 uses
  %.val9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138204, !noalias !138205, !noundef !67 ; 3 uses
  %.val10.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.pn3.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138206, !noalias !138207, !noundef !67 ; 2 uses
  %i.nb = icmp ult i64 %.val9.i.i.i.i.i.i.i.i.i.i, %.val10.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nb, label %.preheader.i.i.i.i.i.i.i.i.i.preheader, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store i64 %.val10.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138208, !noalias !138190
  %i.nc = icmp eq ptr %.pn3.i.i.i.i.i.i.i.i.i, %.sroa.9.1.i.i.i.i.i.i
  br i1 %i.nc, label %._crit_edge487, label %.lr.ph486

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph486
  store i64 %.val8.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, align 8, !alias.scope !138208, !noalias !138190
  %i.nd = icmp eq ptr %i.ne, %.sroa.9.1.i.i.i.i.i.i
  br i1 %i.nd, label %._crit_edge487, label %.lr.ph486

.lr.ph486:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485 = phi ptr [ %i.ne, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.pn3.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ne = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !alias.scope !138206, !noalias !138207, !noundef !67 ; 2 uses
  %i.nf = icmp ult i64 %.val9.i.i.i.i.i.i.i.i.i.i, %.val8.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nf, label %.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge487

._crit_edge487:                                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph486, %.preheader.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.9.1.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, %.lr.ph486 ]
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138208, !noalias !138209
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge487, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.na
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = shl nuw i64 %.sroa.017.1.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138210
  br label %.body.i.i.i.i.i.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %bb.cb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.035.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.017.1.i.i.i.i.i.i, %bb.cb ], [ %i.ll, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.017.1.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.034.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %bb.cb ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  %i.ni = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 0
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout27digraph_kamada_kawai_layout:bb.a
bb.bp:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i, %bb.bn, %bb.ab
  %.sroa.7219.0.ph.i = phi i64 [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ 0, %bb.bn ], [ %.sroa.064.0.copyload.i.i, %bb.ab ]
  %.sroa.12.0.ph.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ null, %bb.bn ], [ %.sroa.465.0.copyload.i.i, %bb.ab ]
  %.sroa.21.0.ph.i = phi i64 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ undef, %bb.bn ], [ %.sroa.21.32.copyload.i, %bb.ab ]
  %.sroa.20.0.ph.i = phi ptr [ @518, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ @518, %bb.bn ], [ %.sroa.20.32.copyload.i, %bb.ab ]
  %.sroa.19.0.ph.i = phi ptr [ %i.dd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ %i.dd, %bb.bn ], [ %.sroa.19.32.copyload.i, %bb.ab ]
  %.sroa.17.0.ph.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ null, %bb.bn ], [ %.sroa.17.32.copyload.i, %bb.ab ]
  %.sroa.14.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ 1, %bb.bn ], [ %.sroa.566.0.copyload.i.i, %bb.ab ]
  %i.is = phi <2 x i32> [ <i32 3, i32 undef>, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i123.i.i ], [ <i32 3, i32 undef>, %bb.bn ], [ %i.cq, %bb.ab ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7219.0.ph.i, ptr %i.it, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.4294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.4294.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.5295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.0.ph.i, ptr %.sroa.5295.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.6296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.0.ph.i, ptr %.sroa.6296.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.19.0.ph.i, ptr %.sroa.7297.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.8298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.20.0.ph.i, ptr %.sroa.8298.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.9299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.21.0.ph.i, ptr %.sroa.9299.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  %.sroa.10300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i32> %i.is, ptr %.sroa.10300.0..sroa_idx.i, align 8, !alias.scope !138534, !noalias !138544
  store i64 1, ptr %0, align 8, !alias.scope !138534, !noalias !138544
  %i.iu = icmp eq i64 %.sroa.0212.0.i, 0
  br i1 %i.iu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit129.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i127.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i127.i: ; preds = %bb.bp
  %i.iv = shl nuw i64 %.sroa.0212.0.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138604
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit129.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i117.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphudNtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !138542
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity15conn_components20connected_componentsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2E_5types3any5PyAnyEB2z_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %bb.br unwind label %bb.bq, !noalias !138541

.body139.i:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.bq
  %.sroa.023.4.i = phi i1 [ %.sroa.023.6.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ true, %bb.bq ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.022.4.i = phi i1 [ %.sroa.022.6.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ true, %bb.bq ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.iy, %bb.bq ], [ %i.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.thread.i ], [ %.pn.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i ], [ %.pn.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %i.iw = icmp eq i64 %.sroa.414.0.i.i.i, 0
  br i1 %i.iw, label %.body123.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i130.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i130.i: ; preds = %.body139.i
  %i.ix = shl nuw i64 %.sroa.414.0.i.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138542
  br label %.body123.i

bb.bq:                                            ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

bb.br:                                            ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai15distance_matrixNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !138542
  %i.iz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !138542, !nonnull !67, !noundef !67 ; 15 uses
  %i.jb = load i64, ptr %i.x, align 8, !range !70, !noalias !138542, !noundef !67 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !138542, !noundef !67 ; 3 uses
  %i.je = icmp ult i64 %i.jd, 230584300921369396
  call void @llvm.assume(i1 %i.je)
  %.idx.i = mul nuw nsw i64 %i.jd, 40
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138605)
  call void @llvm.experimental.noalias.scope.decl(metadata !138606)
  %i.jg = mul i64 %i.jb, 40                       ; 9 uses
  %i.jh = udiv i64 %i.jg, 24                      ; 2 uses
  %.not76.i.i.i.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not76.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.body.i.i131.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = ptrtoint ptr %i.kf to i64
  %i.jk = sub nuw i64 %i.ji, %i.jj
  %i.jl = udiv exact i64 %i.jk, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !138607), !noalias !138606
  %i.jm = icmp eq ptr %i.jf, %i.kf
  br i1 %i.jm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i

.lr.ph.i.i.i.i1.i.i:                              ; preds = %.body.i.i131.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.jo, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %.body.i.i131.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.jo = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !alias.scope !138607, !noalias !138608 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jn, i64 8
  %.val9.i.i.i.i.i.i = load i64, ptr %i.jp, align 8, !alias.scope !138607, !noalias !138608, !noundef !67 ; 4 uses
  %i.jq = icmp eq i64 %.val9.i.i.i.i.i.i, 0
  br i1 %i.jq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i1.i.i
  %i.jr = shl i64 %.val9.i.i.i.i.i.i, 2
  %i.js = icmp slt i64 %.val9.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.js), !noalias !138606
  %i.jt = and i64 %i.jr, -16                      ; 2 uses
  %i.ju = add i64 %i.jt, 16                       ; 2 uses
  %i.jv = add nsw i64 %.val9.i.i.i.i.i.i, 17
  %i.jw = add i64 %i.jv, %i.ju                    ; 4 uses
  %i.jx = icmp uge i64 %i.jw, %i.ju
  %i.jy = icmp ult i64 %i.jw, 9223372036854775793
  call void @llvm.assume(i1 %i.jx), !noalias !138606
  call void @llvm.assume(i1 %i.jy), !noalias !138606
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i.i) ], !noalias !138606
  %i.jz = icmp eq i64 %i.jw, 0
  br i1 %i.jz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ka = sub nuw nsw i64 -16, %i.jt
  %i.kb = getelementptr inbounds i8, ptr %.val8.i.i.i.i.i.i, i64 %i.ka
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kb, i64 noundef %i.jw, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !138609
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bs, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i1.i.i
  %i.kc = icmp eq i64 %i.jo, %i.jl
  br i1 %i.kc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.body.i.i131.i
  %i.kd = icmp eq i64 %i.jb, 0
  br i1 %i.kd, label %.body139.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i133.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ja, i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138608
  br label %.body139.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.br, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_8DirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i
  %i.ke = phi ptr [ %i.kf, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_8DirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i ], [ %i.ja, %bb.br ] ; 4 uses
  %.sroa.4.077.i.i.i.i.i.i = phi ptr [ %i.of, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtCs87CvPiUlf0m_5alloc3vec3VecjEINtNtB2v_13in_place_drop11InPlaceDropB2s_EINtNtBa_6result6ResultB31_zENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai19kamada_kawai_layoutNtB1I_8DirectedEs_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2s_E0E0B4i_.exit.i.i.i.i.i.i ], [ %i.ja, %bb.br ] ; 6 uses
  %.sroa.013.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ke, align 8, !noalias !138610, !nonnull !67, !noundef !67 ; 6 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.sroa.414.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !138610 ; 8 uses
  %.sroa.615.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %.sroa.615.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.615.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !138610 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 5 uses
  %i.kg = icmp eq i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.kg, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.bv

.body.i.i.i.i.i.i.i.i:                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.bu
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ng, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i ], [ %i.kt, %bb.bu ], [ %i.mx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kh = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.kh, label %.body.i.i.i.i.i.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ki = shl i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 2
  %i.kj = icmp slt i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.kj), !noalias !138611
  %i.kk = and i64 %i.ki, -16                      ; 2 uses
  %i.kl = add i64 %i.kk, 16                       ; 2 uses
  %i.km = add nsw i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 17
  %i.kn = add i64 %i.km, %i.kl                    ; 4 uses
  %i.ko = icmp uge i64 %i.kn, %i.kl
  %i.kp = icmp ult i64 %i.kn, 9223372036854775793
  call void @llvm.assume(i1 %i.ko), !noalias !138611
  call void @llvm.assume(i1 %i.kp), !noalias !138611
  %i.kq = icmp eq i64 %i.kn, 0
  br i1 %i.kq, label %.body.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = sub nuw nsw i64 -16, %i.kk
  %i.ks = getelementptr inbounds i8, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, i64 %i.kr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !138612
  br label %.body.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bx
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, align 16, !noalias !138613
  %i.ku = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kx = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kw, %bb.bv ] ; 2 uses
  %i.ky = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.0.copyload.i.i.i.i.i.i, %bb.bv ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.kx, align 16, !noalias !138614
  %i.kz = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -64 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.kz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi ptr [ %i.kw, %bb.bv ], [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.copyload.i.i.i.i.i.i, %bb.bv ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.kv, %bb.bv ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lc = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ld = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.le = zext nneg i16 %i.ld to i64
  %i.lf = and i16 %i.lc, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = sub nsw i64 0, %i.le
  %i.lh = getelementptr inbounds [4 x i8], ptr %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.lg
  %i.li = add i64 %.sroa.615.0.copyload.i.i.i.i.i.i, -1 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 -4
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.lj, align 4, !noalias !138615, !noundef !67
  %i.lk = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ll = call i64 @llvm.umax.i64(i64 %.sroa.615.0.copyload.i.i.i.i.i.i, i64 4) ; 3 uses
  %i.lm = shl i64 %i.ll, 3                        ; 3 uses
  %i.ln = icmp ugt i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.lm, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ln, %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw, !prof !73

bb.bw:                                            ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !138616
  %i.lo = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138616 ; 5 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bx, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.416.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.bw ], [ 0, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.lm) #61
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.bu, !noalias !138612

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bx
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  store i64 %i.lk, ptr %i.lo, align 8, !noalias !138617
  %i.lq = icmp eq i64 %i.li, 0
  br i1 %i.lq, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.017.0.i.i.i.i.i.i = phi i64 [ %.sroa.017.1.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.ll, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.lr = phi ptr [ %i.mt, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ls = phi i64 [ %i.mv, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.lt = phi i16 [ %i.mc, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.lf, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val712.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mf, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.li, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lt, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lu = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.lv = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lu, align 16, !noalias !138618
  %i.lw = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -64 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.lw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa15.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa16.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa61011.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lz = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ma = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = and i16 %i.lz, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = sub nsw i64 0, %i.mb
  %i.me = getelementptr inbounds [4 x i8], ptr %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.md
  %i.mf = add i64 %.val712.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 -4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.mg, align 4, !noalias !138619, !noundef !67
  %i.mh = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.mi = icmp samesign ult i64 %i.ls, 1152921504606846976
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp eq i64 %i.ls, %.sroa.017.0.i.i.i.i.i.i
  br i1 %i.mj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = icmp ult i64 %.sroa.615.0.copyload.i.i.i.i.i.i, %.sroa.017.0.i.i.i.i.i.i
  br i1 %i.mk, label %.loopexit.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 1
  %i.mm = call i64 @llvm.umax.i64(i64 %i.ml, i64 %.sroa.615.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.mn = call i64 @llvm.umax.i64(i64 %i.mm, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !138620)
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.mm, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit29.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, !prof !73

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.mo = shl nuw nsw i64 %i.mn, 3                ; 3 uses
  %i.mp = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i.i.i.i.i.i) ], !noalias !138621
  %i.mq = icmp samesign uge i64 %i.mo, %i.mp
  call void @llvm.assume(i1 %i.mq), !noalias !138621
  %i.mr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.9.0.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.mp, i64 noundef range(i64 1, 17) 8, i64 noundef range(i64 0, -9223372036854775808) %i.mo) #59, !noalias !138622 ; 3 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.bz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  store i64 8, ptr %.sroa.524.i.i.i.i.i.i, align 8, !alias.scope !138620, !noalias !138623
  br label %.loopexit29.i.i.i.i.i.i

.loopexit29.i.i.i.i.i.i:                          ; preds = %bb.by, %bb.bz
  %.sink8.i.sroa.phi.ph.i.i.i.i.i.i = phi ptr [ %.sroa.10.i.i.i.i.i.i, %bb.bz ], [ %.sroa.524.i.i.i.i.i.i, %bb.by ]
  %.sink6.i.ph.i.i.i.i.i.i = phi i64 [ %i.mo, %bb.bz ], [ 0, %bb.by ]
  store i64 %.sink6.i.ph.i.i.i.i.i.i, ptr %.sink8.i.sroa.phi.ph.i.i.i.i.i.i, align 8, !alias.scope !138620, !noalias !138623
  %.sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.0..sroa.524.i.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.8.25.i.i.i.i.i.i = load i64, ptr %.sroa.524.i.i.i.i.i.i, align 8, !range !128, !noalias !138623, !noundef !67
  %.sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i.i.i.i.i.i = load i64, ptr %.sroa.10.i.i.i.i.i.i, align 8, !noalias !138623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i
  %.sroa.5.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i ], [ undef, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.i.0..sroa.524.i.i.0..sroa.524.i.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.8.25.i.i.i.i.i.i, %.loopexit29.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph.i.i.i.i.i.i.i, i64 %.sroa.5.0.i.ph.i.i.i.i.i.i.i) #61
          to label %.noexc.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !138610

.noexc.i.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i)
  br label %.noexc.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i.i = phi ptr [ %i.mr, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 12 uses
  %.sroa.017.1.i.i.i.i.i.i = phi i64 [ %i.mn, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.mt = phi ptr [ %i.mr, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ls
  store i64 %i.mh, ptr %i.mu, align 8, !noalias !138624
  %i.mv = add nuw nsw i64 %i.ls, 1
  %i.mw = icmp eq i64 %i.mf, 0
  br i1 %i.mw, label %bb.ca, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  %i.my = shl nuw nsw i64 %.sroa.017.0.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i.i.i.i.i.i, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138625
  br label %.body.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.mz = icmp samesign ult i64 %i.ls, 20
  br i1 %i.mz, label %bb.cc, label %bb.cb, !prof !77

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 %.sroa.9.1.i.i.i.i.i.i, i64 noundef %.sroa.615.0.copyload.i.i.i.i.i.i, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !138612

bb.cc:                                            ; preds = %bb.ca
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.615.0.copyload.i.i.i.i.i.i, 3
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.01.i.i.i.i.i.i.i.i.i, %bb.cc ] ; 4 uses
  %.pn3.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i, %bb.cc ] ; 3 uses
  %.val9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138626, !noalias !138627, !noundef !67 ; 3 uses
  %.val10.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.pn3.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138628, !noalias !138629, !noundef !67 ; 2 uses
  %i.nb = icmp ult i64 %.val9.i.i.i.i.i.i.i.i.i.i, %.val10.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nb, label %.preheader.i.i.i.i.i.i.i.i.i.preheader, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store i64 %.val10.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138630, !noalias !138612
  %i.nc = icmp eq ptr %.pn3.i.i.i.i.i.i.i.i.i, %.sroa.9.1.i.i.i.i.i.i
  br i1 %i.nc, label %._crit_edge487, label %.lr.ph486

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph486
  store i64 %.val8.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, align 8, !alias.scope !138630, !noalias !138612
  %i.nd = icmp eq ptr %i.ne, %.sroa.9.1.i.i.i.i.i.i
  br i1 %i.nd, label %._crit_edge487, label %.lr.ph486

.lr.ph486:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485 = phi ptr [ %i.ne, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.pn3.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ne = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !alias.scope !138628, !noalias !138629, !noundef !67 ; 2 uses
  %i.nf = icmp ult i64 %.val9.i.i.i.i.i.i.i.i.i.i, %.val8.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nf, label %.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge487

._crit_edge487:                                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph486, %.preheader.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.9.1.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i485, %.lr.ph486 ]
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !138630, !noalias !138631
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge487, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.na
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = shl nuw i64 %.sroa.017.1.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !138632
  br label %.body.i.i.i.i.i.i.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %bb.cb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.035.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.017.1.i.i.i.i.i.i, %bb.cb ], [ %i.ll, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.017.1.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.034.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %bb.cb ], [ %i.lo, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  %i.ni = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i.i, 0
end_hunk_7
