Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
bb.jg:                                            ; preds = %.lr.ph.i.i.i136.i
  %i.bec = getelementptr inbounds i8, ptr %.07.i.i.i137.i, i64 -12
  store i32 0, ptr %i.bec, align 4, !tbaa !132
  %i.bed = getelementptr inbounds i8, ptr %.07.i.i.i137.i, i64 -8
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.bee) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i:      ; preds = %bb.jg, %.lr.ph.i.i.i136.i
  %.not.i.i.i141.i = icmp eq i32 %i.bdy, 0
  br i1 %.not.i.i.i141.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i136.i, !llvm.loop !7

_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i, %bb.jf
  call void @hb_free(ptr noundef %.sroa.21.0240.i1414) #16
  br i1 %.7.i1415, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.jh:                                            ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %storemerge939 = phi i32 [ 0, %.lr.ph ], [ %i.bgq, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 5 uses
  %.sroa.0605.0938 = phi i32 [ %.sroa.0605.11394, %.lr.ph ], [ %.sroa.0605.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 10 uses
  %.sroa.11.0936 = phi i32 [ 0, %.lr.ph ], [ %.sroa.11.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %.sroa.18.0935 = phi ptr [ %.sroa.18.21393, %.lr.ph ], [ %.sroa.18.4, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %i.bef = load ptr, ptr %i.w, align 8, !tbaa !116 ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 40
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !759 ; 5 uses
  %.not.i250 = icmp eq ptr %i.beh, null
  br i1 %.not.i250, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bei = mul i32 %storemerge939, 506952113
  %i.bej = and i32 %i.bei, 1073741823
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bef, i64 32
  %i.bel = load i32, ptr %i.bek, align 8, !tbaa !760
  %i.bem = urem i32 %i.bej, %i.bel                ; 3 uses
  %i.ben = zext nneg i32 %i.bem to i64            ; 2 uses
  %i.beo = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.ben ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 4
  %i.beq = load i32, ptr %i.bep, align 4          ; 3 uses
  %i.ber = and i32 %i.beq, 2
  %.not15.i.i.i = icmp eq i32 %i.ber, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i252

.lr.ph.i.i.i252:                                  ; preds = %bb.ji
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bef, i64 28
  %i.bet = load i32, ptr %i.bes, align 4          ; 2 uses
  %i.beu = load i32, ptr %i.beo, align 4, !tbaa !101
  %i.bev = icmp eq i32 %i.beu, %storemerge939
  br i1 %i.bev, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419, label %.lr.ph.i.i253

bb.jj:                                            ; preds = %.lr.ph.i.i253
  %i.bew = load i32, ptr %i.bfc, align 4, !tbaa !101
  %i.bex = icmp eq i32 %i.bew, %storemerge939
  br i1 %i.bex, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, label %.lr.ph.i.i253, !llvm.loop !655

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i.i252, %bb.jj
  %.01016.i20.i.i = phi i32 [ %i.bfa, %bb.jj ], [ %i.bem, %.lr.ph.i.i.i252 ]
  %.017.i19.i.i = phi i32 [ %i.bey, %bb.jj ], [ 0, %.lr.ph.i.i.i252 ]
  %i.bey = add i32 %.017.i19.i.i, 1               ; 2 uses
  %i.bez = add i32 %i.bey, %.01016.i20.i.i
  %i.bfa = and i32 %i.bez, %i.bet                 ; 2 uses
  %i.bfb = zext i32 %i.bfa to i64
  %i.bfc = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfb ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 4
  %i.bfe = load i32, ptr %i.bfd, align 4          ; 2 uses
  %i.bff = and i32 %i.bfe, 2
  %.not.i.i.i254 = icmp eq i32 %i.bff, 0
  br i1 %.not.i.i.i254, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.jj, !llvm.loop !655

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit: ; preds = %bb.jj
  %i.bfg = trunc i32 %i.bfe to i1
  br i1 %i.bfg, label %.lr.ph.i.i259, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419: ; preds = %.lr.ph.i.i.i252
  %i.bfh = trunc i32 %i.beq to i1
  br i1 %i.bfh, label %._crit_edge.i.i261, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

bb.jk:                                            ; preds = %.lr.ph.i.i259
  %i.bfi = load i32, ptr %i.bfs, align 4, !tbaa !101
  %i.bfj = icmp eq i32 %i.bfi, %storemerge939
  br i1 %i.bfj, label %._crit_edge.i.i261, label %.lr.ph.i.i259, !llvm.loop !655

._crit_edge.i.i261:                               ; preds = %bb.jk, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419
  %.lcssa10.i.i = phi i32 [ %i.beq, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ %i.bfu, %bb.jk ]
  %i.bfk = phi i64 [ %i.ben, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ %i.bfr, %bb.jk ]
  %i.bfl = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfk
  %i.bfm = trunc i32 %.lcssa10.i.i to i1
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %spec.select.i.i = select i1 %i.bfm, ptr %i.bfn, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit

.lr.ph.i.i259:                                    ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, %bb.jk
  %.01016.i13.i.i = phi i32 [ %i.bfq, %bb.jk ], [ %i.bem, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.bfo, %bb.jk ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %i.bfo = add i32 %.017.i12.i.i, 1               ; 2 uses
  %i.bfp = add i32 %i.bfo, %.01016.i13.i.i
  %i.bfq = and i32 %i.bfp, %i.bet                 ; 2 uses
  %i.bfr = zext i32 %i.bfq to i64                 ; 2 uses
  %i.bfs = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfr ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %i.bfu = load i32, ptr %i.bft, align 4          ; 2 uses
  %i.bfv = and i32 %i.bfu, 2
  %.not.i.i.i260 = icmp eq i32 %i.bfv, 0
  br i1 %.not.i.i.i260, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, label %bb.jk, !llvm.loop !655

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i259, %._crit_edge.i.i261
  %.0.i262 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i261 ], [ @_hb_NullPool, %.lr.ph.i.i259 ]
  %i.bfw = load i32, ptr %.0.i262, align 4, !tbaa !762
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i253, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419, %bb.ji, %bb.jh, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit
  %.0658 = phi i32 [ %i.bfw, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ], [ 0, %bb.jh ], [ 0, %bb.ji ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ 0, %.lr.ph.i.i253 ]
  %.not.i263 = icmp slt i32 %.sroa.11.0936, %.sroa.0605.0938
  %.pre1092 = add i32 %.sroa.11.0936, 1           ; 6 uses
  br i1 %.not.i263, label %.critedge.i266, label %bb.jl

bb.jl:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread
  %i.bfx = icmp slt i32 %.sroa.0605.0938, 0
  br i1 %i.bfx, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483, label %bb.jm, !prof !99

bb.jm:                                            ; preds = %bb.jl
  %.not.i463 = icmp ugt i32 %.pre1092, %.sroa.0605.0938
  br i1 %.not.i463, label %.preheader.i465, label %.critedge.i266, !prof !99

.preheader.i465:                                  ; preds = %bb.jm, %.preheader.i465
  %.043.i466 = phi i32 [ %i.bga, %.preheader.i465 ], [ %.sroa.0605.0938, %bb.jm ] ; 2 uses
  %i.bfy = lshr i32 %.043.i466, 1
  %i.bfz = add i32 %.043.i466, 8
  %i.bga = add i32 %i.bfz, %i.bfy                 ; 8 uses
  %i.bgb = icmp ugt i32 %.pre1092, %i.bga
  br i1 %i.bgb, label %.preheader.i465, label %.thread.i467, !llvm.loop !0

.thread.i467:                                     ; preds = %.preheader.i465
  %i.bgc = icmp ugt i32 %i.bga, 1073741823
  br i1 %i.bgc, label %.critedge.i482, label %bb.jn, !prof !99

.critedge.i482:                                   ; preds = %.thread.i467
  %i.bgd = xor i32 %.sroa.0605.0938, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483

bb.jn:                                            ; preds = %.thread.i467
  %.not49.i469 = icmp eq i32 %.sroa.0605.0938, 0
  br i1 %.not49.i469, label %bb.jo, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470

bb.jo:                                            ; preds = %bb.jn
  %.not9.i.i.i479 = icmp eq ptr %.sroa.18.0935, null
  br i1 %.not9.i.i.i479, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bge = shl nuw i32 %i.bga, 2
  %i.bgf = zext i32 %i.bge to i64
  %i.bgg = tail call ptr @hb_malloc(i64 noundef %i.bgf) #16 ; 4 uses
  %.not10.i.i.i480 = icmp eq ptr %i.bgg, null
  br i1 %.not10.i.i.i480, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i477, label %bb.jq, !prof !99

bb.jq:                                            ; preds = %bb.jp
  %.not.i.i.i.i481 = icmp eq i32 %.sroa.11.0936, 0
  br i1 %.not.i.i.i.i481, label %.critedge.i266, label %bb.jr, !prof !99

bb.jr:                                            ; preds = %bb.jq
  %i.bgh = zext i32 %.sroa.11.0936 to i64
  %i.bgi = shl nuw nsw i64 %i.bgh, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgg, ptr nonnull readonly align 1 %.sroa.18.0935, i64 %i.bgi, i1 false), !alias.scope !781
  br label %.critedge.i266

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470: ; preds = %bb.jo, %bb.jn
  %i.bgj = phi ptr [ null, %bb.jo ], [ %.sroa.18.0935, %bb.jn ]
  %i.bgk = shl nuw i32 %i.bga, 2
  %i.bgl = zext i32 %i.bgk to i64
  %i.bgm = tail call ptr @hb_realloc(ptr noundef %i.bgj, i64 noundef %i.bgl) #16 ; 2 uses
  %.not22.i471 = icmp eq ptr %i.bgm, null
  br i1 %.not22.i471, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i477, label %.critedge.i266, !prof !100

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i477: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470, %bb.jp
  %i.bgn = xor i32 %.sroa.0605.0938, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483

_ZN11hb_vector_tIjLb0EE5allocEjb.exit483:         ; preds = %bb.jl, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i477, %.critedge.i482
  %.sroa.0605.4 = phi i32 [ %.sroa.0605.0938, %bb.jl ], [ %i.bgn, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i477 ], [ %i.bgd, %.critedge.i482 ]
  store i32 %i.x, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i266:                                   ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, %bb.jq, %bb.jr, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470, %bb.jm
  %.pre-phi1093 = phi i32 [ %.pre1092, %bb.jm ], [ 1, %bb.jq ], [ %.pre1092, %bb.jr ], [ %.pre1092, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470 ], [ %.pre1092, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.0935, %bb.jm ], [ %i.bgg, %bb.jq ], [ %i.bgg, %bb.jr ], [ %i.bgm, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470 ], [ %.sroa.18.0935, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ] ; 2 uses
  %.sroa.0605.2 = phi i32 [ %.sroa.0605.0938, %bb.jm ], [ %i.bga, %bb.jq ], [ %i.bga, %bb.jr ], [ %i.bga, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470 ], [ %.sroa.0605.0938, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ]
  %i.bgo = zext i32 %.sroa.11.0936 to i64
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.3, i64 %i.bgo
  store i32 %.0658, ptr %i.bgp, align 4, !tbaa !101
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483, %.critedge.i266
  %.sroa.18.4 = phi ptr [ %.sroa.18.3, %.critedge.i266 ], [ %.sroa.18.0935, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483 ] ; 6 uses
  %.sroa.11.1 = phi i32 [ %.pre-phi1093, %.critedge.i266 ], [ %.sroa.11.0936, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483 ] ; 3 uses
  %.sroa.0605.3 = phi i32 [ %.sroa.0605.2, %.critedge.i266 ], [ %.sroa.0605.4, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483 ] ; 3 uses
  %i.bgq = add nuw i32 %storemerge939, 1          ; 2 uses
  %i.bgr = load i32, ptr %i.l, align 8, !tbaa !96
  %i.bgs = icmp ult i32 %i.bgq, %i.bgr
  br i1 %i.bgs, label %bb.jh, label %._crit_edge, !llvm.loop !707

_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417: ; preds = %.thread1409, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %i.bgt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bgu = load i32, ptr %i.bgt, align 8, !tbaa !180 ; 6 uses
  %i.bgv = icmp slt i32 %i.bgu, 0
  br i1 %i.bgv, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.js, !prof !99

bb.js:                                            ; preds = %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417
  %.not.i484.not.not = icmp ne i32 %i.bgu, 0      ; 3 uses
  br i1 %.not.i484.not.not, label %.preheader.i486, label %bb.ju, !prof !99

.preheader.i486:                                  ; preds = %bb.js, %.preheader.i486
  %.043.i487 = phi i32 [ %i.bgy, %.preheader.i486 ], [ 0, %bb.js ] ; 2 uses
  %i.bgw = lshr i32 %.043.i487, 1
  %i.bgx = add nuw i32 %.043.i487, 8
  %i.bgy = add nuw i32 %i.bgx, %i.bgw             ; 4 uses
  %i.bgz = icmp ugt i32 %i.bgu, %i.bgy
  br i1 %i.bgz, label %.preheader.i486, label %.thread.i488, !llvm.loop !8

.thread.i488:                                     ; preds = %.preheader.i486
  %i.bha = icmp ugt i32 %i.bgy, 357913941
  br i1 %i.bha, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !99

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i488
  %i.bhb = zext nneg i32 %i.bgy to i64
  %i.bhc = mul nuw nsw i64 %i.bhb, 12
  %i.bhd = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bhc) #16 ; 3 uses
  %.not22.i491 = icmp eq ptr %i.bhd, null
  br i1 %.not22.i491, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.jt, !prof !100

bb.jt:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.bhe = mul nuw i32 %i.bgu, 12
  %i.bhf = zext i32 %i.bhe to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bhd, i8 0, i64 %i.bhf, i1 false)
  br label %bb.ju

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %.sroa.14587.0.ph = phi ptr [ null, %bb.js ], [ %i.bhd, %bb.jt ] ; 3 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !202 ; 2 uses
  %i.bhi = icmp slt i32 %i.bhh, 1
  br i1 %i.bhi, label %.thread723, label %.lr.ph946

.lr.ph946:                                        ; preds = %bb.ju
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.bhs = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bht = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bhu = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bhv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.2633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bhw = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.bhx = getelementptr inbounds nuw i8, ptr %11, i64 2
  %i.bhy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bhz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bia = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bib = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bic = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bie = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bif = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.big = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.bih = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bik = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bil = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bim = zext nneg i32 %i.bhh to i64
  br label %bb.jv

bb.jv:                                            ; preds = %.lr.ph946, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv = phi i64 [ %i.bim, %.lr.ph946 ], [ %indvars.iv.next, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 12 uses
  %i.bin = load ptr, ptr %i.bhj, align 8, !tbaa !203 ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.bin, null
  br i1 %.not.i.i268, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bio = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bip = mul i32 %i.bio, 506952113
  %i.biq = and i32 %i.bip, 1073741823             ; 2 uses
  %i.bir = load i32, ptr %i.bhk, align 8, !tbaa !204
  %i.bis = urem i32 %i.biq, %i.bir                ; 2 uses
  %i.bit = zext nneg i32 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [12 x i8], ptr %i.bin, i64 %i.bit ; 2 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 4
  %i.biw = load i32, ptr %i.biv, align 4          ; 2 uses
  %i.bix = and i32 %i.biw, 2
  %.not15.i.i.i.i269 = icmp eq i32 %i.bix, 0
  br i1 %.not15.i.i.i.i269, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i270

.lr.ph.i.i.i.i270:                                ; preds = %bb.jw
  %i.biy = load i32, ptr %i.bhl, align 4
  %i.biz = load i32, ptr %i.biu, align 4, !tbaa !101
  %i.bja = zext i32 %i.biz to i64
  %i.bjb = icmp eq i64 %indvars.iv.next, %i.bja
  br i1 %i.bjb, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i271

bb.jx:                                            ; preds = %.lr.ph.i.i.i271
  %i.bjc = load i32, ptr %i.bjj, align 4, !tbaa !101
  %i.bjd = zext i32 %i.bjc to i64
  %i.bje = icmp eq i64 %indvars.iv.next, %i.bjd
  br i1 %i.bje, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i271, !llvm.loop !9

.lr.ph.i.i.i271:                                  ; preds = %.lr.ph.i.i.i.i270, %bb.jx
  %.01016.i20.i.i.i272 = phi i32 [ %i.bjh, %bb.jx ], [ %i.bis, %.lr.ph.i.i.i.i270 ]
  %.017.i19.i.i.i273 = phi i32 [ %i.bjf, %bb.jx ], [ 0, %.lr.ph.i.i.i.i270 ]
  %i.bjf = add i32 %.017.i19.i.i.i273, 1          ; 2 uses
  %i.bjg = add i32 %i.bjf, %.01016.i20.i.i.i272
  %i.bjh = and i32 %i.bjg, %i.biy                 ; 2 uses
  %i.bji = zext i32 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw [12 x i8], ptr %i.bin, i64 %i.bji ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 4
  %i.bjl = load i32, ptr %i.bjk, align 4          ; 2 uses
  %i.bjm = and i32 %i.bjl, 2
  %.not.i.i.i.i274 = icmp eq i32 %i.bjm, 0
  br i1 %.not.i.i.i.i274, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.jx, !llvm.loop !9

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.jx, %.lr.ph.i.i.i.i270
  %.lcssa17.i.i.i = phi i32 [ %i.biw, %.lr.ph.i.i.i.i270 ], [ %i.bjl, %bb.jx ]
  %i.bjn = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.bjn, label %bb.jy, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.jy:                                            ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.bjo = load i32, ptr %i.bhm, align 4, !tbaa !205
  %i.bjp = zext i32 %i.bjo to i64
  %.not.i275 = icmp samesign ult i64 %indvars.iv.next, %i.bjp
  br i1 %.not.i275, label %bb.ka, label %bb.jz, !prof !97

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.ka:                                            ; preds = %bb.jy
  %i.bjq = load ptr, ptr %i.bhn, align 8, !tbaa !206
  %i.bjr = getelementptr inbounds nuw [16 x i8], ptr %i.bjq, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.jz, %bb.ka
  %.0.i276 = phi ptr [ @_hb_CrapPool, %bb.jz ], [ %i.bjr, %bb.ka ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0.i276, i64 4
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !154
  %.not = icmp eq i32 %i.bjt, 0
  br i1 %.not, label %bb.kn, label %bb.kb

bb.kb:                                            ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.bju = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bjv = load i32, ptr %i.bhm, align 4, !tbaa !205
  %i.bjw = zext i32 %i.bjv to i64
  %.not.i277 = icmp samesign ult i64 %indvars.iv.next, %i.bjw
  br i1 %.not.i277, label %bb.kd, label %bb.kc, !prof !97

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279

bb.kd:                                            ; preds = %bb.kb
  %i.bjx = load ptr, ptr %i.bhn, align 8, !tbaa !206
  %i.bjy = getelementptr inbounds nuw [16 x i8], ptr %i.bjx, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279: ; preds = %bb.kc, %bb.kd
  %.0.i278 = phi ptr [ @_hb_CrapPool, %bb.kc ], [ %i.bjy, %bb.kd ] ; 3 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0.i278, i64 4
  %.val.i.i = load i32, ptr %i.bjz, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i280 = icmp eq i32 %.val.i.i, 0       ; 2 uses
  br i1 %.not41.i.i280, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge, label %.lr.ph.preheader.i.i281

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i278, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289

.lr.ph.preheader.i.i281:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279
  %.sroa.2.8.insert.ext.i.i.i.i.i.i282 = zext i32 %.val.i.i to i64 ; 3 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %.0.i278, i64 8
  %.val21.i.i = load ptr, ptr %i.bka, align 8, !tbaa !155 ; 4 uses
  %i.bkb = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i282, 1152921504606846975
  %i.bkc = and i64 %i.bkb, 1152921504606846975    ; 2 uses
  %i.bkd = add nuw nsw i64 %i.bkc, 1              ; 2 uses
  %xtraiter1874 = and i64 %i.bkd, 7               ; 3 uses
  %i.bke = icmp samesign ult i64 %i.bkc, 7
  br i1 %i.bke, label %.lr.ph.i.i284.epil.preheader, label %.lr.ph.preheader.i.i281.new

.lr.ph.preheader.i.i281.new:                      ; preds = %.lr.ph.preheader.i.i281
  %unroll_iter1879 = and i64 %i.bkd, 2305843009213693944
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.lr.ph.i.i284, %.lr.ph.preheader.i.i281.new
  %.01644.i.i285 = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i281.new ], [ %i.bkv, %.lr.ph.i.i284 ] ; 9 uses
  %.01743.i.i286 = phi i32 [ 0, %.lr.ph.preheader.i.i281.new ], [ %i.bku, %.lr.ph.i.i284 ]
  %niter1880 = phi i64 [ 0, %.lr.ph.preheader.i.i281.new ], [ %niter1880.next.7, %.lr.ph.i.i284 ]
  %i.bkf = getelementptr i8, ptr %.01644.i.i285, i64 4
  %.016.val.i.i287 = load i32, ptr %i.bkf, align 4, !tbaa !132
  %i.bkg = add i32 %.016.val.i.i287, %.01743.i.i286
  %i.bkh = getelementptr i8, ptr %.01644.i.i285, i64 20
  %.016.val.i.i287.1 = load i32, ptr %i.bkh, align 4, !tbaa !132
  %i.bki = add i32 %.016.val.i.i287.1, %i.bkg
  %i.bkj = getelementptr i8, ptr %.01644.i.i285, i64 36
  %.016.val.i.i287.2 = load i32, ptr %i.bkj, align 4, !tbaa !132
  %i.bkk = add i32 %.016.val.i.i287.2, %i.bki
  %i.bkl = getelementptr i8, ptr %.01644.i.i285, i64 52
end_hunk_0
begin_hunk_1_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.bot = getelementptr inbounds nuw [12 x i8], ptr %i.bod, i64 %i.bos
  %i.bou = trunc i32 %.lcssa10.i.i.i.i316 to i1
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bot, i64 8
  %spec.select.i.i.i.i317 = select i1 %i.bou, ptr %i.bov, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i311:                                ; preds = %.lr.ph.i.i.i.i.i310, %bb.la
  %.01016.i13.i.i.i.i312 = phi i32 [ %i.boy, %bb.la ], [ %i.bof, %.lr.ph.i.i.i.i.i310 ]
  %.017.i12.i.i.i.i313 = phi i32 [ %i.bow, %bb.la ], [ 0, %.lr.ph.i.i.i.i.i310 ]
  %i.bow = add i32 %.017.i12.i.i.i.i313, 1        ; 2 uses
  %i.box = add i32 %i.bow, %.01016.i13.i.i.i.i312
  %i.boy = and i32 %i.box, %i.bol                 ; 2 uses
  %i.boz = zext i32 %i.boy to i64                 ; 2 uses
  %i.bpa = getelementptr inbounds nuw [12 x i8], ptr %i.bod, i64 %i.boz ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 4
  %i.bpc = load i32, ptr %i.bpb, align 4          ; 2 uses
  %i.bpd = and i32 %i.bpc, 2
  %.not.i.i.i.i.i314 = icmp eq i32 %i.bpd, 0
  br i1 %.not.i.i.i.i.i314, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.la, !llvm.loop !9

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i311, %_ZN22hb_serialize_context_t5embedEPKcj.exit, %bb.kz, %._crit_edge.i.i.i.i315
  %.0.i.i.i318 = phi ptr [ @minus_1, %_ZN22hb_serialize_context_t5embedEPKcj.exit ], [ %spec.select.i.i.i.i317, %._crit_edge.i.i.i.i315 ], [ @minus_1, %bb.kz ], [ @minus_1, %.lr.ph.i.i.i.i311 ]
  %i.bpe = load i32, ptr %.0.i.i.i318, align 4, !tbaa !101 ; 2 uses
  %i.bpf = load ptr, ptr %i.bij, align 8, !tbaa !173 ; 2 uses
  %.not.i319 = icmp eq ptr %i.bpf, null
  br i1 %.not.i319, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.lb, !prof !99

bb.lb:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  %i.bpg = load ptr, ptr %i.bhq, align 8, !tbaa !171
  %i.bph = load ptr, ptr %i.bpf, align 8, !tbaa !178
  %i.bpi = ptrtoint ptr %i.bpg to i64
  %i.bpj = ptrtoint ptr %i.bph to i64
  %i.bpk = sub i64 %i.bpi, %i.bpj
  %i.bpl = trunc i64 %i.bpk to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %_ZNK14hb_inc_bimap_tixEj.exit, %bb.lb
  %.0.i320 = phi i32 [ %i.bpl, %bb.lb ], [ 0, %_ZNK14hb_inc_bimap_tixEj.exit ] ; 2 uses
  %.not.i321 = icmp ult i32 %i.bpe, %i.bgu
  br i1 %.not.i321, label %bb.ld, label %bb.lc, !prof !97

bb.lc:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  store i32 %.0.i320, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 4), align 4, !tbaa !227
  %i.bpm = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit325

bb.ld:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.bpn = zext nneg i32 %i.bpe to i64
  %i.bpo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.14587.0.ph, i64 %i.bpn ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 4
  store i32 %.0.i320, ptr %i.bpp, align 4, !tbaa !227
  %i.bpq = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit325

_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit325: ; preds = %bb.lc, %bb.ld
  %i.bpr = phi i32 [ %i.bpm, %bb.lc ], [ %i.bpq, %bb.ld ]
  %.0.i324 = phi ptr [ @_hb_CrapPool, %bb.lc ], [ %i.bpo, %bb.ld ]
  %i.bps = getelementptr inbounds nuw i8, ptr %.0.i324, i64 8
  store i32 %i.bpr, ptr %i.bps, align 4, !tbaa !228
  br label %bb.le

.critedge:                                        ; preds = %bb.ku, %.critedge.i.i307, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i, %_ZN3CFF13str_encoder_t9encode_opEj.exit302
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.le

bb.le:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit325, %.critedge
  %i.bpt = phi i1 [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit325 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.bpu = load i32, ptr %12, align 8, !tbaa !131
  %i.bpv = add i32 %i.bpu, -1
  %spec.select.i.i.i326 = icmp ult i32 %i.bpv, -2
  br i1 %spec.select.i.i.i326, label %bb.lf, label %_ZN11hb_vector_tIhLb0EED2Ev.exit

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %i.bii, align 4, !tbaa !132
  %i.bpw = load ptr, ptr %i.bih, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.bpw) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit

_ZN11hb_vector_tIhLb0EED2Ev.exit:                 ; preds = %bb.le, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.lg

_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit: ; preds = %bb.kp
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.lg

bb.lg:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit
  %.2176 = phi i1 [ %i.bpt, %_ZN11hb_vector_tIhLb0EED2Ev.exit ], [ false, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit ]
  %i.bpx = load i32, ptr %i.bic, align 8, !tbaa !229
  %i.bpy = add i32 %i.bpx, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.bpy, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  store i32 0, ptr %i.bik, align 4, !tbaa !230
  %i.bpz = load ptr, ptr %i.bil, align 8, !tbaa !231
  call void @hb_free(ptr noundef %i.bpz) #16
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.2176, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i271, %bb.jw, %bb.jv, %bb.li, %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.bqa = icmp slt i64 %indvars.iv, 2
  br i1 %i.bqa, label %.thread723, label %bb.jv, !llvm.loop !715

.thread723:                                       ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %bb.ju
  %i.bqb = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bqc = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %.val212 = load i32, ptr %i.bqc, align 4, !tbaa !232 ; 3 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %.val213 = load ptr, ptr %i.bqd, align 8, !tbaa !233 ; 4 uses
  %.not11.i.i.i = icmp eq i32 %.val212, 0
  br i1 %.not11.i.i.i, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.lr.ph.i.i.i334

.lr.ph.i.i.i334:                                  ; preds = %.thread723
  %i.bqe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !203, !noalias !784 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bqf, null
  %i.bqg = getelementptr inbounds nuw i8, ptr %1, i64 92
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.split.i.preheader.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i334
  %i.bqh = add i32 %.val212, -1
  %i.bqi = zext i32 %i.bqh to i64
  %i.bqj = mul nuw nsw i64 %i.bqi, 40
  %i.bqk = getelementptr i8, ptr %.val213, i64 %i.bqj
  %scevgep.i.i.i = getelementptr i8, ptr %i.bqk, i64 40
  br label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"

.lr.ph.split.split.i.preheader.i.i:               ; preds = %.lr.ph.i.i.i334
  %i.bql = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bqm = load i32, ptr %i.bql, align 8, !tbaa !204, !noalias !784
  %i.bqn = ptrtoint ptr %.val213 to i64
  br label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.i.i.i:                         ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.lr.ph.split.split.i.preheader.i.i
  %.sroa.7.sroa.0.0 = phi i32 [ %.val212, %.lr.ph.split.split.i.preheader.i.i ], [ %i.bro, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0555.0 = phi ptr [ %.val213, %.lr.ph.split.split.i.preheader.i.i ], [ %i.brp, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %i.bqo = ptrtoint ptr %.sroa.0555.0 to i64
  %i.bqp = sub i64 %i.bqo, %i.bqn
  %i.bqq = sdiv exact i64 %i.bqp, 40
  %i.bqr = trunc i64 %i.bqq to i32                ; 3 uses
  %i.bqs = mul i32 %i.bqr, 506952113
  %i.bqt = and i32 %i.bqs, 1073741823
  %i.bqu = urem i32 %i.bqt, %i.bqm                ; 2 uses
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = getelementptr inbounds nuw [12 x i8], ptr %i.bqf, i64 %i.bqv ; 2 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 4
  %i.bqy = load i32, ptr %i.bqx, align 4, !noalias !784 ; 2 uses
  %i.bqz = and i32 %i.bqy, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bqz, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i
  %i.bra = load i32, ptr %i.bqg, align 4, !noalias !784
  %i.brb = load i32, ptr %i.bqw, align 4, !tbaa !101, !noalias !784
  %i.brc = icmp eq i32 %i.brb, %i.bqr
  br i1 %i.brc, label %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.lj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.brd = load i32, ptr %i.brj, align 4, !tbaa !101, !noalias !784
  %i.bre = icmp eq i32 %i.brd, %i.bqr
  br i1 %i.bre, label %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj
  %.01016.i20.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.brh, %bb.lj ], [ %i.bqu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.brf, %bb.lj ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.brf = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.brg = add i32 %i.brf, %.01016.i20.i.i.i.i.i.i.i.i.i.i.i
  %i.brh = and i32 %i.brg, %i.bra                 ; 2 uses
  %i.bri = zext i32 %i.brh to i64
  %i.brj = getelementptr inbounds nuw [12 x i8], ptr %i.bqf, i64 %i.bri ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 4
  %i.brl = load i32, ptr %i.brk, align 4, !noalias !784 ; 2 uses
  %i.brm = and i32 %i.brl, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.brm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %bb.lj, !llvm.loop !9

"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i": ; preds = %bb.lj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bqy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.brl, %bb.lj ]
  %i.brn = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.brn, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", %.lr.ph.split.split.i.i.i
  %i.bro = add i32 %.sroa.7.sroa.0.0, -1          ; 2 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %.sroa.0555.0, i64 40 ; 2 uses
  %.not.i.i.i335 = icmp eq i32 %i.bro, 0
  br i1 %.not.i.i.i335, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.lr.ph.split.split.i.i.i, !llvm.loop !720

"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit": ; preds = %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.thread723, %.lr.ph.split.us.i.i.i
  %.sroa.7.sroa.0.2 = phi i32 [ 0, %.thread723 ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.sroa.7.sroa.0.0, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0555.2 = phi ptr [ %.val213, %.thread723 ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0555.0, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i" ], [ %i.brp, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ]
  %i.brq = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 50 uses
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.brt = icmp ne i32 %.sroa.7.sroa.0.2, 0
  %spec.select.i.i.i.i48.i.i.i = and i1 %.not.i484.not.not, %i.brt
  br i1 %spec.select.i.i.i.i48.i.i.i, label %.lr.ph.i.i.i344, label %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i.thread"

"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i.thread": ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.bru = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  br label %bb.na

.lr.ph.i.i.i344:                                  ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.brv = load i32, ptr @_hb_NullPool, align 16
  %i.brw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.brx = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.brz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.lk

bb.lk:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i", %.lr.ph.i.i.i344
  %.sroa.15645.1 = phi ptr [ null, %.lr.ph.i.i.i344 ], [ %.sroa.15645.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 6 uses
  %.sroa.9643.1 = phi i32 [ 0, %.lr.ph.i.i.i344 ], [ %.sroa.9643.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 6 uses
  %.sroa.0639.1 = phi i32 [ 0, %.lr.ph.i.i.i344 ], [ %.sroa.0639.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 10 uses
  %i.bsc = phi ptr [ %.sroa.14587.0.ph, %.lr.ph.i.i.i344 ], [ %i.cbl, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 3 uses
  %i.bsd = phi i32 [ %.sroa.7.sroa.0.2, %.lr.ph.i.i.i344 ], [ %i.cbj, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ]
  %.val14549.i.i.i = phi i32 [ %i.bgu, %.lr.ph.i.i.i344 ], [ %i.cbk, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ]
  %i.bse = phi ptr [ %.sroa.0555.2, %.lr.ph.i.i.i344 ], [ %i.cbi, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 3 uses
  %i.bsf = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bse, i64 12 ; 2 uses
  %i.bsh = load i32, ptr %i.bsg, align 4, !tbaa !226
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bsh, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEdeEv.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i345

.lr.ph.i.i.i.i.i.i.i.i.i.i.i345:                  ; preds = %bb.lk
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bse, i64 16
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsc, i64 4
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsc, i64 8
  br label %bb.ll

_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i350, %.preheader.i.i.i.i348, %bb.mm, %bb.lz
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bsl = load i32, ptr %i.bsg, align 4, !tbaa !226
  %i.bsm = zext i32 %i.bsl to i64
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.bsm
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ll, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !11

bb.ll:                                            ; preds = %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i345
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i345 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i ] ; 2 uses
  %i.bsn = load ptr, ptr %i.bsi, align 8
  %i.bso = getelementptr inbounds nuw [16 x i8], ptr %i.bsn, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 8 ; 2 uses
  %i.bsq = load i32, ptr %i.bsp, align 8, !tbaa !235
  %i.bsr = icmp eq i32 %i.bsq, 18
  br i1 %i.bsr, label %bb.lm, label %bb.mn

bb.lm:                                            ; preds = %bb.ll
  %i.bss = load i32, ptr %i.bsj, align 4, !tbaa !227 ; 2 uses
  %i.bst = load i32, ptr %i.brz, align 4, !tbaa !169
  %.not.i.i.i.i.i.i.i351 = icmp eq i32 %i.bst, 0
  br i1 %.not.i.i.i.i.i.i.i351, label %bb.ln, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.ln:                                            ; preds = %bb.lm
  %i.bsu = load ptr, ptr %i.bsa, align 8, !tbaa !170
  %i.bsv = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.bsw = ptrtoint ptr %i.bsu to i64
  %i.bsx = ptrtoint ptr %i.bsv to i64
  %i.bsy = sub i64 %i.bsw, %i.bsx
  %i.bsz = icmp slt i64 %i.bsy, 1
  br i1 %i.bsz, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.ln
  store i8 0, ptr %i.bsv, align 1
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.bta = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 1
  store ptr %i.bta, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i.i.i.i.i352 = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i352, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lo, !prof !143

bb.lo:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i
  store i8 28, ptr %.pre.i.i.i.i.i.i.i, align 1, !tbaa !148
  %i.btb = load i32, ptr %i.brz, align 4, !tbaa !169
  %.not.i9.i.i.i.i.i.i = icmp eq i32 %i.btb, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.lp, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.lp:                                            ; preds = %bb.lo
  %i.btc = load ptr, ptr %i.bsa, align 8, !tbaa !170
  %i.btd = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.bte = ptrtoint ptr %i.btc to i64
  %i.btf = ptrtoint ptr %i.btd to i64
  %i.btg = sub i64 %i.bte, %i.btf
  %i.bth = icmp slt i64 %i.btg, 2
  br i1 %i.bth, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.lp
  store i16 0, ptr %i.btd, align 1
  %.pre.i11.i.i.i.i.i.i = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i.i.i.i, i64 2
  store ptr %i.bti, ptr %i.brr, align 8, !tbaa !171
  %.not8.i.i.i.i.i.i353 = icmp eq ptr %.pre.i11.i.i.i.i.i.i, null
  br i1 %.not8.i.i.i.i.i.i353, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lq, !prof !143

bb.lq:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i
  %i.btj = trunc i32 %i.bss to i16                ; 2 uses
  %i.btk = call i16 @llvm.bswap.i16(i16 %i.btj)
  store i16 %i.btk, ptr %.pre.i11.i.i.i.i.i.i, align 1, !tbaa !148
  %i.btl = sext i16 %i.btj to i64
  %i.btm = zext i32 %i.bss to i64
  %.not.i.i.i.i.i.i.i.i354 = icmp eq i64 %i.btl, %i.btm
  br i1 %.not.i.i.i.i.i.i.i.i354, label %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.btn = load i32, ptr %i.brz, align 4, !tbaa !169
  %i.bto = or i32 %i.btn, 8
  br label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i

_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i: ; preds = %bb.lq
  %i.btp = load i32, ptr %i.bsp, align 8, !tbaa !235 ; 3 uses
  %i.btq = load i32, ptr %i.bsk, align 4, !tbaa !228 ; 2 uses
  %i.btr = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.bts = load i32, ptr %i.brz, align 4, !tbaa !169
  %.not.i.i.i.i6.i.i.i = icmp eq i32 %i.bts, 0
  br i1 %.not.i.i.i.i6.i.i.i, label %bb.ls, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.ls:                                            ; preds = %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i
  %i.btt = load ptr, ptr %i.bsa, align 8, !tbaa !170
  %i.btu = ptrtoint ptr %i.btt to i64
  %i.btv = ptrtoint ptr %i.btr to i64
  %i.btw = sub i64 %i.btu, %i.btv
  %i.btx = icmp slt i64 %i.btw, 1
  br i1 %i.btx, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i: ; preds = %bb.ls
  store i8 0, ptr %i.btr, align 1
  %.pre.i.i.i.i8.i.i.i = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i8.i.i.i, i64 1
  store ptr %i.bty, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i.i9.i.i.i = icmp eq ptr %.pre.i.i.i.i8.i.i.i, null
  br i1 %.not.i.i.i9.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lt, !prof !143

bb.lt:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i
  store i8 29, ptr %.pre.i.i.i.i8.i.i.i, align 1, !tbaa !148
  %i.btz = load i32, ptr %i.brz, align 4, !tbaa !169
  %.not.i9.i.i.i10.i.i.i = icmp eq i32 %i.btz, 0
  br i1 %.not.i9.i.i.i10.i.i.i, label %bb.lu, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.lu:                                            ; preds = %bb.lt
  %i.bua = load ptr, ptr %i.bsa, align 8, !tbaa !170
  %i.bub = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.buc = ptrtoint ptr %i.bua to i64
  %i.bud = ptrtoint ptr %i.bub to i64
  %i.bue = sub i64 %i.buc, %i.bud
  %i.buf = icmp slt i64 %i.bue, 4
  br i1 %i.buf, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.lu
  store i32 0, ptr %i.bub, align 1
  %.pre.i11.i.i.i11.i.i.i = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i11.i.i.i, i64 4
  store ptr %i.bug, ptr %i.brr, align 8, !tbaa !171
  %.not8.i.i.i12.i.i.i = icmp eq ptr %.pre.i11.i.i.i11.i.i.i, null
  br i1 %.not8.i.i.i12.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lv, !prof !143

bb.lv:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i
  store i32 0, ptr %.pre.i11.i.i.i11.i.i.i, align 1, !tbaa !148
  %i.buh = icmp ugt i32 %i.btp, 255               ; 2 uses
  %i.bui = select i1 %i.buh, i64 2, i64 1         ; 2 uses
  %i.buj = load i32, ptr %i.brz, align 4, !tbaa !169
  %.not.i14.i.i.i.i.i = icmp eq i32 %i.buj, 0
  br i1 %.not.i14.i.i.i.i.i, label %bb.lw, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.lw:                                            ; preds = %bb.lv
  %i.buk = load ptr, ptr %i.bsa, align 8, !tbaa !170
  %i.bul = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 6 uses
  %i.bum = ptrtoint ptr %i.buk to i64
  %i.bun = ptrtoint ptr %i.bul to i64
  %i.buo = sub i64 %i.bum, %i.bun
  %i.bup = icmp slt i64 %i.buo, %i.bui
  br i1 %i.bup, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i: ; preds = %bb.lw
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bul, i64 %i.bui
  store ptr %i.buq, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i13.i.i.i = icmp eq ptr %i.bul, null
  br i1 %.not.i.i13.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lx, !prof !143

bb.lx:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i
  br i1 %i.buh, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  store i8 12, ptr %i.bul, align 1, !tbaa !148
  %i.bur = add i32 %i.btp, -256
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bul, i64 1
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %.013.i.i.i.i.i = phi i32 [ %i.bur, %bb.ly ], [ %i.btp, %bb.lx ]
  %.0.i.i.i.i.i = phi ptr [ %i.bus, %bb.ly ], [ %i.bul, %bb.lx ]
  %i.but = trunc i32 %.013.i.i.i.i.i to i8
  store i8 %i.but, ptr %.0.i.i.i.i.i, align 1, !tbaa !148
  %i.buu = getelementptr inbounds nuw i8, ptr %i.btr, i64 1
  %i.buv = load i32, ptr %i.brz, align 4, !tbaa !169
  %i.buw = icmp ne i32 %i.buv, 0
  %i.bux = icmp eq i32 %i.btq, 0
end_hunk_1
begin_hunk_2_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.cjy = sub i64 %i.cjw, %i.cjx
  %i.cjz = icmp slt i64 %i.cjy, %i.cjr
  br i1 %i.cjz, label %.critedge.i.i443, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440, !prof !99

.critedge.i.i443:                                 ; preds = %bb.pf, %bb.pe
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %.critedge14

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440: ; preds = %bb.pf
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjv, i64 %i.cjr
  store ptr %i.cka, ptr %i.brr, align 8, !tbaa !171
  %.not.i441 = icmp eq ptr %i.cjv, null
  br i1 %.not.i441, label %.critedge14, label %bb.pg, !prof !143

bb.pg:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440
  %.not.i7.i442 = icmp eq i32 %i.cjq, 0
  br i1 %.not.i7.i442, label %_ZN22hb_serialize_context_t5embedEPKcj.exit444, label %bb.ph, !prof !99

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cjv, ptr readonly align 1 %i.cjo, i64 %i.cjr, i1 false), !alias.scope !802
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit444

.critedge14:                                      ; preds = %bb.pd, %.critedge.i.i443, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440, %bb.pc
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit444

_ZN22hb_serialize_context_t5embedEPKcj.exit444:   ; preds = %bb.ph, %bb.pg, %.critedge14
  %cond6 = phi i1 [ false, %.critedge14 ], [ true, %bb.pg ], [ true, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.ckb = load i32, ptr %18, align 8, !tbaa !131
  %i.ckc = add i32 %i.ckb, -1
  %spec.select.i.i.i445 = icmp ult i32 %i.ckc, -2
  br i1 %spec.select.i.i.i445, label %bb.pi, label %_ZN11hb_vector_tIhLb0EED2Ev.exit446

bb.pi:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit444
  %i.ckd = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.ckd, align 4, !tbaa !132
  %i.cke = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ckf = load ptr, ptr %i.cke, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.ckf) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit446

_ZN11hb_vector_tIhLb0EED2Ev.exit446:              ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit444, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br i1 %cond6, label %bb.pj, label %.thread787

bb.pj:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit446
  %.not207 = icmp eq i32 %.0657, 0
  br i1 %.not207, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ckg = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 15, i32 noundef %.0657, i32 noundef 2)
  br i1 %i.ckg, label %bb.pl, label %.thread787.sink.split, !prof !97

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %i.ckh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cki = load i32, ptr %i.ckh, align 8, !tbaa !252 ; 2 uses
  %.not208 = icmp eq i32 %i.cki, 0
  br i1 %.not208, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ckj = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 293, i32 noundef %i.cki, i32 noundef 2)
  br i1 %i.ckj, label %bb.pn, label %.thread787.sink.split, !prof !97

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.ckk = load i32, ptr %i.cbx, align 4, !tbaa !247 ; 2 uses
  %.not209 = icmp eq i32 %i.ckk, 0
  br i1 %.not209, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ckl = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 292, i32 noundef %i.ckk, i32 noundef 2)
  br i1 %i.ckl, label %bb.pp, label %.thread787.sink.split, !prof !97

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %i.ckm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ckn = load ptr, ptr %i.ckm, align 8, !tbaa !803 ; 2 uses
  %i.cko = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ckp = load i32, ptr %i.cko, align 4, !tbaa !261 ; 2 uses
  %i.ckq = zext i32 %i.ckp to i64
  %.idx = shl nuw nsw i64 %i.ckq, 4
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckn, i64 %.idx
  %.not210948 = icmp eq i32 %i.ckp, 0
  br i1 %.not210948, label %._crit_edge952, label %.lr.ph951

.lr.ph951:                                        ; preds = %bb.pp
  %i.cks = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.pq

bb.pq:                                            ; preds = %.lr.ph951, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
  %.0192949 = phi ptr [ %i.ckn, %.lr.ph951 ], [ %i.clr, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread ] ; 4 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %.0192949, i64 8
  %i.cku = load i32, ptr %i.ckt, align 8, !tbaa !235
  switch i32 %i.cku, label %bb.pr [
    i32 24, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
    i32 17, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit
    i32 292, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
    i32 293, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.ckv = getelementptr inbounds nuw i8, ptr %.0192949, i64 12 ; 3 uses
  %i.ckw = load i8, ptr %i.ckv, align 4, !tbaa !243 ; 2 uses
  %i.ckx = zext i8 %i.ckw to i64                  ; 3 uses
  %i.cky = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i.i448 = icmp eq i32 %i.cky, 0
  br i1 %.not.i.i.i448, label %bb.ps, label %.thread787.sink.split, !prof !97

bb.ps:                                            ; preds = %bb.pr
  %i.ckz = load ptr, ptr %i.cgt, align 8, !tbaa !170
  %i.cla = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.clb = ptrtoint ptr %i.ckz to i64
  %i.clc = ptrtoint ptr %i.cla to i64
  %i.cld = sub i64 %i.clb, %i.clc
  %i.cle = icmp slt i64 %i.cld, %i.ckx
  br i1 %i.cle, label %.critedge.i.i.i456, label %bb.pt, !prof !99

.critedge.i.i.i456:                               ; preds = %bb.ps
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %.thread787.sink.split

bb.pt:                                            ; preds = %bb.ps
  %.not.i.i.not.i.i = icmp eq i8 %i.ckw, 0
  br i1 %.not.i.i.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i450, label %bb.pu, !prof !236

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.memset.p0.i64(ptr align 1 %i.cla, i8 0, i64 %i.ckx, i1 false)
  %.pre.i.i.i449 = load ptr, ptr %i.brr, align 8, !tbaa !171
  br label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i450

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i450: ; preds = %bb.pu, %bb.pt
  %i.clf = phi ptr [ %.pre.i.i.i449, %bb.pu ], [ %i.cla, %bb.pt ] ; 3 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 %i.ckx
  store ptr %i.clg, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i451 = icmp eq ptr %i.clf, null
  br i1 %.not.i.i451, label %.thread787.sink.split, label %.preheader.i.i452, !prof !143

.preheader.i.i452:                                ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i450
  %i.clh = load i8, ptr %i.ckv, align 4, !tbaa !243
  %.not15.i.i = icmp eq i8 %i.clh, 0
  br i1 %.not15.i.i, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, label %.lr.ph.i.i453

.lr.ph.i.i453:                                    ; preds = %.preheader.i.i452, %.lr.ph.i.i453
  %indvars.iv.i.i454 = phi i64 [ %indvars.iv.next.i.i455, %.lr.ph.i.i453 ], [ 0, %.preheader.i.i452 ] ; 3 uses
  %i.cli = load ptr, ptr %.0192949, align 8, !tbaa !244
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 %indvars.iv.i.i454
  %i.clk = load i8, ptr %i.clj, align 1, !tbaa !148
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clf, i64 %indvars.iv.i.i454
  store i8 %i.clk, ptr %i.cll, align 1, !tbaa !148
  %indvars.iv.next.i.i455 = add nuw nsw i64 %indvars.iv.i.i454, 1 ; 2 uses
  %i.clm = load i8, ptr %i.ckv, align 4, !tbaa !243
  %i.cln = zext i8 %i.clm to i64
  %i.clo = icmp samesign ult i64 %indvars.iv.next.i.i455, %i.cln
  br i1 %i.clo, label %.lr.ph.i.i453, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, !llvm.loop !14

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit: ; preds = %bb.pq
  %i.clp = load i32, ptr %i.cks, align 8, !tbaa !179
  %i.clq = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 17, i32 noundef %i.clp, i32 noundef 2)
  br i1 %i.clq, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, label %.thread787.sink.split, !prof !804

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread: ; preds = %.lr.ph.i.i453, %.preheader.i.i452, %bb.pq, %bb.pq, %bb.pq, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit
  %i.clr = getelementptr inbounds nuw i8, ptr %.0192949, i64 16 ; 2 uses
  %.not210 = icmp eq ptr %i.clr, %i.ckr
  br i1 %.not210, label %._crit_edge952, label %bb.pq

._crit_edge952:                                   ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.cls = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.clt = load ptr, ptr %i.cls, align 8, !tbaa !173 ; 2 uses
  %.not.i457 = icmp eq ptr %i.clt, null
  br i1 %.not.i457, label %_ZNK22hb_serialize_context_t6lengthEv.exit459, label %bb.pv, !prof !99

bb.pv:                                            ; preds = %._crit_edge952
  %i.clu = load ptr, ptr %i.brr, align 8, !tbaa !171
  %i.clv = load ptr, ptr %i.clt, align 8, !tbaa !178
  %i.clw = ptrtoint ptr %i.clu to i64
  %i.clx = ptrtoint ptr %i.clv to i64
  %i.cly = sub i64 %i.clw, %i.clx
  %i.clz = trunc i64 %i.cly to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit459

_ZNK22hb_serialize_context_t6lengthEv.exit459:    ; preds = %._crit_edge952, %bb.pv
  %.0.i458 = phi i32 [ %i.clz, %bb.pv ], [ 0, %._crit_edge952 ] ; 2 uses
  store i32 %.0.i458, ptr %i.k, align 4, !tbaa !101
  %i.cma = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  %i.cmb = load ptr, ptr %i.brr, align 8, !tbaa !171
  %i.cmc = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cmb, ptr noundef nonnull %0, ptr nonnull %i.k, i64 1, i32 noundef %.0.i458, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.thread787.sink.split:                            ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i450, %bb.pr, %.critedge.i.i.i456, %bb.po, %bb.pm, %bb.pk, %bb.pb
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %.thread787

.thread787:                                       ; preds = %.thread787.sink.split, %_ZN11hb_vector_tIhLb0EED2Ev.exit446
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %bb.li, %.thread720, %_ZNK22hb_serialize_context_t6lengthEv.exit459, %bb.ot, %.critedge.i.i424, %bb.ns, %bb.np, %bb.nm, %bb.nj, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit, %bb.oo, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767, %.thread787, %bb.nd, %bb.ng
  %.25 = phi i1 [ false, %.critedge.i.i424 ], [ false, %bb.ns ], [ false, %bb.ng ], [ %i.cmc, %_ZNK22hb_serialize_context_t6lengthEv.exit459 ], [ false, %bb.nd ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit ], [ false, %.thread787 ], [ false, %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767 ], [ false, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit ], [ false, %bb.oo ], [ false, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit ], [ false, %bb.ot ], [ false, %bb.nj ], [ false, %bb.nm ], [ false, %bb.np ], [ false, %.thread720 ], [ false, %bb.li ] ; 2 uses
  br i1 %.not.i484.not.not, label %bb.pw, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.pw:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14587.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %bb.je, %.thread.i488, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.pw, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %.26 = phi i1 [ false, %.thread.i488 ], [ false, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread ], [ %.25, %bb.pw ], [ %.25, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417 ], [ false, %bb.je ]
  ret i1 %.26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !106    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !99

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !0

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !99

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !99

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !108  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !99

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !808
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !100

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !107
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !106
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %i.l = getelementptr i8, ptr %.01644.i.i, i64 20
  %.016.val.i.i.1 = load i32, ptr %i.l, align 4, !tbaa !132
  %i.m = add i32 %.016.val.i.i.1, %i.k
  %i.n = getelementptr i8, ptr %.01644.i.i, i64 36
  %.016.val.i.i.2 = load i32, ptr %i.n, align 4, !tbaa !132
  %i.o = add i32 %.016.val.i.i.2, %i.m
  %i.p = getelementptr i8, ptr %.01644.i.i, i64 52
  %.016.val.i.i.3 = load i32, ptr %i.p, align 4, !tbaa !132
  %i.q = add i32 %.016.val.i.i.3, %i.o
  %i.r = getelementptr i8, ptr %.01644.i.i, i64 68
  %.016.val.i.i.4 = load i32, ptr %i.r, align 4, !tbaa !132
  %i.s = add i32 %.016.val.i.i.4, %i.q
  %i.t = getelementptr i8, ptr %.01644.i.i, i64 84
  %.016.val.i.i.5 = load i32, ptr %i.t, align 4, !tbaa !132
  %i.u = add i32 %.016.val.i.i.5, %i.s
  %i.v = getelementptr i8, ptr %.01644.i.i, i64 100
  %.016.val.i.i.6 = load i32, ptr %i.v, align 4, !tbaa !132
  %i.w = add i32 %.016.val.i.i.6, %i.u
  %i.x = getelementptr i8, ptr %.01644.i.i, i64 116
  %.016.val.i.i.7 = load i32, ptr %i.x, align 4, !tbaa !132
  %i.y = add i32 %.016.val.i.i.7, %i.w            ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01644.i.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01644.i.i.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i ], [ %i.z, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %.01743.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %lcmp.mod593 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod593)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01644.i.i.epil = phi ptr [ %i.ac, %.lr.ph.i.i.epil ], [ %.01644.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01743.i.i.epil = phi i32 [ %i.ab, %.lr.ph.i.i.epil ], [ %.01743.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aa = getelementptr i8, ptr %.01644.i.i.epil, i64 4
  %.016.val.i.i.epil = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ab = add i32 %.016.val.i.i.epil, %.01743.i.i.epil ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01644.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !827

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa
  %.lcssa591 = phi i32 [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ], [ %i.ab, %.lr.ph.i.i.epil ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !97

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !169
  %.not.i10.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i10.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !97

bb.b:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %i.ah = add i32 %.lcssa591, 5
  %i.ai = add i32 %.lcssa591, 1
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.ak = sub nuw nsw i32 39, %i.aj
  %i.al = lshr i32 %i.ak, 3
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.al)
  %i.am = add i32 %.val.i.i, 1
  %i.an = mul i32 %.sroa.speculated.i.i, %i.am
  %i.ao = add i32 %i.ah, %i.an                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = icmp slt i32 %i.ao, 0
  br i1 %i.aq, label %.critedge.i.i, label %.thread.i, !prof !278

.thread.i:                                        ; preds = %bb.b, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i
  %.01116.i = phi i32 [ %.lcssa591, %bb.b ], [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %.0.i1215.i = phi i64 [ %i.ap, %bb.b ], [ 4, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ad, %bb.b ], [ %i.af, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !170 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 38 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp slt i64 %i.ay, %.0.i1215.i
  br i1 %i.az, label %.critedge.i.i, label %bb.c, !prof !99

.critedge.i.i:                                    ; preds = %.thread.i, %bb.b
  %i.ba = phi ptr [ %i.ar, %.thread.i ], [ %i.ad, %bb.b ]
  store i32 4, ptr %i.ba, align 4, !tbaa !169
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.c:                                             ; preds = %.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !172
  %i.bc = sub nsw i64 0, %.0.i1215.i
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc ; 4 uses
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !177
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.val46.i.i = load ptr, ptr %i.bh, align 8, !tbaa !155 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i16.i = zext i32 %.val.i.i to i64 ; 2 uses
  %i.bi = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.bd, ptr noundef nonnull %1, ptr %.val46.i.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, i32 noundef %.01116.i, i32 noundef %i.c)
  br i1 %i.bi, label %bb.d, label %bb.m, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bj = zext i32 %.01116.i to i64               ; 2 uses
  %i.bk = load i32, ptr %i.ar, align 4, !tbaa !169
  %.not.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.m, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp slt i32 %.01116.i, 0
  br i1 %i.bl, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.f, !prof !99

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !171 ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp slt i64 %i.bq, %i.bj
  br i1 %i.br, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !171
  %.not43.i.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i.i, label %bb.m, label %bb.g, !prof !143

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i
  %.idx.i17.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 %.idx.i17.i
  br i1 %.not41.i.i, label %.loopexit337, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %bb.g, %bb.l
  %.082.i.i = phi ptr [ %i.cg, %bb.l ], [ %.val46.i.i, %bb.g ] ; 3 uses
  %.03481.i.i = phi i32 [ %.1.ph.i.i, %bb.l ], [ %.01116.i, %bb.g ] ; 3 uses
  %.03580.i.i = phi ptr [ %.136.ph.i.i, %bb.l ], [ %i.bn, %bb.g ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !132 ; 5 uses
  %.not45.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not45.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i18.i
  %i.bw = icmp ugt i32 %i.bv, %.03481.i.i
  br i1 %i.bw, label %bb.i, label %bb.j, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.ar, align 4, !tbaa !169
  %.not.i.i53.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i53.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.m, !prof !153

bb.j:                                             ; preds = %bb.h
  %i.by = sub nuw nsw i32 %.03481.i.i, %i.bv      ; 2 uses
  %i.bz = icmp eq i32 %i.bv, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !133 ; 2 uses
  br i1 %i.bz, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !148
  %i.cd = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 1
  store i8 %i.cc, ptr %.03580.i.i, align 1, !tbaa !148
  br label %bb.l

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.j
  %i.ce = zext nneg i32 %i.bv to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i.i, ptr readonly align 1 %i.cb, i64 %i.ce, i1 false), !alias.scope !857
  %i.cf = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 %i.ce
  br label %bb.l

bb.l:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.k, %.lr.ph.i18.i
  %.136.ph.i.i = phi ptr [ %.03580.i.i, %.lr.ph.i18.i ], [ %i.cf, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.cd, %bb.k ]
  %.1.ph.i.i = phi i32 [ %.03481.i.i, %.lr.ph.i18.i ], [ %i.by, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.by, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.cg, %i.bt
  br i1 %.not44.i.i, label %.loopexit337, label %.lr.ph.i18.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i: ; preds = %bb.i, %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 4, %bb.e ], [ 4, %bb.f ], [ 8, %bb.i ]
  store i32 %.sink.i.i, ptr %i.ar, align 4, !tbaa !169
  br label %bb.m

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, %bb.i, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, %bb.d, %bb.c
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

.loopexit337:                                     ; preds = %bb.l, %bb.g
  %i.ch = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !179
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !180 ; 6 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.n, !prof !99

bb.n:                                             ; preds = %.loopexit337
  %.not.i215.not.not = icmp ne i32 %i.ck, 0       ; 3 uses
  br i1 %.not.i215.not.not, label %.preheader.i, label %bb.p, !prof !99

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %.043.i = phi i32 [ %i.co, %.preheader.i ], [ 0, %bb.n ] ; 2 uses
  %i.cm = lshr i32 %.043.i, 1
  %i.cn = add nuw i32 %.043.i, 8
  %i.co = add nuw i32 %i.cn, %i.cm                ; 4 uses
  %i.cp = icmp ugt i32 %i.ck, %i.co
  br i1 %i.cp, label %.preheader.i, label %.thread.i216, !llvm.loop !8

.thread.i216:                                     ; preds = %.preheader.i
  %i.cq = icmp ugt i32 %i.co, 357913941
  br i1 %i.cq, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !99

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i216
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = mul nuw nsw i64 %i.cr, 12
  %i.ct = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.cs) #16 ; 3 uses
  %.not22.i = icmp eq ptr %i.ct, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.o, !prof !100

bb.o:                                             ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.cu = mul nuw i32 %i.ck, 12
  %i.cv = zext i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.cv, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.14262.0.ph = phi ptr [ null, %bb.n ], [ %i.ct, %bb.o ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !202 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %.critedge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 177
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 178
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !203 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.critedge99, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.eb = add nsw i32 %i.cx, -1
  %i.ec = zext nneg i32 %i.eb to i64
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pr = load ptr, ptr %i.cz, align 8, !tbaa !203
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.ed = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.dz, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ %i.ec, %.lr.ph.split.preheader ] ; 13 uses
  %.not.i.i111 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i111, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32
  %i.ef = mul i32 %i.ee, 506952113
  %i.eg = and i32 %i.ef, 1073741823               ; 2 uses
  %i.eh = load i32, ptr %i.da, align 8, !tbaa !204
  %i.ei = urem i32 %i.eg, %i.eh                   ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ed, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = and i32 %i.em, 2
  %.not15.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not15.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.eo = load i32, ptr %i.db, align 4
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !101
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp eq i64 %indvars.iv, %i.eq
  br i1 %i.er, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.es = load i32, ptr %i.ez, align 4, !tbaa !101
  %i.et = zext i32 %i.es to i64
  %i.eu = icmp eq i64 %indvars.iv, %i.et
  br i1 %i.eu, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.r
  %.01016.i20.i.i.i = phi i32 [ %i.ex, %bb.r ], [ %i.ei, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.ev, %bb.r ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ev = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.ew = add i32 %i.ev, %.01016.i20.i.i.i
  %i.ex = and i32 %i.ew, %i.eo                    ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ed, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = and i32 %i.fb, 2
  %.not.i.i.i.i112 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i112, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.r, !llvm.loop !9

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.em, %.lr.ph.i.i.i.i ], [ %i.fb, %bb.r ]
  %i.fd = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.fd, label %bb.s, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.s:                                             ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.fe = load i32, ptr %i.dc, align 4, !tbaa !205
  %i.ff = zext i32 %i.fe to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.ff
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !97

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.u:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.dd, align 8, !tbaa !206
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.fh, %bb.u ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154
  %.not = icmp eq i32 %i.fj, 0
  br i1 %.not, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.fk = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.fl = load i32, ptr %i.dc, align 4, !tbaa !205
  %i.fm = zext i32 %i.fl to i64
  %.not.i113 = icmp samesign ult i64 %indvars.iv, %i.fm
  br i1 %.not.i113, label %bb.x, label %bb.w, !prof !97

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

bb.x:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.dd, align 8, !tbaa !206
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115: ; preds = %bb.w, %bb.x
  %.0.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.fo, %bb.x ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i114, i64 4
  %.val.i.i116 = load i32, ptr %i.fp, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i117 = icmp eq i32 %.val.i.i116, 0    ; 2 uses
  br i1 %.not41.i.i117, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge, label %.lr.ph.preheader.i.i118

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127

.lr.ph.preheader.i.i118:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.sroa.2.8.insert.ext.i.i.i.i.i.i119 = zext i32 %.val.i.i116 to i64 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val21.i.i120 = load ptr, ptr %i.fq, align 8, !tbaa !155 ; 4 uses
  %i.fr = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i119, 1152921504606846975
  %i.fs = and i64 %i.fr, 1152921504606846975      ; 2 uses
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %xtraiter594 = and i64 %i.ft, 7                 ; 3 uses
  %i.fu = icmp samesign ult i64 %i.fs, 7
  br i1 %i.fu, label %.lr.ph.i.i122.epil.preheader, label %.lr.ph.preheader.i.i118.new

.lr.ph.preheader.i.i118.new:                      ; preds = %.lr.ph.preheader.i.i118
  %unroll_iter599 = and i64 %i.ft, 2305843009213693944
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122, %.lr.ph.preheader.i.i118.new
  %.01644.i.i123 = phi ptr [ %.val21.i.i120, %.lr.ph.preheader.i.i118.new ], [ %i.gl, %.lr.ph.i.i122 ] ; 9 uses
  %.01743.i.i124 = phi i32 [ 0, %.lr.ph.preheader.i.i118.new ], [ %i.gk, %.lr.ph.i.i122 ]
  %niter600 = phi i64 [ 0, %.lr.ph.preheader.i.i118.new ], [ %niter600.next.7, %.lr.ph.i.i122 ]
  %i.fv = getelementptr i8, ptr %.01644.i.i123, i64 4
  %.016.val.i.i125 = load i32, ptr %i.fv, align 4, !tbaa !132
  %i.fw = add i32 %.016.val.i.i125, %.01743.i.i124
  %i.fx = getelementptr i8, ptr %.01644.i.i123, i64 20
end_hunk_3
begin_hunk_4_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4            ; 2 uses
  %i.jj = and i32 %i.ji, 2
  %.not.i.i.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.al, !llvm.loop !9

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i134, %.loopexit335, %bb.ak, %._crit_edge.i.i.i.i
  %.0.i.i.i = phi ptr [ @minus_1, %.loopexit335 ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @minus_1, %bb.ak ], [ @minus_1, %.lr.ph.i.i.i.i134 ]
  %i.jk = load i32, ptr %.0.i.i.i, align 4, !tbaa !101 ; 2 uses
  %i.jl = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %.not.i135 = icmp eq ptr %i.jl, null
  br i1 %.not.i135, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.am, !prof !99

bb.am:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  %i.jm = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !178
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %_ZNK14hb_inc_bimap_tixEj.exit, %bb.am
  %.0.i136 = phi i32 [ %i.jr, %bb.am ], [ 0, %_ZNK14hb_inc_bimap_tixEj.exit ] ; 2 uses
  %.not.i137 = icmp ult i32 %i.jk, %i.ck
  br i1 %.not.i137, label %bb.ao, label %bb.an, !prof !97

bb.an:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  store i32 %.0.i136, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 4), align 4, !tbaa !227
  %i.js = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141

bb.ao:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.jt = zext nneg i32 %i.jk to i64
  %i.ju = getelementptr inbounds nuw [12 x i8], ptr %.sroa.14262.0.ph, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 %.0.i136, ptr %i.jv, align 4, !tbaa !227
  %i.jw = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141

_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141: ; preds = %bb.an, %bb.ao
  %i.jx = phi i32 [ %i.js, %bb.an ], [ %i.jw, %bb.ao ]
  %.0.i140 = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.ju, %bb.ao ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i140, i64 8
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !228
  br label %bb.ap

_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit: ; preds = %bb.aj
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit
  %.not.lcssa.i309 = phi i1 [ true, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141 ], [ false, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit ]
  %i.jz = load i32, ptr %i.dr, align 8, !tbaa !229
  %i.ka = add i32 %i.jz, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ka, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.aq, label %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dx, align 4, !tbaa !230
  %i.kb = load ptr, ptr %i.dy, align 8, !tbaa !231
  call void @hb_free(ptr noundef %i.kb) #16
  br label %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit

_ZN33cff2_private_dict_op_serializer_tD2Ev.exit:  ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not.lcssa.i309, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i, %bb.q, %.lr.ph.split, %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit, %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.kc = icmp slt i64 %indvars.iv, 1
  br i1 %i.kc, label %.critedge99, label %.lr.ph.splitthread-pre-split, !llvm.loop !835

.critedge:                                        ; preds = %bb.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, %bb.ad, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.critedge99:                                      ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %.lr.ph, %bb.p
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !248
  %.not95 = icmp eq ptr %i.ke, @_hb_NullPool
  br i1 %.not95, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %.critedge99
  %i.kf = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !96
  %i.ki = load ptr, ptr %i.kd, align 8, !tbaa !248
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !249
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !250
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !251
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kq = call noundef zeroext i1 @_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE(ptr noundef nonnull %1, i32 noundef %i.kh, ptr noundef nonnull align 1 dereferenceable(6) %i.ki, i32 noundef %i.kk, i32 noundef %i.km, i32 noundef %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #16
  br i1 %i.kq, label %bb.as, label %bb.at, !prof !97

bb.as:                                            ; preds = %bb.ar
  %i.kr = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !252
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.au:                                            ; preds = %bb.as, %.critedge99
  %i.kt = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11CFF2FDArrayEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %.val = load i32, ptr %i.ku, align 4, !tbaa !232 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.val102 = load ptr, ptr %i.kv, align 8, !tbaa !233 ; 4 uses
  %.not11.i.i.i = icmp eq i32 %.val, 0
  br i1 %.not11.i.i.i, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit", label %.lr.ph.i.i.i147

.lr.ph.i.i.i147:                                  ; preds = %bb.au
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !203, !noalias !859 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kx, null
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 92
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.split.i.preheader.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i147
  %i.kz = add i32 %.val, -1
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nuw nsw i64 %i.la, 40
  %i.lc = getelementptr i8, ptr %.val102, i64 %i.lb
  %scevgep.i.i.i = getelementptr i8, ptr %i.lc, i64 40
  br label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit"

.lr.ph.split.split.i.preheader.i.i:               ; preds = %.lr.ph.i.i.i147
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !204, !noalias !859
  %i.lf = ptrtoint ptr %.val102 to i64
  br label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.i.i.i:                         ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.lr.ph.split.split.i.preheader.i.i
  %.sroa.7.sroa.0.0 = phi i32 [ %.val, %.lr.ph.split.split.i.preheader.i.i ], [ %i.mg, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0232.0 = phi ptr [ %.val102, %.lr.ph.split.split.i.preheader.i.i ], [ %i.mh, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %i.lg = ptrtoint ptr %.sroa.0232.0 to i64
  %i.lh = sub i64 %i.lg, %i.lf
  %i.li = sdiv exact i64 %i.lh, 40
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = mul i32 %i.lj, 506952113
  %i.ll = and i32 %i.lk, 1073741823
  %i.lm = urem i32 %i.ll, %i.le                   ; 2 uses
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.kx, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !noalias !859 ; 2 uses
  %i.lr = and i32 %i.lq, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lr, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i
  %i.ls = load i32, ptr %i.ky, align 4, !noalias !859
  %i.lt = load i32, ptr %i.lo, align 4, !tbaa !101, !noalias !859
  %i.lu = icmp eq i32 %i.lt, %i.lj
  br i1 %i.lu, label %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.lv = load i32, ptr %i.mb, align 4, !tbaa !101, !noalias !859
  %i.lw = icmp eq i32 %i.lv, %i.lj
  br i1 %i.lw, label %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av
  %.01016.i20.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lz, %bb.av ], [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lx, %bb.av ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lx = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ly = add i32 %i.lx, %.01016.i20.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = and i32 %i.ly, %i.ls                    ; 2 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %i.kx, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !noalias !859 ; 2 uses
  %i.me = and i32 %i.md, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %bb.av, !llvm.loop !9

"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i": ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.md, %bb.av ]
  %i.mf = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.mf, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", %.lr.ph.split.split.i.i.i
  %i.mg = add i32 %.sroa.7.sroa.0.0, -1           ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0232.0, i64 40 ; 2 uses
  %.not.i.i.i148 = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i148, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit", label %.lr.ph.split.split.i.i.i, !llvm.loop !840

"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit": ; preds = %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %bb.au, %.lr.ph.split.us.i.i.i
  %.sroa.7.sroa.0.2 = phi i32 [ 0, %bb.au ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.sroa.7.sroa.0.0, %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0232.2 = phi ptr [ %.val102, %bb.au ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0232.0, %"_ZNK4$_25clIRZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS1_16cff2_subset_planE10hb_array_tIiEE3$_0RKN3CFF23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i" ], [ %i.mh, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ]
  %i.mi = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.mj = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.mk = icmp ne i32 %.sroa.7.sroa.0.2, 0
  %spec.select.i.i.i.i48.i.i.i.i = and i1 %.not.i215.not.not, %i.mk
  br i1 %spec.select.i.i.i.i48.i.i.i.i, label %.lr.ph.i.i.i.i157, label %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSK_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit.i.thread.i"

"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSK_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit.i.thread.i": ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit"
  %i.ml = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  br label %bb.cm

.lr.ph.i.i.i.i157:                                ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_.exit"
  %i.mm = load i32, ptr @_hb_NullPool, align 16
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 11 uses
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i", %.lr.ph.i.i.i.i157
  %.sroa.15.0.i = phi ptr [ null, %.lr.ph.i.i.i.i157 ], [ %.sroa.15.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ] ; 6 uses
  %.sroa.914.0.i = phi i32 [ 0, %.lr.ph.i.i.i.i157 ], [ %.sroa.914.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ] ; 6 uses
  %.sroa.010.0.i = phi i32 [ 0, %.lr.ph.i.i.i.i157 ], [ %.sroa.010.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ] ; 10 uses
  %i.mr = phi ptr [ %.sroa.14262.0.ph, %.lr.ph.i.i.i.i157 ], [ %i.wa, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ] ; 3 uses
  %i.ms = phi i32 [ %.sroa.7.sroa.0.2, %.lr.ph.i.i.i.i157 ], [ %i.vy, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ]
  %.val14549.i.i.i.i = phi i32 [ %i.ck, %.lr.ph.i.i.i.i157 ], [ %i.vz, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ]
  %i.mt = phi ptr [ %.sroa.0232.2, %.lr.ph.i.i.i.i157 ], [ %i.vx, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEppEv.exit.i.i.i.i" ] ; 3 uses
  %i.mu = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 12 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !226
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS8_16cff2_subset_planES3_IiEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINS8_7NumTypeILb1EjLj4EEEE9serializeIS5_SM_SP_NS4_29cff_font_dict_op_serializer_tEEEbSC_T1_RT2_EUlRK9hb_pair_tIRS6_RSN_EE_L24hb_function_sortedness_t0ELSK_0EElEdeEv.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i158

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i158:                ; preds = %bb.aw
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  br label %bb.ax

_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %.preheader.i.i.i.i.i, %bb.by, %bb.bl
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.na = load i32, ptr %i.mv, align 4, !tbaa !226
  %i.nb = zext i32 %i.na to i64
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i, %i.nb
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !11

bb.ax:                                            ; preds = %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i158
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i158 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i.i ] ; 2 uses
  %i.nc = load ptr, ptr %i.mx, align 8
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !235
  %i.ng = icmp eq i32 %i.nf, 18
  br i1 %i.ng, label %bb.ay, label %bb.bz

bb.ay:                                            ; preds = %bb.ax
  %i.nh = load i32, ptr %i.my, align 4, !tbaa !227 ; 2 uses
  %i.ni = load i32, ptr %i.mq, align 4, !tbaa !169
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.az, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.az:                                            ; preds = %bb.ay
  %i.nj = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.nk = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = icmp slt i64 %i.nn, 1
  br i1 %i.no, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i.i: ; preds = %bb.az
  store i8 0, ptr %i.nk, align 1
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !171 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i, i64 1
  store ptr %i.np, ptr %i.au, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ba, !prof !143

bb.ba:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i.i
  store i8 28, ptr %.pre.i.i.i.i.i.i.i.i, align 1, !tbaa !148
  %i.nq = load i32, ptr %i.mq, align 4, !tbaa !169
  %.not.i9.i.i.i.i.i.i.i = icmp eq i32 %i.nq, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %bb.bb, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.bb:                                            ; preds = %bb.ba
  %i.nr = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.ns = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = icmp slt i64 %i.nv, 2
  br i1 %i.nw, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i.i: ; preds = %bb.bb
  store i16 0, ptr %i.ns, align 1
  %.pre.i11.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !171 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i.i.i.i.i, i64 2
  store ptr %i.nx, ptr %i.au, align 8, !tbaa !171
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %.pre.i11.i.i.i.i.i.i.i, null
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, !prof !143

bb.bc:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i.i
  %i.ny = trunc i32 %i.nh to i16                  ; 2 uses
  %i.nz = call i16 @llvm.bswap.i16(i16 %i.ny)
  store i16 %i.nz, ptr %.pre.i11.i.i.i.i.i.i.i, align 1, !tbaa !148
  %i.oa = sext i16 %i.ny to i64
  %i.ob = zext i32 %i.nh to i64
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.oa, %i.ob
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oc = load i32, ptr %i.mq, align 4, !tbaa !169
  %i.od = or i32 %i.oc, 8
  br label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i

_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i.i: ; preds = %bb.bc
  %i.oe = load i32, ptr %i.ne, align 8, !tbaa !235 ; 3 uses
  %i.of = load i32, ptr %i.mz, align 4, !tbaa !228 ; 2 uses
  %i.og = load ptr, ptr %i.au, align 8, !tbaa !171 ; 3 uses
  %i.oh = load i32, ptr %i.mq, align 4, !tbaa !169
  %.not.i.i.i.i6.i.i.i.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i.i.i6.i.i.i.i, label %bb.be, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.be:                                            ; preds = %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i.i
  %i.oi = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = icmp slt i64 %i.ol, 1
  br i1 %i.om, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i.i: ; preds = %bb.be
  store i8 0, ptr %i.og, align 1
  %.pre.i.i.i.i8.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !171 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i8.i.i.i.i, i64 1
  store ptr %i.on, ptr %i.au, align 8, !tbaa !171
  %.not.i.i.i9.i.i.i.i = icmp eq ptr %.pre.i.i.i.i8.i.i.i.i, null
  br i1 %.not.i.i.i9.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, !prof !143

bb.bf:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i.i
  store i8 29, ptr %.pre.i.i.i.i8.i.i.i.i, align 1, !tbaa !148
  %i.oo = load i32, ptr %i.mq, align 4, !tbaa !169
  %.not.i9.i.i.i10.i.i.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not.i9.i.i.i10.i.i.i.i, label %bb.bg, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.bg:                                            ; preds = %bb.bf
  %i.op = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.oq = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = icmp slt i64 %i.ot, 4
  br i1 %i.ou, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i.i: ; preds = %bb.bg
  store i32 0, ptr %i.oq, align 1
  %.pre.i11.i.i.i11.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !171 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i11.i.i.i.i, i64 4
  store ptr %i.ov, ptr %i.au, align 8, !tbaa !171
  %.not8.i.i.i12.i.i.i.i = icmp eq ptr %.pre.i11.i.i.i11.i.i.i.i, null
  br i1 %.not8.i.i.i12.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh, !prof !143

bb.bh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i.i
  store i32 0, ptr %.pre.i11.i.i.i11.i.i.i.i, align 1, !tbaa !148
  %i.ow = icmp ugt i32 %i.oe, 255                 ; 2 uses
  %i.ox = select i1 %i.ow, i64 2, i64 1           ; 2 uses
  %i.oy = load i32, ptr %i.mq, align 4, !tbaa !169
  %.not.i14.i.i.i.i.i.i = icmp eq i32 %i.oy, 0
  br i1 %.not.i14.i.i.i.i.i.i, label %bb.bi, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, !prof !97

bb.bi:                                            ; preds = %bb.bh
  %i.oz = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.pa = load ptr, ptr %i.au, align 8, !tbaa !171 ; 6 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = icmp slt i64 %i.pd, %i.ox
  br i1 %i.pe, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ox
  store ptr %i.pf, ptr %i.au, align 8, !tbaa !171
  %.not.i.i13.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i13.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bj, !prof !143

bb.bj:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i
  br i1 %i.ow, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i8 12, ptr %i.pa, align 1, !tbaa !148
  %i.pg = add i32 %i.oe, -256
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.013.i.i.i.i.i.i = phi i32 [ %i.pg, %bb.bk ], [ %i.oe, %bb.bj ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.ph, %bb.bk ], [ %i.pa, %bb.bj ]
  %i.pi = trunc i32 %.013.i.i.i.i.i.i to i8
  store i8 %i.pi, ptr %.0.i.i.i.i.i.i, align 1, !tbaa !148
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.pk = load i32, ptr %i.mq, align 4, !tbaa !169
  %i.pl = icmp ne i32 %i.pk, 0
  %i.pm = icmp eq i32 %i.of, 0
  %or.cond.not.i.i.i.i.i.i = or i1 %i.pm, %i.pl
  br i1 %or.cond.not.i.i.i.i.i.i, label %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i.i, label %bb.bm, !prof !236
end_hunk_4
begin_hunk_5_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a

.split.i:                                         ; preds = %bb.dd
  %i.yn = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %1, i32 noundef 24, i32 noundef %i.ym, i32 noundef 0)
  br i1 %i.yn, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, label %.critedge101, !prof !865

_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i: ; preds = %bb.dc
  %i.yo = call noundef zeroext i1 @_ZNK3CFF28cff_top_dict_op_serializer_tINS_8op_str_tEE9serializeEP22hb_serialize_context_tRKS1_RKNS_20cff_sub_table_info_tE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(13) %i.yj, ptr noundef nonnull align 4 dereferenceable(24) %2)
  br i1 %i.yo, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, label %.critedge101, !prof !865

_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i: ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i, %.split.i, %bb.dd
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.yp = load i32, ptr %i.ye, align 4, !tbaa !226
  %i.yq = zext i32 %i.yp to i64
  %.not.not.i178 = icmp samesign ult i64 %indvars.iv.next.i177, %i.yq
  br i1 %.not.not.i178, label %bb.dc, label %.loopexit, !llvm.loop !852

.loopexit:                                        ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, %bb.db
  %i.yr = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yb to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = trunc i64 %i.yu to i16
  %i.yw = getelementptr inbounds nuw i8, ptr %.pre.i.i171, i64 3
  %i.yx = call i16 @llvm.bswap.i16(i16 %i.yv)
  store i16 %i.yx, ptr %i.yw, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.yy = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.yz = getelementptr inbounds nuw i8, ptr %2, i64 148
  %.val.i.i180 = load i32, ptr %i.yz, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i181 = icmp eq i32 %.val.i.i180, 0    ; 2 uses
  br i1 %.not41.i.i181, label %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge, label %.lr.ph.preheader.i.i182

.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge: ; preds = %.loopexit
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val46.i194.pre = load ptr, ptr %.phi.trans.insert422, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191

.lr.ph.preheader.i.i182:                          ; preds = %.loopexit
  %.sroa.2.8.insert.ext.i.i.i.i.i.i183 = zext i32 %.val.i.i180 to i64 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val21.i.i184 = load ptr, ptr %i.za, align 8, !tbaa !155 ; 4 uses
  %i.zb = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i183, 1152921504606846975
  %i.zc = and i64 %i.zb, 1152921504606846975      ; 2 uses
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %xtraiter601 = and i64 %i.zd, 7                 ; 3 uses
  %i.ze = icmp samesign ult i64 %i.zc, 7
  br i1 %i.ze, label %.lr.ph.i.i186.epil.preheader, label %.lr.ph.preheader.i.i182.new

.lr.ph.preheader.i.i182.new:                      ; preds = %.lr.ph.preheader.i.i182
  %unroll_iter606 = and i64 %i.zd, 2305843009213693944
  br label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %.lr.ph.i.i186, %.lr.ph.preheader.i.i182.new
  %.01644.i.i187 = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182.new ], [ %i.zv, %.lr.ph.i.i186 ] ; 9 uses
  %.01743.i.i188 = phi i32 [ 0, %.lr.ph.preheader.i.i182.new ], [ %i.zu, %.lr.ph.i.i186 ]
  %niter607 = phi i64 [ 0, %.lr.ph.preheader.i.i182.new ], [ %niter607.next.7, %.lr.ph.i.i186 ]
  %i.zf = getelementptr i8, ptr %.01644.i.i187, i64 4
  %.016.val.i.i189 = load i32, ptr %i.zf, align 4, !tbaa !132
  %i.zg = add i32 %.016.val.i.i189, %.01743.i.i188
  %i.zh = getelementptr i8, ptr %.01644.i.i187, i64 20
  %.016.val.i.i189.1 = load i32, ptr %i.zh, align 4, !tbaa !132
  %i.zi = add i32 %.016.val.i.i189.1, %i.zg
  %i.zj = getelementptr i8, ptr %.01644.i.i187, i64 36
  %.016.val.i.i189.2 = load i32, ptr %i.zj, align 4, !tbaa !132
  %i.zk = add i32 %.016.val.i.i189.2, %i.zi
  %i.zl = getelementptr i8, ptr %.01644.i.i187, i64 52
  %.016.val.i.i189.3 = load i32, ptr %i.zl, align 4, !tbaa !132
  %i.zm = add i32 %.016.val.i.i189.3, %i.zk
  %i.zn = getelementptr i8, ptr %.01644.i.i187, i64 68
  %.016.val.i.i189.4 = load i32, ptr %i.zn, align 4, !tbaa !132
  %i.zo = add i32 %.016.val.i.i189.4, %i.zm
  %i.zp = getelementptr i8, ptr %.01644.i.i187, i64 84
  %.016.val.i.i189.5 = load i32, ptr %i.zp, align 4, !tbaa !132
  %i.zq = add i32 %.016.val.i.i189.5, %i.zo
  %i.zr = getelementptr i8, ptr %.01644.i.i187, i64 100
  %.016.val.i.i189.6 = load i32, ptr %i.zr, align 4, !tbaa !132
  %i.zs = add i32 %.016.val.i.i189.6, %i.zq
  %i.zt = getelementptr i8, ptr %.01644.i.i187, i64 116
  %.016.val.i.i189.7 = load i32, ptr %i.zt, align 4, !tbaa !132
  %i.zu = add i32 %.016.val.i.i189.7, %i.zs       ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.01644.i.i187, i64 128 ; 2 uses
  %niter607.next.7 = add i64 %niter607, 8         ; 2 uses
  %niter607.ncmp.7 = icmp eq i64 %niter607.next.7, %unroll_iter606
  br i1 %niter607.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, label %.lr.ph.i.i186

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i186
  %lcmp.mod603.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod603.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil.preheader

.lr.ph.i.i186.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.preheader.i.i182
  %.01644.i.i187.epil.init = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182 ], [ %i.zv, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %.01743.i.i188.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i182 ], [ %i.zu, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %lcmp.mod605 = icmp ne i64 %xtraiter601, 0
  call void @llvm.assume(i1 %lcmp.mod605)
  br label %.lr.ph.i.i186.epil

.lr.ph.i.i186.epil:                               ; preds = %.lr.ph.i.i186.epil, %.lr.ph.i.i186.epil.preheader
  %.01644.i.i187.epil = phi ptr [ %i.zy, %.lr.ph.i.i186.epil ], [ %.01644.i.i187.epil.init, %.lr.ph.i.i186.epil.preheader ] ; 2 uses
  %.01743.i.i188.epil = phi i32 [ %i.zx, %.lr.ph.i.i186.epil ], [ %.01743.i.i188.epil.init, %.lr.ph.i.i186.epil.preheader ]
  %epil.iter602 = phi i64 [ %epil.iter602.next, %.lr.ph.i.i186.epil ], [ 0, %.lr.ph.i.i186.epil.preheader ]
  %i.zw = getelementptr i8, ptr %.01644.i.i187.epil, i64 4
  %.016.val.i.i189.epil = load i32, ptr %i.zw, align 4, !tbaa !132
  %i.zx = add i32 %.016.val.i.i189.epil, %.01743.i.i188.epil ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.01644.i.i187.epil, i64 16
  %epil.iter602.next = add i64 %epil.iter602, 1   ; 2 uses
  %epil.iter602.cmp.not = icmp eq i64 %epil.iter602.next, %xtraiter601
  br i1 %epil.iter602.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil, !llvm.loop !853

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.i.i186.epil, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi = phi i64 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %.lr.ph.i.i186.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i194 = phi ptr [ %.val46.i194.pre, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.val21.i.i184, %.lr.ph.i.i186.epil ], [ %.val21.i.i184, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 3 uses
  %.066.i193 = phi i32 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %i.zu, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ], [ %i.zx, %.lr.ph.i.i186.epil ] ; 4 uses
  %i.zz = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.yy, ptr noundef nonnull %1, ptr %.val46.i194, i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, i32 noundef %.066.i193, i32 noundef 0)
  br i1 %i.zz, label %bb.de, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !97

bb.de:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191
  %i.aaa = zext i32 %.066.i193 to i64             ; 2 uses
  %i.aab = load i32, ptr %i.xt, align 4, !tbaa !169
  %.not.i.i197 = icmp eq i32 %i.aab, 0
  br i1 %.not.i.i197, label %bb.df, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !97

bb.df:                                            ; preds = %bb.de
  %i.aac = icmp slt i32 %.066.i193, 0
  br i1 %i.aac, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %bb.dg, !prof !99

bb.dg:                                            ; preds = %bb.df
  %i.aad = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.aae = load ptr, ptr %i.au, align 8, !tbaa !171 ; 4 uses
  %i.aaf = ptrtoint ptr %i.aad to i64
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  %i.aai = icmp slt i64 %i.aah, %i.aaa
  br i1 %i.aai, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198: ; preds = %bb.dg
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aaa
  store ptr %i.aaj, ptr %i.au, align 8, !tbaa !171
  %.not43.i199 = icmp eq ptr %i.aae, null
  br i1 %.not43.i199, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %bb.dh, !prof !143

bb.dh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198
  %.idx.i200 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, 4
  %i.aak = getelementptr inbounds nuw i8, ptr %.val46.i194, i64 %.idx.i200
  br i1 %.not41.i.i181, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.dh, %bb.dm
  %.082.i203 = phi ptr [ %i.aax, %bb.dm ], [ %.val46.i194, %bb.dh ] ; 3 uses
  %.03481.i204 = phi i32 [ %.1.ph.i209, %bb.dm ], [ %.066.i193, %bb.dh ] ; 3 uses
  %.03580.i205 = phi ptr [ %.136.ph.i208, %bb.dm ], [ %i.aae, %bb.dh ] ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.082.i203, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !132 ; 5 uses
  %.not45.i206 = icmp eq i32 %i.aam, 0
  br i1 %.not45.i206, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i202
  %i.aan = icmp ugt i32 %i.aam, %.03481.i204
  br i1 %i.aan, label %bb.dj, label %bb.dk, !prof !99

bb.dj:                                            ; preds = %bb.di
  %i.aao = load i32, ptr %i.xt, align 4, !tbaa !169
  %.not.i.i53.not.i211 = icmp eq i32 %i.aao, 0
  br i1 %.not.i.i53.not.i211, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.dk:                                            ; preds = %bb.di
  %i.aap = sub nuw nsw i32 %.03481.i204, %i.aam   ; 2 uses
  %i.aaq = icmp eq i32 %i.aam, 1
  %i.aar = getelementptr inbounds nuw i8, ptr %.082.i203, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !133 ; 2 uses
  br i1 %i.aaq, label %bb.dl, label %_ZL9hb_memcpyPvPKvm.exit.i207

bb.dl:                                            ; preds = %bb.dk
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !148
  %i.aau = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 1
  store i8 %i.aat, ptr %.03580.i205, align 1, !tbaa !148
  br label %bb.dm

_ZL9hb_memcpyPvPKvm.exit.i207:                    ; preds = %bb.dk
  %i.aav = zext nneg i32 %i.aam to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i205, ptr readonly align 1 %i.aas, i64 %i.aav, i1 false), !alias.scope !866
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 %i.aav
  br label %bb.dm

bb.dm:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i207, %bb.dl, %.lr.ph.i202
  %.136.ph.i208 = phi ptr [ %.03580.i205, %.lr.ph.i202 ], [ %i.aaw, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aau, %bb.dl ]
  %.1.ph.i209 = phi i32 [ %.03481.i204, %.lr.ph.i202 ], [ %i.aap, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aap, %bb.dl ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.082.i203, i64 16 ; 2 uses
  %.not44.i210 = icmp eq ptr %i.aax, %i.aak
  br i1 %.not44.i210, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212: ; preds = %bb.dj, %bb.dg, %bb.df
  %.sink.i213 = phi i32 [ 4, %bb.df ], [ 4, %bb.dg ], [ 8, %bb.dj ]
  store i32 %.sink.i213, ptr %i.xt, align 4, !tbaa !169
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.critedge101:                                     ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit, %bb.dm, %bb.cz, %.critedge.i.i172, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit, %.critedge101, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, %bb.de, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, %bb.dh, %bb.dj, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, %bb.cy, %bb.cp, %.critedge, %bb.cv, %bb.at
  %.12 = phi i1 [ false, %bb.cz ], [ true, %bb.dm ], [ false, %bb.cv ], [ false, %bb.cy ], [ false, %bb.cp ], [ false, %bb.at ], [ false, %bb.dj ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212 ], [ false, %.critedge ], [ false, %.critedge101 ], [ true, %bb.dh ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit ], [ false, %bb.de ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191 ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198 ], [ false, %.critedge.i.i172 ], [ false, %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit ] ; 2 uses
  br i1 %.not.i215.not.not, label %bb.dn, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.dn:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14262.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %.thread.i216, %.loopexit337, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, %.critedge.i.i, %bb.m, %bb.dn, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  %.13 = phi i1 [ %.12, %bb.dn ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ], [ %.12, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %bb.m ], [ false, %.critedge.i.i ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %.loopexit337 ], [ false, %.thread.i216 ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  store ptr %i.r, ptr %i.u, align 8, !tbaa !173
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !171
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11CFF2FDArrayEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  store ptr %i.r, ptr %i.u, align 8, !tbaa !173
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !171
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF22cff2_instancing_plan_t19serialize_var_storeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_vector_t.171, align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !282  ; 6 uses
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 8                          ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !284  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !285  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not191 = icmp eq i32 %i.i, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i32, ptr @_hb_NullPool, align 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %bb.k ] ; 2 uses
  %.sroa.9.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.9.1, %bb.k ]
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %bb.k ] ; 6 uses
  %.081.lcssa = phi i64 [ %i.e, %bb.a ], [ %.182, %bb.k ] ; 2 uses
  %.sroa.15.0.lcssa268 = ptrtoaddr ptr %.sroa.15.0.lcssa to i64
  %i.m = icmp slt i32 %.sroa.0.0.lcssa, 0
  %i.n = icmp ne i32 %.sroa.9.0.lcssa, %i.b
  %i.o = select i1 %i.m, i1 true, i1 %i.n, !prof !99
  br i1 %i.o, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, label %bb.l, !prof !99

end_hunk_5
begin_hunk_6_@_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EE:bb.a
  store <2 x i16> %i.ci, ptr %i.cl, align 1, !alias.scope !976
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !976
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..thread62_crit_edge, label %bb.g, !llvm.loop !974

..thread62_crit_edge:                             ; preds = %bb.l
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %select.unfold, label %.lr.ph, !llvm.loop !975

select.unfold.sink.split:                         ; preds = %bb.k, %bb.c, %bb.d
  store i32 4, ptr %i.j, align 4, !tbaa !169
  br label %select.unfold

select.unfold:                                    ; preds = %..thread62_crit_edge, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i, %.loopexit, %select.unfold.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %select.unfold.sink.split ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i ], [ false, %bb.b ], [ false, %.loopexit ], [ true, %..thread62_crit_edge ]
  ret i1 %.5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF22cff2_instancing_plan_t6createEPKNS_22CFF2ItemVariationStoreEPK16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.OT::optimize_scratch_t", align 8 ; 4 uses
  %4 = alloca %"struct.OT::TupleVariationData<>::tuple_variations_t", align 8 ; 28 uses
  %5 = alloca %"struct.OT::tuple_delta_t", align 8 ; 34 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !276  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 7 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !419    ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp samesign ult i32 %i.f, %i.e
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i, !prof !99

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.j, %.preheader.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = lshr i32 %.039.i.i.i, 1
  %i.i = add nuw nsw i32 %.039.i.i.i, 8
  %i.j = add nuw nsw i32 %i.i, %i.h               ; 5 uses
  %i.k = icmp samesign ult i32 %i.j, %i.e
  br i1 %i.k, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !977

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.j) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not22.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.i.i, !prof !99

