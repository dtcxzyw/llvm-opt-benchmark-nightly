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
begin_hunk_4_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProduceryEINtNtB6_3map11MapConsumerIB1H_INtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB41_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB6k_EEB4D_EERINvNvB3d_10min_by_key7min_keyB5H_B40_EE0NvYINtNtB45_6option6OptionB3Z_ENtNtB45_7default7Default7defaultEB7Y_NCINvB3b_8opt_foldB3Z_B7j_E0ENCINvB7n_3keyB5H_B40_NCNvMs0_B4F_INtB4F_12TokenSwapperRINtNtB6m_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBb5_5types3any5PyAnyEBb0_NtB6o_10UndirectedEE3maps1_0E0ENCB9U_s0_0EECskcxRuJ53GpR_9rustworkx:bb.a
  store ptr %i.k, ptr %.sroa.6159.0..sroa_idx160, align 8, !noalias !41583
  %.sroa.7164.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %.sroa.7164.0..sroa_idx165, align 8, !noalias !41583
  %.sroa.8169.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.as, ptr %.sroa.8169.0..sroa_idx170, align 8, !noalias !41583
  %.sroa.9174.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.at, ptr %.sroa.9174.0..sroa_idx175, align 8, !noalias !41583
  %.sroa.10179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.au, ptr %.sroa.10179.0..sroa_idx180, align 8, !noalias !41583
  %.sroa.11184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.aw, ptr %.sroa.11184.0..sroa_idx185, align 8, !noalias !41583
  %.sroa.12189.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ay, ptr %.sroa.12189.0..sroa_idx190, align 8, !noalias !41583
  %.sroa.13194.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ba, ptr %.sroa.13194.0..sroa_idx195, align 8, !noalias !41583
  %.sroa.14199.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.bc, ptr %.sroa.14199.0..sroa_idx200, align 8, !noalias !41583
  %.sroa.15204.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.be, ptr %.sroa.15204.0..sroa_idx205, align 8, !noalias !41583
  %.sroa.16209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.k, ptr %.sroa.16209.0..sroa_idx210, align 8, !noalias !41583
  %.sroa.17214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.l, ptr %.sroa.17214.0..sroa_idx215, align 8, !noalias !41583
  %.sroa.18219.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %5, ptr %.sroa.18219.0..sroa_idx220, align 8, !noalias !41583
  %.sroa.19224.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.o, ptr %.sroa.19224.0..sroa_idx225, align 8, !noalias !41583
  %.sroa.20229.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.au, ptr %.sroa.20229.0..sroa_idx230, align 8, !noalias !41583
  %.sroa.21234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.aw, ptr %.sroa.21234.0..sroa_idx235, align 8, !noalias !41583
  %.sroa.22.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.ay, ptr %.sroa.22.0..sroa_idx239, align 8, !noalias !41583
  %.sroa.23243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.ba, ptr %.sroa.23243.0..sroa_idx244, align 8, !noalias !41583
  %.sroa.24248.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.bc, ptr %.sroa.24248.0..sroa_idx249, align 8, !noalias !41583
  %.sroa.25253.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.be, ptr %.sroa.25253.0..sroa_idx254, align 8, !noalias !41583
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProduceryEINtNtBY_3map11MapConsumerIB2A_INtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB4U_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7d_EEB5w_EERINvNvB46_10min_by_key7min_keyB6A_B4T_EE0NvYINtNtB4Y_6option6OptionB4S_ENtNtB4Y_7default7Default7defaultEB8R_NCINvB44_8opt_foldB4S_B8c_E0ENCINvB8g_3keyB6A_B4T_NCNvMs0_B5y_INtB5y_12TokenSwapperRINtNtB7f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBbY_5types3any5PyAnyEBbT_NtB7h_10UndirectedEE3maps1_0E0ENCBaN_s0_0EE0NCBR_s_0B8U_B8U_E0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false), !inline_history !41543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41582
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProduceryEINtNtB1p_3map11MapConsumerIB31_INtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5p_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7I_EEB61_EERINvNvB4A_10min_by_key7min_keyB75_B5o_EE0NvYINtNtB5t_6option6OptionB5n_ENtNtB5t_7default7Default7defaultEB9m_NCINvB4y_8opt_foldB5n_B8H_E0ENCINvB8L_3keyB75_B5o_NCNvMs0_B63_INtB63_12TokenSwapperRINtNtB7K_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBct_5types3any5PyAnyEBco_NtB7M_10UndirectedEE3maps1_0E0ENCBbi_s0_0EE0NCB1i_s_0B9p_B9p_E0TB9p_B9p_EECskcxRuJ53GpR_9rustworkx.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41582
  store ptr %i.m, ptr %i.b, align 8, !noalias !41583
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.6159.0..sroa_idx, align 8, !noalias !41583
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %.sroa.7164.0..sroa_idx, align 8, !noalias !41583
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.as, ptr %.sroa.8169.0..sroa_idx, align 8, !noalias !41583
  %.sroa.9174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.at, ptr %.sroa.9174.0..sroa_idx, align 8, !noalias !41583
  %.sroa.10179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.au, ptr %.sroa.10179.0..sroa_idx, align 8, !noalias !41583
  %.sroa.11184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.aw, ptr %.sroa.11184.0..sroa_idx, align 8, !noalias !41583
  %.sroa.12189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.ay, ptr %.sroa.12189.0..sroa_idx, align 8, !noalias !41583
  %.sroa.13194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ba, ptr %.sroa.13194.0..sroa_idx, align 8, !noalias !41583
  %.sroa.14199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bc, ptr %.sroa.14199.0..sroa_idx, align 8, !noalias !41583
  %.sroa.15204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.be, ptr %.sroa.15204.0..sroa_idx, align 8, !noalias !41583
  %.sroa.16209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.k, ptr %.sroa.16209.0..sroa_idx, align 8, !noalias !41583
  %.sroa.17214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.l, ptr %.sroa.17214.0..sroa_idx, align 8, !noalias !41583
  %.sroa.18219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %5, ptr %.sroa.18219.0..sroa_idx, align 8, !noalias !41583
  %.sroa.19224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %.sroa.19224.0..sroa_idx, align 8, !noalias !41583
  %.sroa.20229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.au, ptr %.sroa.20229.0..sroa_idx, align 8, !noalias !41583
  %.sroa.21234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.aw, ptr %.sroa.21234.0..sroa_idx, align 8, !noalias !41583
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.ay, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !41583
  %.sroa.23243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.ba, ptr %.sroa.23243.0..sroa_idx, align 8, !noalias !41583
  %.sroa.24248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.bc, ptr %.sroa.24248.0..sroa_idx, align 8, !noalias !41583
  %.sroa.25253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.be, ptr %.sroa.25253.0..sroa_idx, align 8, !noalias !41583
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProduceryEINtNtB1O_3map11MapConsumerIB3q_INtNtB1O_4fold12FoldConsumerINtNtB1O_6reduce14ReduceConsumerNCINvNvNtB1O_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5O_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB87_EEB6q_EERINvNvB4Z_10min_by_key7min_keyB7u_B5N_EE0NvYINtNtB5S_6option6OptionB5M_ENtNtB5S_7default7Default7defaultEB9L_NCINvB4X_8opt_foldB5M_B96_E0ENCINvB9a_3keyB7u_B5N_NCNvMs0_B6s_INtB6s_12TokenSwapperRINtNtB89_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBcS_5types3any5PyAnyEBcN_NtB8b_10UndirectedEE3maps1_0E0ENCBbH_s0_0EE0NCB1H_s_0B9O_B9O_E0TB9O_B9O_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i, ptr noundef nonnull align 128 %i.bj, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %i.b), !inline_history !41543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41582
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProduceryEINtNtB1p_3map11MapConsumerIB31_INtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5p_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7I_EEB61_EERINvNvB4A_10min_by_key7min_keyB75_B5o_EE0NvYINtNtB5t_6option6OptionB5n_ENtNtB5t_7default7Default7defaultEB9m_NCINvB4y_8opt_foldB5n_B8H_E0ENCINvB8L_3keyB75_B5o_NCNvMs0_B63_INtB63_12TokenSwapperRINtNtB7K_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBct_5types3any5PyAnyEBco_NtB7M_10UndirectedEE3maps1_0E0ENCBbi_s0_0EE0NCB1i_s_0B9p_B9p_E0TB9p_B9p_EECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProduceryEINtNtB1p_3map11MapConsumerIB31_INtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5p_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7I_EEB61_EERINvNvB4A_10min_by_key7min_keyB75_B5o_EE0NvYINtNtB5t_6option6OptionB5n_ENtNtB5t_7default7Default7defaultEB9m_NCINvB4y_8opt_foldB5n_B8H_E0ENCINvB8L_3keyB75_B5o_NCNvMs0_B63_INtB63_12TokenSwapperRINtNtB7K_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBct_5types3any5PyAnyEBco_NtB7M_10UndirectedEE3maps1_0E0ENCBbi_s0_0EE0NCB1i_s_0B9p_B9p_E0TB9p_B9p_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.o, %bb.r, %bb.t, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !41584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41586)
  call void @llvm.experimental.noalias.scope.decl(metadata !41587)
  call void @llvm.experimental.noalias.scope.decl(metadata !41588)
  %i.bo = load i64, ptr %i.f, align 8, !range !126, !alias.scope !41587, !noalias !41589, !noundef !67
  %.not.i.i22 = icmp eq i64 %i.bo, 2
  %i.bp = load i64, ptr %i.bn, align 8, !range !126, !alias.scope !41588, !noalias !41590, !noundef !67
  %.not1.i.i = icmp eq i64 %i.bp, 2               ; 2 uses
  br i1 %.not.i.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProduceryEINtNtB1p_3map11MapConsumerIB31_INtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5p_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7I_EEB61_EERINvNvB4A_10min_by_key7min_keyB75_B5o_EE0NvYINtNtB5t_6option6OptionB5n_ENtNtB5t_7default7Default7defaultEB9m_NCINvB4y_8opt_foldB5n_B8H_E0ENCINvB8L_3keyB75_B5o_NCNvMs0_B63_INtB63_12TokenSwapperRINtNtB7K_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBct_5types3any5PyAnyEBco_NtB7M_10UndirectedEE3maps1_0E0ENCBbi_s0_0EE0NCB1i_s_0B9p_B9p_E0TB9p_B9p_EECskcxRuJ53GpR_9rustworkx.exit
  br i1 %.not1.i.i, label %bb.x, label %bb.y

bb.v:                                             ; preds = %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProduceryEINtNtB1p_3map11MapConsumerIB31_INtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTINtNtCslwFuT2d6ECx_4core6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB5p_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB7I_EEB61_EERINvNvB4A_10min_by_key7min_keyB75_B5o_EE0NvYINtNtB5t_6option6OptionB5n_ENtNtB5t_7default7Default7defaultEB9m_NCINvB4y_8opt_foldB5n_B8H_E0ENCINvB8L_3keyB75_B5o_NCNvMs0_B63_INtB63_12TokenSwapperRINtNtB7K_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBct_5types3any5PyAnyEBco_NtB7M_10UndirectedEE3maps1_0E0ENCBbi_s0_0EE0NCB1i_s_0B9p_B9p_E0TB9p_B9p_EECskcxRuJ53GpR_9rustworkx.exit
  br i1 %.not1.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 2, ptr %0, align 8, !alias.scope !41591, !noalias !41592
  br label %bb.ac

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sink.i.i = phi ptr [ %i.f, %bb.u ], [ %i.bn, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sink.i.i, i64 40, i1 false), !noalias !41593
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41595)
  call void @llvm.experimental.noalias.scope.decl(metadata !41596)
  %.val10.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !68, !alias.scope !41595, !noalias !41597, !noundef !67 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !41595, !noalias !41597
  %.val12.i.i.i.i.i = load i64, ptr %i.bq, align 8, !range !68, !alias.scope !41596, !noalias !41598, !noundef !67 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val13.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !41596, !noalias !41598
  %i.bt = sub nsw i64 %.val10.i.i.i.i.i, %.val12.i.i.i.i.i
  %i.bu = trunc nsw i64 %i.bt to i8
  %i.bv = icmp eq i64 %.val10.i.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.bv, label %bb.z, label %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.bw = trunc nuw i64 %.val10.i.i.i.i.i to i1
  br i1 %i.bw, label %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val11.i.i.i.i.i, i64 %.val13.i.i.i.i.i)
  br label %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.y
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.bu, %bb.y ], [ %i.bx, %bb.aa ]
  %i.by = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.ab, label %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

bb.ab:                                            ; preds = %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.bz, align 8, !range !66, !alias.scope !41595, !noalias !41597, !noundef !67 ; 2 uses
  %i.ca = icmp sgt i64 %.val6.i.i.i.i.i, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBD_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2F_EEBZ_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10min_by_key7min_keyINtNtB8_6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2P_EENtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB1W_jB3I_EEINtB4_2FnTTB4M_B1V_EB58_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val4.i.i.i.i.i = load i64, ptr %i.cb, align 8, !range !66, !alias.scope !41596, !noalias !41598, !noundef !67 ; 2 uses
  %i.cc = icmp sgt i64 %.val4.i.i.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBD_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2F_EEBZ_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10min_by_key7min_keyINtNtB8_6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2P_EENtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB1W_jB3I_EEINtB4_2FnTTB4M_B1V_EB58_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBD_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2F_EEBZ_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i: ; preds = %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i, %bb.ab
  %.sink27.i.i.i.i.i = phi ptr [ %i.d, %bb.ab ], [ %i.bq, %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ]
  %.val4.sink.i.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i, %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink27.i.i.i.i.i, i64 24
  %.val5.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !41599, !noalias !41600, !nonnull !67, !noundef !67
  %i.ce = shl nuw i64 %.val4.sink.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !41601
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10min_by_key7min_keyINtNtB8_6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2P_EENtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB1W_jB3I_EEINtB4_2FnTTB4M_B1V_EB58_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10min_by_key7min_keyINtNtB8_6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2P_EENtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB1W_jB3I_EEINtB4_2FnTTB4M_B1V_EB58_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBD_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2F_EEBZ_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i, %_RNvXsz_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleENtNtB7_3cmp3Ord3cmpCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !41592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10min_by_key7min_keyINtNtB8_6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2P_EENtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB1W_jB3I_EEINtB4_2FnTTB4M_B1V_EB58_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ac
  ret void

