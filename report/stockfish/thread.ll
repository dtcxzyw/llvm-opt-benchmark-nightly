Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish9UCIEngine7to_moveERKNS_8PositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
declare i16 @_ZN9Stockfish9UCIEngine7to_moveERKNS_8PositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef align 8) local_unnamed_addr #6

declare { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK9Stockfish10ThreadPool15get_best_threadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unordered_map", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11421080
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 11421088
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !313
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.i)
  %i.t = shl nsw i64 %.sroa.speculated, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 1, ptr %i.v, align 8, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !323
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.t) #26 ; 6 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !322
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !324

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.u, align 8, !tbaa !325
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.ad, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !324

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %i.z, 2305843009213693951
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.d
  %i.af = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.af, i1 false)
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.ag, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i ]
  store ptr %.0.i.i.i, ptr %1, align 8, !tbaa !315
  store i64 %i.z, ptr %i.v, align 8, !tbaa !322
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !120 ; 8 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !120 ; 4 uses
  %.not9396 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9396, label %._crit_edge107, label %iter.check

iter.check:                                       ; preds = %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = add i64 %i.aj, -8
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.am, 56
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.am, 248
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ao, 24
  %n.vec = and i64 %i.ao, 4611686018427387872     ; 4 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi134 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi135 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi136 = phi <8 x i32> [ splat (i32 32002), %vector.ph ], [ %i.az, %vector.body ]
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.as ; 4 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 64
  %i.au = getelementptr i8, ptr %next.gep, i64 128
  %i.av = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !89
  %wide.load137 = load <8 x ptr>, ptr %i.at, align 8, !tbaa !89
  %wide.load138 = load <8 x ptr>, ptr %i.au, align 8, !tbaa !89
  %wide.load139 = load <8 x ptr>, ptr %i.av, align 8, !tbaa !89
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %wide.load, i64 8
  %wide.gep140 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load137, i64 8
  %wide.gep141 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load138, i64 8
  %wide.gep142 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load139, i64 8
  %wide.masked.gather = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather143 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep140, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather144 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep141, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.masked.gather145 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep142, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather, i64 11421080
  %wide.gep147 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather143, i64 11421080
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather144, i64 11421080
  %wide.gep149 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather145, i64 11421080
  %wide.masked.gather150 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep146, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather151 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep147, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather152 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep148, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.masked.gather153 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep149, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.gep154 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather150, i64 8
  %wide.gep155 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather151, i64 8
  %wide.gep156 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather152, i64 8
  %wide.gep157 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather153, i64 8
  %wide.masked.gather158 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep154, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather159 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep155, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather160 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep156, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %wide.masked.gather161 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep157, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %i.aw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather158, <8 x i32> %vec.phi) ; 2 uses
  %i.ax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather159, <8 x i32> %vec.phi134) ; 2 uses
  %i.ay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather160, <8 x i32> %vec.phi135) ; 2 uses
  %i.az = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather161, <8 x i32> %vec.phi136) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aw, <8 x i32> %i.ax)
  %rdx.minmax162 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ay)
  %rdx.minmax163 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax162, <8 x i32> %i.az)
  %i.bb = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax163) ; 3 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph101, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bb, %vec.epilog.iter.check ], [ 32002, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.ao, 4611686018427387896  ; 3 uses
  %i.bc = shl i64 %n.vec164, 3
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi166 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.be = shl i64 %index165, 3
  %next.gep167 = getelementptr i8, ptr %i.ah, i64 %i.be
  %wide.load168 = load <8 x ptr>, ptr %next.gep167, align 8, !tbaa !89
  %wide.gep169 = getelementptr inbounds nuw i8, <8 x ptr> %wide.load168, i64 8
  %wide.masked.gather170 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep169, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !116
  %wide.gep171 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather170, i64 11421080
  %wide.masked.gather172 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep171, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !313
  %wide.gep173 = getelementptr inbounds nuw i8, <8 x ptr> %wide.masked.gather172, i64 8
  %wide.masked.gather174 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep173, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !279
  %i.bf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather174, <8 x i32> %vec.phi166) ; 2 uses
  %index.next175 = add nuw i64 %index165, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next175, %n.vec164
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.bf) ; 2 uses
  %cmp.n176 = icmp eq i64 %i.ao, %n.vec164
  br i1 %cmp.n176, label %.lr.ph101, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.076.098.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.09097.ph = phi i32 [ 32002, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph101:                                        ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.sroa.speculated86.lcssa = phi i32 [ %i.bh, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %.sroa.speculated86, %.lr.ph ] ; 3 uses
  %invariant.op = sub i32 14, %.sroa.speculated86.lcssa
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.076.098 = phi ptr [ %i.bp, %.lr.ph ], [ %.sroa.076.098.ph, %.lr.ph.preheader ] ; 2 uses
  %.09097 = phi i32 [ %.sroa.speculated86, %.lr.ph ], [ %.09097.ph, %.lr.ph.preheader ]
  %i.bi = load ptr, ptr %.sroa.076.098, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !116
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11421080
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !313
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !279
  %.sroa.speculated86 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.09097) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.076.098, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.bp, %i.ai
  br i1 %.not93, label %.lr.ph101, label %.lr.ph, !llvm.loop !328

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !120 ; 2 uses
  %.pre111 = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %.not95102 = icmp eq ptr %.pre, %.pre111
  br i1 %.not95102, label %._crit_edge107, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %._crit_edge
  %invariant.op189 = sub i32 14, %.sroa.speculated86.lcssa
  %invariant.op190 = sub i32 14, %.sroa.speculated86.lcssa
  br label %.lr.ph106