bb.c:                                             ; preds = %.thread.i.i.i
  %i.m = load i32, ptr %0, align 8, !tbaa !419    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.j, %i.m
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i

_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i: ; preds = %bb.c
  %.sink.i.ph.i.i = xor i32 %i.m, -1
  store i32 %.sink.i.ph.i.i, ptr %0, align 8, !tbaa !419
  br label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.i.i: ; preds = %.thread.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !284
  store i32 %i.j, ptr %0, align 8, !tbaa !419
  br label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i

_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i: ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.i.i, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !285  ; 3 uses
  %i.q = icmp ult i32 %i.p, %i.e
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %i.p, %bb.d ], [ %i.x, %bb.e ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !284
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 72, i1 false)
  %i.w = load i32, ptr %i.o, align 4, !tbaa !285
  %i.x = add i32 %i.w, 1                          ; 3 uses
  store i32 %i.x, ptr %i.o, align 4, !tbaa !285
  %i.y = icmp ult i32 %i.x, %i.e
  br i1 %i.y, label %bb.e, label %.loopexit, !llvm.loop !978

bb.f:                                             ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i
  %i.z = icmp ugt i32 %i.p, %i.e
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.e)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f
  store i32 %i.e, ptr %i.o, align 4, !tbaa !285
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !346 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %.0.i.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !99
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2656
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = tail call noundef zeroext i1 @_ZNK2OT13VarRegionList15get_var_regionsERK8hb_map_tR11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  br i1 %i.ai, label %bb.h, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %.not90265 = icmp eq i16 %i.c, 0
  br i1 %.not90265, label %.critedge97, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2360
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2356
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 34
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 82
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 18 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 100 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 116 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 2416
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %wide.trip.count291 = zext i16 %i.d to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph269, %bb.as
  %indvars.iv287 = phi i64 [ 0, %.lr.ph269 ], [ %indvars.iv.next288, %bb.as ] ; 6 uses
  %i.cg = load i16, ptr %i.b, align 1, !tbaa !276
  %i.ch = call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv287, %i.ci
  br i1 %.not.i.i, label %bb.j, label %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit, !prof !97