.critedge.thread:                                 ; preds = %bb.l, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.am
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_10UndirectedEs_0E0ENCB8J_0EEB8O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 25 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 16 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.n, align 8
  store i64 %3, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %4, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41852)
  %i.p = lshr i64 %1, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.p, %4
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !41852
  %i.r = lshr i64 %3, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  %i.t = lshr i64 %3, 1
  br label %bb.bd

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !41853, !noalias !41854, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41855)
  %.idx.i = shl nuw nsw i64 %6, 2
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.i
  %i.x = icmp eq i64 %6, 0
  br i1 %i.x, label %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E8completeB6S_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4109.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5110.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6144.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7149.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i, %.lr.ph.i.i
  %.sroa.15.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.8.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 3 uses
  %.sroa.12.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.7.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 5 uses
  %.sroa.9119.0.copyload.i.i = phi i64 [ -1, %.lr.ph.i.i ], [ %.sroa.6.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 8 uses
  %.sroa.7118.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.590.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 4 uses
  %.sroa.0.0254.i.i = phi ptr [ %5, %.lr.ph.i.i ], [ %i.aj, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0254.i.i, i64 4 ; 2 uses
  %.val.i.i12 = load i32, ptr %.sroa.0.0254.i.i, align 4, !alias.scope !41855, !noalias !41856, !noundef !67 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !noalias !41857, !nonnull !67, !align !98, !noundef !67
  %.val2.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !41857, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.ak = load ptr, ptr %.val.i.i.i, align 8, !noalias !41858, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41859)
  call void @llvm.experimental.noalias.scope.decl(metadata !41860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41861
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB1L_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.i, i32 %.val.i.i12)
          to label %.noexc.i.i.i unwind label %bb.ax

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41861
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !41861
  %i.al = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41861 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !104

bb.h:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !41861

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.i
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i.i.i.i.i ], [ %i.ba, %bb.i ], [ %lpad.phi.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41862)
  call void @llvm.experimental.noalias.scope.decl(metadata !41863), !noalias !41864
  call void @llvm.experimental.noalias.scope.decl(metadata !41865), !noalias !41864
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !41866, !noalias !41861, !noundef !67 ; 4 uses
  %i.an = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !41866, !noalias !41861, !nonnull !67, !noundef !67
  %i.ao = shl i64 %.val1.i.i.i.i.i, 3
  %i.ap = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ap), !noalias !41864
  %i.aq = and i64 %i.ao, -16                      ; 2 uses
  %i.ar = add i64 %i.aq, 16                       ; 2 uses
  %i.as = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !41864
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !41864
  %i.aw = sub nuw nsw i64 -16, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.aw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !41867
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !41866, !noalias !41861 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs1JJT1bG4y5L_5rayon4iter6reduce12ReduceFolderNCINvNvNtBG_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB1z_10max_by_key7max_keyB2n_jEE0INtNtB4_6option6OptionB2l_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !41866, !noalias !41861, !nonnull !67, !noundef !67
  %i.az = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41867
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs1JJT1bG4y5L_5rayon4iter6reduce12ReduceFolderNCINvNvNtBG_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB1z_10max_by_key7max_keyB2n_jEE0INtNtB4_6option6OptionB2l_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41868)
  call void @llvm.experimental.noalias.scope.decl(metadata !41869)
  call void @llvm.experimental.noalias.scope.decl(metadata !41870)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !41871, !noalias !41872, !nonnull !67, !noundef !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !41871, !noalias !41872, !noundef !67 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val6.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !41871, !noalias !41872, !noundef !67 ; 2 uses
  %i.bg = zext i32 %.val.i.i12 to i64             ; 2 uses
  %i.bh = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !41859, !noalias !41873 ; 2 uses
  br i1 %i.bh, label %bb.j, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.j:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.bg ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !41874, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load <2 x i32>, ptr %i.bl, align 8, !noalias !41874
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %bb.j, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.bn = phi <2 x i32> [ %i.bm, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %bb.j ], [ splat (i32 -1), %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i ]
  store ptr %i.bc, ptr %i.al, align 8, !noalias !41861
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.be, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i32> %i.bn, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  %.sroa.7.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %.val.i.i12, ptr %.sroa.7.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  store i64 1, ptr %i.h, align 8, !noalias !41861
  store ptr %i.al, ptr %i.y, align 8, !noalias !41861
  store i64 1, ptr %i.z, align 8, !noalias !41861
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !41860, !noalias !41875 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 32
  %.val.i32.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !41860, !noalias !41875
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !41860, !noalias !41875 ; 2 uses
  %i.bu = load ptr, ptr %.val2.i.i.i, align 8, !alias.scope !41860, !noalias !41875, !nonnull !67 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i
  %.val29.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !41861 ; 2 uses
  %i.bw = icmp eq i64 %.val29.i.i.i.i.i, 0
  br i1 %i.bw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %bb.k
  %.val30.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !41861, !nonnull !67, !noundef !67
  %i.bx = shl nuw i64 %.val29.i.i.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41861
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.l:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.097.0225.i.i.i.i.i = phi i64 [ -1, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.097.5.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 15 uses
  %.sroa.9.0224.i.i.i.i.i = phi ptr [ undef, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.9.5.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 13 uses
  %.sroa.11.0223.i.i.i.i.i = phi i64 [ undef, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 12 uses
  %i.by = phi i64 [ 1, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 3 uses
  %i.bz = load ptr, ptr %i.y, align 8, !noalias !41861, !nonnull !67, !noundef !67
  %i.ca = getelementptr [32 x i8], ptr %i.bz, i64 %i.by ; 5 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !41876)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !41876, !noalias !41861, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ca, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !41876, !noalias !41861, !noundef !67 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ca, i64 -16    ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !41876, !noalias !41861, !noundef !67
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ugt i64 %i.ce, %i.ch
  br i1 %i.ci, label %bb.m, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.cj = getelementptr i8, ptr %i.ca, i64 -12    ; 2 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.cj, align 4, !alias.scope !41876, !noalias !41861
  %i.ck = getelementptr i8, ptr %i.ca, i64 -8
  %.val4.i.i.i.i.i.i = load i32, ptr %i.ck, align 8, !alias.scope !41876, !noalias !41861
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ch ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !noalias !41877, !noundef !67
  store i32 %i.cn, ptr %i.cf, align 8, !alias.scope !41876, !noalias !41861
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !noalias !41877, !noundef !67
  br label %.loopexit.i.i.i.i.i

bb.n:                                             ; preds = %bb.o, %.preheader.i.i.i.i.i.i
  %i.cq = phi i32 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.cv, %bb.o ]
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp ugt i64 %i.ce, %i.cr
  br i1 %i.cs, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !41877, !noundef !67 ; 2 uses
  store i32 %i.cv, ptr %i.cj, align 4, !alias.scope !41876, !noalias !41861
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.val.i.i.i.i.i.i = load i32, ptr %i.cw, align 8, !noalias !41877, !noundef !67 ; 2 uses
  %i.cx = icmp eq i32 %.val.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.cx, label %bb.n, label %.loopexit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41861
  call void @llvm.experimental.noalias.scope.decl(metadata !41878)
  call void @llvm.experimental.noalias.scope.decl(metadata !41879)
  call void @llvm.experimental.noalias.scope.decl(metadata !41880)
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !41881, !noalias !41861, !noundef !67 ; 4 uses
  %i.cy = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_10UndirectedEs_0E0ENCB8J_0EEB8O_:bb.a
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i20.i.i

.lr.ph.i.i.i20.i.i:                               ; preds = %bb.p, %bb.r
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.gy, %bb.r ], [ %i.gi, %bb.p ] ; 3 uses
  %i.gj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.gk = zext nneg i16 %i.gj to i64
  %i.gl = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.gk
  %i.gm = and i64 %i.gl, %i.gc
  %i.gn = sub nsw i64 0, %i.gm
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -8
  %.val.i.i.i.i21.i.i = load i64, ptr %i.gp, align 8, !noalias !41893, !noundef !67 ; 3 uses
  %i.gq = icmp ult i64 %.val.i.i.i.i21.i.i, %i.dm
  br i1 %i.gq, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i20.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i21.i.i, i64 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc.i.i unwind label %.loopexit203.i.i.i.loopexit.split-lp.i.i, !noalias !41894

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20.i.i
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %.val.i.i.i.i21.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.gs, align 4, !noalias !41895, !noundef !67
  %i.gt = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.gt, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.r, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.r, %bb.p
  %i.gu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.gv = bitcast <16 x i1> %i.gu to i16
  %i.gw = icmp eq i16 %i.gv, 0
  br i1 %i.gw, label %bb.s, label %.thread193.i.i, !prof !71

bb.r:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.gx = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.gy = and i16 %i.gx, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.gy, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i20.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gz = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.ha = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.gz
  br label %bb.p

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.hb = load ptr, ptr %i.ab, align 8, !alias.scope !41883, !noalias !41884, !nonnull !67, !noundef !67
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.val2.i18.i.i = load i32, ptr %i.hc, align 4, !noalias !41896, !noundef !67
  %i.hd = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i18.i.i
  br i1 %i.hd, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.thread193.i.i

.thread193.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i, %bb.t, %.loopexit.i.i.i.i.i
  br i1 %i.bq, label %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i, label %bb.u

.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i: ; preds = %.thread193.i.i
  %.pre.i.i = zext i32 %.sroa.4.0.i.ph.i.i.i.i.i to i64
  br label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i

bb.u:                                             ; preds = %.thread193.i.i
  %i.he = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !41897, !noundef !67
  %i.hf = zext i32 %.sroa.4.0.i.ph.i.i.i.i.i to i64 ; 3 uses
  %i.hg = xor i64 %.val.i32.i.i.i.i.i, %i.hf
  %i.hh = zext i64 %i.hg to i128
  %i.hi = zext i64 %i.he to i128
  %i.hj = mul nuw i128 %i.hi, %i.hh               ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = xor i128 %i.hk, %i.hj
  %i.hm = trunc i128 %i.hl to i64                 ; 2 uses
  %i.hn = lshr i64 %i.hm, 57
  %i.ho = trunc nuw nsw i64 %i.hn to i8
  %i.hp = insertelement <16 x i8> poison, i8 %i.ho, i64 0
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.ih, %bb.x ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.hm, %bb.u ], [ %i.ii, %bb.x ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.bt ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hr, align 1, !noalias !41898 ; 2 uses
  %i.hs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.hq
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.v, %bb.w
  %.sroa.05.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.ig, %bb.w ], [ %i.ht, %bb.v ] ; 3 uses
  %i.hu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.hv = zext nneg i16 %i.hu to i64
  %i.hw = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.hv
  %i.hx = and i64 %i.hw, %i.bt
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hy
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -4
  %.val2.i.i.i33.i.i.i.i.i = load i32, ptr %i.ia, align 4, !noalias !41899, !noundef !67
  %i.ib = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i.i.i33.i.i.i.i.i
  br i1 %i.ib, label %bb.y, label %bb.w, !prof !77

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.w, %bb.v
  %i.ic = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.id = bitcast <16 x i1> %i.ic to i16
  %i.ie = icmp eq i16 %i.id, 0
  br i1 %i.ie, label %bb.x, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i, !prof !71

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.if = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, -1
  %i.ig = and i16 %i.if, %.sroa.05.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.ig, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ih = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ii = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.ih
  br label %bb.v

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %i.hf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %i.hf, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.1.i.i.i.i.i = phi i64 [ %.sroa.11.0223.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.11.2.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.11.0223.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.9.2.i.i.i.i.i = phi ptr [ %.sroa.9.0224.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.9.3.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.9.0224.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.097.2.i.i.i.i.i = phi i64 [ %.sroa.097.0225.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.097.3.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.097.0225.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 7 uses
  %.val.i35.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !41900, !noalias !41861, !noundef !67 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !41900, !noalias !41861, !noundef !67 ; 2 uses
  %i.ij = xor i64 %.val.i35.i.i.i.i.i, 8317987319222330741
  %i.ik = xor i64 %.val2.i.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.il = xor i64 %.val.i35.i.i.i.i.i, 7816392313619706465
  %i.im = or disjoint i64 %.pre-phi.i.i, 288230376151711744
  %i.in = xor i64 %.pre-phi.i.i, %.val2.i.i.i.i.i.i
  %i.io = xor i64 %i.in, 8098989879002948979      ; 3 uses
  %i.ip = add i64 %i.ik, %i.ij                    ; 3 uses
  %i.iq = add i64 %i.io, %i.il                    ; 2 uses
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 13)
  %i.is = xor i64 %i.ir, %i.ip                    ; 3 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 16)
  %i.iu = xor i64 %i.it, %i.iq                    ; 3 uses
  %i.iv = call noundef i64 @llvm.fshl.i64(i64 %i.ip, i64 %i.ip, i64 32)
  %i.iw = add i64 %i.is, %i.iq                    ; 3 uses
  %i.ix = add i64 %i.iu, %i.iv                    ; 2 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 17)
  %i.iz = xor i64 %i.iw, %i.iy                    ; 3 uses
  %i.ja = call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 21)
  %i.jb = xor i64 %i.ja, %i.ix                    ; 3 uses
  %i.jc = call noundef i64 @llvm.fshl.i64(i64 %i.iw, i64 %i.iw, i64 32)
  %i.jd = xor i64 %i.ix, %i.im
  %i.je = xor i64 %i.jc, 255
  %i.jf = add i64 %i.jd, %i.iz                    ; 3 uses
  %i.jg = add i64 %i.je, %i.jb                    ; 2 uses
  %i.jh = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 13)
  %i.ji = xor i64 %i.jf, %i.jh                    ; 3 uses
  %i.jj = call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 16)
  %i.jk = xor i64 %i.jg, %i.jj                    ; 3 uses
  %i.jl = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 32)
  %i.jm = add i64 %i.ji, %i.jg                    ; 3 uses
  %i.jn = add i64 %i.jk, %i.jl                    ; 2 uses
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 17)
  %i.jp = xor i64 %i.jm, %i.jo                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 21)
  %i.jr = xor i64 %i.jq, %i.jn                    ; 3 uses
  %i.js = call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 32)
  %i.jt = add i64 %i.jp, %i.jn                    ; 3 uses
  %i.ju = add i64 %i.jr, %i.js                    ; 2 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 13)
  %i.jw = xor i64 %i.jv, %i.jt                    ; 3 uses
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 16)
  %i.jy = xor i64 %i.jx, %i.ju                    ; 3 uses
  %i.jz = call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 32)
  %i.ka = add i64 %i.jw, %i.ju                    ; 3 uses
  %i.kb = add i64 %i.jy, %i.jz                    ; 2 uses
  %i.kc = call noundef i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 17)
  %i.kd = xor i64 %i.kc, %i.ka                    ; 3 uses
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 21)
  %i.kf = xor i64 %i.ke, %i.kb                    ; 3 uses
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 32)
  %i.kh = add i64 %i.kd, %i.kb
  %i.ki = add i64 %i.kf, %i.kg                    ; 2 uses
  %i.kj = call noundef i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 13)
  %i.kk = xor i64 %i.kj, %i.kh                    ; 3 uses
  %i.kl = call noundef i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 16)
  %i.km = xor i64 %i.kl, %i.ki                    ; 2 uses
  %i.kn = add i64 %i.kk, %i.ki                    ; 3 uses
  %i.ko = call noundef i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 17)
  %i.kp = call noundef i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 21)
  %i.kq = call noundef i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 32)
  %i.kr = xor i64 %i.ko, %i.kp
  %i.ks = xor i64 %i.kr, %i.kq
  %i.kt = xor i64 %i.ks, %i.kn
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.kt, i32 noundef %.sroa.4.0.i.ph.i.i.i.i.i)
          to label %bb.ae unwind label %.loopexit203.i.i.i.loopexit.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41861
  %i.ku = load ptr, ptr %i.ab, align 8, !noalias !41861, !nonnull !67, !noundef !67 ; 2 uses
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41861
  store i32 %.sroa.4.0.i.ph.i.i.i.i.i, ptr %i.e, align 4, !noalias !41861
  store ptr %i.ku, ptr %i.f, align 8, !noalias !41861
  store ptr %i.kv, ptr %.sroa.4109.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  store ptr %i.e, ptr %.sroa.5110.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  store ptr %8, ptr %.sroa.6111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.z unwind label %.loopexit203.i.i.i.loopexit.i.i, !noalias !41861

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41861
  %.sroa.0141.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !41861 ; 5 uses
  %.sroa.6144.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6144.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861 ; 3 uses
  %.sroa.7149.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7149.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41861 ; 4 uses
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.097.0225.i.i.i.i.i, -1
  br i1 %.not12.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kw = icmp ult i64 %.sroa.11.0223.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.kw)
  %i.kx = icmp ult i64 %.sroa.7149.0.copyload.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.kx)
  %i.ky = icmp samesign ult i64 %.sroa.11.0223.i.i.i.i.i, %.sroa.7149.0.copyload.i.i.i.i.i
  br i1 %i.ky, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.0141.0.copyload.i.i.i.i.i, -1
  br i1 %.not13.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.kz = icmp eq i64 %.sroa.0141.0.copyload.i.i.i.i.i, 0
  br i1 %i.kz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.0.val.off.i42.i.i.i.i.i = add i64 %.sroa.097.0225.i.i.i.i.i, -1
  %switch.i43.i.i.i.i.i = icmp ult i64 %.0.val.off.i42.i.i.i.i.i, -2
  br i1 %switch.i43.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.0141.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.0141.0.copyload.i.i.i.i.i, %bb.ac ], [ %.sroa.097.0225.i.i.i.i.i, %bb.ad ]
  %.sroa.6144.0.copyload.sink264.i.i.i.i.i = phi ptr [ %.sroa.6144.0.copyload.i.i.i.i.i, %bb.ac ], [ %.sroa.9.0224.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.11.2.ph.i.i.i.i.i = phi i64 [ %.sroa.11.0223.i.i.i.i.i, %bb.ac ], [ %.sroa.7149.0.copyload.i.i.i.i.i, %bb.ad ]
  %.sroa.9.3.ph.i.i.i.i.i = phi ptr [ %.sroa.9.0224.i.i.i.i.i, %bb.ac ], [ %.sroa.6144.0.copyload.i.i.i.i.i, %bb.ad ]
  %.sroa.097.3.ph.i.i.i.i.i = phi i64 [ %.sroa.097.0225.i.i.i.i.i, %bb.ac ], [ %.sroa.0141.0.copyload.i.i.i.i.i, %bb.ad ]
  %i.la = shl nuw i64 %.sroa.0141.0.copyload.sink.i.i.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6144.0.copyload.sink264.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6144.0.copyload.sink264.i.i.i.i.i, i64 noundef %i.la, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !41861
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i, %bb.ad, %bb.ac, %bb.ab
  %.sroa.11.2.i.i.i.i.i = phi i64 [ %.sroa.7149.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.11.0223.i.i.i.i.i, %bb.ac ], [ %.sroa.11.0223.i.i.i.i.i, %bb.ab ], [ %.sroa.11.2.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  %.sroa.9.3.i.i.i.i.i = phi ptr [ %.sroa.6144.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.9.0224.i.i.i.i.i, %bb.ac ], [ %.sroa.9.0224.i.i.i.i.i, %bb.ab ], [ %.sroa.9.3.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  %.sroa.097.3.i.i.i.i.i = phi i64 [ %.sroa.0141.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.097.0225.i.i.i.i.i, %bb.ac ], [ %.sroa.097.0225.i.i.i.i.i, %bb.ab ], [ %.sroa.097.3.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41861
  br label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i

bb.ae:                                            ; preds = %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !41861 ; 6 uses
  br i1 %i.bq, label %.thread200.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae
  %.val24.i.i.i.i.i.i = load <16 x i8>, ptr %i.bu, align 16, !noalias !41901
  %i.lb = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i, splat (i8 -1)
  %i.lc = bitcast <16 x i1> %i.lb to i16
  %i.ld = load ptr, ptr %i.ab, align 8, !noalias !41861, !nonnull !67 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !41861 ; 2 uses
  %.val4.i87.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !41861 ; 2 uses
  %i.lf = load i64, ptr %i.ad, align 8, !noalias !41861 ; 3 uses
  %i.lg = load ptr, ptr %i.ac, align 8, !noalias !41861, !nonnull !67 ; 3 uses
  %i.lh = xor i64 %.val3.i.i.i.i.i.i, 8317987319222330741
  %i.li = xor i64 %.val4.i87.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.lj = xor i64 %.val3.i.i.i.i.i.i, 7816392313619706465
  %i.lk = add i64 %i.li, %i.lh                    ; 3 uses
  %i.ll = call i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 13)
  %i.lm = xor i64 %i.ll, %i.lk                    ; 3 uses
  %i.ln = call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 32)
  %i.lo = call i64 @llvm.fshl.i64(i64 %i.lm, i64 %i.lm, i64 17)
  %invariant.op = xor i64 %.val4.i87.i.i.i.i.i, 8387220255154660723
  br label %bb.af

bb.af:                                            ; preds = %.critedge.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.lp = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.mc, %.critedge.backedge.i.i.i.i.i ]
  %.lcssa1014.i222.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.lcssa1013.i.i.i.i.i.i, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %i.lq = phi i16 [ %i.lc, %.lr.ph.i.i.i.i.i ], [ %i.lz, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %.lcssa18.i221.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.lcssa17.i.i.i.i.i.i, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lq, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.lr = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa18.i221.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.ls = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1014.i222.i.i.i.i.i, %bb.af ]
  %.val68.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lr, align 16, !noalias !41902
  %i.lt = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.lu = getelementptr inbounds i8, ptr %i.ls, i64 -64 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.lt to i16 ; 2 uses
  %.not.i.i.i.i48.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i48.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.af
  %.lcssa17.i.i.i.i.i.i = phi ptr [ %.lcssa18.i221.i.i.i.i.i, %bb.af ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa1013.i.i.i.i.i.i = phi ptr [ %.lcssa1014.i222.i.i.i.i.i, %bb.af ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.lq, %bb.af ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.lx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ly = zext nneg i16 %i.lx to i64
  %i.lz = and i16 %i.lw, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ma = sub nsw i64 0, %i.ly
  %i.mb = getelementptr inbounds [4 x i8], ptr %.lcssa1013.i.i.i.i.i.i, i64 %i.ma
  %i.mc = add i64 %i.lp, -1                       ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.mb, i64 -4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41903)
  switch i64 %.pre.i.i.i.i.i, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i [
    i64 0, label %.noexc49.thread.thread.i.i.i.i.i
    i64 1, label %.noexc49.i.i.i.i.i
  ]

.noexc49.i.i.i.i.i:                               ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i
  %.val.i84.i.i.i.i.i = load i32, ptr %i.md, align 4, !alias.scope !41903, !noalias !41904, !noundef !67
  %.val2.i85.i.i.i.i.i = load i32, ptr %i.le, align 4, !noalias !41905, !noundef !67
  %.not226.i.i.i.i.i = icmp eq i32 %.val.i84.i.i.i.i.i, %.val2.i85.i.i.i.i.i
  br i1 %.not226.i.i.i.i.i, label %.critedge.backedge.i.i.i.i.i, label %.noexc49.thread.thread.i.i.i.i.i

.critedge.backedge.i.i.i.i.i:                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.noexc49.i.i.i.i.i
  %.not19.not.not.i.not.i.i.i.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not19.not.not.i.not.i.i.i.i.i, label %.thread200.thread.i.i.i.i.i, label %bb.af

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i: ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i
  %.val.i.i5.i.i = load i32, ptr %i.md, align 4, !alias.scope !41906, !noalias !41907, !noundef !67 ; 2 uses
  %i.me = zext i32 %.val.i.i5.i.i to i64
  %i.mf = or disjoint i64 %i.me, 288230376151711744 ; 2 uses
  %.reass.i.reass.i.reass.reass = xor i64 %i.mf, %invariant.op ; 3 uses
  %i.mg = add i64 %.reass.i.reass.i.reass.reass, %i.lj ; 2 uses
  %i.mh = call noundef i64 @llvm.fshl.i64(i64 %.reass.i.reass.i.reass.reass, i64 %.reass.i.reass.i.reass.reass, i64 16)
  %i.mi = xor i64 %i.mh, %i.mg                    ; 3 uses
  %i.mj = add i64 %i.mg, %i.lm                    ; 3 uses
  %i.mk = add i64 %i.mi, %i.ln                    ; 2 uses
  %i.ml = xor i64 %i.mj, %i.lo                    ; 3 uses
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mi, i64 %i.mi, i64 21)
  %i.mn = xor i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = call noundef i64 @llvm.fshl.i64(i64 %i.mj, i64 %i.mj, i64 32)
  %i.mp = xor i64 %i.mk, %i.mf
  %i.mq = xor i64 %i.mo, 255
  %i.mr = add i64 %i.mp, %i.ml                    ; 3 uses
  %i.ms = add i64 %i.mn, %i.mq                    ; 2 uses
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.ml, i64 %i.ml, i64 13)
  %i.mu = xor i64 %i.mr, %i.mt                    ; 3 uses
  %i.mv = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 16)
  %i.mw = xor i64 %i.mv, %i.ms                    ; 3 uses
  %i.mx = call noundef i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 32)
  %i.my = add i64 %i.mu, %i.ms                    ; 3 uses
  %i.mz = add i64 %i.mw, %i.mx                    ; 2 uses
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 17)
  %i.nb = xor i64 %i.my, %i.na                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.mw, i64 %i.mw, i64 21)
  %i.nd = xor i64 %i.nc, %i.mz                    ; 3 uses
  %i.ne = call noundef i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 32)
  %i.nf = add i64 %i.nb, %i.mz                    ; 3 uses
  %i.ng = add i64 %i.nd, %i.ne                    ; 2 uses
  %i.nh = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 13)
  %i.ni = xor i64 %i.nh, %i.nf                    ; 3 uses
  %i.nj = call noundef i64 @llvm.fshl.i64(i64 %i.nd, i64 %i.nd, i64 16)
  %i.nk = xor i64 %i.nj, %i.ng                    ; 3 uses
  %i.nl = call noundef i64 @llvm.fshl.i64(i64 %i.nf, i64 %i.nf, i64 32)
  %i.nm = add i64 %i.ni, %i.ng                    ; 3 uses
  %i.nn = add i64 %i.nk, %i.nl                    ; 2 uses
  %i.no = call noundef i64 @llvm.fshl.i64(i64 %i.ni, i64 %i.ni, i64 17)
  %i.np = xor i64 %i.no, %i.nm                    ; 3 uses
  %i.nq = call noundef i64 @llvm.fshl.i64(i64 %i.nk, i64 %i.nk, i64 21)
  %i.nr = xor i64 %i.nq, %i.nn                    ; 3 uses
  %i.ns = call noundef i64 @llvm.fshl.i64(i64 %i.nm, i64 %i.nm, i64 32)
  %i.nt = add i64 %i.np, %i.nn
  %i.nu = add i64 %i.nr, %i.ns                    ; 2 uses
  %i.nv = call noundef i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 13)
  %i.nw = xor i64 %i.nv, %i.nt                    ; 3 uses
  %i.nx = call noundef i64 @llvm.fshl.i64(i64 %i.nr, i64 %i.nr, i64 16)
  %i.ny = xor i64 %i.nx, %i.nu                    ; 2 uses
  %i.nz = add i64 %i.nw, %i.nu                    ; 3 uses
  %i.oa = call noundef i64 @llvm.fshl.i64(i64 %i.nw, i64 %i.nw, i64 17)
  %i.ob = call noundef i64 @llvm.fshl.i64(i64 %i.ny, i64 %i.ny, i64 21)
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nz, i64 %i.nz, i64 32)
  %i.od = xor i64 %i.ob, %i.oa
  %i.oe = xor i64 %i.od, %i.oc
  %i.of = xor i64 %i.oe, %i.nz                    ; 2 uses
  %i.og = lshr i64 %i.of, 57
  %i.oh = trunc nuw nsw i64 %i.og to i8
  %i.oi = insertelement <16 x i8> poison, i8 %i.oh, i64 0
  %i.oj = shufflevector <16 x i8> %i.oi, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i
  %.sroa.011.0.i.i.i.i88.i.i.i.i.i = phi i64 [ 0, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %i.pd, %bb.aj ]
  %.pn.i.i.i89.i.i.i.i.i = phi i64 [ %i.of, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %i.pe, %bb.aj ]
  %.sroa.01.0.i.i.i.i90.i.i.i.i.i = and i64 %.pn.i.i.i89.i.i.i.i.i, %i.lf ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.sroa.01.0.i.i.i.i90.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i91.i.i.i.i.i = load <16 x i8>, ptr %i.ok, align 1, !noalias !41908 ; 2 uses
  %i.ol = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i91.i.i.i.i.i, %i.oj
  %i.om = bitcast <16 x i1> %i.ol to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i.i.i.i = icmp eq i16 %i.om, 0
  br i1 %.not.i.not36.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i94.i.i.i.i.i, label %.lr.ph.i.i.i92.i.i.i.i.i

.lr.ph.i.i.i92.i.i.i.i.i:                         ; preds = %bb.ag, %bb.ai
  %.sroa.05.0.i37.i.i.i.i.i.i.i.i = phi i16 [ %i.pc, %bb.ai ], [ %i.om, %bb.ag ] ; 3 uses
  %i.on = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i.i.i.i, i1 true)
end_hunk_5
begin_hunk_6_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_10UndirectedEs_0E0ENCB8J_0EEB8O_:bb.a
  store i64 %.sroa.14.0.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !41949, !noalias !41950
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.614.i.i.i.i.sroa.0.2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !41950
  %.sroa.614.i.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.614.i.i.i.i.sroa.6.2, ptr %.sroa.614.i.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.i.sroa_idx, align 8, !noalias !41950
  br label %bb.bs

bb.bd:                                            ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  store i64 %.sink.i, ptr %i.m, align 8, !alias.scope !41852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.p, ptr %i.l, align 8
  %.not.i.i = icmp ugt i64 %i.p, %6
  br i1 %.not.i.i, label %bb.be, label %_RNvXs7_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1533, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4217) #60, !noalias !41951
  unreachable

_RNvXs7_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bd
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.p
  %i.uc = sub nuw nsw i64 %6, %i.p
  %i.ud = load ptr, ptr %7, align 8, !alias.scope !41952, !noalias !41953, !nonnull !67, !noundef !67 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !alias.scope !41952, !noalias !41953, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !alias.scope !41952, !noalias !41953, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8, !alias.scope !41952, !noalias !41953, !nonnull !67, !noundef !67 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ul = load ptr, ptr %i.uk, align 8, !alias.scope !41954, !noalias !41955, !nonnull !67, !noundef !67 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !41956, !noalias !41957, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ub, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.uc, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ud, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.uf, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.uh, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.uj, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ul, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.un, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.l, ptr %i.uo, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.ud, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.uf, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.uh, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.uj, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.ul, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.un, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.up = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i18 = load ptr, ptr %i.up, align 8, !noalias !41958, !noundef !67 ; 2 uses
  %i.uq = icmp eq ptr %.val.i.i18, null
  br i1 %i.uq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs7_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtBY_10filter_map17FilterMapConsumerINtNtBY_3map11MapConsumerINtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2y_EERINvNvB5r_10max_by_key7max_keyB6f_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6d_ENtNtB7C_7default7Default7defaultEB7u_NCINvB5p_8opt_foldB6d_B6S_E0ENCINvB6W_3keyB6f_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2C_10UndirectedEs_0E0ENCB9C_0EE0NCBR_s_0B7x_B7x_E0B9H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i18, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit

bb.bg:                                            ; preds = %_RNvXs7_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ur = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !41958, !inline_history !41827
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !41958, !nonnull !67, !noundef !67 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 128 ; 2 uses
  %.val.i.i.i16 = load ptr, ptr %i.up, align 8, !noalias !41959, !noundef !67 ; 4 uses
  %i.uu = icmp eq ptr %.val.i.i.i16, null
  br i1 %i.uu, label %bb.bi, label %bb.bh, !prof !71

bb.bh:                                            ; preds = %bb.bg
  %i.uv = getelementptr inbounds nuw i8, ptr %.val.i.i.i16, i64 272
  %i.uw = load ptr, ptr %i.uv, align 16, !noalias !41959, !nonnull !67, !noundef !67
  %.not.i17 = icmp eq ptr %i.uw, %i.us
  br i1 %.not.i17, label %bb.bj, label %bb.bk, !prof !77

bb.bi:                                            ; preds = %bb.bg
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1N_10filter_map17FilterMapConsumerINtNtB1N_3map11MapConsumerINtNtB1N_4fold12FoldConsumerINtNtB1N_6reduce14ReduceConsumerNCINvNvNtB1N_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB3n_EERINvNvB6k_10max_by_key7max_keyB79_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB77_ENtNtB8w_7default7Default7defaultEB8o_NCINvB6i_8opt_foldB77_B7M_E0ENCINvB7Q_3keyB79_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3r_10UndirectedEs_0E0ENCBaw_0EE0NCB1G_s_0B8r_B8r_E0TB8r_B8r_EEBaB_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull align 128 %i.ut, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !41831
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit

