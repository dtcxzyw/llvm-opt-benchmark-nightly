Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12malachite_nz7natural10conversion6digits14general_digits47limbs_from_digits_small_base_divide_and_conquer17haa4b66a940dbc78aE:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @49, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ah, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #52
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.aj = sub nuw i64 %1, %i.w
  %i.ak = tail call noundef i64 @_ZN12malachite_nz7natural10arithmetic3mul28limbs_mul_to_out_scratch_len17h5cab767209357653E(i64 noundef %i.y, i64 noundef %.sroa.6.0) ; 4 uses
  %i.al = shl i64 %i.ak, 3                        ; 4 uses
  %i.am = icmp ugt i64 %i.ak, 2305843009213693951
  %i.an = icmp ugt i64 %i.al, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.am, %i.an
  br i1 %or.cond.i.i.i, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.s
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb3fc3bdc67a7c714E.exit", label %bb.t

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !2309
  %i.ap = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !2309 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb3fc3bdc67a7c714E.exit"

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.t ], [ 0, %bb.s ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #52, !noalias !2310
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb3fc3bdc67a7c714E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.u
  %.sroa.4.0.i = phi i64 [ %i.ak, %bb.u ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ] ; 4 uses
  %.sroa.10.0.i = phi i64 [ %i.ar, %bb.u ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  %i.as = inttoptr i64 %.sroa.10.0.i to ptr       ; 4 uses
  %.not32 = icmp ugt i64 %.sroa.6.0, %9
  br i1 %.not32, label %bb.x, label %bb.w, !prof !59

bb.w:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb3fc3bdc67a7c714E.exit"
  %i.at = load ptr, ptr %i.k, align 8, !nonnull !23, !align !28, !noundef !23
  %i.au = invoke noundef i64 @_ZN12malachite_nz7natural10arithmetic3mul16limbs_mul_to_out17h442fc6aafc32d609E(ptr noalias noundef nonnull align 8 %i.ai, i64 noundef %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.at, i64 noundef %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %8, i64 noundef %.sroa.6.0, ptr noalias noundef nonnull align 8 %i.as, i64 noundef %i.ak)
          to label %bb.aa unwind label %bb.y      ; 0 uses

bb.x:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb3fc3bdc67a7c714E.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.6.0, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #52
          to label %bb.as unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.aw, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = shl nuw i64 %.sroa.4.0.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit"

bb.aa:                                            ; preds = %bb.w
  %i.ay = icmp eq i64 %i.w, 0
  br i1 %i.ay, label %_ZN14malachite_base6slices14slice_set_zero17h0e846dbefdd2f3b0E.exit43, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %bb.aa
  %.idx.i42 = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %.idx.i42, i1 false), !alias.scope !2311
  br label %_ZN14malachite_base6slices14slice_set_zero17h0e846dbefdd2f3b0E.exit43

_ZN14malachite_base6slices14slice_set_zero17h0e846dbefdd2f3b0E.exit43: ; preds = %.lr.ph.preheader.i41, %bb.aa
  %i.az = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.az, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit44", label %bb.ab

bb.ab:                                            ; preds = %_ZN14malachite_base6slices14slice_set_zero17h0e846dbefdd2f3b0E.exit43
  %i.ba = shl nuw i64 %.sroa.4.0.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit44"

bb.ac:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit44"
  %i.bb = add i64 %i.z, 1                         ; 4 uses
  %.not33 = icmp ugt i64 %i.bb, %9
  br i1 %.not33, label %bb.ae, label %bb.af, !prof !24

bb.ad:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit44"
  %i.bc = tail call fastcc { i64, i64 } @_ZN12malachite_nz7natural10conversion6digits14general_digits37limbs_from_digits_small_base_basecase17he965bbf573f4d688E(ptr noalias noundef nonnull align 8 %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.m, i64 noundef %4)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @49, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bg, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #52
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bb
  %i.bi = sub nuw i64 %9, %i.bb
  %i.bj = add i64 %7, -1
  %i.bk = tail call fastcc { i64, i64 } @_ZN12malachite_nz7natural10conversion6digits14general_digits47limbs_from_digits_small_base_divide_and_conquer17haa4b66a940dbc78aE(ptr noalias noundef nonnull align 8 %8, i64 noundef %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.m, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bj, ptr noalias noundef nonnull align 8 %i.bh, i64 noundef %i.bi)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.pn34 = phi { i64, i64 } [ %i.bc, %bb.ad ], [ %i.bk, %bb.af ] ; 2 uses
  %.sroa.06.0 = extractvalue { i64, i64 } %.pn34, 0
  %.sroa.67.0 = extractvalue { i64, i64 } %.pn34, 1 ; 11 uses
  %i.bl = trunc nuw i64 %.sroa.06.0 to i1
  br i1 %i.bl, label %bb.ah, label %bb.d

bb.ah:                                            ; preds = %bb.ag
  %i.bm = icmp eq i64 %.sroa.67.0, 0
  br i1 %i.bm, label %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit, label %bb.ai

_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit: ; preds = %.lr.ph.i, %.lr.ph.preheader.i46, %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit, %bb.ah
  %i.bn = add i64 %i.z, %.sroa.6.0                ; 2 uses
  %i.bo = add i64 %i.bn, -1                       ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %1
  br i1 %i.bp, label %bb.aq, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  %.not36 = icmp ugt i64 %.sroa.67.0, %1
  br i1 %.not36, label %bb.aj, label %bb.ak, !prof !24

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @49, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bt, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #52
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.67.0 ; 4 uses
  %i.bv = sub nuw i64 %1, %.sroa.67.0             ; 2 uses
  %.not37 = icmp ugt i64 %.sroa.67.0, %9
  br i1 %.not37, label %bb.am, label %bb.al, !prof !24

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %xtraiter = and i64 %.sroa.67.0, 1
  %i.bw = icmp eq i64 %.sroa.67.0, 1
  br i1 %i.bw, label %.preheader.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.al
  %unroll_iter = and i64 %.sroa.67.0, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.new
  %.sroa.0.018.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i7.i.1, %.preheader.i ]
  %.sroa.8.017.i = phi i64 [ 0, %.new ], [ %i.cg, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.preheader.i ]
  %i.bx = or disjoint i64 %.sroa.8.017.i, 1       ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.8.017.i ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.sroa.8.017.i
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2313, !noundef !23
  %i.cb = load i64, ptr %i.by, align 8, !alias.scope !2312, !noundef !23 ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 3 uses
  %i.cd = add i64 %i.cc, %.sroa.0.018.i           ; 2 uses
  %i.ce = icmp ult i64 %i.cc, %i.cb
  %i.cf = icmp ult i64 %i.cd, %i.cc
  %narrow.i.i = or i1 %i.ce, %i.cf
  %.sroa.0.0.i7.i = zext i1 %narrow.i.i to i64
  store i64 %i.cd, ptr %i.by, align 8, !alias.scope !2312
  %i.cg = add nuw i64 %.sroa.8.017.i, 2           ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bx
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2313, !noundef !23
  %i.ck = load i64, ptr %i.ch, align 8, !alias.scope !2312, !noundef !23 ; 2 uses
  %i.cl = add i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = add i64 %i.cl, %.sroa.0.0.i7.i          ; 2 uses
  %i.cn = icmp ult i64 %i.cl, %i.ck
  %i.co = icmp ult i64 %i.cm, %i.cl
  %narrow.i.i.1 = or i1 %i.cn, %i.co              ; 2 uses
  %.sroa.0.0.i7.i.1 = zext i1 %narrow.i.i.1 to i64 ; 2 uses
  store i64 %i.cm, ptr %i.ch, align 8, !alias.scope !2312
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa, label %.preheader.i