bb.j:                                             ; preds = %bb.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv287
  br label %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit

_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.cj, %bb.j ], [ @_hb_NullPool, %bb.i ]
  %i.ck = load i32, ptr %.0.i.i, align 1, !tbaa !346 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %.0.i.i.i101 = select i1 %i.cl, ptr @_hb_NullPool, ptr %i.co, !prof !99 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i101, i64 4 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !276 ; 2 uses
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq) ; 4 uses
  %i.cs = zext i16 %i.cr to i32                   ; 21 uses
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !991
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.ct, i64 %indvars.iv287 ; 13 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = call noundef zeroext i1 @_ZN11hb_vector_tIfLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %i.cs, i1 noundef zeroext true) ; 3 uses
  br i1 %i.cw, label %bb.k, label %.critedge97

bb.k:                                             ; preds = %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 20 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !230 ; 3 uses
  %i.cz = icmp ult i32 %i.cy, %i.cs
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.da = sub nuw nsw i32 %i.cs, %i.cy
  %i.db = shl nuw nsw i32 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !231
  %i.de = zext nneg i32 %i.cy to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = zext nneg i32 %i.db to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.df, i8 0, i64 %i.dg, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !230
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !444
  %i.di = load i32, ptr %i.am, align 4, !tbaa !445
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !446
  %i.dl = load i16, ptr %i.b, align 1, !tbaa !276
  %i.dm = call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  %i.dn = zext i16 %i.dm to i64
  %.not.i.i103 = icmp samesign ult i64 %indvars.iv287, %i.dn
  br i1 %.not.i.i103, label %bb.n, label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, !prof !97

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv287
  br label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit

_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit: ; preds = %bb.m, %bb.n
  %.0.i.i104 = phi ptr [ %i.do, %bb.n ], [ @_hb_NullPool, %bb.m ]
  %i.dp = load i32, ptr %.0.i.i104, align 1, !tbaa !346 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %.0.i.i.i105 = select i1 %i.dq, ptr @_hb_NullPool, ptr %i.dt, !prof !99
  %i.du = load i32, ptr %i.aa, align 1, !tbaa !346 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %.0.i.i5.i = select i1 %i.dv, ptr @_hb_NullPool, ptr %i.dy, !prof !99
  call void @_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i105, ptr noundef %i.dh, i32 noundef %i.di, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i5.i, ptr noundef %i.dk, i32 noundef %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %4, i8 0, i64 16, i1 false)
  store atomic i32 1, ptr %i.an monotonic, align 8
  store atomic i8 1, ptr %i.ao monotonic, align 4
  store atomic ptr null, ptr %i.ap monotonic, align 8
  store i8 1, ptr %i.aq, align 8, !tbaa !992
  store ptr null, ptr %i.as, align 8, !tbaa !449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ar, i8 0, i64 18, i1 false)
  store atomic i32 1, ptr %i.at monotonic, align 8
  store atomic i8 1, ptr %i.au monotonic, align 4
  store atomic ptr null, ptr %i.av monotonic, align 8
  store i8 1, ptr %i.aw, align 8, !tbaa !993
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ax, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.ay, i8 0, i64 22, i1 false)
  %.not87258.not = icmp ne i16 %i.cq, 0           ; 3 uses
  br i1 %.not87258.not, label %.lr.ph, label %.critedge92.thread