bb.bj:                                            ; preds = %bb.bh
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtBY_10filter_map17FilterMapConsumerINtNtBY_3map11MapConsumerINtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2y_EERINvNvB5r_10max_by_key7max_keyB6f_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6d_ENtNtB7C_7default7Default7defaultEB7u_NCINvB5p_8opt_foldB6d_B6S_E0ENCINvB6W_3keyB6f_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2C_10UndirectedEs_0E0ENCB9C_0EE0NCBR_s_0B7x_B7x_E0B9H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i16, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit

bb.bk:                                            ; preds = %bb.bh
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1O_10filter_map17FilterMapConsumerINtNtB1O_3map11MapConsumerINtNtB1O_4fold12FoldConsumerINtNtB1O_6reduce14ReduceConsumerNCINvNvNtB1O_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB3o_EERINvNvB6l_10max_by_key7max_keyB7a_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB78_ENtNtB8x_7default7Default7defaultEB8p_NCINvB6j_8opt_foldB78_B7N_E0ENCINvB7R_3keyB7a_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3s_10UndirectedEs_0E0ENCBax_0EE0NCB1H_s_0B8s_B8s_E0TB8s_B8s_EEBaC_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull align 128 %i.ut, ptr noundef nonnull align 128 %.val.i.i.i16, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !41831
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !41960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ux, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41962)
  call void @llvm.experimental.noalias.scope.decl(metadata !41963)
  call void @llvm.experimental.noalias.scope.decl(metadata !41964)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !range !66, !alias.scope !41963, !noalias !41965, !noundef !67
  %.not.i.i15 = icmp eq i64 %i.uz, -1
  %i.va = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !range !66, !alias.scope !41964, !noalias !41966, !noundef !67
  %.not1.i.i = icmp eq i64 %i.vb, -1              ; 2 uses
  br i1 %.not.i.i15, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit
  br i1 %.not1.i.i, label %bb.bo, label %bb.bp

bb.bm:                                            ; preds = %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB1p_10filter_map17FilterMapConsumerINtNtB1p_3map11MapConsumerINtNtB1p_4fold12FoldConsumerINtNtB1p_6reduce14ReduceConsumerNCINvNvNtB1p_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB2Z_EERINvNvB5W_10max_by_key7max_keyB6L_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB6J_ENtNtB88_7default7Default7defaultEB80_NCINvB5U_8opt_foldB6J_B7o_E0ENCINvB7s_3keyB6L_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB33_10UndirectedEs_0E0ENCBa8_0EE0NCB1i_s_0B83_B83_E0TB83_B83_EEBad_.exit
  br i1 %.not1.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.vc, align 8, !alias.scope !41967, !noalias !41968
  br label %_RNvXs2_NtNtCs1JJT1bG4y5L_5rayon4iter6reduceINtB5_14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB18_10max_by_key7max_keyB1W_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB1U_ENtNtB42_7default7Default7defaultEINtNtB7_8plumbing7ReducerB3X_E6reduceCskcxRuJ53GpR_9rustworkx.exit

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %.sink.i.i = phi ptr [ %i.d, %bb.bl ], [ %i.ux, %bb.bm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i, i64 32, i1 false), !noalias !41969
  br label %_RNvXs2_NtNtCs1JJT1bG4y5L_5rayon4iter6reduceINtB5_14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB18_10max_by_key7max_keyB1W_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB1U_ENtNtB42_7default7Default7defaultEINtNtB7_8plumbing7ReducerB3X_E6reduceCskcxRuJ53GpR_9rustworkx.exit

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.vd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41971)
  call void @llvm.experimental.noalias.scope.decl(metadata !41972)
  %.val10.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !41971, !noalias !41973, !noundef !67
  %.val11.i.i.i.i.i = load i64, ptr %i.vd, align 8, !alias.scope !41972, !noalias !41974, !noundef !67
  %i.ve = icmp ugt i64 %.val10.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.ve, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val6.i.i.i.i.i = load i64, ptr %i.vf, align 8, !alias.scope !41972, !noalias !41974 ; 2 uses
  %i.vg = icmp eq i64 %.val6.i.i.i.i.i, 0
  br i1 %i.vg, label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10max_by_key7max_keyINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEjEINtB4_2FnTTjB1V_EB3s_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit13.sink.split.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.vh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i.i.i.i.i = load i64, ptr %i.vh, align 8, !alias.scope !41971, !noalias !41973 ; 2 uses
  %i.vi = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.vi, label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10max_by_key7max_keyINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEjEINtB4_2FnTTjB1V_EB3s_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit13.sink.split.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit13.sink.split.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.sink18.i.i.i.i.i = phi ptr [ %i.vd, %bb.bq ], [ %i.b, %bb.br ]
  %.val4.sink.i.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %bb.bq ], [ %.val4.i.i.i.i.i, %bb.br ]
  %i.vj = getelementptr inbounds nuw i8, ptr %.sink18.i.i.i.i.i, i64 16
  %.val5.i.i.i.i.i = load ptr, ptr %i.vj, align 8, !alias.scope !41975, !noalias !41976, !nonnull !67, !noundef !67
  %i.vk = shl nuw i64 %.val4.sink.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.vk, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !41977
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10max_by_key7max_keyINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEjEINtB4_2FnTTjB1V_EB3s_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10max_by_key7max_keyINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEjEINtB4_2FnTTjB1V_EB3s_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit13.sink.split.i.i.i.i.i, %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !41968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs2_NtNtCs1JJT1bG4y5L_5rayon4iter6reduceINtB5_14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB18_10max_by_key7max_keyB1W_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB1U_ENtNtB42_7default7Default7defaultEINtNtB7_8plumbing7ReducerB3X_E6reduceCskcxRuJ53GpR_9rustworkx.exit

_RNvXs2_NtNtCs1JJT1bG4y5L_5rayon4iter6reduceINtB5_14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB18_10max_by_key7max_keyB1W_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB1U_ENtNtB42_7default7Default7defaultEINtNtB7_8plumbing7ReducerB3X_E6reduceCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bn, %bb.bo, %_RNvXNtNtNtCslwFuT2d6ECx_4core3ops8function5implsRINvNvNtNtCs1JJT1bG4y5L_5rayon4iter16ParallelIterator10max_by_key7max_keyINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEjEINtB4_2FnTTjB1V_EB3s_EE4callCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_10UndirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E8completeB6S_.exit, %_RNvXs2_NtNtCs1JJT1bG4y5L_5rayon4iter6reduceINtB5_14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB18_10max_by_key7max_keyB1W_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB1U_ENtNtB42_7default7Default7defaultEINtNtB7_8plumbing7ReducerB3X_E6reduceCskcxRuJ53GpR_9rustworkx.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_8DirectedEs_0E0ENCB8J_0EEB8O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 25 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 16 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.n, align 8
  store i64 %3, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %4, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42228)
  %i.p = lshr i64 %1, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.p, %4
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !42228
  %i.r = lshr i64 %3, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  %i.t = lshr i64 %3, 1
  br label %bb.bd

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !42229, !noalias !42230, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42231)
  %.idx.i = shl nuw nsw i64 %6, 2
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.i
  %i.x = icmp eq i64 %6, 0
  br i1 %i.x, label %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E8completeB6S_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4110.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6112.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6145.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i, %.lr.ph.i.i
  %.sroa.15.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.8.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 3 uses
  %.sroa.12.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.7.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 5 uses
  %.sroa.9119.0.copyload.i.i = phi i64 [ -1, %.lr.ph.i.i ], [ %.sroa.6.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 8 uses
  %.sroa.7118.0.copyload.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.590.0.i.i, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 4 uses
  %.sroa.0.0254.i.i = phi ptr [ %5, %.lr.ph.i.i ], [ %i.aj, %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter10filter_mapINtB5_15FilterMapFolderINtNtB7_3map9MapFolderINtNtB7_4fold10FoldFolderINtNtB7_6reduce12ReduceFolderNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB2s_10max_by_key7max_keyB3g_jEE0INtNtCslwFuT2d6ECx_4core6option6OptionB3e_EEB5e_NCINvB2q_8opt_foldB3e_B4C_E0ENCINvB4G_3keyB3g_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB3R_8DirectedEs_0E0ENCB6N_0EINtNtB7_8plumbing6FolderRB3N_E7consumeB6S_.exit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0254.i.i, i64 4 ; 2 uses
  %.val.i.i12 = load i32, ptr %.sroa.0.0254.i.i, align 4, !alias.scope !42231, !noalias !42232, !noundef !67 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !noalias !42233, !nonnull !67, !align !98, !noundef !67
  %.val2.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !42233, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.ak = load ptr, ptr %.val.i.i.i, align 8, !noalias !42234, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42235)
  call void @llvm.experimental.noalias.scope.decl(metadata !42236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !42237
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB1L_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.i, i32 %.val.i.i12)
          to label %.noexc.i.i.i unwind label %bb.ax

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42237
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !42237
  %i.al = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !42237 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !104

bb.h:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !42237

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.i
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i.i.i.i.i ], [ %i.ba, %bb.i ], [ %lpad.phi.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42238)
  call void @llvm.experimental.noalias.scope.decl(metadata !42239), !noalias !42240
  call void @llvm.experimental.noalias.scope.decl(metadata !42241), !noalias !42240
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !42242, !noalias !42237, !noundef !67 ; 4 uses
  %i.an = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !42242, !noalias !42237, !nonnull !67, !noundef !67
  %i.ao = shl i64 %.val1.i.i.i.i.i, 3
  %i.ap = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ap), !noalias !42240
  %i.aq = and i64 %i.ao, -16                      ; 2 uses
  %i.ar = add i64 %i.aq, 16                       ; 2 uses
  %i.as = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !42240
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !42240
  %i.aw = sub nuw nsw i64 -16, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.aw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !42243
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !42242, !noalias !42237 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs1JJT1bG4y5L_5rayon4iter6reduce12ReduceFolderNCINvNvNtBG_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB1z_10max_by_key7max_keyB2n_jEE0INtNtB4_6option6OptionB2l_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !42242, !noalias !42237, !nonnull !67, !noundef !67
  %i.az = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !42243
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs1JJT1bG4y5L_5rayon4iter6reduce12ReduceFolderNCINvNvNtBG_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEERINvNvB1z_10max_by_key7max_keyB2n_jEE0INtNtB4_6option6OptionB2l_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42244)
  call void @llvm.experimental.noalias.scope.decl(metadata !42245)
  call void @llvm.experimental.noalias.scope.decl(metadata !42246)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !42247, !noalias !42248, !nonnull !67, !noundef !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !42247, !noalias !42248, !noundef !67 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val6.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !42247, !noalias !42248, !noundef !67 ; 2 uses
  %i.bg = zext i32 %.val.i.i12 to i64             ; 2 uses
  %i.bh = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !42235, !noalias !42249 ; 2 uses
  br i1 %i.bh, label %bb.j, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.j:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.bg ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !42250, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bl, align 8, !noalias !42250
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %bb.j, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ -1, %bb.j ], [ -1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i ]
  store ptr %i.bc, ptr %i.al, align 8, !noalias !42237
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.be, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  %.sroa.6.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 -1, ptr %.sroa.6.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !noalias !42237
  %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 -1, ptr %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  store i64 1, ptr %i.h, align 8, !noalias !42237
  store ptr %i.al, ptr %i.y, align 8, !noalias !42237
  store i64 1, ptr %i.z, align 8, !noalias !42237
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !42236, !noalias !42251 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 32
  %.val.i32.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !42236, !noalias !42251
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !42236, !noalias !42251 ; 2 uses
  %i.bs = load ptr, ptr %.val2.i.i.i, align 8, !alias.scope !42236, !noalias !42251, !nonnull !67 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i
  %.val29.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !42237 ; 2 uses
  %i.bu = icmp eq i64 %.val29.i.i.i.i.i, 0
  br i1 %i.bu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %bb.k
  %.val30.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !42237, !nonnull !67, !noundef !67
  %i.bv = shl nuw i64 %.val29.i.i.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !42237
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.l:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.097.0228.i.i.i.i.i = phi i64 [ -1, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.097.5.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 15 uses
  %.sroa.9100.0227.i.i.i.i.i = phi ptr [ undef, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.9100.5.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 13 uses
  %.sroa.11.0226.i.i.i.i.i = phi i64 [ undef, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 12 uses
  %i.bw = phi i64 [ 1, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit81.i.i.i.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %i.y, align 8, !noalias !42237, !nonnull !67, !noundef !67
  %i.by = getelementptr [32 x i8], ptr %i.bx, i64 %i.bw ; 5 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !42252)
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !42252, !noalias !42237, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !42252, !noalias !42237, !noundef !67 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 -16    ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !42252, !noalias !42237, !noundef !67
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = icmp ugt i64 %i.cc, %i.cf
  br i1 %i.cg, label %bb.m, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.ch = getelementptr i8, ptr %i.by, i64 -12    ; 2 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.ch, align 4, !alias.scope !42252, !noalias !42237
  %i.ci = getelementptr i8, ptr %i.by, i64 -8
  %.val4.i.i.i.i.i.i = load i32, ptr %i.ci, align 8, !alias.scope !42252, !noalias !42237
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cf ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !noalias !42253, !noundef !67
  store i32 %i.cl, ptr %i.cd, align 8, !alias.scope !42252, !noalias !42237
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !42253, !noundef !67
  br label %.loopexit.i.i.i.i.i

bb.n:                                             ; preds = %bb.o, %.preheader.i.i.i.i.i.i
  %i.co = phi i32 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.ct, %bb.o ]
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = icmp ugt i64 %i.cc, %i.cp
  br i1 %i.cq, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cp ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !42253, !noundef !67 ; 2 uses
  store i32 %i.ct, ptr %i.ch, align 4, !alias.scope !42252, !noalias !42237
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.val.i.i.i.i.i.i = load i32, ptr %i.cu, align 8, !noalias !42253, !noundef !67 ; 2 uses
  %i.cv = icmp eq i32 %.val.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.cv, label %bb.n, label %.loopexit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42237
  call void @llvm.experimental.noalias.scope.decl(metadata !42254)
  call void @llvm.experimental.noalias.scope.decl(metadata !42255)
  call void @llvm.experimental.noalias.scope.decl(metadata !42256)
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !42257, !noalias !42237, !noundef !67 ; 4 uses
end_hunk_6
begin_hunk_7_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_8DirectedEs_0E0ENCB8J_0EEB8O_:bb.a
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.gg, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i20.i.i

.lr.ph.i.i.i20.i.i:                               ; preds = %bb.p, %bb.r
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.gw, %bb.r ], [ %i.gg, %bb.p ] ; 3 uses
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.gi
  %i.gk = and i64 %i.gj, %i.ga
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gl
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %.val.i.i.i.i21.i.i = load i64, ptr %i.gn, align 8, !noalias !42269, !noundef !67 ; 3 uses
  %i.go = icmp ult i64 %.val.i.i.i.i21.i.i, %i.dk
  br i1 %i.go, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i20.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i21.i.i, i64 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc.i.i unwind label %.loopexit206.i.i.i.loopexit.split-lp.i.i, !noalias !42270

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20.i.i
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %.val.i.i.i.i21.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.gq, align 4, !noalias !42271, !noundef !67
  %i.gr = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.gr, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.r, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.r, %bb.p
  %i.gs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.gt = bitcast <16 x i1> %i.gs to i16
  %i.gu = icmp eq i16 %i.gt, 0
  br i1 %i.gu, label %bb.s, label %.thread193.i.i, !prof !71

bb.r:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.gv = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.gw = and i16 %i.gv, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i20.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gx = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.gy = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.gx
  br label %bb.p

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.gz = load ptr, ptr %i.ab, align 8, !alias.scope !42259, !noalias !42260, !nonnull !67, !noundef !67
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.val2.i18.i.i = load i32, ptr %i.ha, align 4, !noalias !42272, !noundef !67
  %i.hb = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i18.i.i
  br i1 %i.hb, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.thread193.i.i

.thread193.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i, %bb.t, %.loopexit.i.i.i.i.i
  br i1 %i.bo, label %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i, label %bb.u

.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i: ; preds = %.thread193.i.i
  %.pre.i.i = zext i32 %.sroa.4.0.i.ph.i.i.i.i.i to i64
  br label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i

bb.u:                                             ; preds = %.thread193.i.i
  %i.hc = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !42273, !noundef !67
  %i.hd = zext i32 %.sroa.4.0.i.ph.i.i.i.i.i to i64 ; 3 uses
  %i.he = xor i64 %.val.i32.i.i.i.i.i, %i.hd
  %i.hf = zext i64 %i.he to i128
  %i.hg = zext i64 %i.hc to i128
  %i.hh = mul nuw i128 %i.hg, %i.hf               ; 2 uses
  %i.hi = lshr i128 %i.hh, 64
  %i.hj = xor i128 %i.hi, %i.hh
  %i.hk = trunc i128 %i.hj to i64                 ; 2 uses
  %i.hl = lshr i64 %i.hk, 57
  %i.hm = trunc nuw nsw i64 %i.hl to i8
  %i.hn = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %i.ho = shufflevector <16 x i8> %i.hn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.if, %bb.x ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.hk, %bb.u ], [ %i.ig, %bb.x ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.br ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hp, align 1, !noalias !42274 ; 2 uses
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.ho
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.v, %bb.w
  %.sroa.05.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.ie, %bb.w ], [ %i.hr, %bb.v ] ; 3 uses
  %i.hs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.ht
  %i.hv = and i64 %i.hu, %i.br
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %.val2.i.i.i33.i.i.i.i.i = load i32, ptr %i.hy, align 4, !noalias !42275, !noundef !67
  %i.hz = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, %.val2.i.i.i33.i.i.i.i.i
  br i1 %i.hz, label %bb.y, label %bb.w, !prof !77

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.w, %bb.v
  %i.ia = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ib = bitcast <16 x i1> %i.ia to i16
  %i.ic = icmp eq i16 %i.ib, 0
  br i1 %i.ic, label %bb.x, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i, !prof !71

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.id = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, -1
  %i.ie = and i16 %i.id, %.sroa.05.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.ie, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.if = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ig = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.if
  br label %bb.v

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %i.hd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %i.hd, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.1.i.i.i.i.i = phi i64 [ %.sroa.11.0226.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.11.2.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.11.0226.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.9100.2.i.i.i.i.i = phi ptr [ %.sroa.9100.0227.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.9100.3.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.9100.0227.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.097.2.i.i.i.i.i = phi i64 [ %.sroa.097.0228.i.i.i.i.i, %.thread193._RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49_crit_edge.i.i ], [ %.sroa.097.3.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i ], [ %.sroa.097.0228.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 7 uses
  %.val.i35.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !42276, !noalias !42237, !noundef !67 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !42276, !noalias !42237, !noundef !67 ; 2 uses
  %i.ih = xor i64 %.val.i35.i.i.i.i.i, 8317987319222330741
  %i.ii = xor i64 %.val2.i.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.ij = xor i64 %.val.i35.i.i.i.i.i, 7816392313619706465
  %i.ik = or disjoint i64 %.pre-phi.i.i, 288230376151711744
  %i.il = xor i64 %.pre-phi.i.i, %.val2.i.i.i.i.i.i
  %i.im = xor i64 %i.il, 8098989879002948979      ; 3 uses
  %i.in = add i64 %i.ii, %i.ih                    ; 3 uses
  %i.io = add i64 %i.im, %i.ij                    ; 2 uses
  %i.ip = call noundef i64 @llvm.fshl.i64(i64 %i.ii, i64 %i.ii, i64 13)
  %i.iq = xor i64 %i.ip, %i.in                    ; 3 uses
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 16)
  %i.is = xor i64 %i.ir, %i.io                    ; 3 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 32)
  %i.iu = add i64 %i.iq, %i.io                    ; 3 uses
  %i.iv = add i64 %i.is, %i.it                    ; 2 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 17)
  %i.ix = xor i64 %i.iu, %i.iw                    ; 3 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 21)
  %i.iz = xor i64 %i.iy, %i.iv                    ; 3 uses
  %i.ja = call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 32)
  %i.jb = xor i64 %i.iv, %i.ik
  %i.jc = xor i64 %i.ja, 255
  %i.jd = add i64 %i.jb, %i.ix                    ; 3 uses
  %i.je = add i64 %i.jc, %i.iz                    ; 2 uses
  %i.jf = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 13)
  %i.jg = xor i64 %i.jd, %i.jf                    ; 3 uses
  %i.jh = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 16)
  %i.ji = xor i64 %i.je, %i.jh                    ; 3 uses
  %i.jj = call noundef i64 @llvm.fshl.i64(i64 %i.jd, i64 %i.jd, i64 32)
  %i.jk = add i64 %i.jg, %i.je                    ; 3 uses
  %i.jl = add i64 %i.ji, %i.jj                    ; 2 uses
  %i.jm = call noundef i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 17)
  %i.jn = xor i64 %i.jk, %i.jm                    ; 3 uses
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 21)
  %i.jp = xor i64 %i.jo, %i.jl                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 32)
  %i.jr = add i64 %i.jn, %i.jl                    ; 3 uses
  %i.js = add i64 %i.jp, %i.jq                    ; 2 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 13)
  %i.ju = xor i64 %i.jt, %i.jr                    ; 3 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 16)
  %i.jw = xor i64 %i.jv, %i.js                    ; 3 uses
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 32)
  %i.jy = add i64 %i.ju, %i.js                    ; 3 uses
  %i.jz = add i64 %i.jw, %i.jx                    ; 2 uses
  %i.ka = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 17)
  %i.kb = xor i64 %i.ka, %i.jy                    ; 3 uses
  %i.kc = call noundef i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 21)
  %i.kd = xor i64 %i.kc, %i.jz                    ; 3 uses
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 32)
  %i.kf = add i64 %i.kb, %i.jz
  %i.kg = add i64 %i.kd, %i.ke                    ; 2 uses
  %i.kh = call noundef i64 @llvm.fshl.i64(i64 %i.kb, i64 %i.kb, i64 13)
  %i.ki = xor i64 %i.kh, %i.kf                    ; 3 uses
  %i.kj = call noundef i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 16)
  %i.kk = xor i64 %i.kj, %i.kg                    ; 2 uses
  %i.kl = add i64 %i.ki, %i.kg                    ; 3 uses
  %i.km = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 17)
  %i.kn = call noundef i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 21)
  %i.ko = call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 32)
  %i.kp = xor i64 %i.km, %i.kn
  %i.kq = xor i64 %i.kp, %i.ko
  %i.kr = xor i64 %i.kq, %i.kl
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.kr, i32 noundef %.sroa.4.0.i.ph.i.i.i.i.i)
          to label %bb.ae unwind label %.loopexit206.i.i.i.loopexit.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42237
  %i.ks = load ptr, ptr %i.ab, align 8, !noalias !42237, !nonnull !67, !noundef !67 ; 2 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42237
  store i32 %.sroa.4.0.i.ph.i.i.i.i.i, ptr %i.e, align 4, !noalias !42237
  store ptr %i.ks, ptr %i.f, align 8, !noalias !42237
  store ptr %i.kt, ptr %.sroa.4110.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  store ptr %i.e, ptr %.sroa.5111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  store ptr %8, ptr %.sroa.6112.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.z unwind label %.loopexit206.i.i.i.loopexit.i.i, !noalias !42237

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42237
  %.sroa.0142.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !42237 ; 5 uses
  %.sroa.6145.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6145.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237 ; 3 uses
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !42237 ; 4 uses
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.097.0228.i.i.i.i.i, -1
  br i1 %.not12.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ku = icmp ult i64 %.sroa.11.0226.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp ult i64 %.sroa.7.0.copyload.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp samesign ult i64 %.sroa.11.0226.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %i.kw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.0142.0.copyload.i.i.i.i.i, -1
  br i1 %.not13.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.kx = icmp eq i64 %.sroa.0142.0.copyload.i.i.i.i.i, 0
  br i1 %i.kx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.0.val.off.i42.i.i.i.i.i = add i64 %.sroa.097.0228.i.i.i.i.i, -1
  %switch.i43.i.i.i.i.i = icmp ult i64 %.0.val.off.i42.i.i.i.i.i, -2
  br i1 %switch.i43.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.0142.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.0142.0.copyload.i.i.i.i.i, %bb.ac ], [ %.sroa.097.0228.i.i.i.i.i, %bb.ad ]
  %.sroa.6145.0.copyload.sink267.i.i.i.i.i = phi ptr [ %.sroa.6145.0.copyload.i.i.i.i.i, %bb.ac ], [ %.sroa.9100.0227.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.11.2.ph.i.i.i.i.i = phi i64 [ %.sroa.11.0226.i.i.i.i.i, %bb.ac ], [ %.sroa.7.0.copyload.i.i.i.i.i, %bb.ad ]
  %.sroa.9100.3.ph.i.i.i.i.i = phi ptr [ %.sroa.9100.0227.i.i.i.i.i, %bb.ac ], [ %.sroa.6145.0.copyload.i.i.i.i.i, %bb.ad ]
  %.sroa.097.3.ph.i.i.i.i.i = phi i64 [ %.sroa.097.0228.i.i.i.i.i, %bb.ac ], [ %.sroa.0142.0.copyload.i.i.i.i.i, %bb.ad ]
  %i.ky = shl nuw i64 %.sroa.0142.0.copyload.sink.i.i.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6145.0.copyload.sink267.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6145.0.copyload.sink267.i.i.i.i.i, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !42237
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i, %bb.ad, %bb.ac, %bb.ab
  %.sroa.11.2.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.11.0226.i.i.i.i.i, %bb.ac ], [ %.sroa.11.0226.i.i.i.i.i, %bb.ab ], [ %.sroa.11.2.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  %.sroa.9100.3.i.i.i.i.i = phi ptr [ %.sroa.6145.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.9100.0227.i.i.i.i.i, %bb.ac ], [ %.sroa.9100.0227.i.i.i.i.i, %bb.ab ], [ %.sroa.9100.3.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  %.sroa.097.3.i.i.i.i.i = phi i64 [ %.sroa.0142.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.097.0228.i.i.i.i.i, %bb.ac ], [ %.sroa.097.0228.i.i.i.i.i, %bb.ab ], [ %.sroa.097.3.ph.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit45.sink.split.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42237
  br label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i

bb.ae:                                            ; preds = %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit49.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !42237 ; 6 uses
  br i1 %i.bo, label %.thread203.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae
  %.val24.i.i.i.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !42277
  %i.kz = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i, splat (i8 -1)
  %i.la = bitcast <16 x i1> %i.kz to i16
  %i.lb = load ptr, ptr %i.ab, align 8, !noalias !42237, !nonnull !67 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !42237 ; 2 uses
  %.val4.i87.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !42237 ; 2 uses
  %i.ld = load i64, ptr %i.ad, align 8, !noalias !42237 ; 3 uses
  %i.le = load ptr, ptr %i.ac, align 8, !noalias !42237, !nonnull !67 ; 3 uses
  %i.lf = xor i64 %.val3.i.i.i.i.i.i, 8317987319222330741
  %i.lg = xor i64 %.val4.i87.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.lh = xor i64 %.val3.i.i.i.i.i.i, 7816392313619706465
  %i.li = add i64 %i.lg, %i.lf                    ; 3 uses
  %i.lj = call i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 13)
  %i.lk = xor i64 %i.lj, %i.li                    ; 3 uses
  %i.ll = call i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 32)
  %i.lm = call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 17)
  %invariant.op = xor i64 %.val4.i87.i.i.i.i.i, 8387220255154660723
  br label %bb.af