_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa, %bb.al
  %.sroa.0.018.i.epil.init = phi i64 [ 0, %bb.al ], [ %.sroa.0.0.i7.i.1, %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa ]
  %.sroa.8.017.i.epil.init = phi i64 [ 0, %bb.al ], [ %i.cg, %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %.sroa.67.0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.8.017.i.epil.init ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.sroa.8.017.i.epil.init
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !2313, !noundef !23
  %i.cs = load i64, ptr %i.cp, align 8, !alias.scope !2312, !noundef !23 ; 2 uses
  %i.ct = add i64 %i.cs, %i.cr                    ; 3 uses
  %i.cu = add i64 %i.ct, %.sroa.0.018.i.epil.init ; 2 uses
  %i.cv = icmp ult i64 %i.ct, %i.cs
  %i.cw = icmp ult i64 %i.cu, %i.ct
  %narrow.i.i.epil = or i1 %i.cv, %i.cw
  store i64 %i.cu, ptr %i.cp, align 8, !alias.scope !2312
  br label %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit

_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit: ; preds = %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa, %.preheader.i.epil.preheader
  %narrow.i.i.lcssa = phi i1 [ %narrow.i.i.1, %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit.unr-lcssa ], [ %narrow.i.i.epil, %.preheader.i.epil.preheader ]
  br i1 %narrow.i.i.lcssa, label %bb.an, label %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit

bb.am:                                            ; preds = %bb.ak
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.67.0, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #52
  unreachable

bb.an:                                            ; preds = %_ZN12malachite_nz7natural10arithmetic3add41limbs_slice_add_same_length_in_place_left17he348e9debbe58765E.exit
  %.idx.i45 = shl nuw nsw i64 %i.bv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i45
  %i.cy = icmp eq i64 %1, %.sroa.67.0
  br i1 %i.cy, label %.loopexit, label %.lr.ph.preheader.i46, !prof !2314

.lr.ph.preheader.i46:                             ; preds = %bb.an
  %i.cz = load i64, ptr %i.bu, align 8, !alias.scope !2315, !noundef !23 ; 2 uses
  %i.da = add i64 %i.cz, 1
  %i.db = icmp eq i64 %i.cz, -1
  store i64 %i.da, ptr %i.bu, align 8, !alias.scope !2315
  br i1 %i.db, label %bb.ao, label %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit

bb.ao:                                            ; preds = %.lr.ph.preheader.i46
  %i.dc = icmp eq i64 %i.bv, 1
  br i1 %i.dc, label %.loopexit, label %.lr.ph.peel.next.i, !prof !2314

.lr.ph.peel.next.i:                               ; preds = %bb.ao
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %.lr.ph.i

bb.ap:                                            ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cx
  br i1 %i.df, label %.loopexit, label %.lr.ph.i, !prof !2314, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.peel.next.i
  %.sroa.03.09.i = phi ptr [ %i.de, %bb.ap ], [ %i.dd, %.lr.ph.peel.next.i ] ; 3 uses
  %i.dg = load i64, ptr %.sroa.03.09.i, align 8, !alias.scope !2315, !noundef !23 ; 2 uses
  %i.dh = add i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dg, -1
  store i64 %i.dh, ptr %.sroa.03.09.i, align 8, !alias.scope !2315
  br i1 %i.di, label %bb.ap, label %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit

.loopexit:                                        ; preds = %bb.ap, %bb.ao, %bb.an
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #52
  unreachable

bb.aq:                                            ; preds = %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bo
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !23
  %i.dl = icmp eq i64 %i.dk, 0
  %spec.select = select i1 %i.dl, i64 %i.bo, i64 %i.bn
  br label %bb.d

bb.ar:                                            ; preds = %_ZN12malachite_nz7natural10arithmetic3add29limbs_slice_add_limb_in_place17h716b87303506dad1E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bo, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #52
  unreachable

bb.as:                                            ; preds = %bb.x
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit": ; preds = %bb.z, %bb.y
  resume { ptr, i32 } %i.av

bb.at:                                            ; preds = %bb.h
  %i.dm = add i64 %7, -1
  %i.dn = tail call fastcc { i64, i64 } @_ZN12malachite_nz7natural10conversion6digits14general_digits47limbs_from_digits_small_base_divide_and_conquer17haa4b66a940dbc78aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.dm, ptr noalias noundef nonnull align 8 %8, i64 noundef %9) ; 2 uses
  %i.do = extractvalue { i64, i64 } %i.dn, 0
  %i.dp = extractvalue { i64, i64 } %i.dn, 1
  br label %bb.d