.lr.ph:                                           ; preds = %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i101, i64 6
  %i.ea = zext i16 %i.cr to i64
  %wide.trip.count = zext i16 %i.cr to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.az monotonic, align 4
  store atomic ptr null, ptr %i.ba monotonic, align 8
  store i8 1, ptr %i.bb, align 8, !tbaa !452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bc, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bd, i8 0, i64 120, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %.preheader.i
  %.043.i = phi i32 [ %i.ed, %.preheader.i ], [ 0, %bb.o ] ; 2 uses
  %i.eb = lshr i32 %.043.i, 1
  %i.ec = add i32 %.043.i, 8
  %i.ed = add i32 %i.ec, %i.eb                    ; 6 uses
  %i.ee = icmp ult i32 %i.ed, %i.cs
  br i1 %i.ee, label %.preheader.i, label %.thread.i, !llvm.loop !19

.thread.i:                                        ; preds = %.preheader.i
  %i.ef = icmp ugt i32 %i.ed, 1073741823
  br i1 %i.ef, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !prof !99

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.eg = shl nuw i32 %i.ed, 2
  %i.eh = zext i32 %i.eg to i64
  %i.ei = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.eh) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.ei, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit, !prof !100

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %i.be, align 8, !tbaa !229 ; 2 uses
  %.not23.i = icmp ugt i32 %i.ed, %.pre
  br i1 %.not23.i, label %bb.p, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread

bb.p:                                             ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i
  %i.ej = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195

_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195:  ; preds = %.thread.i, %bb.p
  %.sink.i.ph = phi i32 [ %i.ej, %bb.p ], [ -1, %.thread.i ]
  store i32 %.sink.i.ph, ptr %i.be, align 8, !tbaa !229
  br label %.critedge

_ZN11hb_vector_tIfLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  store ptr %i.ei, ptr %i.bf, align 8, !tbaa !231
  store i32 %i.ed, ptr %i.be, align 8, !tbaa !229
  br label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread:     ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit
  %i.ek = load i32, ptr %i.bg, align 4, !tbaa !230 ; 3 uses
  %i.el = icmp ult i32 %i.ek, %i.cs
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread
  %i.em = sub nuw nsw i32 %i.cs, %i.ek
  %i.en = shl nuw nsw i32 %i.em, 2
  %i.eo = load ptr, ptr %i.bf, align 8, !tbaa !231
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep
  %i.er = zext nneg i32 %i.en to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.eq, i8 0, i64 %i.er, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread
  store i32 %i.cs, ptr %i.bg, align 4, !tbaa !230
  %i.es = load i32, ptr %i.bh, align 8, !tbaa !455 ; 4 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.critedge, label %bb.s, !prof !99

bb.s:                                             ; preds = %bb.r
  %.not.i.i109 = icmp samesign ult i32 %i.es, %i.cs
  br i1 %.not.i.i109, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, !prof !99

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.ew, %.preheader.i.i ], [ %i.es, %bb.s ] ; 2 uses
  %i.eu = lshr i32 %.053.i.i, 1
  %i.ev = add nuw i32 %.053.i.i, 8
  %i.ew = add nuw i32 %i.ev, %i.eu                ; 6 uses
  %i.ex = icmp ult i32 %i.ew, %i.cs
  br i1 %i.ex, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !979

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.es, 0
  %i.ey = load ptr, ptr %i.bi, align 8, !tbaa !456 ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.t, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.t:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = zext i32 %i.ew to i64
  %i.fa = call ptr @hb_malloc(i64 noundef %i.ez) #16 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.v, !prof !99