bb.af:                                            ; preds = %.critedge.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ln = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.ma, %.critedge.backedge.i.i.i.i.i ]
  %.lcssa1014.i225.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.lcssa1013.i.i.i.i.i.i, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %i.lo = phi i16 [ %i.la, %.lr.ph.i.i.i.i.i ], [ %i.lx, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %.lcssa18.i224.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.lcssa17.i.i.i.i.i.i, %.critedge.backedge.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lo, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.lp = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa18.i224.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.lq = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1014.i225.i.i.i.i.i, %bb.af ]
  %.val68.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lp, align 16, !noalias !42278
  %i.lr = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -64 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.lr to i16 ; 2 uses
  %.not.i.i.i.i48.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i48.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.af
  %.lcssa17.i.i.i.i.i.i = phi ptr [ %.lcssa18.i224.i.i.i.i.i, %bb.af ], [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa1013.i.i.i.i.i.i = phi ptr [ %.lcssa1014.i225.i.i.i.i.i, %bb.af ], [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.lo, %bb.af ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lu = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.lv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.lw = zext nneg i16 %i.lv to i64
  %i.lx = and i16 %i.lu, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ly = sub nsw i64 0, %i.lw
  %i.lz = getelementptr inbounds [4 x i8], ptr %.lcssa1013.i.i.i.i.i.i, i64 %i.ly
  %i.ma = add i64 %i.ln, -1                       ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 -4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42279)
  switch i64 %.pre.i.i.i.i.i, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i [
    i64 0, label %.noexc49.thread.thread.i.i.i.i.i
    i64 1, label %.noexc49.i.i.i.i.i
  ]

.noexc49.i.i.i.i.i:                               ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i
  %.val.i84.i.i.i.i.i = load i32, ptr %i.mb, align 4, !alias.scope !42279, !noalias !42280, !noundef !67
  %.val2.i85.i.i.i.i.i = load i32, ptr %i.lc, align 4, !noalias !42281, !noundef !67
  %.not229.i.i.i.i.i = icmp eq i32 %.val.i84.i.i.i.i.i, %.val2.i85.i.i.i.i.i
  br i1 %.not229.i.i.i.i.i, label %.critedge.backedge.i.i.i.i.i, label %.noexc49.thread.thread.i.i.i.i.i

.critedge.backedge.i.i.i.i.i:                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.noexc49.i.i.i.i.i
  %.not19.not.not.i.not.i.i.i.i.i = icmp eq i64 %i.ma, 0
  br i1 %.not19.not.not.i.not.i.i.i.i.i, label %.thread203.thread.i.i.i.i.i, label %bb.af

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i: ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i
  %.val.i.i5.i.i = load i32, ptr %i.mb, align 4, !alias.scope !42282, !noalias !42283, !noundef !67 ; 2 uses
  %i.mc = zext i32 %.val.i.i5.i.i to i64
  %i.md = or disjoint i64 %i.mc, 288230376151711744 ; 2 uses
  %.reass.i.reass.i.reass.reass = xor i64 %i.md, %invariant.op ; 3 uses
  %i.me = add i64 %.reass.i.reass.i.reass.reass, %i.lh ; 2 uses
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %.reass.i.reass.i.reass.reass, i64 %.reass.i.reass.i.reass.reass, i64 16)
  %i.mg = xor i64 %i.mf, %i.me                    ; 3 uses
  %i.mh = add i64 %i.me, %i.lk                    ; 3 uses
  %i.mi = add i64 %i.mg, %i.ll                    ; 2 uses
  %i.mj = xor i64 %i.mh, %i.lm                    ; 3 uses
  %i.mk = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 21)
  %i.ml = xor i64 %i.mk, %i.mi                    ; 3 uses
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 32)
  %i.mn = xor i64 %i.mi, %i.md
  %i.mo = xor i64 %i.mm, 255
  %i.mp = add i64 %i.mn, %i.mj                    ; 3 uses
  %i.mq = add i64 %i.ml, %i.mo                    ; 2 uses
  %i.mr = call noundef i64 @llvm.fshl.i64(i64 %i.mj, i64 %i.mj, i64 13)
  %i.ms = xor i64 %i.mp, %i.mr                    ; 3 uses
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.ml, i64 %i.ml, i64 16)
  %i.mu = xor i64 %i.mt, %i.mq                    ; 3 uses
  %i.mv = call noundef i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 32)
  %i.mw = add i64 %i.ms, %i.mq                    ; 3 uses
  %i.mx = add i64 %i.mu, %i.mv                    ; 2 uses
  %i.my = call noundef i64 @llvm.fshl.i64(i64 %i.ms, i64 %i.ms, i64 17)
  %i.mz = xor i64 %i.mw, %i.my                    ; 3 uses
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 21)
  %i.nb = xor i64 %i.na, %i.mx                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.mw, i64 %i.mw, i64 32)
  %i.nd = add i64 %i.mz, %i.mx                    ; 3 uses
  %i.ne = add i64 %i.nb, %i.nc                    ; 2 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.mz, i64 %i.mz, i64 13)
  %i.ng = xor i64 %i.nf, %i.nd                    ; 3 uses
  %i.nh = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 16)
  %i.ni = xor i64 %i.nh, %i.ne                    ; 3 uses
  %i.nj = call noundef i64 @llvm.fshl.i64(i64 %i.nd, i64 %i.nd, i64 32)
  %i.nk = add i64 %i.ng, %i.ne                    ; 3 uses
  %i.nl = add i64 %i.ni, %i.nj                    ; 2 uses
  %i.nm = call noundef i64 @llvm.fshl.i64(i64 %i.ng, i64 %i.ng, i64 17)
  %i.nn = xor i64 %i.nm, %i.nk                    ; 3 uses
  %i.no = call noundef i64 @llvm.fshl.i64(i64 %i.ni, i64 %i.ni, i64 21)
  %i.np = xor i64 %i.no, %i.nl                    ; 3 uses
  %i.nq = call noundef i64 @llvm.fshl.i64(i64 %i.nk, i64 %i.nk, i64 32)
  %i.nr = add i64 %i.nn, %i.nl
  %i.ns = add i64 %i.np, %i.nq                    ; 2 uses
  %i.nt = call noundef i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 13)
  %i.nu = xor i64 %i.nt, %i.nr                    ; 3 uses
  %i.nv = call noundef i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 16)
  %i.nw = xor i64 %i.nv, %i.ns                    ; 2 uses
  %i.nx = add i64 %i.nu, %i.ns                    ; 3 uses
  %i.ny = call noundef i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 17)
  %i.nz = call noundef i64 @llvm.fshl.i64(i64 %i.nw, i64 %i.nw, i64 21)
  %i.oa = call noundef i64 @llvm.fshl.i64(i64 %i.nx, i64 %i.nx, i64 32)
  %i.ob = xor i64 %i.nz, %i.ny
  %i.oc = xor i64 %i.ob, %i.oa
  %i.od = xor i64 %i.oc, %i.nx                    ; 2 uses
  %i.oe = lshr i64 %i.od, 57
  %i.of = trunc nuw nsw i64 %i.oe to i8
  %i.og = insertelement <16 x i8> poison, i8 %i.of, i64 0
  %i.oh = shufflevector <16 x i8> %i.og, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i
  %.sroa.011.0.i.i.i.i88.i.i.i.i.i = phi i64 [ 0, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %i.pb, %bb.aj ]
  %.pn.i.i.i89.i.i.i.i.i = phi i64 [ %i.od, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %i.pc, %bb.aj ]
  %.sroa.01.0.i.i.i.i90.i.i.i.i.i = and i64 %.pn.i.i.i89.i.i.i.i.i, %i.ld ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.01.0.i.i.i.i90.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i91.i.i.i.i.i = load <16 x i8>, ptr %i.oi, align 1, !noalias !42284 ; 2 uses
  %i.oj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i91.i.i.i.i.i, %i.oh
  %i.ok = bitcast <16 x i1> %i.oj to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i.i.i.i = icmp eq i16 %i.ok, 0
  br i1 %.not.i.not36.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i94.i.i.i.i.i, label %.lr.ph.i.i.i92.i.i.i.i.i

.lr.ph.i.i.i92.i.i.i.i.i:                         ; preds = %bb.ag, %bb.ai
  %.sroa.05.0.i37.i.i.i.i.i.i.i.i = phi i16 [ %i.pa, %bb.ai ], [ %i.ok, %bb.ag ] ; 3 uses
  %i.ol = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i.i.i.i, i1 true)
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph43___pyfunction_directed_barabasi_albert_graph:bb.a
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
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx13token_swapper19graph_token_swapper:bb.a
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
end_hunk_9
begin_hunk_10_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout25graph_kamada_kawai_layout:bb.a
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
end_hunk_10
begin_hunk_11_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout27digraph_kamada_kawai_layout:bb.a
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
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardQINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEENtNtB25_3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardbEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtCslwFuT2d6ECx_4core2io5implsQINtNtB6_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB6_5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx(ptr %.0.val, ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167804)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 1                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167806)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167808)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !167809, !noalias !167810, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167811)
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.e) ; 2 uses
  %i.h = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !167812, !noalias !167813, !noundef !67 ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !167812, !noalias !167813, !noundef !67 ; 4 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 %i.g, %i.k                       ; 2 uses
  %i.n = sub nsw i64 %i.h, %i.k
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1), !noalias !167813
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !167812, !noalias !167813, !noundef !67 ; 5 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ugt i64 %.val.i.i.i.i, %i.q
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !167814, !noalias !167813
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.t = sub nuw i64 %.val.i.i.i.i, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !167812, !noalias !167813, !nonnull !67, !noundef !67 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 range(i64 0, -9223372036854775808) %i.t, i1 false), !alias.scope !167815, !noalias !167816
  store i64 %.val.i.i.i.i, ptr %i.p, align 8, !alias.scope !167812, !noalias !167813
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i
  %i.x = phi i64 [ %i.q, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.val.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !167817
  %i.aa = add i64 %.val.i.i.i.i, %i.e             ; 3 uses
  %i.ab = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ugt i64 %i.aa, %i.x
  br i1 %i.ac, label %bb.e, label %_RNvXs5_NtNtCslwFuT2d6ECx_4core2io6cursorINtB5_6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !167814, !noalias !167813
  br label %_RNvXs5_NtNtCslwFuT2d6ECx_4core2io6cursorINtB5_6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs5_NtNtCslwFuT2d6ECx_4core2io6cursorINtB5_6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e, %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %i.aa, ptr %i.f, align 8, !alias.scope !167809, !noalias !167810
  br label %_RNvYINtNtNtCslwFuT2d6ECx_4core2io6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167818
  store ptr %.0.val, ptr %i.b, align 8, !noalias !167818
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !noalias !167818
  %i.ae = invoke noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1091, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtBI_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #63
          to label %bb.q unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !167818, !noundef !67 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ag, null             ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i, label %bb.n, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i, !prof !71

bb.j:                                             ; preds = %bb.h
  br i1 %.not.i.i, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167819
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i
    i64 1, label %bb.m
  ], !prof !106

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp ult ptr %i.ag, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.al)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !167820, !noalias !167819
  store i8 3, ptr %i.a, align 8, !alias.scope !167820, !noalias !167819
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an), !noalias !167821
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167819
  br label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i

bb.n:                                             ; preds = %bb.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1092, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1094) #61
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.q:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.i ], [ null, %bb.j ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167818
  br label %_RNvYINtNtNtCslwFuT2d6ECx_4core2io6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtNtCslwFuT2d6ECx_4core2io6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs5_NtNtCslwFuT2d6ECx_4core2io6cursorINtB5_6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvXs5_NtNtCslwFuT2d6ECx_4core2io6cursorINtB5_6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB7_5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.0.0.i.i, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtB4_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEECskcxRuJ53GpR_9rustworkx.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0INtB6_5FnMutTRNtNtB2u_10graph_impl9NodeIndexEE8call_mutBW_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(none) %.0.val, i32 %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 19 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 21 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !168153
  %i.s = load ptr, ptr %.0.val, align 8, !alias.scope !168152, !noalias !168151, !nonnull !67, !align !98, !noundef !67
  %i.t = load ptr, ptr %i.s, align 8, !noalias !168153, !nonnull !67, !align !98, !noundef !67 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !168152, !noalias !168151, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !168152, !noalias !168151, !nonnull !67, !align !98, !noundef !67
  %i.y = load i64, ptr %i.x, align 8, !noalias !168153, !noundef !67
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !168152, !noalias !168151, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !68, !noalias !168153, !noundef !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !168153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168155)
  %i.ae = trunc nuw i64 %i.ab to i1
  %i.af = add i64 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !168154, !noalias !168156
  %i.ah = add i64 %.val.i.i.i, -1
  %.sroa.09.0.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ah
  %i.ai = add i64 %i.y, 1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !168157
  call fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB1L_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.q, i32 %.0.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !168157
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168157
  %i.aj = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168157 ; 9 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.b, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i, !prof !104

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i.i unwind label %bb.c, !noalias !168157

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.e, %bb.c
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn478.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.bb, %bb.c ], [ %.pn.i.i, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168158)
  call void @llvm.experimental.noalias.scope.decl(metadata !168159), !noalias !168160
  call void @llvm.experimental.noalias.scope.decl(metadata !168161), !noalias !168160
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !168162, !noalias !168157, !noundef !67 ; 4 uses
  %i.am = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.am, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !168162, !noalias !168157, !nonnull !67, !noundef !67
  %i.ao = shl i64 %.val1.i.i.i.i, 3
  %i.ap = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ap), !noalias !168160
  %i.aq = and i64 %i.ao, -16                      ; 2 uses
  %i.ar = add i64 %i.aq, 16                       ; 2 uses
  %i.as = add nsw i64 %.val1.i.i.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !168160
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !168160
  %i.aw = sub nuw nsw i64 -16, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.aw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !168163
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !168162, !noalias !168157 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ay, label %common.resume.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !168162, !noalias !168157, !nonnull !67, !noundef !67
  %i.ba = shl nuw i64 %.val2.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168163
  br label %common.resume.i

common.resume.i:                                  ; preds = %.body.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.pn.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168166)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !168167, !noalias !168168, !nonnull !67, !noundef !67 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !168167, !noalias !168168, !noundef !67 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !168167, !noalias !168168, !noundef !67 ; 2 uses
  %i.bh = zext i32 %.0.val1 to i64                ; 3 uses
  %i.bi = icmp ugt i64 %.val6.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %bb.d, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.d:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !168167, !noalias !168168, !nonnull !67, !noundef !67
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.bh ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !168169, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !noalias !168169
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.d, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %i.bo = phi <2 x i32> [ %i.bn, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ splat (i32 -1), %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ], [ splat (i32 -1), %bb.d ]
  store ptr %i.bd, ptr %i.aj, align 8, !noalias !168157
  %.sroa.4.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.bf, ptr %.sroa.4.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168157
  %.sroa.5.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i32> %i.bo, ptr %.sroa.5.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168157
  %.sroa.7.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %.0.val1, ptr %.sroa.7.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168157
  store i64 1, ptr %i.p, align 8, !noalias !168157
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %i.aj, ptr %i.bp, align 8, !noalias !168157
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  store i64 1, ptr %i.bq, align 8, !noalias !168157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !168157
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !168155, !noalias !168170, !noundef !67 ; 3 uses
  invoke fastcc void @_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB29_B1l_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.o, i64 noundef %i.bs)
          to label %.preheader356.i.i unwind label %.thread.i.i, !noalias !168157

.preheader356.i.i:                                ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 9 uses
  %i.bz = icmp eq i64 %i.bs, 0                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val.i60.i.i = load i64, ptr %i.ca, align 8, !alias.scope !168155, !noalias !168170 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !168155, !noalias !168170 ; 4 uses
  %i.cd = load ptr, ptr %i.v, align 8, !alias.scope !168155, !noalias !168170, !nonnull !67 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6260.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %.sroa.5269.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6272.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4226.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6228.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6239.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i172.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !168154, !noalias !168156, !nonnull !67
  br label %bb.g