bb.au:                                            ; preds = %bb.h
  %i.dq = tail call fastcc { i64, i64 } @_ZN12malachite_nz7natural10conversion6digits14general_digits37limbs_from_digits_small_base_basecase17he965bbf573f4d688E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4) ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0
  %i.ds = extractvalue { i64, i64 } %i.dq, 1
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN12malachite_nz7natural10conversion6string11from_string116_$LT$impl$u20$malachite_base..num..conversion..traits..FromStringBase$u20$for$u20$malachite_nz..natural..Natural$GT$16from_string_base17h6ace1dbdc0411f65E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, i8 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2390 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = add i8 %1, -2
  %spec.select.i = icmp ult i8 %i.m, 35
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @66, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.q, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %3, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.e:                                             ; preds = %bb.c
  switch i8 %1, label %bb.f [
    i8 2, label %bb.g
    i8 8, label %bb.h
    i8 16, label %bb.i
    i8 10, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12malachite_nz7natural10conversion6string11from_string15from_binary_str17h7e6deeba4cfadd80E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN12malachite_nz7natural10conversion6string11from_string12from_oct_str17hf239d5ec0b5a4fe9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN12malachite_nz7natural10conversion6string11from_string12from_hex_str17hddad8ffc6781c4e7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.j:                                             ; preds = %bb.e
  %i.t = icmp ult i64 %3, 20
  br i1 %i.t, label %bb.y, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit": ; preds = %bb.j
  %rhsc = load i8, ptr %2, align 1
  %rhsc.fr = freeze i8 %rhsc
  %.not = icmp eq i8 %rhsc.fr, 43                 ; 2 uses
  %i.u = sext i1 %.not to i64
  %.sroa.0.0.idx = zext i1 %.not to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.idx ; 6 uses
  %i.v = add i64 %3, %i.u                         ; 14 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0, i64 %i.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !2392
  %i.y = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, 9) 1) #54, !noalias !2392 ; 8 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %iter.check

iter.check:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check233 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 6 uses
end_hunk_0