bb.v:                                             ; preds = %bb.u
  %i.fb = load i32, ptr %i.bj, align 4, !tbaa !457 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.w, !prof !99

bb.w:                                             ; preds = %bb.v
  %i.fc = zext i32 %i.fb to i64
  %i.fd = load ptr, ptr %i.bi, align 8, !tbaa !456
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr readonly align 1 %i.fd, i64 %i.fc, i1 false), !alias.scope !994
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.t, %.thread39.i.i
  %i.fe = phi ptr [ null, %bb.t ], [ %i.ey, %.thread39.i.i ]
  %i.ff = zext i32 %i.ew to i64
  %i.fg = call ptr @hb_realloc(ptr noundef %i.fe, i64 noundef %i.ff) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fg, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !152

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.u
  %i.fh = load i32, ptr %i.bh, align 8, !tbaa !455 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.ew, %i.fh
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.w, %bb.v
  %.1.i.i52.i.i = phi ptr [ %i.fg, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.fa, %bb.v ], [ %i.fa, %bb.w ]
  store ptr %.1.i.i52.i.i, ptr %i.bi, align 8, !tbaa !456
  store i32 %i.ew, ptr %i.bh, align 8, !tbaa !455
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.fi = xor i32 %i.fh, -1
  store i32 %i.fi, ptr %i.bh, align 8, !tbaa !455
  br label %.critedge

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.s
  %i.fj = load i32, ptr %i.bj, align 4, !tbaa !457 ; 3 uses
  %i.fk = icmp ult i32 %i.fj, %i.cs
  %.pre294 = load ptr, ptr %i.bi, align 8, !tbaa !456 ; 2 uses
  br i1 %i.fk, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  %i.fl = sub nuw nsw i32 %i.cs, %i.fj
  %i.fm = zext nneg i32 %i.fj to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre294, i64 %i.fm
  %i.fo = zext nneg i32 %i.fl to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.fn, i8 0, i64 %i.fo, i1 false)
  %.pre293 = load ptr, ptr %i.bi, align 8, !tbaa !461
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.fp = phi ptr [ %.pre294, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i ], [ %.pre293, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  store i32 %i.cs, ptr %i.bj, align 4, !tbaa !457
  call void @llvm.memset.p0.i64(ptr align 1 %i.fp, i8 1, i64 %i.ea, i1 false), !tbaa !347
  %i.fq = load ptr, ptr %i.bf, align 8, !tbaa !995
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.fr, align 4, !tbaa !463
  %i.fs = load i16, ptr %i.cp, align 1, !tbaa !276
  %i.ft = call noundef i16 @llvm.bswap.i16(i16 %i.fs)
  %i.fu = zext i16 %i.ft to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.fu
  br i1 %.not.i, label %_ZNK2OT7VarData16get_region_indexEj.exit, label %.critedge

_ZNK2OT7VarData16get_region_indexEj.exit:         ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv
  %i.fw = load i16, ptr %i.fv, align 1, !tbaa !276
  %i.fx = call noundef i16 @llvm.bswap.i16(i16 %i.fw) ; 2 uses
  %i.fy = zext i16 %i.fx to i32
  %i.fz = load i32, ptr %i.bk, align 4, !tbaa !996
  %.not = icmp ugt i32 %i.fz, %i.fy
  br i1 %.not, label %bb.x, label %.critedge, !prof !156

bb.x:                                             ; preds = %_ZNK2OT7VarData16get_region_indexEj.exit
  %i.ga = load ptr, ptr %i.bl, align 8, !tbaa !997
  %i.gb = zext i16 %i.fx to i64
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12hb_hashmap_tIj6TripleLb0EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.gc) ; 0 uses
  %i.ge = load i8, ptr %i.bb, align 8, !tbaa !452, !range !121, !noundef !122
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.y, label %.critedge, !prof !97

bb.y:                                             ; preds = %bb.x
  %i.gg = load i32, ptr %i.bm, align 4, !tbaa !466 ; 3 uses
  %i.gh = load i32, ptr %4, align 8, !tbaa !467   ; 6 uses
  %.not.i111 = icmp slt i32 %i.gg, %i.gh
  br i1 %.not.i111, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gi = add i32 %i.gg, 1                        ; 2 uses
  %i.gj = icmp slt i32 %i.gh, 0
  br i1 %i.gj, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202, label %bb.aa, !prof !99

bb.aa:                                            ; preds = %bb.z
  %.not.i133 = icmp ugt i32 %i.gi, %i.gh
  br i1 %.not.i133, label %.preheader.i135, label %..critedge_crit_edge.i, !prof !99

end_hunk_6
begin_hunk_7_@_ZN3CFF22cff2_instancing_plan_t6createEPKNS_22CFF2ItemVariationStoreEPK16hb_subset_plan_t:bb.a
  %.1.i.i42.i141 = phi ptr [ %i.ha, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i ], [ %i.gs, %bb.af ], [ %i.gs, %bb.ae ]
  store ptr %.1.i.i42.i141, ptr %i.bn, align 8, !tbaa !468
  store i32 %i.gm, ptr %4, align 8, !tbaa !467
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i, %bb.aa, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit
  %.pre.i = load i32, ptr %i.bm, align 4, !tbaa !466
  br label %.critedge.i

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202: ; preds = %bb.z, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.y
  %i.hc = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.gg, %bb.y ] ; 2 uses
  %i.hd = load ptr, ptr %i.bn, align 8, !tbaa !468
  %i.he = add i32 %i.hc, 1
  store i32 %i.he, ptr %i.bm, align 4, !tbaa !466
  %i.hf = zext i32 %i.hc to i64
  %i.hg = getelementptr inbounds nuw [160 x i8], ptr %i.hd, i64 %i.hf ; 29 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store atomic i32 1, ptr %i.hg monotonic, align 4
  store atomic i8 1, ptr %i.hh monotonic, align 4
  store atomic ptr null, ptr %i.hi monotonic, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i8 1, ptr %i.hj, align 8, !tbaa !452
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 18 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.hk, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hl, i8 0, i64 120, i1 false)
  %i.hm = load i8, ptr %i.bb, align 8, !range !121
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.ag, label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, !prof !97

bb.ag:                                            ; preds = %.critedge.i
  %i.ho = load i16, ptr %i.bc, align 2, !tbaa !469
  store i16 %i.ho, ptr %i.hk, align 2, !tbaa !469
  store i16 0, ptr %i.bc, align 2, !tbaa !469
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  %i.hq = load i32, ptr %i.bo, align 4, !tbaa !101
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !101
  store i32 0, ptr %i.bo, align 4, !tbaa !101
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !101
  %i.ht = load i32, ptr %i.bp, align 8, !tbaa !101
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !101
  store i32 %i.hs, ptr %i.bp, align 8, !tbaa !101
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.hw = load i32, ptr %i.bq, align 4, !tbaa !101
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !101
  store i32 %i.hv, ptr %i.bq, align 4, !tbaa !101
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !101
  %i.hz = load i32, ptr %i.br, align 8, !tbaa !101
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !101
  store i32 %i.hy, ptr %i.br, align 8, !tbaa !101
  %i.ia = load ptr, ptr %i.bd, align 8, !tbaa !470
  store ptr %i.ia, ptr %i.hl, align 8, !tbaa !470
  store ptr null, ptr %i.bd, align 8, !tbaa !470
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %.pre295 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit

_ZN2OT4swapERNS_13tuple_delta_tES1_.exit:         ; preds = %.critedge.i, %bb.ag
  %i.ib = phi i32 [ 0, %.critedge.i ], [ %.pre295, %bb.ag ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.id = load i32, ptr %i.bh, align 8, !tbaa !101
  store i32 %i.id, ptr %i.ic, align 8, !tbaa !101
  store i32 %i.ib, ptr %i.bh, align 8, !tbaa !101
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hg, i64 52 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !101
  %i.ig = load i32, ptr %i.bj, align 4, !tbaa !101
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !101
  store i32 %i.if, ptr %i.bj, align 4, !tbaa !101
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.ii = load ptr, ptr %i.bi, align 8, !tbaa !471
  store ptr %i.ii, ptr %i.ih, align 8, !tbaa !471
  store ptr null, ptr %i.bi, align 8, !tbaa !471
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !101
  %i.il = load i32, ptr %i.be, align 8, !tbaa !101
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !101
  store i32 %i.ik, ptr %i.be, align 8, !tbaa !101
  %i.im = getelementptr inbounds nuw i8, ptr %i.hg, i64 68 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !101
  %i.io = load i32, ptr %i.bg, align 4, !tbaa !101
  store i32 %i.io, ptr %i.im, align 4, !tbaa !101
  store i32 %i.in, ptr %i.bg, align 4, !tbaa !101
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.iq = load ptr, ptr %i.bf, align 8, !tbaa !472
  store ptr %i.iq, ptr %i.ip, align 8, !tbaa !472
  store ptr null, ptr %i.bf, align 8, !tbaa !472
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 80 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !101
  %i.it = load i32, ptr %i.bs, align 8, !tbaa !101
  store i32 %i.it, ptr %i.ir, align 8, !tbaa !101
  store i32 %i.is, ptr %i.bs, align 8, !tbaa !101
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hg, i64 84 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !101
  %i.iw = load i32, ptr %i.bt, align 4, !tbaa !101
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !101
  store i32 %i.iv, ptr %i.bt, align 4, !tbaa !101
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hg, i64 88 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !472
  %i.iz = load ptr, ptr %i.bu, align 8, !tbaa !472
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !472
  store ptr %i.iy, ptr %i.bu, align 8, !tbaa !472
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !101
  %i.jc = load i32, ptr %i.bv, align 8, !tbaa !101
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !101
  store i32 %i.jb, ptr %i.bv, align 8, !tbaa !101
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hg, i64 100 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !101
  %i.jf = load i32, ptr %i.bw, align 4, !tbaa !101
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !101
  store i32 %i.je, ptr %i.bw, align 4, !tbaa !101
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.jh = load ptr, ptr %i.bx, align 8, !tbaa !267
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !267
  store ptr null, ptr %i.bx, align 8, !tbaa !267
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hg, i64 112 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !101
  %i.jk = load i32, ptr %i.by, align 8, !tbaa !101
  store i32 %i.jk, ptr %i.ji, align 8, !tbaa !101
  store i32 %i.jj, ptr %i.by, align 8, !tbaa !101
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hg, i64 116 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !101
  %i.jn = load i32, ptr %i.bz, align 4, !tbaa !101
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !101
  store i32 %i.jm, ptr %i.bz, align 4, !tbaa !101
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hg, i64 120 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !267
  %i.jq = load ptr, ptr %i.ca, align 8, !tbaa !267
  store ptr %i.jq, ptr %i.jo, align 8, !tbaa !267
  store ptr %i.jp, ptr %i.ca, align 8, !tbaa !267
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !101
  %i.jt = load i32, ptr %i.cb, align 8, !tbaa !101
  store i32 %i.jt, ptr %i.jr, align 8, !tbaa !101
  store i32 %i.js, ptr %i.cb, align 8, !tbaa !101
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hg, i64 132 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !101
  %i.jw = load i32, ptr %i.cc, align 4, !tbaa !101
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !101
  store i32 %i.jv, ptr %i.cc, align 4, !tbaa !101
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hg, i64 136
  %i.jy = load ptr, ptr %i.cd, align 8, !tbaa !473
  store ptr %i.jy, ptr %i.jx, align 8, !tbaa !473
  store ptr null, ptr %i.cd, align 8, !tbaa !473
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202, %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit
  call void @_ZN2OT13tuple_delta_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge92, label %bb.o, !llvm.loop !986

.critedge:                                        ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, %bb.r, %bb.x, %_ZNK2OT7VarData16get_region_indexEj.exit, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195
  call void @_ZN2OT13tuple_delta_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge97.sink.split

.critedge92:                                      ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %.pre296 = load i32, ptr %4, align 8, !tbaa !467
  %i.jz = icmp slt i32 %.pre296, 0
  br i1 %i.jz, label %.critedge97.sink.split, label %.critedge92.thread, !prof !999

.critedge92.thread:                               ; preds = %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, %.critedge92
  %i.ka = load i32, ptr %i.bm, align 4, !tbaa !466
  %.not.i112 = icmp eq i32 %i.ka, 0
  br i1 %.not.i112, label %.critedge95, label %bb.ah

bb.ah:                                            ; preds = %.critedge92.thread
  %i.kb = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t35change_tuple_variations_axis_limitsERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef null)
  br i1 %i.kb, label %bb.ai, label %.critedge97.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.kc = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22merge_tuple_variationsEP22contour_point_vector_t(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef null)
  %i.kd = load i32, ptr %4, align 8
  %i.ke = icmp sgt i32 %i.kd, -1
  %or.cond = select i1 %i.kc, i1 %i.ke, i1 false
  br i1 %or.cond, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread209, label %.critedge97.sink.split

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread209: ; preds = %bb.ai
  %.pre297 = load i32, ptr %i.bm, align 4, !tbaa !466 ; 2 uses
  %i.kf = load ptr, ptr %i.bn, align 8, !tbaa !468 ; 2 uses
  %i.kg = zext i32 %.pre297 to i64
  %.idx = mul nuw nsw i64 %i.kg, 160
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx
  %.not88262 = icmp eq i32 %.pre297, 0
  br i1 %.not88262, label %.critedge95, label %.lr.ph264

.lr.ph264:                                        ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread209
  %i.ki = shl nuw nsw i32 %i.cs, 2
  %i.kj = zext nneg i32 %i.ki to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.cu, i64 36 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %umax284 = call i32 @llvm.umax.i32(i32 %i.cs, i32 1)
  %wide.trip.count285 = zext nneg i32 %umax284 to i64 ; 5 uses
  %min.iters.check = icmp ult i16 %i.cr, 8
  %n.vec = and i64 %wide.trip.count285, 65528     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count285
  %xtraiter = and i64 %wide.trip.count285, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264, %_ZN11hb_vector_tIfLb0EED2Ev.exit
  %.070263 = phi ptr [ %i.kf, %.lr.ph264 ], [ %i.no, %_ZN11hb_vector_tIfLb0EED2Ev.exit ] ; 10 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.070263, i64 68
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !1000
  %.not89 = icmp eq i32 %i.kq, %i.cs
  br i1 %.not89, label %bb.ak, label %.critedge97.sink.split, !prof !97

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not87258.not, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i154, label %._crit_edge

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i154: ; preds = %bb.ak
  %i.kr = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.kj) #16 ; 12 uses
  %.not22.i155 = icmp eq ptr %i.kr, null
  br i1 %.not22.i155, label %.critedge97.sink.split, label %.lr.ph261, !prof !100

.lr.ph261:                                        ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i154
  %i.ks = ptrtoaddr ptr %i.kr to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kr, i8 0, i64 %i.kj, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %.070263, i64 72
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !995 ; 7 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %i.kw = sub i64 %i.kv, %i.ks
  %diff.check = icmp ugt i64 %i.kw, -32
  %or.cond355 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond355, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph261, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph261 ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %wide.load = load <4 x float>, ptr %i.kx, align 4, !tbaa !463
  %wide.load353 = load <4 x float>, ptr %i.ky, align 4, !tbaa !463
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <4 x float> %wide.load, ptr %i.kz, align 4, !tbaa !463
  store <4 x float> %wide.load353, ptr %i.la, align 4, !tbaa !463
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !987

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph261, %middle.block
  %indvars.iv281.ph = phi i64 [ 0, %.lr.ph261 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv281.prol = phi i64 [ %indvars.iv.next282.prol, %scalar.ph.prol ], [ %indvars.iv281.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv281.prol
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !463
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv281.prol
  store float %i.ld, ptr %i.le, align 4, !tbaa !463
  %indvars.iv.next282.prol = add nuw nsw i64 %indvars.iv281.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !988

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv281.unr = phi i64 [ %indvars.iv281.ph, %scalar.ph.preheader ], [ %indvars.iv.next282.prol, %scalar.ph.prol ]
  %i.lf = sub nsw i64 %indvars.iv281.ph, %wide.trip.count285
  %i.lg = icmp ugt i64 %i.lf, -4
  br i1 %i.lg, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ak
  %.sroa.11.0342 = phi i32 [ 0, %bb.ak ], [ %i.cs, %middle.block ], [ %i.cs, %scalar.ph ], [ %i.cs, %scalar.ph.prol.loopexit ]
  %.sroa.18.2216341 = phi ptr [ null, %bb.ak ], [ %i.kr, %middle.block ], [ %i.kr, %scalar.ph ], [ %i.kr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.lh = load i32, ptr %i.kk, align 4, !tbaa !474 ; 3 uses
  %i.li = load i32, ptr %i.cu, align 8, !tbaa !475
  %.not.i117 = icmp slt i32 %i.lh, %i.li
  br i1 %.not.i117, label %.critedge.i121, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.lj = add i32 %i.lh, 1
  %i.lk = call noundef zeroext i1 @_ZN11hb_vector_tIS_IfLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i32 noundef %i.lj, i1 noundef zeroext false)
  br i1 %i.lk, label %..critedge_crit_edge.i119, label %bb.am, !prof !97

..critedge_crit_edge.i119:                        ; preds = %bb.al
  %.pre.i120 = load i32, ptr %i.kk, align 4, !tbaa !474
  br label %.critedge.i121

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit

.critedge.i121:                                   ; preds = %..critedge_crit_edge.i119, %._crit_edge
  %i.ll = phi i32 [ %.pre.i120, %..critedge_crit_edge.i119 ], [ %i.lh, %._crit_edge ] ; 2 uses
  %i.lm = load ptr, ptr %i.kl, align 8, !tbaa !476
  %i.ln = add i32 %i.ll, 1
  store i32 %i.ln, ptr %i.kk, align 4, !tbaa !474
  %i.lo = zext i32 %i.ll to i64
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.lo ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %i.cs, ptr %i.lp, align 8, !tbaa !229
  store i32 %.sroa.11.0342, ptr %i.lq, align 4, !tbaa !230
  store ptr %.sroa.18.2216341, ptr %i.lr, align 8, !tbaa !231
  br label %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit

_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit: ; preds = %bb.am, %.critedge.i121
  %.sroa.0.0 = phi i1 [ false, %.critedge.i121 ], [ %.not87258.not, %bb.am ]
  %.sroa.18.0 = phi ptr [ null, %.critedge.i121 ], [ %.sroa.18.2216341, %bb.am ]
  %i.ls = load i32, ptr %i.kn, align 4, !tbaa !291 ; 3 uses
  %i.lt = load i32, ptr %i.km, align 8, !tbaa !477
  %.not.i122 = icmp slt i32 %i.ls, %i.lt
  br i1 %.not.i122, label %.critedge.i126, label %bb.an

bb.an:                                            ; preds = %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit
  %i.lu = add i32 %i.ls, 1
  %i.lv = call noundef zeroext i1 @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i32 noundef %i.lu, i1 noundef zeroext false)
  br i1 %i.lv, label %..critedge_crit_edge.i124, label %bb.ao, !prof !97

..critedge_crit_edge.i124:                        ; preds = %bb.an
  %.pre.i125 = load i32, ptr %i.kn, align 4, !tbaa !291
  br label %.critedge.i126

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(48) @_hb_NullPool, i64 48, i1 false)
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

.critedge.i126:                                   ; preds = %..critedge_crit_edge.i124, %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit
  %i.lw = phi i32 [ %.pre.i125, %..critedge_crit_edge.i124 ], [ %i.ls, %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit ] ; 2 uses
  %i.lx = load ptr, ptr %i.ko, align 8, !tbaa !296
  %i.ly = add i32 %i.lw, 1
  store i32 %i.ly, ptr %i.kn, align 4, !tbaa !291
  %i.lz = zext i32 %i.lw to i64
  %i.ma = getelementptr inbounds nuw [48 x i8], ptr %i.lx, i64 %i.lz ; 10 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store atomic i32 1, ptr %i.ma monotonic, align 4
  store atomic i8 1, ptr %i.mb monotonic, align 4
  store atomic ptr null, ptr %i.mc monotonic, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i8 1, ptr %i.md, align 8, !tbaa !452
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 18 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 40 ; 2 uses
  store ptr null, ptr %i.mf, align 8, !tbaa !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.me, i8 0, i64 18, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %.070263, i64 16
  %i.mh = load i8, ptr %i.mg, align 8, !range !121
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.ap, label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit, !prof !97

bb.ap:                                            ; preds = %.critedge.i126
  %i.mj = getelementptr inbounds nuw i8, ptr %.070263, i64 18 ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !469
  store i16 %i.mk, ptr %i.me, align 2, !tbaa !469
  store i16 0, ptr %i.mj, align 2, !tbaa !469
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  %i.mm = getelementptr inbounds nuw i8, ptr %.070263, i64 20 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !101
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !101
  store i32 0, ptr %i.mm, align 4, !tbaa !101
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.070263, i64 24 ; 2 uses
  %i.mq = load i32, ptr %i.mo, align 8, !tbaa !101
  %i.mr = load i32, ptr %i.mp, align 8, !tbaa !101
  store i32 %i.mr, ptr %i.mo, align 8, !tbaa !101
  store i32 %i.mq, ptr %i.mp, align 8, !tbaa !101
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ma, i64 28 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.070263, i64 28 ; 2 uses
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !101
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !101
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !101
  store i32 %i.mu, ptr %i.mt, align 4, !tbaa !101
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ma, i64 32 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.070263, i64 32 ; 2 uses
  %i.my = load i32, ptr %i.mw, align 8, !tbaa !101
  %i.mz = load i32, ptr %i.mx, align 8, !tbaa !101
  store i32 %i.mz, ptr %i.mw, align 8, !tbaa !101
  store i32 %i.my, ptr %i.mx, align 8, !tbaa !101
  %i.na = getelementptr inbounds nuw i8, ptr %.070263, i64 40 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !470
  store ptr %i.nb, ptr %i.mf, align 8, !tbaa !470
  store ptr null, ptr %i.na, align 8, !tbaa !470
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit: ; preds = %bb.ao, %.critedge.i126, %bb.ap
  br i1 %.sroa.0.0, label %bb.aq, label %_ZN11hb_vector_tIfLb0EED2Ev.exit

bb.aq:                                            ; preds = %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit
  call void @hb_free(ptr noundef %.sroa.18.0) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv281 = phi i64 [ %indvars.iv.next282.3, %scalar.ph ], [ %indvars.iv281.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv281
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !463
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv281
  store float %i.nd, ptr %i.ne, align 4, !tbaa !463
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next282
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !463
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next282
  store float %i.ng, ptr %i.nh, align 4, !tbaa !463
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next282.1
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !463
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next282.1
  store float %i.nj, ptr %i.nk, align 4, !tbaa !463
  %indvars.iv.next282.2 = add nuw nsw i64 %indvars.iv281, 3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next282.2
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !463
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next282.2
  store float %i.nm, ptr %i.nn, align 4, !tbaa !463
  %indvars.iv.next282.3 = add nuw nsw i64 %indvars.iv281, 4 ; 2 uses
  %exitcond286.not.3 = icmp eq i64 %indvars.iv.next282.3, %wide.trip.count285
  br i1 %exitcond286.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !989

_ZN11hb_vector_tIfLb0EED2Ev.exit:                 ; preds = %bb.aq, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit
  %i.no = getelementptr inbounds nuw i8, ptr %.070263, i64 160 ; 2 uses
  %.not88 = icmp eq ptr %i.no, %i.kh
  br i1 %.not88, label %.critedge95, label %bb.aj

.critedge95:                                      ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit, %.critedge92.thread, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread209
  %i.np = load i32, ptr %i.cu, align 8, !tbaa !475
  %i.nq = icmp slt i32 %i.np, 0
  br i1 %i.nq, label %.critedge97.sink.split, label %bb.ar, !prof !99

bb.ar:                                            ; preds = %.critedge95
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !477
  %.fr = freeze i32 %i.ns
  %i.nt = icmp slt i32 %.fr, 0
  br i1 %i.nt, label %.critedge97.sink.split, label %bb.as, !prof !143

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count291
  br i1 %exitcond292.not, label %.critedge97, label %bb.i, !llvm.loop !990

.critedge97.sink.split:                           ; preds = %.critedge92, %bb.ai, %bb.ah, %bb.ar, %.critedge95, %bb.aj, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i154, %.critedge
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.critedge97

.critedge97:                                      ; preds = %bb.as, %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit, %.critedge97.sink.split, %bb.h
  %.not90252 = phi i1 [ true, %bb.h ], [ false, %.critedge97.sink.split ], [ %i.cw, %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit ], [ %i.cw, %bb.as ]
  call void @_ZN2OT18optimize_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i, %bb.a, %.loopexit, %.critedge97
  %.13 = phi i1 [ %.not90252, %.critedge97 ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 1, !tbaa !346
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a)
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.b, label %.critedge, !prof !97

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !479   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 12 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !479
  %i.i = zext i8 %i.h to i32
  %i.j = add nuw i32 %1, 1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !479
  %i.n = zext i8 %i.m to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 1, !tbaa !276
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = add nuw i32 %1, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1, !tbaa !276
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !148
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
end_hunk_7