bb.e:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %bb.by, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i, %bb.bh, %.body142.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i, %bb.as, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.ao, %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit354.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm333.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i ], [ %i.rr, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i ], [ %lpad.thr_comm.split-lp334.i.i, %.body142.i.i ], [ %i.og, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ], [ %i.og, %bb.ao ], [ %lpad.thr_comm.i.i, %bb.as ], [ %lpad.thr_comm.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i ], [ %i.rr, %bb.bh ], [ %lpad.thr_comm333.i.i, %bb.by ], [ %lpad.loopexit.i.i, %.loopexit354.i.i ], [ %lpad.loopexit357.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp358.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #63, !noalias !168157
  %.val53.pre.i.i = load i64, ptr %i.p, align 8, !noalias !168157 ; 2 uses
  %i.cs = icmp eq i64 %.val53.pre.i.i, 0
  br i1 %i.cs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i

._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i: ; preds = %bb.e
  %.val54.i.pre.i = load ptr, ptr %i.bp, align 8, !noalias !168157
  %i.ct = shl nuw i64 %.val53.pre.i.i, 5
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.thread.i.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i
  %.val54.i.i = phi ptr [ %i.aj, %.thread.i.i ], [ %.val54.i.pre.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  %.pn.pn478.i.i = phi { ptr, i32 } [ %i.cu, %.thread.i.i ], [ %.pn.i.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  %.val53477.i.i = phi i64 [ 32, %.thread.i.i ], [ %i.ct, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54.i.i, i64 noundef %.val53477.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168157
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

.thread.i.i:                                      ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.f:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !noalias !168171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !168157
  %.val51.i.i = load i64, ptr %i.p, align 8, !noalias !168157 ; 2 uses
  %i.cv = icmp eq i64 %.val51.i.i, 0
  br i1 %i.cv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i: ; preds = %bb.f
  %.val52.i.i = load ptr, ptr %i.bp, align 8, !noalias !168157, !nonnull !67, !noundef !67
  %i.cw = shl nuw i64 %.val51.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i.i, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168157
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i

bb.g:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i, %.preheader356.i.i
  %i.cx = phi ptr [ %i.aj, %.preheader356.i.i ], [ %i.wf, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 11 uses
  %i.cy = phi ptr [ %i.aj, %.preheader356.i.i ], [ %i.wg, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 11 uses
  %i.cz = phi i64 [ 1, %.preheader356.i.i ], [ %.pr.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 6 uses
  %i.da = getelementptr [32 x i8], ptr %i.cy, i64 %i.cz ; 5 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -32    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168172)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !168172, !noalias !168157, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.da, i64 -24
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !168172, !noalias !168157, !noundef !67 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -16    ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !alias.scope !168172, !noalias !168157, !noundef !67
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = icmp ugt i64 %i.de, %i.dh
  br i1 %i.di, label %bb.h, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.dj = getelementptr i8, ptr %i.da, i64 -12    ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.dj, align 4, !alias.scope !168172, !noalias !168157
  %i.dk = getelementptr i8, ptr %i.da, i64 -8
  %.val4.i.i.i = load i32, ptr %i.dk, align 8, !alias.scope !168172, !noalias !168157
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.dh ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !noalias !168173, !noundef !67
  store i32 %i.dn, ptr %i.df, align 8, !alias.scope !168172, !noalias !168157
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !noalias !168173, !noundef !67
  br label %.loopexit355.i.i

bb.i:                                             ; preds = %bb.j, %.preheader.i.i.i
  %i.dq = phi i32 [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.dv, %bb.j ]
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = icmp ugt i64 %i.de, %i.dr
  br i1 %i.ds, label %bb.j, label %bb.bz

bb.j:                                             ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !noalias !168173, !noundef !67 ; 2 uses
  store i32 %i.dv, ptr %i.dj, align 4, !alias.scope !168172, !noalias !168157
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val.i57.i.i = load i32, ptr %i.dw, align 8, !noalias !168173, !noundef !67 ; 2 uses
  %i.dx = icmp eq i32 %.val.i57.i.i, %.val4.i.i.i
  br i1 %i.dx, label %bb.i, label %.loopexit355.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !168157
  call void @llvm.experimental.noalias.scope.decl(metadata !168174)
  call void @llvm.experimental.noalias.scope.decl(metadata !168175)
  call void @llvm.experimental.noalias.scope.decl(metadata !168176)
  %.val1.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !168177, !noalias !168157, !noundef !67 ; 4 uses
  %i.dy = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.dy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i
  %.val.i.i.i58.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !168177, !noalias !168157, !nonnull !67, !noundef !67
  %i.dz = shl i64 %.val1.i.i.i.i.i, 3
  %i.ea = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ea)
  %i.eb = and i64 %i.dz, -16                      ; 2 uses
  %i.ec = add i64 %i.eb, 16                       ; 2 uses
  %i.ed = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ee = add i64 %i.ed, %i.ec                    ; 3 uses
  %i.ef = icmp uge i64 %i.ee, %i.ec
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp ult i64 %i.ee, 9223372036854775793
  call void @llvm.assume(i1 %i.eg)
  %i.eh = sub nuw nsw i64 -16, %i.eb
  %i.ei = getelementptr inbounds i8, ptr %.val.i.i.i58.i.i, i64 %i.eh
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !168178
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !168177, !noalias !168157 ; 2 uses
  %i.ej = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ej, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity16all_simple_paths33all_simple_paths_multiple_targetsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2S_5types3any5PyAnyEB2N_NtB1N_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.val3.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !168177, !noalias !168157, !nonnull !67, !noundef !67
  %i.ek = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168178
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity16all_simple_paths33all_simple_paths_multiple_targetsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2S_5types3any5PyAnyEB2N_NtB1N_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i

.loopexit354.i.i:                                 ; preds = %bb.af
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, %bb.k, %bb.bw, %bb.ay
  %lpad.loopexit357.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp358.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit355.i.i:                                 ; preds = %bb.j, %bb.h
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.dp, %bb.h ], [ %.val.i57.i.i, %bb.j ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !168157
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.n, align 4, !noalias !168157
  %i.el = load i64, ptr %i.by, align 8, !noalias !168157, !noundef !67
  %i.em = icmp ult i64 %i.el, %.sroa.09.0.i.i
  br i1 %i.em, label %bb.k, label %.preheader.i.i

bb.k:                                             ; preds = %.loopexit355.i.i
  %i.en = invoke fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.i.i

.preheader.i.i:                                   ; preds = %.loopexit355.i.i, %.preheader.i.i.backedge
  %.sroa.7256.0.i.i = phi ptr [ %.sroa.7256.1301309.i.i, %.preheader.i.i.backedge ], [ %i.db, %.loopexit355.i.i ] ; 8 uses
  %.sroa.0254.0.i.i = phi i1 [ %.sroa.0254.1310.i.i, %.preheader.i.i.backedge ], [ true, %.loopexit355.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.7256.0.i.i, null
  br i1 %.not.i.i.i, label %.loopexit350.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168179)
  %i.eo = load ptr, ptr %.sroa.7256.0.i.i, align 8, !alias.scope !168179, !noalias !168180, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.7256.0.i.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !168179, !noalias !168180, !noundef !67 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.7256.0.i.i, i64 16 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !alias.scope !168179, !noalias !168180, !noundef !67
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = icmp ugt i64 %i.eq, %i.et
  br i1 %i.eu, label %bb.m, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.7256.0.i.i, i64 20 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.ev, align 4, !alias.scope !168179, !noalias !168180
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.7256.0.i.i, i64 24
  %.val4.i.i.i.i.i.i = load i32, ptr %i.ew, align 8, !alias.scope !168179, !noalias !168180
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.et ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !noalias !168181, !noundef !67
  store i32 %i.ez, ptr %i.er, align 8, !alias.scope !168179, !noalias !168180
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !noalias !168181, !noundef !67
  br label %.thread302.i.i

bb.n:                                             ; preds = %bb.o, %.preheader.i.i.i.i.i.i
  %i.fc = phi i32 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.fh, %bb.o ]
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = icmp ugt i64 %i.eq, %i.fd
  br i1 %i.fe, label %bb.o, label %.loopexit350.i.i

bb.o:                                             ; preds = %bb.n
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.fd ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !noalias !168181, !noundef !67 ; 2 uses
  store i32 %i.fh, ptr %i.ev, align 4, !alias.scope !168179, !noalias !168180
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.val.i.i.i.i.i.i = load i32, ptr %i.fi, align 8, !noalias !168181, !noundef !67 ; 2 uses
  %i.fj = icmp eq i32 %.val.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.fj, label %bb.n, label %.thread302.i.i
end_hunk_12
begin_hunk_13_@_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0INtB6_5FnMutTRNtNtB2u_10graph_impl9NodeIndexEE8call_mutBW_:bb.a

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168194)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168195)
  %i.id = add nsw i64 %i.hq, -16
  %i.ie = and i64 %i.id, %i.hg
  %i.if = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ie ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %i.if, align 1, !noalias !168196
  %i.ig = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %i.ih = bitcast <16 x i1> %i.ig to i16
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i = load <16 x i8>, ptr %i.ic, align 1, !noalias !168197
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i, splat (i8 -1)
  %i.ij = bitcast <16 x i1> %i.ii to i16
  %i.ik = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ih, i1 false)
  %i.il = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ij, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.il, %i.ik
  %i.im = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.im, label %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.in = load i64, ptr %i.bx, align 8, !alias.scope !168198, !noalias !168199, !noundef !67
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.bx, align 8, !alias.scope !168198, !noalias !168199
  br label %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.aa, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.aa ], [ -128, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ic, align 1, !noalias !168200
  %i.ip = getelementptr i8, ptr %i.if, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ip, align 1, !noalias !168200
  %i.iq = load i64, ptr %i.by, align 8, !alias.scope !168198, !noalias !168199, !noundef !67
  %i.ir = add i64 %i.iq, -1
  store i64 %i.ir, ptr %i.by, align 8, !alias.scope !168198, !noalias !168199
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i158.i.i, %bb.bx, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i, %.thread347.i.i, %._crit_edge, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.v
  %i.is = phi ptr [ %i.cx, %._crit_edge.i.i.i158.i.i ], [ %i.wa, %bb.bx ], [ %i.cx, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i ], [ %i.cx, %.thread347.i.i ], [ %i.cx, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cx, %bb.v ], [ %i.cx, %._crit_edge ], [ %i.cx, %._crit_edge.i.i.i.i.i ]
  %i.it = phi ptr [ %i.cy, %._crit_edge.i.i.i158.i.i ], [ %i.wa, %bb.bx ], [ %i.cy, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i ], [ %i.cy, %.thread347.i.i ], [ %i.cy, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cy, %bb.v ], [ %i.cy, %._crit_edge ], [ %i.cy, %._crit_edge.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !168157
  %.pr.pre.i.i = load i64, ptr %i.bq, align 8, !noalias !168157
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168201)
  %i.iu = load i64, ptr %i.bt, align 8, !alias.scope !168201, !noalias !168202, !noundef !67 ; 4 uses
  switch i64 %i.iu, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.iv = load ptr, ptr %i.bu, align 8, !alias.scope !168201, !noalias !168202, !nonnull !67, !noundef !67
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.val2.i.i.i = load i32, ptr %i.iw, align 4, !noalias !168203, !noundef !67
  %i.ix = icmp ne i32 %.pn2.i311.i.i, %.val2.i.i.i
  br label %.loopexit.i.i

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !168201, !noalias !168202, !noundef !67 ; 2 uses
  %.val4.i68.i.i = load i64, ptr %i.cf, align 8, !alias.scope !168201, !noalias !168202, !noundef !67 ; 2 uses
  %i.iy = xor i64 %.val3.i.i.i, 8317987319222330741
  %i.iz = xor i64 %.val4.i68.i.i, 7237128888997146477 ; 3 uses
  %i.ja = xor i64 %.val3.i.i.i, 7816392313619706465
  %i.jb = or disjoint i64 %i.fl, 288230376151711744
  %i.jc = xor i64 %.val4.i68.i.i, %i.fl
  %i.jd = xor i64 %i.jc, 8098989879002948979      ; 3 uses
  %i.je = add i64 %i.iz, %i.iy                    ; 3 uses
  %i.jf = add i64 %i.jd, %i.ja                    ; 2 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 13)
  %i.jh = xor i64 %i.jg, %i.je                    ; 3 uses
  %i.ji = call noundef i64 @llvm.fshl.i64(i64 %i.jd, i64 %i.jd, i64 16)
  %i.jj = xor i64 %i.ji, %i.jf                    ; 3 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 32)
  %i.jl = add i64 %i.jh, %i.jf                    ; 3 uses
  %i.jm = add i64 %i.jj, %i.jk                    ; 2 uses
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 17)
  %i.jo = xor i64 %i.jl, %i.jn                    ; 3 uses
  %i.jp = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 21)
  %i.jq = xor i64 %i.jp, %i.jm                    ; 3 uses
  %i.jr = call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 32)
  %i.js = xor i64 %i.jm, %i.jb
  %i.jt = xor i64 %i.jr, 255
  %i.ju = add i64 %i.js, %i.jo                    ; 3 uses
  %i.jv = add i64 %i.jt, %i.jq                    ; 2 uses
  %i.jw = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 13)
  %i.jx = xor i64 %i.ju, %i.jw                    ; 3 uses
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 16)
  %i.jz = xor i64 %i.jv, %i.jy                    ; 3 uses
  %i.ka = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 32)
  %i.kb = add i64 %i.jx, %i.jv                    ; 3 uses
  %i.kc = add i64 %i.jz, %i.ka                    ; 2 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.jx, i64 %i.jx, i64 17)
  %i.ke = xor i64 %i.kb, %i.kd                    ; 3 uses
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 21)
  %i.kg = xor i64 %i.kf, %i.kc                    ; 3 uses
  %i.kh = call noundef i64 @llvm.fshl.i64(i64 %i.kb, i64 %i.kb, i64 32)
  %i.ki = add i64 %i.ke, %i.kc                    ; 3 uses
  %i.kj = add i64 %i.kg, %i.kh                    ; 2 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 13)
  %i.kl = xor i64 %i.kk, %i.ki                    ; 3 uses
  %i.km = call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 16)
  %i.kn = xor i64 %i.km, %i.kj                    ; 3 uses
  %i.ko = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.kp = add i64 %i.kl, %i.kj                    ; 3 uses
  %i.kq = add i64 %i.kn, %i.ko                    ; 2 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 17)
  %i.ks = xor i64 %i.kr, %i.kp                    ; 3 uses
  %i.kt = call noundef i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 21)
  %i.ku = xor i64 %i.kt, %i.kq                    ; 3 uses
  %i.kv = call noundef i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 32)
  %i.kw = add i64 %i.ks, %i.kq
  %i.kx = add i64 %i.ku, %i.kv                    ; 2 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 13)
  %i.kz = xor i64 %i.ky, %i.kw                    ; 3 uses
  %i.la = call noundef i64 @llvm.fshl.i64(i64 %i.ku, i64 %i.ku, i64 16)
  %i.lb = xor i64 %i.la, %i.kx                    ; 2 uses
  %i.lc = add i64 %i.kz, %i.kx                    ; 3 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 17)
  %i.le = call noundef i64 @llvm.fshl.i64(i64 %i.lb, i64 %i.lb, i64 21)
  %i.lf = call noundef i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 32)
  %i.lg = xor i64 %i.ld, %i.le
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = xor i64 %i.lh, %i.lc                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168204)
  %i.lj = load ptr, ptr %i.bu, align 8, !alias.scope !168205, !noalias !168206, !nonnull !67, !noundef !67
  call void @llvm.experimental.noalias.scope.decl(metadata !168207)
  call void @llvm.experimental.noalias.scope.decl(metadata !168208)
  %i.lk = lshr i64 %i.li, 57
  %i.ll = trunc nuw nsw i64 %i.lk to i8
  %i.lm = load i64, ptr %i.bw, align 8, !alias.scope !168209, !noalias !168210, !noundef !67 ; 2 uses
  %i.ln = load ptr, ptr %i.bv, align 8, !alias.scope !168209, !noalias !168210, !nonnull !67, !noundef !67 ; 2 uses
  %i.lo = insertelement <16 x i8> poison, i8 %i.ll, i64 0
  %i.lp = shufflevector <16 x i8> %i.lo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i
  %.sroa.011.0.i.i.i.i69.i.i = phi i64 [ 0, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i ], [ %i.mj, %bb.ae ]
  %.pn.i.i.i70.i.i = phi i64 [ %i.li, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i ], [ %i.mk, %bb.ae ]
  %.sroa.01.0.i.i.i.i71.i.i = and i64 %.pn.i.i.i70.i.i, %i.lm ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.01.0.i.i.i.i71.i.i
  %.sroa.0.0.copyload.i24.i.i.i72.i.i = load <16 x i8>, ptr %i.lq, align 1, !noalias !168211 ; 2 uses
  %i.lr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i72.i.i, %i.lp
  %i.ls = bitcast <16 x i1> %i.lr to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.ls, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i

.lr.ph.i.i.i73.i.i:                               ; preds = %bb.ac, %bb.ad
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.mi, %bb.ad ], [ %i.ls, %bb.ac ] ; 3 uses
  %i.lt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.lu = zext nneg i16 %i.lt to i64
  %i.lv = add i64 %.sroa.01.0.i.i.i.i71.i.i, %i.lu
  %i.lw = and i64 %i.lv, %i.lm
  %i.lx = sub nsw i64 0, %i.lw
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -8
  %.val.i.i.i.i74.i.i = load i64, ptr %i.lz, align 8, !noalias !168212, !noundef !67 ; 3 uses
  %i.ma = icmp ult i64 %.val.i.i.i.i74.i.i, %i.iu
  br i1 %i.ma, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.invoke.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i73.i.i
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %.val.i.i.i.i74.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.mc, align 4, !noalias !168213, !noundef !67
  %i.md = icmp eq i32 %.pn2.i311.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.md, label %.preheader.i.i.backedge, label %bb.ad, !prof !77

._crit_edge.i.i.i76.i.i:                          ; preds = %bb.ad, %bb.ac
  %i.me = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i72.i.i, splat (i8 -1)
  %i.mf = bitcast <16 x i1> %i.me to i16
  %i.mg = icmp eq i16 %i.mf, 0
  br i1 %i.mg, label %bb.ae, label %.loopexit.i.i, !prof !71

bb.ad:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.mh = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.mi = and i16 %i.mh, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i75.i.i = icmp eq i16 %i.mi, 0
  br i1 %.not.i.not.i.i.i75.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i76.i.i
  %i.mj = add i64 %.sroa.011.0.i.i.i.i69.i.i, 16  ; 2 uses
  %i.mk = add i64 %.sroa.01.0.i.i.i.i71.i.i, %i.mj
  br label %bb.ac

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i76.i.i, %bb.ab, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.i67.i.i = phi i1 [ true, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ix, %bb.ab ], [ true, %._crit_edge.i.i.i76.i.i ]
  %i.ml = load i64, ptr %i.by, align 8, !noalias !168157
  %i.mm = icmp uge i64 %i.ml, %i.ai
  %or.cond.i.i = select i1 %.sroa.0.0.i67.i.i, i1 %i.mm, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %.preheader.i.i.backedge

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !168157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !168157
  %i.mn = load ptr, ptr %i.bu, align 8, !noalias !168157, !nonnull !67, !noundef !67 ; 2 uses
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !168157
  store i32 %.pn2.i311.i.i, ptr %i.g, align 4, !noalias !168157
  store ptr %i.mn, ptr %i.h, align 8, !noalias !168157
  store ptr %i.mo, ptr %.sroa.4258.0..sroa_idx.i.i, align 8, !noalias !168157
  store ptr %i.g, ptr %.sroa.5259.0..sroa_idx.i.i, align 8, !noalias !168157
  store ptr %1, ptr %.sroa.6260.0..sroa_idx.i.i, align 8, !noalias !168157
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ag unwind label %.loopexit354.i.i, !noalias !168157

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !168157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !168157
  call void @llvm.experimental.noalias.scope.decl(metadata !168214)
  %.val.i78.i.i = load i64, ptr %i.cg, align 8, !alias.scope !168215, !noalias !168216, !noundef !67
  %i.mp = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168217, !noundef !67
  %i.mq = xor i64 %.val.i78.i.i, %i.fl
  %i.mr = zext i64 %i.mq to i128
  %i.ms = zext i64 %i.mp to i128
  %i.mt = mul nuw i128 %i.mr, %i.ms               ; 2 uses
  %i.mu = lshr i128 %i.mt, 64
  %i.mv = xor i128 %i.mu, %i.mt
  %i.mw = trunc i128 %i.mv to i64                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168218)
  %i.mx = load ptr, ptr %i.ch, align 8, !alias.scope !168219, !noalias !168220, !nonnull !67, !noundef !67
  %i.my = load i64, ptr %i.ci, align 8, !alias.scope !168219, !noalias !168220, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168221)
  call void @llvm.experimental.noalias.scope.decl(metadata !168222)
  %i.mz = lshr i64 %i.mw, 57
  %i.na = trunc nuw nsw i64 %i.mz to i8
  %i.nb = load i64, ptr %i.ck, align 8, !alias.scope !168223, !noalias !168224, !noundef !67 ; 2 uses
  %i.nc = load ptr, ptr %i.cj, align 8, !alias.scope !168223, !noalias !168224, !nonnull !67, !noundef !67 ; 2 uses
  %i.nd = insertelement <16 x i8> poison, i8 %i.na, i64 0
  %i.ne = shufflevector <16 x i8> %i.nd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %.sroa.011.0.i.i.i.i79.i.i = phi i64 [ 0, %bb.ag ], [ %i.ny, %bb.ak ]
  %.pn.i.i.i80.i.i = phi i64 [ %i.mw, %bb.ag ], [ %i.nz, %bb.ak ]
  %.sroa.01.0.i.i.i.i81.i.i = and i64 %.pn.i.i.i80.i.i, %i.nb ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %.sroa.01.0.i.i.i.i81.i.i
  %.sroa.0.0.copyload.i24.i.i.i82.i.i = load <16 x i8>, ptr %i.nf, align 1, !noalias !168225 ; 2 uses
  %i.ng = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i82.i.i, %i.ne
  %i.nh = bitcast <16 x i1> %i.ng to i16          ; 2 uses
  %.not.i.not36.i.i.i83.i.i = icmp eq i16 %i.nh, 0
  br i1 %.not.i.not36.i.i.i83.i.i, label %._crit_edge.i.i.i89.i.i, label %.lr.ph.i.i.i84.i.i

.lr.ph.i.i.i84.i.i:                               ; preds = %bb.ah, %bb.aj
  %.sroa.05.0.i37.i.i.i85.i.i = phi i16 [ %i.nx, %bb.aj ], [ %i.nh, %bb.ah ] ; 3 uses
  %i.ni = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i85.i.i, i1 true)
  %i.nj = zext nneg i16 %i.ni to i64
  %i.nk = add i64 %.sroa.01.0.i.i.i.i81.i.i, %i.nj
  %i.nl = and i64 %i.nk, %i.nb
  %i.nm = sub nsw i64 0, %i.nl
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.nm
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -8
  %.val.i.i.i.i86.i.i = load i64, ptr %i.no, align 8, !noalias !168226, !noundef !67 ; 3 uses
  %i.np = icmp ult i64 %.val.i.i.i.i86.i.i, %i.my
  br i1 %i.np, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i84.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i86.i.i, i64 noundef %i.my, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc90.i.i unwind label %bb.as, !noalias !168157

.noexc90.i.i:                                     ; preds = %bb.ai
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i84.i.i
  %i.nq = getelementptr inbounds nuw [40 x i8], ptr %i.mx, i64 %.val.i.i.i.i86.i.i ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %.val2.i.i.i.i.i87.i.i = load i32, ptr %i.nr, align 4, !noalias !168227, !noundef !67
  %i.ns = icmp eq i32 %.pn2.i311.i.i, %.val2.i.i.i.i.i87.i.i
  br i1 %i.ns, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.aj, !prof !77

._crit_edge.i.i.i89.i.i:                          ; preds = %bb.aj, %bb.ah
  %i.nt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i82.i.i, splat (i8 -1)
  %i.nu = bitcast <16 x i1> %i.nt to i16
  %i.nv = icmp eq i16 %i.nu, 0
  br i1 %i.nv, label %bb.ak, label %bb.al, !prof !71

bb.aj:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.nw = add i16 %.sroa.05.0.i37.i.i.i85.i.i, -1
  %i.nx = and i16 %i.nw, %.sroa.05.0.i37.i.i.i85.i.i ; 2 uses
  %.not.i.not.i.i.i88.i.i = icmp eq i16 %i.nx, 0
  br i1 %.not.i.not.i.i.i88.i.i, label %._crit_edge.i.i.i89.i.i, label %.lr.ph.i.i.i84.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i89.i.i
  %i.ny = add i64 %.sroa.011.0.i.i.i.i79.i.i, 16  ; 2 uses
  %i.nz = add i64 %.sroa.01.0.i.i.i.i81.i.i, %i.ny
  br label %bb.ah

.body.i.i:                                        ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.al:                                            ; preds = %._crit_edge.i.i.i89.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !168157
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168157
  %i.oa = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168157 ; 3 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.am, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i, !prof !104

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc91.i.i unwind label %bb.as, !noalias !168157

.noexc91.i.i:                                     ; preds = %bb.am
  unreachable

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0267.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !168157 ; 3 uses
  %.sroa.5269.0.copyload.i.i = load ptr, ptr %.sroa.5269.0..sroa_idx.i.i, align 8, !noalias !168157 ; 3 uses
  %.sroa.6272.0.copyload.i.i = load i64, ptr %.sroa.6272.0..sroa_idx.i.i, align 8, !noalias !168157
  call void @llvm.experimental.noalias.scope.decl(metadata !168228)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !alias.scope !168228, !noalias !168229, !noundef !67 ; 3 uses
  %i.oe = load i64, ptr %i.nq, align 8, !range !70, !alias.scope !168228, !noalias !168229, !noundef !67
  %i.of = icmp eq i64 %i.od, %i.oe
  br i1 %i.of, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nq)
          to label %bb.ap unwind label %bb.ao, !noalias !168229

bb.ao:                                            ; preds = %bb.an
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = icmp eq i64 %.sroa.0267.0.copyload.i.i, 0
  br i1 %i.oh, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5269.0.copyload.i.i) ]
  %i.oi = shl nuw i64 %.sroa.0267.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5269.0.copyload.i.i, i64 noundef %i.oi, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168230
  br label %bb.e

bb.ap:                                            ; preds = %bb.an, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !alias.scope !168228, !noalias !168229, !nonnull !67, !noundef !67
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.ok, i64 %i.od ; 3 uses
  store i64 %.sroa.0267.0.copyload.i.i, ptr %i.ol, align 8, !noalias !168231
  %.sroa.5269.0..sroa_idx270.i.i = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store ptr %.sroa.5269.0.copyload.i.i, ptr %.sroa.5269.0..sroa_idx270.i.i, align 8, !noalias !168231
  %.sroa.6272.0..sroa_idx273.i.i = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store i64 %.sroa.6272.0.copyload.i.i, ptr %.sroa.6272.0..sroa_idx273.i.i, align 8, !noalias !168231
  %i.om = add i64 %i.od, 1
  store i64 %i.om, ptr %i.oc, align 8, !alias.scope !168228, !noalias !168229
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !168157
  br label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %._crit_edge.i.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.aq, %.loopexit.i.i, %.thread302.i.i
  br label %.preheader.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !168157
  store i64 1, ptr %i.f, align 8, !noalias !168157
  store ptr %i.oa, ptr %i.cl, align 8, !noalias !168157
  store i64 1, ptr %i.cm, align 8, !noalias !168157
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1y_BK_EEE13insert_uniqueCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o, i64 noundef %i.mw, i32 noundef %.pn2.i311.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ar unwind label %.body.i.i