bb.h:                                             ; preds = %.lr.ph101, %bb.h
  %.sroa.069.0100 = phi ptr [ %i.ah, %.lr.ph101 ], [ %i.cc, %bb.h ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.069.0100, align 8, !tbaa !89
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val58 = load ptr, ptr %i.br, align 8, !tbaa !116 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val58, i64 11421080
  %.val58.val = load ptr, ptr %i.bs, align 8, !tbaa !313 ; 2 uses
  %i.bt = getelementptr i8, ptr %.val58, i64 11421108
  %.val58.val59 = load i32, ptr %i.bt, align 4, !tbaa !329
  %i.bu = getelementptr i8, ptr %.val58.val, i64 8
  %.val58.val.val = load i32, ptr %i.bu, align 8, !tbaa !373
  %.reass.reass = add i32 %.val58.val.val, %invariant.op
  %i.bv = mul nsw i32 %.reass.reass, %.val58.val59
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.val58.val, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !285
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.by) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.cb = add nsw i64 %i.ca, %i.bw
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.069.0100, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.cc, %i.ai
  br i1 %.not94, label %._crit_edge, label %bb.h

._crit_edge107:                                   ; preds = %bb.q, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit, %._crit_edge
  %.0.lcssa = phi ptr [ %i.c, %._crit_edge ], [ %i.c, %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEEC2EmRKS2_RKS4_RKS8_.exit ], [ %.1, %bb.q ]
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !374 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge107, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.cd, %._crit_edge107 ] ; 2 uses
  %i.ce = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !375 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge107
  %i.cf = load ptr, ptr %1, align 8, !tbaa !315
  %i.cg = load i64, ptr %i.v, align 8, !tbaa !322
  %i.ch = shl i64 %i.cg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cf, i8 0, i64 %i.ch, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ci = load ptr, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.u
  br i1 %i.cj, label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ck = load i64, ptr %i.v, align 8, !tbaa !322
  %i.cl = shl i64 %i.ck, 3
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #30
  br label %_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit

_ZNSt13unordered_mapIN9Stockfish4MoveElNS1_8MoveHashESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %.0.lcssa

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.q
  %.0104 = phi ptr [ %.1, %bb.q ], [ %i.c, %.lr.ph106.preheader ] ; 5 uses
  %.sroa.065.0103 = phi ptr [ %i.er, %bb.q ], [ %.pre, %.lr.ph106.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0104, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 11421080
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !313 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !373 ; 5 uses
  %i.cs = load ptr, ptr %.sroa.065.0103, align 8, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !116
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 11421080
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !313 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !373 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !285
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.db)
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !285
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.de)
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26 ; 2 uses
  %i.dh = icmp sgt i32 %i.cr, 31506
  %i.di = icmp sgt i32 %i.cy, 31506
  %.not52 = icmp ne i32 %i.cy, -32001
  %i.dj = icmp slt i32 %i.cy, -31506              ; 2 uses
  %i.dk = and i1 %.not52, %i.dj                   ; 2 uses
  %i.dl = load ptr, ptr %.sroa.065.0103, align 8, !tbaa !89 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val56 = load ptr, ptr %i.dm, align 8, !tbaa !116 ; 2 uses
  %i.dn = getelementptr i8, ptr %.val56, i64 11421080
  %.val56.val = load ptr, ptr %i.dn, align 8, !tbaa !313
  %i.do = getelementptr i8, ptr %.val56, i64 11421108
  %.val56.val60 = load i32, ptr %i.do, align 4, !tbaa !329
  %i.dp = getelementptr i8, ptr %.val56.val, i64 8
  %.val56.val.val = load i32, ptr %i.dp, align 8, !tbaa !373
  %.reass128.reass = add i32 %.val56.val.val, %invariant.op189
  %i.dq = mul nsw i32 %.reass128.reass, %.val56.val60
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !288
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !285
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp ugt i64 %i.dw, 4
  %i.dy = select i1 %i.dx, i32 %i.dq, i32 0
  %.0.val = load ptr, ptr %i.cm, align 8, !tbaa !116 ; 2 uses
  %i.dz = getelementptr i8, ptr %.0.val, i64 11421080
  %.0.val.val = load ptr, ptr %i.dz, align 8, !tbaa !313
  %i.ea = getelementptr i8, ptr %.0.val, i64 11421108
  %.0.val.val61 = load i32, ptr %i.ea, align 4, !tbaa !329
  %i.eb = getelementptr i8, ptr %.0.val.val, i64 8
  %.0.val.val.val = load i32, ptr %i.eb, align 8, !tbaa !373
  %.reass130.reass = add i32 %.0.val.val.val, %invariant.op190
  %i.ec = mul nsw i32 %.reass130.reass, %.0.val.val61
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !288
  %i.ef = load ptr, ptr %i.cz, align 8, !tbaa !285
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp ugt i64 %i.ei, 4
  %i.ek = select i1 %i.ej, i32 %i.ec, i32 0
  %i.el = icmp sgt i32 %i.dy, %i.ek
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph106
  %i.em = icmp sgt i32 %i.cy, %i.cr
  %spec.select91 = select i1 %i.em, ptr %i.dl, ptr %.0104
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph106
  %.not = icmp ne i32 %i.cr, -32001
  %i.en = icmp slt i32 %i.cr, -31506
  %spec.select = and i1 %.not, %i.en
  br i1 %spec.select, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eo = icmp slt i32 %i.cy, %i.cr
  %or.cond53 = select i1 %i.dk, i1 %i.eo, i1 false
  %spec.select92 = select i1 %or.cond53, ptr %i.dl, ptr %.0104
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %or.cond = or i1 %i.di, %i.dk
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.dj, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ep = icmp sgt i64 %i.dg, %i.dd
  %i.eq = icmp eq i64 %i.dg, %i.dd
  %or.cond3 = and i1 %i.eq, %i.el
  %or.cond54 = or i1 %i.ep, %or.cond3
  br i1 %or.cond54, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.j, %bb.o, %bb.p, %bb.n
  %.1 = phi ptr [ %.0104, %bb.n ], [ %i.dl, %bb.p ], [ %spec.select91, %bb.j ], [ %.0104, %bb.o ], [ %spec.select92, %bb.l ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.065.0103, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.er, %.pre111
  br i1 %.not95, label %._crit_edge107, label %.lr.ph106
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool15start_searchingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_:bb.a
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 2
  br i1 %i.an, label %bb.r, label %bb.s, !prof !425

bb.r:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ai, ptr align 2 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  %i.ao = icmp eq i64 %i.am, 2
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i16, ptr %i.ak, align 2, !tbaa !287
  store i16 %i.ap, ptr %i.ai, align 2, !tbaa !287
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !285
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !288
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !266    ; 3 uses
  %i.b = zext i16 %i.a to i64
  %i.c = mul i64 %i.b, 6364136223846793005
  %i.d = add i64 %i.c, 1442695040888963407        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !322  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !543  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !375  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !544
  %i.o = icmp eq i64 %i.d, %i.n
  %i.p = load i16, ptr %i.l, align 8
  %i.q = icmp eq i16 %i.a, %i.p
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.t = icmp eq i64 %i.d, %i.z
  %i.u = load i16, ptr %i.s, align 8
  %i.v = icmp eq i16 %i.a, %i.u
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !546

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.x, %bb.c ], [ %i.k, %bb.b ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !375 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !544  ; 2 uses
  %i.aa = urem i64 %i.z, %i.f
  %.not19.i.i = icmp eq i64 %i.aa, %i.g
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !546

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !546

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i16, ptr %1, align 2, !tbaa !287
  store i16 %i.ad, ptr %i.ac, align 8, !tbaa !287
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !547
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !322
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !549
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef 1) #26 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.e, align 8, !tbaa !322
  %i.ao = urem i64 %i.d, %i.an
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ao, %bb.e ], [ %i.g, %.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.d, ptr %i.ap, align 8, !tbaa !544
  %i.aq = load ptr, ptr %0, align 8, !tbaa !315   ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.0.i19 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !543 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !375
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !375
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !375
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !374 ; 3 uses
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !375
  store ptr %i.ab, ptr %i.au, align 8, !tbaa !374
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !322
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !544
  %i.az = urem i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  store ptr %i.ab, ptr %i.ba, align 8, !tbaa !543
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !543
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !549
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !549
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ab, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !324

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !325
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !324

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !374
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !375 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !544
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !543  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !374
  store ptr %i.o, ptr %.02530, align 8, !tbaa !375
  store ptr %.02530, ptr %i.g, align 8, !tbaa !374
  store ptr %i.g, ptr %i.m, align 8, !tbaa !543
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !375
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !543
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !375
  store ptr %i.r, ptr %.02530, align 8, !tbaa !375
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !543
  store ptr %.02530, ptr %i.s, align 8, !tbaa !375
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !550

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !315    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !322
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #30
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !322
  store ptr %.0.i, ptr %0, align 8, !tbaa !315
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_thread.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr>, <8 x i1>, <8 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.umax.v8i64(<8 x i64>, <8 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v8i64(<8 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr>, <8 x i1>, <8 x ptr>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i64> @llvm.masked.load.v3i64.p0(ptr captures(none), <3 x i1>, <3 x i64>) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!21}

!0 = !{i64 16, !"_ZTSN9Stockfish6ThreadE"}
!1 = !{i64 16, !"_ZTSN9Stockfish6Search14ISearchManagerE"}
!2 = !{i64 32, !"_ZTSMN9Stockfish6Search14ISearchManagerEFvRNS0_6WorkerEE.virtual"}
!3 = !{i64 16, !"_ZTSN9Stockfish6Search17NullSearchManagerE"}
!4 = !{i64 32, !"_ZTSMN9Stockfish6Search17NullSearchManagerEFvRNS0_6WorkerEE.virtual"}
!5 = !{i64 16, !6}
!6 = distinct !{}
!7 = !{i64 32, !8}
!8 = distinct !{}
!9 = !{i64 16, !"_ZTSNSt6thread6_StateE"}
!10 = !{i64 32, !"_ZTSMNSt6thread6_StateEFvvE.virtual"}
!11 = !{i64 16, !12}
!12 = distinct !{}
!13 = !{i64 32, !14}
!14 = distinct !{}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 1, !"ThinLTO", i32 0}
!19 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!20 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!21 = !{!22, !23, i64 0}
!22 = !{!"__libc_errno", !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !24, i64 0}
!28 = !{!29, !31, i64 0}
!29 = !{!"_ZTSSt15_Rb_tree_header", !30, i64 0, !27, i64 32}
!30 = !{!"_ZTSSt18_Rb_tree_node_base", !31, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!31 = !{!"_ZTSSt14_Rb_tree_color", !24, i64 0}
!32 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !33, i64 0}
!33 = !{!"any pointer", !24, i64 0}
!34 = !{!29, !32, i64 8}
!35 = !{!29, !32, i64 16}
!36 = !{!29, !32, i64 24}
!37 = !{!29, !27, i64 32}
!38 = !{!32, !32, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !25, i64 0}
!44 = !{!45, !27, i64 136}
!45 = !{!"_ZTSN9Stockfish6ThreadE", !46, i64 8, !53, i64 16, !55, i64 48, !57, i64 88, !27, i64 136, !27, i64 144, !27, i64 152, !27, i64 160, !59, i64 168, !59, i64 169, !60, i64 176, !61, i64 184}
!46 = !{!"_ZTSSt10unique_ptrIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_dataIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EELb1ELb1EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEE", !49, i64 0}
!49 = !{!"_ZTSSt5tupleIJPN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEEE", !50, i64 0}
!50 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEEE", !51, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN9Stockfish6Search6WorkerELb0EE", !52, i64 0}
!52 = !{!"p1 _ZTSN9Stockfish6Search6WorkerE", !33, i64 0}
!53 = !{!"_ZTSSt8functionIFvvEE", !54, i64 0, !33, i64 24}
!54 = !{!"_ZTSSt14_Function_base", !24, i64 0, !33, i64 16}
!55 = !{!"_ZTSSt5mutex", !56, i64 0}
!56 = !{!"_ZTSSt12__mutex_base", !24, i64 0}
!57 = !{!"_ZTSSt18condition_variable", !58, i64 0}
!58 = !{!"_ZTSSt9__condvar", !24, i64 0}
!59 = !{!"bool", !24, i64 0}
!60 = !{!"_ZTSN9Stockfish12NativeThreadE", !27, i64 0}
!61 = !{!"_ZTSN9Stockfish25NumaReplicatedAccessTokenE", !27, i64 0}
!62 = !{!45, !27, i64 144}
!63 = !{!45, !27, i64 152}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSN9Stockfish6Search11SharedStateE", !66, i64 0, !67, i64 8, !68, i64 16, !69, i64 24, !70, i64 32}
!66 = !{!"p1 _ZTSN9Stockfish10OptionsMapE", !33, i64 0}
!67 = !{!"p1 _ZTSN9Stockfish10ThreadPoolE", !33, i64 0}
!68 = !{!"p1 _ZTSN9Stockfish18TranspositionTableE", !33, i64 0}
!69 = !{!"p1 _ZTSSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE", !33, i64 0}
!70 = !{!"p1 _ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE", !33, i64 0}
!71 = !{}
!72 = !{i64 8}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !75, i64 0}
!75 = !{!"p1 omnipotent char", !33, i64 0}
!76 = !{!77, !27, i64 8}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !74, i64 0, !27, i64 8, !24, i64 16}
!78 = !{!24, !24, i64 0}
!79 = !{!77, !75, i64 0}
!80 = !{!45, !27, i64 160}
!81 = !{!45, !59, i64 168}
!82 = !{!45, !59, i64 169}
!83 = !{!84, !24, i64 0}
!84 = !{!"_ZTSSt5_BindIFMN9Stockfish6ThreadEFvvEPS1_EE", !24, i64 0, !85, i64 16}
!85 = !{!"_ZTSSt5tupleIJPN9Stockfish6ThreadEEE", !86, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Stockfish6ThreadEEE", !87, i64 0}
end_hunk_1