bb.ar:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !168157
  br label %bb.aq

bb.as:                                            ; preds = %bb.am, %bb.ai
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val45.i.i = load i64, ptr %i.i, align 8, !noalias !168157 ; 2 uses
  %i.on = icmp eq i64 %.val45.i.i, 0
  br i1 %i.on, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i: ; preds = %bb.as
  %.val46.i.i = load ptr, ptr %.sroa.5269.0..sroa_idx.i.i, align 8, !noalias !168157, !nonnull !67, !noundef !67
  %i.oo = shl nuw i64 %.val45.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef %i.oo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168157
  br label %bb.e

._crit_edge:                                      ; preds = %bb.k
  %i.op = icmp eq i64 %i.en, 1
  br i1 %i.op, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  br i1 %i.bz, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oq = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168232, !noundef !67
  %i.or = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 2 uses
  %i.os = xor i64 %.val.i60.i.i, %i.or
  %i.ot = zext i64 %i.os to i128
  %i.ou = zext i64 %i.oq to i128
  %i.ov = mul nuw i128 %i.ou, %i.ot               ; 2 uses
  %i.ow = lshr i128 %i.ov, 64
  %i.ox = xor i128 %i.ow, %i.ov
  %i.oy = trunc i128 %i.ox to i64                 ; 2 uses
  %i.oz = lshr i64 %i.oy, 57
  %i.pa = trunc nuw nsw i64 %i.oz to i8
  %i.pb = insertelement <16 x i8> poison, i8 %i.pa, i64 0
  %i.pc = shufflevector <16 x i8> %i.pb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.011.0.i.i.i97.i.i = phi i64 [ 0, %bb.au ], [ %i.pt, %bb.ax ]
  %.pn.i.i98.i.i = phi i64 [ %i.oy, %bb.au ], [ %i.pu, %bb.ax ]
  %.sroa.01.0.i.i.i99.i.i = and i64 %.pn.i.i98.i.i, %i.cc ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.01.0.i.i.i99.i.i
  %.sroa.0.0.copyload.i24.i.i100.i.i = load <16 x i8>, ptr %i.pd, align 1, !noalias !168233 ; 2 uses
  %i.pe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i100.i.i, %i.pc
  %i.pf = bitcast <16 x i1> %i.pe to i16          ; 2 uses
  %.not.i.not30.i.i101.i.i = icmp eq i16 %i.pf, 0
  br i1 %.not.i.not30.i.i101.i.i, label %._crit_edge.i.i106.i.i, label %.lr.ph.i.i102.i.i

.lr.ph.i.i102.i.i:                                ; preds = %bb.av, %bb.aw
  %.sroa.05.0.i31.i.i103.i.i = phi i16 [ %i.ps, %bb.aw ], [ %i.pf, %bb.av ] ; 3 uses
  %i.pg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i103.i.i, i1 true)
  %i.ph = zext nneg i16 %i.pg to i64
  %i.pi = add i64 %.sroa.01.0.i.i.i99.i.i, %i.ph
  %i.pj = and i64 %i.pi, %i.cc
  %i.pk = sub nsw i64 0, %i.pj
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.pk
  %i.pm = getelementptr inbounds i8, ptr %i.pl, i64 -4
  %.val2.i.i.i104.i.i = load i32, ptr %i.pm, align 4, !noalias !168234, !noundef !67
  %i.pn = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i104.i.i
  br i1 %i.pn, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i, label %bb.aw, !prof !77

._crit_edge.i.i106.i.i:                           ; preds = %bb.aw, %bb.av
  %i.po = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i100.i.i, splat (i8 -1)
  %i.pp = bitcast <16 x i1> %i.po to i16
  %i.pq = icmp eq i16 %i.pp, 0
  br i1 %i.pq, label %bb.ax, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, !prof !71

bb.aw:                                            ; preds = %.lr.ph.i.i102.i.i
  %i.pr = add i16 %.sroa.05.0.i31.i.i103.i.i, -1
  %i.ps = and i16 %i.pr, %.sroa.05.0.i31.i.i103.i.i ; 2 uses
  %.not.i.not.i.i105.i.i = icmp eq i16 %i.ps, 0
  br i1 %.not.i.not.i.i105.i.i, label %._crit_edge.i.i106.i.i, label %.lr.ph.i.i102.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i106.i.i
  %i.pt = add i64 %.sroa.011.0.i.i.i97.i.i, 16    ; 2 uses
  %i.pu = add i64 %.sroa.01.0.i.i.i99.i.i, %i.pt
  br label %bb.av

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i: ; preds = %.lr.ph.i.i102.i.i
  %i.pv = load i64, ptr %i.by, align 8, !noalias !168157
  %.not518.i.i = icmp ult i64 %i.pv, %i.ai
  br i1 %.not518.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, label %bb.ay

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i: ; preds = %._crit_edge.i.i106.i.i, %bb.bj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !168235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !168157
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.e, align 4, !noalias !168236
  %.val.i112.i.i = load i64, ptr %i.ce, align 8, !alias.scope !168235, !noalias !168157, !noundef !67
  %.val2.i113.i.i = load i64, ptr %i.cf, align 8, !alias.scope !168235, !noalias !168157, !noundef !67
  %i.pw = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i112.i.i, i64 %.val2.i113.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !168236
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.pw, i32 noundef %.sroa.4.0.i.ph.i.i)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.i.i

bb.ay:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !168157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !168157
  %i.px = load ptr, ptr %i.bu, align 8, !noalias !168157, !nonnull !67, !noundef !67 ; 2 uses
  %i.py = load i64, ptr %i.bt, align 8, !noalias !168157, !noundef !67
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.py
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !168157
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.k, align 4, !noalias !168157
  store ptr %i.px, ptr %i.l, align 8, !noalias !168157
  store ptr %i.pz, ptr %.sroa.4226.0..sroa_idx.i.i, align 8, !noalias !168157
  store ptr %i.k, ptr %.sroa.5227.0..sroa_idx.i.i, align 8, !noalias !168157
  store ptr %i.cn, ptr %.sroa.6228.0..sroa_idx.i.i, align 8, !noalias !168157
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !168157

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !168157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !168157
  call void @llvm.experimental.noalias.scope.decl(metadata !168237)
  %.val.i115.i.i = load i64, ptr %i.cg, align 8, !alias.scope !168238, !noalias !168239, !noundef !67
  %i.qa = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168240, !noundef !67
  %i.qb = xor i64 %.val.i115.i.i, %i.or
  %i.qc = zext i64 %i.qb to i128
  %i.qd = zext i64 %i.qa to i128
  %i.qe = mul nuw i128 %i.qc, %i.qd               ; 2 uses
  %i.qf = lshr i128 %i.qe, 64
  %i.qg = xor i128 %i.qf, %i.qe
  %i.qh = trunc i128 %i.qg to i64                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168241)
  %i.qi = load ptr, ptr %i.ch, align 8, !alias.scope !168242, !noalias !168243, !nonnull !67, !noundef !67
  %i.qj = load i64, ptr %i.ci, align 8, !alias.scope !168242, !noalias !168243, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168244)
  call void @llvm.experimental.noalias.scope.decl(metadata !168245)
  %i.qk = lshr i64 %i.qh, 57
  %i.ql = trunc nuw nsw i64 %i.qk to i8
  %i.qm = load i64, ptr %i.ck, align 8, !alias.scope !168246, !noalias !168247, !noundef !67 ; 2 uses
  %i.qn = load ptr, ptr %i.cj, align 8, !alias.scope !168246, !noalias !168247, !nonnull !67, !noundef !67 ; 2 uses
  %i.qo = insertelement <16 x i8> poison, i8 %i.ql, i64 0
  %i.qp = shufflevector <16 x i8> %i.qo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.sroa.011.0.i.i.i.i116.i.i = phi i64 [ 0, %bb.az ], [ %i.rj, %bb.bd ]
  %.pn.i.i.i117.i.i = phi i64 [ %i.qh, %bb.az ], [ %i.rk, %bb.bd ]
  %.sroa.01.0.i.i.i.i118.i.i = and i64 %.pn.i.i.i117.i.i, %i.qm ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 %.sroa.01.0.i.i.i.i118.i.i
  %.sroa.0.0.copyload.i24.i.i.i119.i.i = load <16 x i8>, ptr %i.qq, align 1, !noalias !168248 ; 2 uses
  %i.qr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i119.i.i, %i.qp
  %i.qs = bitcast <16 x i1> %i.qr to i16          ; 2 uses
  %.not.i.not36.i.i.i120.i.i = icmp eq i16 %i.qs, 0
  br i1 %.not.i.not36.i.i.i120.i.i, label %._crit_edge.i.i.i127.i.i, label %.lr.ph.i.i.i121.i.i

.lr.ph.i.i.i121.i.i:                              ; preds = %bb.ba, %bb.bc
  %.sroa.05.0.i37.i.i.i122.i.i = phi i16 [ %i.ri, %bb.bc ], [ %i.qs, %bb.ba ] ; 3 uses
  %i.qt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i122.i.i, i1 true)
  %i.qu = zext nneg i16 %i.qt to i64
  %i.qv = add i64 %.sroa.01.0.i.i.i.i118.i.i, %i.qu
  %i.qw = and i64 %i.qv, %i.qm
  %i.qx = sub nsw i64 0, %i.qw
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.qx
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 -8
  %.val.i.i.i.i123.i.i = load i64, ptr %i.qz, align 8, !noalias !168249, !noundef !67 ; 3 uses
  %i.ra = icmp ult i64 %.val.i.i.i.i123.i.i, %i.qj
  br i1 %i.ra, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i121.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i123.i.i, i64 noundef %i.qj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc134.i.i unwind label %bb.by, !noalias !168157

.noexc134.i.i:                                    ; preds = %bb.bb
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i: ; preds = %.lr.ph.i.i.i121.i.i
  %i.rb = getelementptr inbounds nuw [40 x i8], ptr %i.qi, i64 %.val.i.i.i.i123.i.i ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %.val2.i.i.i.i.i125.i.i = load i32, ptr %i.rc, align 4, !noalias !168250, !noundef !67
  %i.rd = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i.i.i125.i.i
  br i1 %i.rd, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i, label %bb.bc, !prof !77

._crit_edge.i.i.i127.i.i:                         ; preds = %bb.bc, %bb.ba
  %i.re = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i119.i.i, splat (i8 -1)
  %i.rf = bitcast <16 x i1> %i.re to i16
  %i.rg = icmp eq i16 %i.rf, 0
  br i1 %i.rg, label %bb.bd, label %bb.be, !prof !71

bb.bc:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i
  %i.rh = add i16 %.sroa.05.0.i37.i.i.i122.i.i, -1
  %i.ri = and i16 %i.rh, %.sroa.05.0.i37.i.i.i122.i.i ; 2 uses
  %.not.i.not.i.i.i126.i.i = icmp eq i16 %i.ri, 0
  br i1 %.not.i.not.i.i.i126.i.i, label %._crit_edge.i.i.i127.i.i, label %.lr.ph.i.i.i121.i.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i127.i.i
  %i.rj = add i64 %.sroa.011.0.i.i.i.i116.i.i, 16 ; 2 uses
  %i.rk = add i64 %.sroa.01.0.i.i.i.i118.i.i, %i.rj
  br label %bb.ba

.body142.i.i:                                     ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i
  %lpad.thr_comm.split-lp334.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.be:                                            ; preds = %._crit_edge.i.i.i127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !168157
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168157
  %i.rl = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168157 ; 3 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.bf, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i, !prof !104

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc136.i.i unwind label %bb.by, !noalias !168157

.noexc136.i.i:                                    ; preds = %bb.bf
  unreachable

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i
  %.sroa.0234.0.copyload.i.i = load i64, ptr %i.m, align 8, !noalias !168157 ; 3 uses
  %.sroa.5236.0.copyload.i.i = load ptr, ptr %.sroa.5236.0..sroa_idx.i.i, align 8, !noalias !168157 ; 3 uses
  %.sroa.6239.0.copyload.i.i = load i64, ptr %.sroa.6239.0..sroa_idx.i.i, align 8, !noalias !168157
  call void @llvm.experimental.noalias.scope.decl(metadata !168251)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !alias.scope !168251, !noalias !168252, !noundef !67 ; 3 uses
  %i.rp = load i64, ptr %i.rb, align 8, !range !70, !alias.scope !168251, !noalias !168252, !noundef !67
  %i.rq = icmp eq i64 %i.ro, %i.rp
  br i1 %i.rq, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rb)
          to label %bb.bi unwind label %bb.bh, !noalias !168252

bb.bh:                                            ; preds = %bb.bg
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = icmp eq i64 %.sroa.0234.0.copyload.i.i, 0
  br i1 %i.rs, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i: ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5236.0.copyload.i.i) ]
  %i.rt = shl nuw i64 %.sroa.0234.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5236.0.copyload.i.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168253
  br label %bb.e

bb.bi:                                            ; preds = %bb.bg, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !alias.scope !168251, !noalias !168252, !nonnull !67, !noundef !67
  %i.rw = getelementptr inbounds nuw [24 x i8], ptr %i.rv, i64 %i.ro ; 3 uses
  store i64 %.sroa.0234.0.copyload.i.i, ptr %i.rw, align 8, !noalias !168254
  %.sroa.5236.0..sroa_idx237.i.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %.sroa.5236.0.copyload.i.i, ptr %.sroa.5236.0..sroa_idx237.i.i, align 8, !noalias !168254
  %.sroa.6239.0..sroa_idx240.i.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store i64 %.sroa.6239.0.copyload.i.i, ptr %.sroa.6239.0..sroa_idx240.i.i, align 8, !noalias !168254
  %i.rx = add i64 %i.ro, 1
  store i64 %i.rx, ptr %i.rn, align 8, !alias.scope !168251, !noalias !168252
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !168157
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !168157
  store i64 1, ptr %i.j, align 8, !noalias !168157
  store ptr %i.rl, ptr %i.co, align 8, !noalias !168157
  store i64 1, ptr %i.cp, align 8, !noalias !168157
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1y_BK_EEE13insert_uniqueCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o, i64 noundef %i.qh, i32 noundef %.sroa.4.0.i.ph.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bk unwind label %.body142.i.i

bb.bk:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !168157
  br label %bb.bj

bb.bl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !168157
  %.pre436.i.i = load i64, ptr %i.bt, align 8, !noalias !168157 ; 6 uses
  br i1 %i.bz, label %.thread347.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bl
  %.val24.i.i.i = load <16 x i8>, ptr %i.cd, align 16, !noalias !168255
  %i.ry = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.rz = bitcast <16 x i1> %i.ry to i16
  %i.sa = load ptr, ptr %i.bu, align 8, !noalias !168157, !nonnull !67 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %.val3.i206.i.i = load i64, ptr %i.ce, align 8, !noalias !168157
  %.val4.i207.i.i = load i64, ptr %i.cf, align 8, !noalias !168157
  %i.sc = load i64, ptr %i.bw, align 8, !noalias !168157 ; 3 uses
  %i.sd = load ptr, ptr %i.bv, align 8, !noalias !168157, !nonnull !67 ; 3 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge.backedge.i.i, %.lr.ph.i.i
  %i.se = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.sr, %.critedge.backedge.i.i ]
  %.lcssa1014.i399.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.lcssa1013.i.i.i, %.critedge.backedge.i.i ] ; 2 uses
  %i.sf = phi i16 [ %i.rz, %.lr.ph.i.i ], [ %i.so, %.critedge.backedge.i.i ] ; 2 uses
  %.lcssa18.i398.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %.lcssa17.i.i.i, %.critedge.backedge.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %i.sf, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i
  %i.sg = phi ptr [ %i.sk, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa18.i398.i.i, %bb.bm ] ; 2 uses
  %i.sh = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa1014.i399.i.i, %bb.bm ]
  %.val68.i.i.i.i.i.i = load <16 x i8>, ptr %i.sg, align 16, !noalias !168256
  %i.si = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i, splat (i8 -1)
  %i.sj = getelementptr inbounds i8, ptr %i.sh, i64 -64 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.si to i16 ; 2 uses
  %.not.i.i.i.i147.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i147.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bm
  %.lcssa17.i.i.i = phi ptr [ %.lcssa18.i398.i.i, %bb.bm ], [ %i.sk, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa1013.i.i.i = phi ptr [ %.lcssa1014.i399.i.i, %bb.bm ], [ %i.sj, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.sf, %bb.bm ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.sl = add i16 %.lcssa.i.i.i.i.i.i, -1
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0INtB6_5FnMutTRNtNtB2u_10graph_impl9NodeIndexEE8call_mutBW_:bb.a

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232: ; preds = %vector.memcheck, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.aam = phi i64 [ %i.aaq, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232 ]
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aam
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.aan, align 4, !noalias !168314, !noundef !67
  %i.aao = zext i32 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.aam
  store i64 %i.aao, ptr %i.aap, align 8, !noalias !168317
  %i.aaq = add nuw i64 %i.aam, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !168127

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader232 ], [ %i.aaq, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aar = sub i64 %.ph, %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aas = icmp ugt i64 %i.aar, -4
  br i1 %i.aas, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aat = phi i64 [ %i.abj, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aat
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aau, align 4, !noalias !168314, !noundef !67
  %i.aav = zext i32 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.aat
  store i64 %i.aav, ptr %i.aaw, align 8, !noalias !168317
  %i.aax = add nuw i64 %i.aat, 1                  ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aax
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.aay, align 4, !noalias !168314, !noundef !67
  %i.aaz = zext i32 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.aax
  store i64 %i.aaz, ptr %i.aba, align 8, !noalias !168317
  %i.abb = add nuw i64 %i.aat, 2                  ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.abb
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.abc, align 4, !noalias !168314, !noundef !67
  %i.abd = zext i32 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 to i64
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.abb
  store i64 %i.abd, ptr %i.abe, align 8, !noalias !168317
  %i.abf = add nuw i64 %i.aat, 3                  ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.abf
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.abg, align 4, !noalias !168314, !noundef !67
  %i.abh = zext i32 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.abf
  store i64 %i.abh, ptr %i.abi, align 8, !noalias !168317
  %i.abj = add nuw i64 %i.aat, 4                  ; 2 uses
  %i.abk = icmp eq i64 %i.abj, %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.abk, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !168128

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abl = getelementptr inbounds nuw [24 x i8], ptr %i.zr, i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.abl, align 8, !noalias !168318
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store ptr %i.aab, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !168318
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  store i64 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !168318
  %i.abm = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abn = icmp eq i64 %i.abm, %.val6.i.i.i.i.i.i
  br i1 %i.abn, label %_RNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_00Ba_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.cs
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !168319), !noalias !168320
  %i.abp = icmp eq i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.abp, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.body.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.abr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.abq = getelementptr inbounds nuw [24 x i8], ptr %i.zr, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.abr = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168321), !noalias !168320
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.abq, align 8, !alias.scope !168322, !noalias !168323 ; 2 uses
  %i.abs = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.abs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abt, align 8, !alias.scope !168322, !noalias !168323, !nonnull !67, !noundef !67
  %i.abu = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.abu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168324
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abv = icmp eq i64 %i.abr, %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.abv, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zr, i64 noundef %.idx.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168323
  br label %bb.cu

_RNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_00Ba_.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cm
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cm ], [ %i.zr, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.abw = zext i32 %.val4.i.i.i.i.i5.i to i64    ; 2 uses
  store i64 %i.abw, ptr %i.b, align 8, !noalias !168309
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !168309
  store ptr %.sroa.6.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !168309
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !168309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168325
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIBP_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef %i.abw, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.i6.i, !noalias !168302

.noexc4.i.i:                                      ; preds = %_RNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_00Ba_.exit.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zl, align 8, !noalias !168325 ; 3 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !168325 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !168325 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168325
  %i.abx = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.abx, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1L_BW_EEETjIB1L_IB1L_jEEEuNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtB10_10UndirectedEs0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2s_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5U_8IndexMapjB2u_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4Z_7collect6ExtendB2s_E6extendINtB4_3MapINtNtB5U_4iter4IterBW_B1K_EB2J_EE0E0E0B2U_.exit.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc4.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !168326)
  %i.aby = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aby, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ct, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aca, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ct ] ; 2 uses
  %i.abz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aca = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168327)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.abz, align 8, !alias.scope !168328, !noalias !168329 ; 2 uses
  %i.acb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.acb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.acc, align 8, !alias.scope !168328, !noalias !168329, !nonnull !67, !noundef !67
  %i.acd = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.acd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168330
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ace = icmp eq i64 %i.aca, %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ace, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ct
  %i.acf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.acf, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1L_BW_EEETjIB1L_IB1L_jEEEuNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtB10_10UndirectedEs0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2s_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5U_8IndexMapjB2u_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4Z_7collect6ExtendB2s_E6extendINtB4_3MapINtNtB5U_4iter4IterBW_B1K_EB2J_EE0E0E0B2U_.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.acg = mul nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.acg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168329
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1L_BW_EEETjIB1L_IB1L_jEEEuNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtB10_10UndirectedEs0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2s_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5U_8IndexMapjB2u_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4Z_7collect6ExtendB2s_E6extendINtB4_3MapINtNtB5U_4iter4IterBW_B1K_EB2J_EE0E0E0B2U_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1L_BW_EEETjIB1L_IB1L_jEEEuNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtB10_10UndirectedEs0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2s_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5U_8IndexMapjB2u_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4Z_7collect6ExtendB2s_E6extendINtB4_3MapINtNtB5U_4iter4IterBW_B1K_EB2J_EE0E0E0B2U_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168309
  %i.ach = icmp eq ptr %i.zm, %i.ym
  br i1 %i.ach, label %_RNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0B8_.exit, label %bb.cm

.loopexit.i6.i:                                   ; preds = %_RNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_00Ba_.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp.i.i:                           ; preds = %bb.co, %bb.cl
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i6.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.abo, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i7.i, %.loopexit.i6.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.d), !noalias !168302
  br label %.body.i

bb.cv:                                            ; preds = %bb.cg, %bb.cf, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity16all_simple_paths33all_simple_paths_multiple_targetsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2S_5types3any5PyAnyEB2N_NtB1N_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cu, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ch
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aci, %bb.cv ], [ %eh.lpad-body.i.i, %bb.cu ], [ %i.yu, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.yu, %bb.ch ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.r) #63, !noalias !168153
  br label %common.resume.i

_RNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0B8_.exit: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1L_BW_EEETjIB1L_IB1L_jEEEuNCNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtB10_10UndirectedEs0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2s_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5U_8IndexMapjB2u_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4Z_7collect6ExtendB2s_E6extendINtB4_3MapINtNtB5U_4iter4IterBW_B1K_EB2J_EE0E0E0B2U_.exit.i.i.i.i.i.i, %.noexc.i3.i
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acj, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !168152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !168302
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.r), !noalias !168153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !168153
  store i64 %i.bh, ptr %0, align 8, !alias.scope !168151, !noalias !168152
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph8DirectedEs0_0INtB6_5FnMutTRNtNtB2u_10graph_impl9NodeIndexEE8call_mutBW_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(none) %.0.val, i32 %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 19 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 21 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !168662
  %i.s = load ptr, ptr %.0.val, align 8, !alias.scope !168661, !noalias !168660, !nonnull !67, !align !98, !noundef !67
  %i.t = load ptr, ptr %i.s, align 8, !noalias !168662, !nonnull !67, !align !98, !noundef !67 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !168661, !noalias !168660, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !168661, !noalias !168660, !nonnull !67, !align !98, !noundef !67
  %i.y = load i64, ptr %i.x, align 8, !noalias !168662, !noundef !67
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !168661, !noalias !168660, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !68, !noalias !168662, !noundef !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !168662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168664)
  %i.ae = trunc nuw i64 %i.ab to i1
  %i.af = add i64 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !168663, !noalias !168665
  %i.ah = add i64 %.val.i.i.i, -1
  %.sroa.09.0.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ah
  %i.ai = add i64 %i.y, 1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !168666
  call fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB1L_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.q, i32 %.0.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !168666
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168666
  %i.aj = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168666 ; 10 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.b, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i, !prof !104

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i.i unwind label %bb.c, !noalias !168666

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.e, %bb.c
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn480.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.bb, %bb.c ], [ %.pn.i.i, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168667)
  call void @llvm.experimental.noalias.scope.decl(metadata !168668), !noalias !168669
  call void @llvm.experimental.noalias.scope.decl(metadata !168670), !noalias !168669
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !168671, !noalias !168666, !noundef !67 ; 4 uses
  %i.am = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.am, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !168671, !noalias !168666, !nonnull !67, !noundef !67
  %i.ao = shl i64 %.val1.i.i.i.i, 3
  %i.ap = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ap), !noalias !168669
  %i.aq = and i64 %i.ao, -16                      ; 2 uses
  %i.ar = add i64 %i.aq, 16                       ; 2 uses
  %i.as = add nsw i64 %.val1.i.i.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !168669
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !168669
  %i.aw = sub nuw nsw i64 -16, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.aw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !168672
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !168671, !noalias !168666 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ay, label %common.resume.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !168671, !noalias !168666, !nonnull !67, !noundef !67
  %i.ba = shl nuw i64 %.val2.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168672
  br label %common.resume.i

common.resume.i:                                  ; preds = %.body.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.pn.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168675)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !168676, !noalias !168677, !nonnull !67, !noundef !67 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !168676, !noalias !168677, !noundef !67 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !168676, !noalias !168677, !noundef !67 ; 2 uses
  %i.bh = zext i32 %.0.val1 to i64                ; 3 uses
  %i.bi = icmp ugt i64 %.val6.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %bb.d, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.d:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !168676, !noalias !168677, !nonnull !67, !noundef !67
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.bh ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !168678, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bm, align 8, !noalias !168678
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.d, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ -1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ], [ -1, %bb.d ]
  store ptr %i.bd, ptr %i.aj, align 8, !noalias !168666
  %.sroa.4.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.bf, ptr %.sroa.4.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168666
  %.sroa.5.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168666
  %.sroa.6.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 -1, ptr %.sroa.6.0..sroa.0223.0..sroa_idx.i.i, align 4, !noalias !168666
  %.sroa.8.0..sroa.0223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 -1, ptr %.sroa.8.0..sroa.0223.0..sroa_idx.i.i, align 8, !noalias !168666
  store i64 1, ptr %i.p, align 8, !noalias !168666
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %i.aj, ptr %i.bn, align 8, !noalias !168666
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  store i64 1, ptr %i.bo, align 8, !noalias !168666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !168666
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !168664, !noalias !168679, !noundef !67 ; 3 uses
  invoke fastcc void @_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB29_B1l_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.o, i64 noundef %i.bq)
          to label %.preheader358.i.i unwind label %.thread.i.i, !noalias !168666

.preheader358.i.i:                                ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 9 uses
  %i.bx = icmp eq i64 %i.bq, 0                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val.i60.i.i = load i64, ptr %i.by, align 8, !alias.scope !168664, !noalias !168679 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !168664, !noalias !168679 ; 4 uses
  %i.cb = load ptr, ptr %i.v, align 8, !alias.scope !168664, !noalias !168679, !nonnull !67 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %.sroa.5268.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6271.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4226.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6228.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6239.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i172.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !168663, !noalias !168665, !nonnull !67
  br label %bb.g

bb.e:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %bb.by, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i, %bb.bh, %.body142.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i, %bb.as, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.ao, %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit356.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm335.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i ], [ %i.rp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i ], [ %lpad.thr_comm.split-lp336.i.i, %.body142.i.i ], [ %i.oe, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ], [ %i.oe, %bb.ao ], [ %lpad.thr_comm.i.i, %bb.as ], [ %lpad.thr_comm.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i ], [ %i.rp, %bb.bh ], [ %lpad.thr_comm335.i.i, %bb.by ], [ %lpad.loopexit.i.i, %.loopexit356.i.i ], [ %lpad.loopexit359.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp360.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #63, !noalias !168666
  %.val53.pre.i.i = load i64, ptr %i.p, align 8, !noalias !168666 ; 2 uses
  %i.cq = icmp eq i64 %.val53.pre.i.i, 0
  br i1 %i.cq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i

._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i: ; preds = %bb.e
  %.val54.i.pre.i = load ptr, ptr %i.bn, align 8, !noalias !168666
  %i.cr = shl nuw i64 %.val53.pre.i.i, 5
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.thread.i.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i
  %.val54.i.i = phi ptr [ %i.aj, %.thread.i.i ], [ %.val54.i.pre.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  %.pn.pn480.i.i = phi { ptr, i32 } [ %i.cs, %.thread.i.i ], [ %.pn.i.i, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  %.val53479.i.i = phi i64 [ 32, %.thread.i.i ], [ %i.cr, %._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54.i.i, i64 noundef %.val53479.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168666
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

.thread.i.i:                                      ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.f:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !noalias !168680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !168666
  %.val51.i.i = load i64, ptr %i.p, align 8, !noalias !168666 ; 2 uses
  %i.ct = icmp eq i64 %.val51.i.i, 0
  br i1 %i.ct, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i: ; preds = %bb.f
  %.val52.i.i = load ptr, ptr %i.bn, align 8, !noalias !168666, !nonnull !67, !noundef !67
  %i.cu = shl nuw i64 %.val51.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168666
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i

bb.g:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i, %.preheader358.i.i
  %i.cv = phi ptr [ %i.aj, %.preheader358.i.i ], [ %i.wb, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 11 uses
  %i.cw = phi ptr [ %i.aj, %.preheader358.i.i ], [ %i.wc, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 11 uses
  %i.cx = phi i64 [ 1, %.preheader358.i.i ], [ %.pr.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i ] ; 6 uses
  %i.cy = getelementptr [32 x i8], ptr %i.cw, i64 %i.cx ; 5 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -32    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168681)
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !168681, !noalias !168666, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cy, i64 -24
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !168681, !noalias !168666, !noundef !67 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cy, i64 -16    ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !168681, !noalias !168666, !noundef !67
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp ugt i64 %i.dc, %i.df
  br i1 %i.dg, label %bb.h, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.dh = getelementptr i8, ptr %i.cy, i64 -12    ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.dh, align 4, !alias.scope !168681, !noalias !168666
  %i.di = getelementptr i8, ptr %i.cy, i64 -8
  %.val4.i.i.i = load i32, ptr %i.di, align 8, !alias.scope !168681, !noalias !168666
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.df ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !noalias !168682, !noundef !67
  store i32 %i.dl, ptr %i.dd, align 8, !alias.scope !168681, !noalias !168666
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !noalias !168682, !noundef !67
  br label %.loopexit357.i.i

bb.i:                                             ; preds = %bb.j, %.preheader.i.i.i
  %i.do = phi i32 [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.dt, %bb.j ]
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = icmp ugt i64 %i.dc, %i.dp
  br i1 %i.dq, label %bb.j, label %bb.bz

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.dp ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !noalias !168682, !noundef !67 ; 2 uses
  store i32 %i.dt, ptr %i.dh, align 4, !alias.scope !168681, !noalias !168666
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.val.i57.i.i = load i32, ptr %i.du, align 8, !noalias !168682, !noundef !67 ; 2 uses
  %i.dv = icmp eq i32 %.val.i57.i.i, %.val4.i.i.i
  br i1 %i.dv, label %bb.i, label %.loopexit357.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i55.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !168666
  call void @llvm.experimental.noalias.scope.decl(metadata !168683)
  call void @llvm.experimental.noalias.scope.decl(metadata !168684)
  call void @llvm.experimental.noalias.scope.decl(metadata !168685)
  %.val1.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !168686, !noalias !168666, !noundef !67 ; 4 uses
  %i.dw = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.dw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i
  %.val.i.i.i58.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !168686, !noalias !168666, !nonnull !67, !noundef !67
  %i.dx = shl i64 %.val1.i.i.i.i.i, 3
  %i.dy = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.dy)
  %i.dz = and i64 %i.dx, -16                      ; 2 uses
  %i.ea = add i64 %i.dz, 16                       ; 2 uses
  %i.eb = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ec = add i64 %i.eb, %i.ea                    ; 3 uses
  %i.ed = icmp uge i64 %i.ec, %i.ea
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp ult i64 %i.ec, 9223372036854775793
  call void @llvm.assume(i1 %i.ee)
  %i.ef = sub nuw nsw i64 -16, %i.dz
  %i.eg = getelementptr inbounds i8, ptr %.val.i.i.i58.i.i, i64 %i.ef
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eg, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !168687
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit56.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !168686, !noalias !168666 ; 2 uses
  %i.eh = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.eh, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity16all_simple_paths33all_simple_paths_multiple_targetsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2S_5types3any5PyAnyEB2N_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.val3.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !168686, !noalias !168666, !nonnull !67, !noundef !67
  %i.ei = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168687
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity16all_simple_paths33all_simple_paths_multiple_targetsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2S_5types3any5PyAnyEB2N_EECskcxRuJ53GpR_9rustworkx.exit.i

.loopexit356.i.i:                                 ; preds = %bb.af
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, %bb.k, %bb.bw, %bb.ay
  %lpad.loopexit359.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp360.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit357.i.i:                                 ; preds = %bb.j, %bb.h
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.dn, %bb.h ], [ %.val.i57.i.i, %bb.j ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !168666
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.n, align 4, !noalias !168666
  %i.ej = load i64, ptr %i.bw, align 8, !noalias !168666, !noundef !67
  %i.ek = icmp ult i64 %i.ej, %.sroa.09.0.i.i
  br i1 %i.ek, label %bb.k, label %.preheader.i.i

bb.k:                                             ; preds = %.loopexit357.i.i
  %i.el = invoke fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.i.i

.preheader.i.i:                                   ; preds = %.loopexit357.i.i, %.preheader.i.i.backedge
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.1301309.i.i, %.preheader.i.i.backedge ], [ %i.cz, %.loopexit357.i.i ] ; 8 uses
  %.sroa.0254.0.i.i = phi i1 [ %.sroa.0254.1310.i.i, %.preheader.i.i.backedge ], [ true, %.loopexit357.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.7.0.i.i, null
  br i1 %.not.i.i.i, label %.loopexit352.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168688)
  %i.em = load ptr, ptr %.sroa.7.0.i.i, align 8, !alias.scope !168688, !noalias !168689, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !168688, !noalias !168689, !noundef !67 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 16 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !alias.scope !168688, !noalias !168689, !noundef !67
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp ugt i64 %i.eo, %i.er
  br i1 %i.es, label %bb.m, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 20 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.et, align 4, !alias.scope !168688, !noalias !168689
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 24
  %.val4.i.i.i.i.i.i = load i32, ptr %i.eu, align 8, !alias.scope !168688, !noalias !168689
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.er ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !noalias !168690, !noundef !67
  store i32 %i.ex, ptr %i.ep, align 8, !alias.scope !168688, !noalias !168689
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !noalias !168690, !noundef !67
  br label %.thread302.i.i

bb.n:                                             ; preds = %bb.o, %.preheader.i.i.i.i.i.i
  %i.fa = phi i32 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.ff, %bb.o ]
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = icmp ugt i64 %i.eo, %i.fb
  br i1 %i.fc, label %bb.o, label %.loopexit352.i.i

bb.o:                                             ; preds = %bb.n
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.fb ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !noalias !168690, !noundef !67 ; 2 uses
  store i32 %i.ff, ptr %i.et, align 4, !alias.scope !168688, !noalias !168689
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %.val.i.i.i.i.i.i = load i32, ptr %i.fg, align 8, !noalias !168690, !noundef !67 ; 2 uses
  %i.fh = icmp eq i32 %.val.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.fh, label %bb.n, label %.thread302.i.i
end_hunk_14
begin_hunk_15_@_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity26all_pairs_all_simple_paths26all_pairs_all_simple_pathsNtCs68Jln09rRqb_8petgraph8DirectedEs0_0INtB6_5FnMutTRNtNtB2u_10graph_impl9NodeIndexEE8call_mutBW_:bb.a

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168703)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ho ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168704)
  %i.ib = add nsw i64 %i.ho, -16
  %i.ic = and i64 %i.ib, %i.he
  %i.id = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ic ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %i.id, align 1, !noalias !168705
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i = load <16 x i8>, ptr %i.ia, align 1, !noalias !168706
  %i.ig = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i, splat (i8 -1)
  %i.ih = bitcast <16 x i1> %i.ig to i16
  %i.ii = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.if, i1 false)
  %i.ij = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ih, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.ij, %i.ii
  %i.ik = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.ik, label %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.il = load i64, ptr %i.bv, align 8, !alias.scope !168707, !noalias !168708, !noundef !67
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.bv, align 8, !alias.scope !168707, !noalias !168708
  br label %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.aa, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.aa ], [ -128, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsfztDQZkQYYe_8indexmap5inner11erase_index0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ia, align 1, !noalias !168709
  %i.in = getelementptr i8, ptr %i.id, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.in, align 1, !noalias !168709
  %i.io = load i64, ptr %i.bw, align 8, !alias.scope !168707, !noalias !168708, !noundef !67
  %i.ip = add i64 %i.io, -1
  store i64 %i.ip, ptr %i.bw, align 8, !alias.scope !168707, !noalias !168708
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i158.i.i, %bb.bx, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i, %.thread349.i.i, %._crit_edge, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.v
  %i.iq = phi ptr [ %i.cv, %._crit_edge.i.i.i158.i.i ], [ %i.vw, %bb.bx ], [ %i.cv, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i ], [ %i.cv, %.thread349.i.i ], [ %i.cv, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cv, %bb.v ], [ %i.cv, %._crit_edge ], [ %i.cv, %._crit_edge.i.i.i.i.i ]
  %i.ir = phi ptr [ %i.cw, %._crit_edge.i.i.i158.i.i ], [ %i.vw, %bb.bx ], [ %i.cw, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i165.i.i ], [ %i.cw, %.thread349.i.i ], [ %i.cw, %_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cw, %bb.v ], [ %i.cw, %._crit_edge ], [ %i.cw, %._crit_edge.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !168666
  %.pr.pre.i.i = load i64, ptr %i.bo, align 8, !noalias !168666
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit200.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168710)
  %i.is = load i64, ptr %i.br, align 8, !alias.scope !168710, !noalias !168711, !noundef !67 ; 4 uses
  switch i64 %i.is, label %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.it = load ptr, ptr %i.bs, align 8, !alias.scope !168710, !noalias !168711, !nonnull !67, !noundef !67
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.val2.i.i.i = load i32, ptr %i.iu, align 4, !noalias !168712, !noundef !67
  %i.iv = icmp ne i32 %.pn2.i311.i.i, %.val2.i.i.i
  br label %.loopexit.i.i

_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val3.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !168710, !noalias !168711, !noundef !67 ; 2 uses
  %.val4.i68.i.i = load i64, ptr %i.cd, align 8, !alias.scope !168710, !noalias !168711, !noundef !67 ; 2 uses
  %i.iw = xor i64 %.val3.i.i.i, 8317987319222330741
  %i.ix = xor i64 %.val4.i68.i.i, 7237128888997146477 ; 3 uses
  %i.iy = xor i64 %.val3.i.i.i, 7816392313619706465
  %i.iz = or disjoint i64 %i.fj, 288230376151711744
  %i.ja = xor i64 %.val4.i68.i.i, %i.fj
  %i.jb = xor i64 %i.ja, 8098989879002948979      ; 3 uses
  %i.jc = add i64 %i.ix, %i.iw                    ; 3 uses
  %i.jd = add i64 %i.jb, %i.iy                    ; 2 uses
  %i.je = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 13)
  %i.jf = xor i64 %i.je, %i.jc                    ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 16)
  %i.jh = xor i64 %i.jg, %i.jd                    ; 3 uses
  %i.ji = call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 32)
  %i.jj = add i64 %i.jf, %i.jd                    ; 3 uses
  %i.jk = add i64 %i.jh, %i.ji                    ; 2 uses
  %i.jl = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 17)
  %i.jm = xor i64 %i.jj, %i.jl                    ; 3 uses
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 21)
  %i.jo = xor i64 %i.jn, %i.jk                    ; 3 uses
  %i.jp = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 32)
  %i.jq = xor i64 %i.jk, %i.iz
  %i.jr = xor i64 %i.jp, 255
  %i.js = add i64 %i.jq, %i.jm                    ; 3 uses
  %i.jt = add i64 %i.jr, %i.jo                    ; 2 uses
  %i.ju = call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 13)
  %i.jv = xor i64 %i.js, %i.ju                    ; 3 uses
  %i.jw = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 16)
  %i.jx = xor i64 %i.jt, %i.jw                    ; 3 uses
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 32)
  %i.jz = add i64 %i.jv, %i.jt                    ; 3 uses
  %i.ka = add i64 %i.jx, %i.jy                    ; 2 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 17)
  %i.kc = xor i64 %i.jz, %i.kb                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.jx, i64 %i.jx, i64 21)
  %i.ke = xor i64 %i.kd, %i.ka                    ; 3 uses
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 32)
  %i.kg = add i64 %i.kc, %i.ka                    ; 3 uses
  %i.kh = add i64 %i.ke, %i.kf                    ; 2 uses
  %i.ki = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 13)
  %i.kj = xor i64 %i.ki, %i.kg                    ; 3 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 16)
  %i.kl = xor i64 %i.kk, %i.kh                    ; 3 uses
  %i.km = call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 32)
  %i.kn = add i64 %i.kj, %i.kh                    ; 3 uses
  %i.ko = add i64 %i.kl, %i.km                    ; 2 uses
  %i.kp = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 17)
  %i.kq = xor i64 %i.kp, %i.kn                    ; 3 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 21)
  %i.ks = xor i64 %i.kr, %i.ko                    ; 3 uses
  %i.kt = call noundef i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 32)
  %i.ku = add i64 %i.kq, %i.ko
  %i.kv = add i64 %i.ks, %i.kt                    ; 2 uses
  %i.kw = call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 13)
  %i.kx = xor i64 %i.kw, %i.ku                    ; 3 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 16)
  %i.kz = xor i64 %i.ky, %i.kv                    ; 2 uses
  %i.la = add i64 %i.kx, %i.kv                    ; 3 uses
  %i.lb = call noundef i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 17)
  %i.lc = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 21)
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.la, i64 %i.la, i64 32)
  %i.le = xor i64 %i.lb, %i.lc
  %i.lf = xor i64 %i.le, %i.ld
  %i.lg = xor i64 %i.lf, %i.la                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168713)
  %i.lh = load ptr, ptr %i.bs, align 8, !alias.scope !168714, !noalias !168715, !nonnull !67, !noundef !67
  call void @llvm.experimental.noalias.scope.decl(metadata !168716)
  call void @llvm.experimental.noalias.scope.decl(metadata !168717)
  %i.li = lshr i64 %i.lg, 57
  %i.lj = trunc nuw nsw i64 %i.li to i8
  %i.lk = load i64, ptr %i.bu, align 8, !alias.scope !168718, !noalias !168719, !noundef !67 ; 2 uses
  %i.ll = load ptr, ptr %i.bt, align 8, !alias.scope !168718, !noalias !168719, !nonnull !67, !noundef !67 ; 2 uses
  %i.lm = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.ln = shufflevector <16 x i8> %i.lm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i
  %.sroa.011.0.i.i.i.i69.i.i = phi i64 [ 0, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i ], [ %i.mh, %bb.ae ]
  %.pn.i.i.i70.i.i = phi i64 [ %i.lg, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i ], [ %i.mi, %bb.ae ]
  %.sroa.01.0.i.i.i.i71.i.i = and i64 %.pn.i.i.i70.i.i, %i.lk ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sroa.01.0.i.i.i.i71.i.i
  %.sroa.0.0.copyload.i24.i.i.i72.i.i = load <16 x i8>, ptr %i.lo, align 1, !noalias !168720 ; 2 uses
  %i.lp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i72.i.i, %i.ln
  %i.lq = bitcast <16 x i1> %i.lp to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.lq, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i

.lr.ph.i.i.i73.i.i:                               ; preds = %bb.ac, %bb.ad
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.mg, %bb.ad ], [ %i.lq, %bb.ac ] ; 3 uses
  %i.lr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.ls = zext nneg i16 %i.lr to i64
  %i.lt = add i64 %.sroa.01.0.i.i.i.i71.i.i, %i.ls
  %i.lu = and i64 %i.lt, %i.lk
  %i.lv = sub nsw i64 0, %i.lu
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.lv
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -8
  %.val.i.i.i.i74.i.i = load i64, ptr %i.lx, align 8, !noalias !168721, !noundef !67 ; 3 uses
  %i.ly = icmp ult i64 %.val.i.i.i.i74.i.i, %i.is
  br i1 %i.ly, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.invoke.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i73.i.i
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %.val.i.i.i.i74.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.ma, align 4, !noalias !168722, !noundef !67
  %i.mb = icmp eq i32 %.pn2.i311.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.mb, label %.preheader.i.i.backedge, label %bb.ad, !prof !77

._crit_edge.i.i.i76.i.i:                          ; preds = %bb.ad, %bb.ac
  %i.mc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i72.i.i, splat (i8 -1)
  %i.md = bitcast <16 x i1> %i.mc to i16
  %i.me = icmp eq i16 %i.md, 0
  br i1 %i.me, label %bb.ae, label %.loopexit.i.i, !prof !71

bb.ad:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.mf = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.mg = and i16 %i.mf, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i75.i.i = icmp eq i16 %i.mg, 0
  br i1 %.not.i.not.i.i.i75.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i76.i.i
  %i.mh = add i64 %.sroa.011.0.i.i.i.i69.i.i, 16  ; 2 uses
  %i.mi = add i64 %.sroa.01.0.i.i.i.i71.i.i, %i.mh
  br label %bb.ac

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i76.i.i, %bb.ab, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.i67.i.i = phi i1 [ true, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.iv, %bb.ab ], [ true, %._crit_edge.i.i.i76.i.i ]
  %i.mj = load i64, ptr %i.bw, align 8, !noalias !168666
  %i.mk = icmp uge i64 %i.mj, %i.ai
  %or.cond.i.i = select i1 %.sroa.0.0.i67.i.i, i1 %i.mk, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %.preheader.i.i.backedge

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !168666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !168666
  %i.ml = load ptr, ptr %i.bs, align 8, !noalias !168666, !nonnull !67, !noundef !67 ; 2 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %i.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !168666
  store i32 %.pn2.i311.i.i, ptr %i.g, align 4, !noalias !168666
  store ptr %i.ml, ptr %i.h, align 8, !noalias !168666
  store ptr %i.mm, ptr %.sroa.4257.0..sroa_idx.i.i, align 8, !noalias !168666
  store ptr %i.g, ptr %.sroa.5258.0..sroa_idx.i.i, align 8, !noalias !168666
  store ptr %1, ptr %.sroa.6259.0..sroa_idx.i.i, align 8, !noalias !168666
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ag unwind label %.loopexit356.i.i, !noalias !168666

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !168666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !168666
  call void @llvm.experimental.noalias.scope.decl(metadata !168723)
  %.val.i78.i.i = load i64, ptr %i.ce, align 8, !alias.scope !168724, !noalias !168725, !noundef !67
  %i.mn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168726, !noundef !67
  %i.mo = xor i64 %.val.i78.i.i, %i.fj
  %i.mp = zext i64 %i.mo to i128
  %i.mq = zext i64 %i.mn to i128
  %i.mr = mul nuw i128 %i.mp, %i.mq               ; 2 uses
  %i.ms = lshr i128 %i.mr, 64
  %i.mt = xor i128 %i.ms, %i.mr
  %i.mu = trunc i128 %i.mt to i64                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168727)
  %i.mv = load ptr, ptr %i.cf, align 8, !alias.scope !168728, !noalias !168729, !nonnull !67, !noundef !67
  %i.mw = load i64, ptr %i.cg, align 8, !alias.scope !168728, !noalias !168729, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168730)
  call void @llvm.experimental.noalias.scope.decl(metadata !168731)
  %i.mx = lshr i64 %i.mu, 57
  %i.my = trunc nuw nsw i64 %i.mx to i8
  %i.mz = load i64, ptr %i.ci, align 8, !alias.scope !168732, !noalias !168733, !noundef !67 ; 2 uses
  %i.na = load ptr, ptr %i.ch, align 8, !alias.scope !168732, !noalias !168733, !nonnull !67, !noundef !67 ; 2 uses
  %i.nb = insertelement <16 x i8> poison, i8 %i.my, i64 0
  %i.nc = shufflevector <16 x i8> %i.nb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %.sroa.011.0.i.i.i.i79.i.i = phi i64 [ 0, %bb.ag ], [ %i.nw, %bb.ak ]
  %.pn.i.i.i80.i.i = phi i64 [ %i.mu, %bb.ag ], [ %i.nx, %bb.ak ]
  %.sroa.01.0.i.i.i.i81.i.i = and i64 %.pn.i.i.i80.i.i, %i.mz ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %.sroa.01.0.i.i.i.i81.i.i
  %.sroa.0.0.copyload.i24.i.i.i82.i.i = load <16 x i8>, ptr %i.nd, align 1, !noalias !168734 ; 2 uses
  %i.ne = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i82.i.i, %i.nc
  %i.nf = bitcast <16 x i1> %i.ne to i16          ; 2 uses
  %.not.i.not36.i.i.i83.i.i = icmp eq i16 %i.nf, 0
  br i1 %.not.i.not36.i.i.i83.i.i, label %._crit_edge.i.i.i89.i.i, label %.lr.ph.i.i.i84.i.i

.lr.ph.i.i.i84.i.i:                               ; preds = %bb.ah, %bb.aj
  %.sroa.05.0.i37.i.i.i85.i.i = phi i16 [ %i.nv, %bb.aj ], [ %i.nf, %bb.ah ] ; 3 uses
  %i.ng = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i85.i.i, i1 true)
  %i.nh = zext nneg i16 %i.ng to i64
  %i.ni = add i64 %.sroa.01.0.i.i.i.i81.i.i, %i.nh
  %i.nj = and i64 %i.ni, %i.mz
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.nk
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -8
  %.val.i.i.i.i86.i.i = load i64, ptr %i.nm, align 8, !noalias !168735, !noundef !67 ; 3 uses
  %i.nn = icmp ult i64 %.val.i.i.i.i86.i.i, %i.mw
  br i1 %i.nn, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i84.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i86.i.i, i64 noundef %i.mw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc90.i.i unwind label %bb.as, !noalias !168666

.noexc90.i.i:                                     ; preds = %bb.ai
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i84.i.i
  %i.no = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %.val.i.i.i.i86.i.i ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %.val2.i.i.i.i.i87.i.i = load i32, ptr %i.np, align 4, !noalias !168736, !noundef !67
  %i.nq = icmp eq i32 %.pn2.i311.i.i, %.val2.i.i.i.i.i87.i.i
  br i1 %i.nq, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.aj, !prof !77

._crit_edge.i.i.i89.i.i:                          ; preds = %bb.aj, %bb.ah
  %i.nr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i82.i.i, splat (i8 -1)
  %i.ns = bitcast <16 x i1> %i.nr to i16
  %i.nt = icmp eq i16 %i.ns, 0
  br i1 %i.nt, label %bb.ak, label %bb.al, !prof !71

bb.aj:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.nu = add i16 %.sroa.05.0.i37.i.i.i85.i.i, -1
  %i.nv = and i16 %i.nu, %.sroa.05.0.i37.i.i.i85.i.i ; 2 uses
  %.not.i.not.i.i.i88.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not.i.not.i.i.i88.i.i, label %._crit_edge.i.i.i89.i.i, label %.lr.ph.i.i.i84.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i89.i.i
  %i.nw = add i64 %.sroa.011.0.i.i.i.i79.i.i, 16  ; 2 uses
  %i.nx = add i64 %.sroa.01.0.i.i.i.i81.i.i, %i.nw
  br label %bb.ah

.body.i.i:                                        ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.al:                                            ; preds = %._crit_edge.i.i.i89.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !168666
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168666
  %i.ny = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168666 ; 3 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.am, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i, !prof !104

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc91.i.i unwind label %bb.as, !noalias !168666

.noexc91.i.i:                                     ; preds = %bb.am
  unreachable

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0266.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !168666 ; 3 uses
  %.sroa.5268.0.copyload.i.i = load ptr, ptr %.sroa.5268.0..sroa_idx.i.i, align 8, !noalias !168666 ; 3 uses
  %.sroa.6271.0.copyload.i.i = load i64, ptr %.sroa.6271.0..sroa_idx.i.i, align 8, !noalias !168666
  call void @llvm.experimental.noalias.scope.decl(metadata !168737)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !168737, !noalias !168738, !noundef !67 ; 3 uses
  %i.oc = load i64, ptr %i.no, align 8, !range !70, !alias.scope !168737, !noalias !168738, !noundef !67
  %i.od = icmp eq i64 %i.ob, %i.oc
  br i1 %i.od, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %bb.ap unwind label %bb.ao, !noalias !168738

bb.ao:                                            ; preds = %bb.an
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = icmp eq i64 %.sroa.0266.0.copyload.i.i, 0
  br i1 %i.of, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5268.0.copyload.i.i) ]
  %i.og = shl nuw i64 %.sroa.0266.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5268.0.copyload.i.i, i64 noundef %i.og, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168739
  br label %bb.e

bb.ap:                                            ; preds = %bb.an, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !alias.scope !168737, !noalias !168738, !nonnull !67, !noundef !67
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %i.ob ; 3 uses
  store i64 %.sroa.0266.0.copyload.i.i, ptr %i.oj, align 8, !noalias !168740
  %.sroa.5268.0..sroa_idx269.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store ptr %.sroa.5268.0.copyload.i.i, ptr %.sroa.5268.0..sroa_idx269.i.i, align 8, !noalias !168740
  %.sroa.6271.0..sroa_idx272.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store i64 %.sroa.6271.0.copyload.i.i, ptr %.sroa.6271.0..sroa_idx272.i.i, align 8, !noalias !168740
  %i.ok = add i64 %i.ob, 1
  store i64 %i.ok, ptr %i.oa, align 8, !alias.scope !168737, !noalias !168738
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !168666
  br label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %._crit_edge.i.i.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.aq, %.loopexit.i.i, %.thread302.i.i
  br label %.preheader.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !168666
  store i64 1, ptr %i.f, align 8, !noalias !168666
  store ptr %i.ny, ptr %i.cj, align 8, !noalias !168666
  store i64 1, ptr %i.ck, align 8, !noalias !168666
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1y_BK_EEE13insert_uniqueCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o, i64 noundef %i.mu, i32 noundef %.pn2.i311.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ar unwind label %.body.i.i

bb.ar:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit92.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !168666
  br label %bb.aq

bb.as:                                            ; preds = %bb.am, %bb.ai
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val45.i.i = load i64, ptr %i.i, align 8, !noalias !168666 ; 2 uses
  %i.ol = icmp eq i64 %.val45.i.i, 0
  br i1 %i.ol, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i95.i.i: ; preds = %bb.as
  %.val46.i.i = load ptr, ptr %.sroa.5268.0..sroa_idx.i.i, align 8, !noalias !168666, !nonnull !67, !noundef !67
  %i.om = shl nuw i64 %.val45.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef %i.om, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168666
  br label %bb.e

._crit_edge:                                      ; preds = %bb.k
  %i.on = icmp eq i64 %i.el, 1
  br i1 %i.on, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  br i1 %i.bx, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oo = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168741, !noundef !67
  %i.op = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 2 uses
  %i.oq = xor i64 %.val.i60.i.i, %i.op
  %i.or = zext i64 %i.oq to i128
  %i.os = zext i64 %i.oo to i128
  %i.ot = mul nuw i128 %i.os, %i.or               ; 2 uses
  %i.ou = lshr i128 %i.ot, 64
  %i.ov = xor i128 %i.ou, %i.ot
  %i.ow = trunc i128 %i.ov to i64                 ; 2 uses
  %i.ox = lshr i64 %i.ow, 57
  %i.oy = trunc nuw nsw i64 %i.ox to i8
  %i.oz = insertelement <16 x i8> poison, i8 %i.oy, i64 0
  %i.pa = shufflevector <16 x i8> %i.oz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.011.0.i.i.i97.i.i = phi i64 [ 0, %bb.au ], [ %i.pr, %bb.ax ]
  %.pn.i.i98.i.i = phi i64 [ %i.ow, %bb.au ], [ %i.ps, %bb.ax ]
  %.sroa.01.0.i.i.i99.i.i = and i64 %.pn.i.i98.i.i, %i.ca ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.01.0.i.i.i99.i.i
  %.sroa.0.0.copyload.i24.i.i100.i.i = load <16 x i8>, ptr %i.pb, align 1, !noalias !168742 ; 2 uses
  %i.pc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i100.i.i, %i.pa
  %i.pd = bitcast <16 x i1> %i.pc to i16          ; 2 uses
  %.not.i.not30.i.i101.i.i = icmp eq i16 %i.pd, 0
  br i1 %.not.i.not30.i.i101.i.i, label %._crit_edge.i.i106.i.i, label %.lr.ph.i.i102.i.i

.lr.ph.i.i102.i.i:                                ; preds = %bb.av, %bb.aw
  %.sroa.05.0.i31.i.i103.i.i = phi i16 [ %i.pq, %bb.aw ], [ %i.pd, %bb.av ] ; 3 uses
  %i.pe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i103.i.i, i1 true)
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = add i64 %.sroa.01.0.i.i.i99.i.i, %i.pf
  %i.ph = and i64 %i.pg, %i.ca
  %i.pi = sub nsw i64 0, %i.ph
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.pi
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -4
  %.val2.i.i.i104.i.i = load i32, ptr %i.pk, align 4, !noalias !168743, !noundef !67
  %i.pl = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i104.i.i
  br i1 %i.pl, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i, label %bb.aw, !prof !77

._crit_edge.i.i106.i.i:                           ; preds = %bb.aw, %bb.av
  %i.pm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i100.i.i, splat (i8 -1)
  %i.pn = bitcast <16 x i1> %i.pm to i16
  %i.po = icmp eq i16 %i.pn, 0
  br i1 %i.po, label %bb.ax, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, !prof !71

bb.aw:                                            ; preds = %.lr.ph.i.i102.i.i
  %i.pp = add i16 %.sroa.05.0.i31.i.i103.i.i, -1
  %i.pq = and i16 %i.pp, %.sroa.05.0.i31.i.i103.i.i ; 2 uses
  %.not.i.not.i.i105.i.i = icmp eq i16 %i.pq, 0
  br i1 %.not.i.not.i.i105.i.i, label %._crit_edge.i.i106.i.i, label %.lr.ph.i.i102.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i106.i.i
  %i.pr = add i64 %.sroa.011.0.i.i.i97.i.i, 16    ; 2 uses
  %i.ps = add i64 %.sroa.01.0.i.i.i99.i.i, %i.pr
  br label %bb.av

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i: ; preds = %.lr.ph.i.i102.i.i
  %i.pt = load i64, ptr %i.bw, align 8, !noalias !168666
  %.not520.i.i = icmp ult i64 %i.pt, %i.ai
  br i1 %.not520.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i, label %bb.ay

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i: ; preds = %._crit_edge.i.i106.i.i, %bb.bj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !168744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !168666
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.e, align 4, !noalias !168745
  %.val.i112.i.i = load i64, ptr %i.cc, align 8, !alias.scope !168744, !noalias !168666, !noundef !67
  %.val2.i113.i.i = load i64, ptr %i.cd, align 8, !alias.scope !168744, !noalias !168666, !noundef !67
  %i.pu = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i112.i.i, i64 %.val2.i113.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !168745
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.pu, i32 noundef %.sroa.4.0.i.ph.i.i)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.i.i

bb.ay:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !168666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !168666
  %i.pv = load ptr, ptr %i.bs, align 8, !noalias !168666, !nonnull !67, !noundef !67 ; 2 uses
  %i.pw = load i64, ptr %i.br, align 8, !noalias !168666, !noundef !67
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.pw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !168666
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.k, align 4, !noalias !168666
  store ptr %i.pv, ptr %i.l, align 8, !noalias !168666
  store ptr %i.px, ptr %.sroa.4226.0..sroa_idx.i.i, align 8, !noalias !168666
  store ptr %i.k, ptr %.sroa.5227.0..sroa_idx.i.i, align 8, !noalias !168666
  store ptr %i.cl, ptr %.sroa.6228.0..sroa_idx.i.i, align 8, !noalias !168666
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !168666

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !168666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !168666
  call void @llvm.experimental.noalias.scope.decl(metadata !168746)
  %.val.i115.i.i = load i64, ptr %i.ce, align 8, !alias.scope !168747, !noalias !168748, !noundef !67
  %i.py = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !168749, !noundef !67
  %i.pz = xor i64 %.val.i115.i.i, %i.op
  %i.qa = zext i64 %i.pz to i128
  %i.qb = zext i64 %i.py to i128
  %i.qc = mul nuw i128 %i.qa, %i.qb               ; 2 uses
  %i.qd = lshr i128 %i.qc, 64
  %i.qe = xor i128 %i.qd, %i.qc
  %i.qf = trunc i128 %i.qe to i64                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168750)
  %i.qg = load ptr, ptr %i.cf, align 8, !alias.scope !168751, !noalias !168752, !nonnull !67, !noundef !67
  %i.qh = load i64, ptr %i.cg, align 8, !alias.scope !168751, !noalias !168752, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168753)
  call void @llvm.experimental.noalias.scope.decl(metadata !168754)
  %i.qi = lshr i64 %i.qf, 57
  %i.qj = trunc nuw nsw i64 %i.qi to i8
  %i.qk = load i64, ptr %i.ci, align 8, !alias.scope !168755, !noalias !168756, !noundef !67 ; 2 uses
  %i.ql = load ptr, ptr %i.ch, align 8, !alias.scope !168755, !noalias !168756, !nonnull !67, !noundef !67 ; 2 uses
  %i.qm = insertelement <16 x i8> poison, i8 %i.qj, i64 0
  %i.qn = shufflevector <16 x i8> %i.qm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.sroa.011.0.i.i.i.i116.i.i = phi i64 [ 0, %bb.az ], [ %i.rh, %bb.bd ]
  %.pn.i.i.i117.i.i = phi i64 [ %i.qf, %bb.az ], [ %i.ri, %bb.bd ]
  %.sroa.01.0.i.i.i.i118.i.i = and i64 %.pn.i.i.i117.i.i, %i.qk ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.sroa.01.0.i.i.i.i118.i.i
  %.sroa.0.0.copyload.i24.i.i.i119.i.i = load <16 x i8>, ptr %i.qo, align 1, !noalias !168757 ; 2 uses
  %i.qp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i119.i.i, %i.qn
  %i.qq = bitcast <16 x i1> %i.qp to i16          ; 2 uses
  %.not.i.not36.i.i.i120.i.i = icmp eq i16 %i.qq, 0
  br i1 %.not.i.not36.i.i.i120.i.i, label %._crit_edge.i.i.i127.i.i, label %.lr.ph.i.i.i121.i.i

.lr.ph.i.i.i121.i.i:                              ; preds = %bb.ba, %bb.bc
  %.sroa.05.0.i37.i.i.i122.i.i = phi i16 [ %i.rg, %bb.bc ], [ %i.qq, %bb.ba ] ; 3 uses
  %i.qr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i122.i.i, i1 true)
  %i.qs = zext nneg i16 %i.qr to i64
  %i.qt = add i64 %.sroa.01.0.i.i.i.i118.i.i, %i.qs
  %i.qu = and i64 %i.qt, %i.qk
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qv
  %i.qx = getelementptr inbounds i8, ptr %i.qw, i64 -8
  %.val.i.i.i.i123.i.i = load i64, ptr %i.qx, align 8, !noalias !168758, !noundef !67 ; 3 uses
  %i.qy = icmp ult i64 %.val.i.i.i.i123.i.i, %i.qh
  br i1 %i.qy, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i121.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i123.i.i, i64 noundef %i.qh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc134.i.i unwind label %bb.by, !noalias !168666

.noexc134.i.i:                                    ; preds = %bb.bb
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i: ; preds = %.lr.ph.i.i.i121.i.i
  %i.qz = getelementptr inbounds nuw [40 x i8], ptr %i.qg, i64 %.val.i.i.i.i123.i.i ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %.val2.i.i.i.i.i125.i.i = load i32, ptr %i.ra, align 4, !noalias !168759, !noundef !67
  %i.rb = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i.i.i125.i.i
  br i1 %i.rb, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i, label %bb.bc, !prof !77

._crit_edge.i.i.i127.i.i:                         ; preds = %bb.bc, %bb.ba
  %i.rc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i119.i.i, splat (i8 -1)
  %i.rd = bitcast <16 x i1> %i.rc to i16
  %i.re = icmp eq i16 %i.rd, 0
  br i1 %i.re, label %bb.bd, label %bb.be, !prof !71

bb.bc:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i
  %i.rf = add i16 %.sroa.05.0.i37.i.i.i122.i.i, -1
  %i.rg = and i16 %i.rf, %.sroa.05.0.i37.i.i.i122.i.i ; 2 uses
  %.not.i.not.i.i.i126.i.i = icmp eq i16 %i.rg, 0
  br i1 %.not.i.not.i.i.i126.i.i, label %._crit_edge.i.i.i127.i.i, label %.lr.ph.i.i.i121.i.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i127.i.i
  %i.rh = add i64 %.sroa.011.0.i.i.i.i116.i.i, 16 ; 2 uses
  %i.ri = add i64 %.sroa.01.0.i.i.i.i118.i.i, %i.rh
  br label %bb.ba

.body142.i.i:                                     ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i
  %lpad.thr_comm.split-lp336.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.be:                                            ; preds = %._crit_edge.i.i.i127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !168666
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !168666
  %i.rj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !168666 ; 3 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.bf, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i, !prof !104

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc136.i.i unwind label %bb.by, !noalias !168666

.noexc136.i.i:                                    ; preds = %bb.bf
  unreachable

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i: ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2y_B1K_EEB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i.i
  %.sroa.0234.0.copyload.i.i = load i64, ptr %i.m, align 8, !noalias !168666 ; 3 uses
  %.sroa.5236.0.copyload.i.i = load ptr, ptr %.sroa.5236.0..sroa_idx.i.i, align 8, !noalias !168666 ; 3 uses
  %.sroa.6239.0.copyload.i.i = load i64, ptr %.sroa.6239.0..sroa_idx.i.i, align 8, !noalias !168666
  call void @llvm.experimental.noalias.scope.decl(metadata !168760)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !168760, !noalias !168761, !noundef !67 ; 3 uses
  %i.rn = load i64, ptr %i.qz, align 8, !range !70, !alias.scope !168760, !noalias !168761, !noundef !67
  %i.ro = icmp eq i64 %i.rm, %i.rn
  br i1 %i.ro, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qz)
          to label %bb.bi unwind label %bb.bh, !noalias !168761

bb.bh:                                            ; preds = %bb.bg
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = icmp eq i64 %.sroa.0234.0.copyload.i.i, 0
  br i1 %i.rq, label %bb.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i139.i.i: ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5236.0.copyload.i.i) ]
  %i.rr = shl nuw i64 %.sroa.0234.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5236.0.copyload.i.i, i64 noundef %i.rr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !168762
  br label %bb.e

bb.bi:                                            ; preds = %bb.bg, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE5entryCskcxRuJ53GpR_9rustworkx.exit135.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !alias.scope !168760, !noalias !168761, !nonnull !67, !noundef !67
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.rt, i64 %i.rm ; 3 uses
  store i64 %.sroa.0234.0.copyload.i.i, ptr %i.ru, align 8, !noalias !168763
  %.sroa.5236.0..sroa_idx237.i.i = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %.sroa.5236.0.copyload.i.i, ptr %.sroa.5236.0..sroa_idx237.i.i, align 8, !noalias !168763
  %.sroa.6239.0..sroa_idx240.i.i = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store i64 %.sroa.6239.0.copyload.i.i, ptr %.sroa.6239.0..sroa_idx240.i.i, align 8, !noalias !168763
  %i.rv = add i64 %i.rm, 1
  store i64 %i.rv, ptr %i.rl, align 8, !alias.scope !168760, !noalias !168761
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !168666
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rj, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !168666
  store i64 1, ptr %i.j, align 8, !noalias !168666
  store ptr %i.rj, ptr %i.cm, align 8, !noalias !168666
  store i64 1, ptr %i.cn, align 8, !noalias !168666
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1y_BK_EEE13insert_uniqueCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o, i64 noundef %i.qf, i32 noundef %.sroa.4.0.i.ph.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bk unwind label %.body142.i.i

bb.bk:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit137.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !168666
  br label %bb.bj

bb.bl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit111.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !168666
  %.pre438.i.i = load i64, ptr %i.br, align 8, !noalias !168666 ; 6 uses
  br i1 %i.bx, label %.thread349.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bl
  %.val24.i.i.i = load <16 x i8>, ptr %i.cb, align 16, !noalias !168764
  %i.rw = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.rx = bitcast <16 x i1> %i.rw to i16
  %i.ry = load ptr, ptr %i.bs, align 8, !noalias !168666, !nonnull !67 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %.val3.i206.i.i = load i64, ptr %i.cc, align 8, !noalias !168666
  %.val4.i207.i.i = load i64, ptr %i.cd, align 8, !noalias !168666
  %i.sa = load i64, ptr %i.bu, align 8, !noalias !168666 ; 3 uses
  %i.sb = load ptr, ptr %i.bt, align 8, !noalias !168666, !nonnull !67 ; 3 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge.backedge.i.i, %.lr.ph.i.i
  %i.sc = phi i64 [ %i.bq, %.lr.ph.i.i ], [ %i.sp, %.critedge.backedge.i.i ]
  %.lcssa1014.i401.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.lcssa1013.i.i.i, %.critedge.backedge.i.i ] ; 2 uses
  %i.sd = phi i16 [ %i.rx, %.lr.ph.i.i ], [ %i.sm, %.critedge.backedge.i.i ] ; 2 uses
  %.lcssa18.i400.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %.lcssa17.i.i.i, %.critedge.backedge.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %i.sd, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i
  %i.se = phi ptr [ %i.si, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa18.i400.i.i, %bb.bm ] ; 2 uses
  %i.sf = phi ptr [ %i.sh, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa1014.i401.i.i, %bb.bm ]
  %.val68.i.i.i.i.i.i = load <16 x i8>, ptr %i.se, align 16, !noalias !168765
  %i.sg = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i, splat (i8 -1)
  %i.sh = getelementptr inbounds i8, ptr %i.sf, i64 -64 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.sg to i16 ; 2 uses
  %.not.i.i.i.i147.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i147.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bm
  %.lcssa17.i.i.i = phi ptr [ %.lcssa18.i400.i.i, %bb.bm ], [ %i.si, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa1013.i.i.i = phi ptr [ %.lcssa1014.i401.i.i, %bb.bm ], [ %i.sh, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.sd, %bb.bm ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.sj = add i16 %.lcssa.i.i.i.i.i.i, -1
end_hunk_15
