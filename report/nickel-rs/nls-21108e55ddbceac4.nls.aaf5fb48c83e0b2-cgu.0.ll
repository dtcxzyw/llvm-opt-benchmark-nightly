Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$4push17hc6153b30acee00d5E":bb.a
  %indvars.iv57 = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i5 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 8 ; 2 uses
  %.pn.in = shl nuw nsw i64 %indvars.iv57, 1
  %.pn = and i64 %.pn.in, 62
  %.in = lshr i64 %i.as, %.pn
  %i.ca = and i64 %.in, 3                         ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !40557, !noundef !53
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !40557, !noundef !53 ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce                    ; 2 uses
  %.not10.i = icmp ugt i64 %i.ca, %i.cf
  br i1 %.not10.i, label %bb.aa, label %bb.ab, !prof !58

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @715, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716) #75, !noalias !40557, !inline_history !40541
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = icmp ult i64 %i.ca, %i.cf
  br i1 %i.cg, label %tailrecurse.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = trunc nuw i64 %indvars.iv57 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !40556
  %.not54.i = icmp eq i64 %indvars.iv57, 1
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !40564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40564
  store i64 1, ptr %i.b, align 8, !noalias !40564
  store i64 1, ptr %i.cj, align 8, !noalias !40564
  store i64 0, ptr %i.ck, align 8, !noalias !40564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !40556
  %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !40564
  %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !40564
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !40565, !inline_history !40541
  %i.cl = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !40565, !inline_history !40541 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.loopexit.i, label %bb.ad, !prof !56

bb.ad:                                            ; preds = %.lr.ph52.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !40557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40564
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h8d5de60e47bec0f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cl)
          to label %bb.ae unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !40557, !inline_history !40541

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !40564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40564
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv57, 2
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

._crit_edge.i:                                    ; preds = %bb.am, %bb.ae, %bb.ac
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.am ]
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !40564
  store i64 1, ptr %i.c, align 8, !noalias !40564
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cn, align 8, !noalias !40564
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0.0.lcssa.i, ptr %i.co, align 8, !noalias !40564
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !40564
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 1, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !40564
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !40566, !inline_history !40541
  %i.cp = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !40566, !inline_history !40541 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.af, label %bb.ak, !prof !56

bb.af:                                            ; preds = %._crit_edge.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #75
          to label %.noexc23.i unwind label %bb.ag, !noalias !40566, !inline_history !40541

.noexc23.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h0692e7e526392c2cE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #77
          to label %common.resume unwind label %bb.ah, !noalias !40557, !inline_history !40541

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !40557, !inline_history !40541
  unreachable

.peel.next.i:                                     ; preds = %bb.ae, %bb.am
  %.sroa.04.051.i = phi i8 [ %i.ct, %bb.am ], [ 2, %bb.ae ]
  %i.ct = add nuw i8 %.sroa.04.051.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !40564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40564
  store i64 1, ptr %i.b, align 8, !noalias !40564
  store i64 1, ptr %i.cj, align 8, !noalias !40564
  store i64 1, ptr %i.ck, align 8, !noalias !40564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !40564
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !40564
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !40564
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !40565, !inline_history !40541
  %i.cu = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !40565, !inline_history !40541 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.loopexit.i, label %bb.al, !prof !56

.loopexit.i:                                      ; preds = %.peel.next.i, %.lr.ph52.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #75
          to label %.noexc24.i unwind label %bb.ai, !noalias !40565, !inline_history !40541

.noexc24.i:                                       ; preds = %.loopexit.i
  unreachable

bb.ai:                                            ; preds = %.loopexit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h0692e7e526392c2cE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.b) #77
          to label %.body.i unwind label %bb.aj, !noalias !40557, !inline_history !40541

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !40557, !inline_history !40541
  unreachable

bb.ak:                                            ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cp, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !40557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40564
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h8d5de60e47bec0f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.bz, ptr noundef nonnull %i.cp), !noalias !40557, !inline_history !40541
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17h209b71fcef83e20eE.exit"

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ad
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cw, %bb.ai ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$C$4_usize$GT$$GT$17ha50964cded83b3c6E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #77
          to label %common.resume unwind label %bb.an, !noalias !40557, !inline_history !40541

bb.al:                                            ; preds = %.peel.next.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cu, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !40557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40564
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h8d5de60e47bec0f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cu)
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !40557, !inline_history !40541

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !40564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40564
  %exitcond.not.i = icmp eq i8 %i.ct, %i.ch
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !40549

bb.an:                                            ; preds = %.body.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !40557, !inline_history !40541
  unreachable

tailrecurse.i:                                    ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ce
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ca
  %i.db = tail call fastcc noundef align 8 dereferenceable(104) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h5b3d1cc29e2f7056E"(ptr noalias noundef align 8 dereferenceable(8) %i.da), !noalias !40557, !inline_history !40541 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !69, !noalias !40557, !noundef !53
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i5, label %tailrecurse._crit_edge.i

"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17h209b71fcef83e20eE.exit": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h7f8dc03712184500E.exit.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$3set17h0d1c113c3b4aa06bE.exit.i", %bb.ak
  %i.de = load i64, ptr %i.ar, align 8, !noundef !53
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.ar, align 8
  ret void

bb.ao:                                            ; preds = %"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h2654a60483d962e8E.exit"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @737) #75
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$8truncate17h746acca5c961062eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !40578 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !53
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 33
  br i1 %i.d, label %_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %2 = add i64 %1, -1
  %i.e = lshr i64 %2, 5
  %.not12.i.i.i = icmp ult i64 %1, 1025
  br i1 %.not12.i.i.i, label %_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.014.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 1, %.preheader.i.i.i ]
  %.sroa.03.013.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ 32, %.preheader.i.i.i ]
  %i.f = add i32 %.sroa.01.014.i.i.i, 1           ; 3 uses
  %i.g = shl nuw i64 %.sroa.03.013.i.i.i, 5       ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i": ; preds = %.lr.ph.i.i.i
  %i.h = icmp ugt i32 %i.f, 255
  %i.i = trunc nuw i32 %i.f to i8
  br i1 %i.h, label %bb.c, label %_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit, !prof !40579

bb.c:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1330, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @719) #75
  unreachable

_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit: ; preds = %bb.b, %.preheader.i.i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  %.sroa.5.04.i = phi i8 [ %i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i" ], [ 1, %.preheader.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !noundef !53 ; 2 uses
  %i.l = icmp ult i8 %.sroa.5.04.i, %i.k
  %i.m = load ptr, ptr %0, align 8
  %.not10 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit
  br i1 %.not10, label %bb.f, label %.lr.ph, !prof !58

bb.e:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17hae720e8fc8326a3bE.exit
  br i1 %.not10, label %bb.v, label %bb.k, !prof !40580

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #75
  unreachable

._crit_edge:                                      ; preds = %bb.aa
  %i.n = load ptr, ptr %i.bv, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %.val.i = load i64, ptr %i.n, align 8, !noundef !53 ; 2 uses
  %i.o = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.p, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hac8f3ddaa1bd318bE.exit, !prof !58

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hac8f3ddaa1bd318bE.exit: ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.bv, align 8, !nonnull !53, !noundef !53 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40581)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !40581, !noundef !53 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hac8f3ddaa1bd318bE.exit
  %i.u = load i64, ptr %i.s, align 8, !noalias !40582, !noundef !53
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !40582
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %.thread unwind label %bb.j

.lr.ph:                                           ; preds = %bb.d, %bb.aa
  %.sroa.0.032 = phi ptr [ %i.bv, %bb.aa ], [ %0, %bb.d ]
  %.sroa.05.031 = phi i8 [ %i.x, %bb.aa ], [ %.sroa.5.04.i, %bb.d ]
  %i.x = add nuw i8 %.sroa.05.031, 1              ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.032, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !69, !noundef !53
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.x, label %bb.y, !prof !55

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %0, align 8
  resume { ptr, i32 } %i.ac

.thread:                                          ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hac8f3ddaa1bd318bE.exit, %bb.h
  store ptr %i.r, ptr %0, align 8
  store i8 %.sroa.5.04.i, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e
  %i.ad = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef align 8 dereferenceable(8) %0) ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !69, !alias.scope !40583, !noundef !53
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.k
  %i.ag = load i8, ptr %i.j, align 8, !noundef !53
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.i
  %.tr824.i = phi i64 [ %i.bc, %tailrecurse.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.tr723.i = phi i8 [ %i.bn, %tailrecurse.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 3 uses
  %.tr22.i = phi ptr [ %i.bm, %tailrecurse.i ], [ %i.ad, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 8 ; 3 uses
  %i.ai = icmp eq i8 %.tr723.i, 0
  br i1 %i.ai, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = zext i8 %.tr723.i to i32
  br label %.preheader22.i.i

.preheader22.i.i:                                 ; preds = %bb.l, %bb.n
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.1.i.i, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.sroa.09.0.i.i = phi i64 [ %i.ao, %bb.n ], [ 32, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %i.an, %bb.n ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ak = and i32 %.sroa.0.0.i.i, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader22.i.i
  %i.al = mul i64 %.sroa.09.0.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.am = icmp eq i32 %.sroa.0.0.i.i, 1
  br i1 %i.am, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader22.i.i
  %.sroa.016.1.i.i = phi i64 [ %i.al, %bb.m ], [ %.sroa.016.0.i.i, %.preheader22.i.i ]
  %i.an = lshr i32 %.sroa.0.0.i.i, 1
  %i.ao = mul i64 %.sroa.09.0.i.i, %.sroa.09.0.i.i
  br label %.preheader22.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i": ; preds = %bb.m
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %bb.r, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.k
  %.tr.lcssa.i = phi ptr [ %i.ad, %bb.k ], [ %i.bm, %tailrecurse.i ] ; 3 uses
  %.tr8.lcssa.i = phi i64 [ %1, %bb.k ], [ %i.bc, %tailrecurse.i ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40584)
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 272 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !40584, !noundef !53
  %i.at = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 264
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !40584, !noundef !53 ; 3 uses
  %i.av = sub i64 %i.as, %i.au                    ; 5 uses
  %.not.i4.i = icmp eq i64 %.tr8.lcssa.i, %i.av
  br i1 %.not.i4.i, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17haff675ded9624097E.exit", label %bb.o

bb.o:                                             ; preds = %tailrecurse._crit_edge.i
  %i.aw = icmp ugt i64 %.tr8.lcssa.i, %i.av
  br i1 %i.aw, label %bb.q, label %bb.p, !prof !58

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.ay = sub nuw i64 %i.av, %.tr8.lcssa.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.tr8.lcssa.i
  tail call fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hd9c0b5187dd0a6dfE"(ptr noalias noundef nonnull align 8 %i.az, i64 noundef %i.ay), !inline_history !40577
  %i.ba = add i64 %i.au, %.tr8.lcssa.i
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !40584
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17haff675ded9624097E.exit"

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.tr8.lcssa.i, i64 noundef %i.av, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @680) #75, !noalias !40584, !inline_history !40577
  unreachable

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", %.lr.ph.i
  %.sroa.08.0.i6.i = phi i64 [ %i.al, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i" ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.bb = udiv i64 %.tr824.i, %.sroa.08.0.i6.i    ; 5 uses
  %i.bc = urem i64 %.tr824.i, %.sroa.08.0.i6.i    ; 3 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i"
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #75, !inline_history !40577
  unreachable

bb.s:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17haa931db3587ef1e4E"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bb), !inline_history !40577
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17haff675ded9624097E.exit"

bb.t:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  %i.bd = add i64 %i.bb, 1
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17haa931db3587ef1e4E"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bd), !inline_history !40577
  %i.be = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 264
  %i.bf = load i64, ptr %i.be, align 8, !noundef !53 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 272
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !53
  %i.bi = sub i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = icmp ult i64 %i.bb, %i.bi
  br i1 %i.bj, label %tailrecurse.i, label %bb.u

tailrecurse.i:                                    ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bf
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bb
  %i.bm = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef align 8 dereferenceable(8) %i.bl), !inline_history !40577 ; 3 uses
  %i.bn = add i8 %.tr723.i, -1
  %i.bo = load i64, ptr %i.bm, align 8, !range !69, !noundef !53
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i, label %tailrecurse._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN3nls6server6Server14handle_request17h6f88915bf448a11bE:bb.a
  br i1 %.not.i.i168.i, label %bb.aco, label %bb.acp

bb.aco:                                           ; preds = %.noexc185.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !58901
  %i.bgi = getelementptr i8, ptr %i.bgh, i64 8
  %.val.i.i172.i = load ptr, ptr %i.bgi, align 8, !noalias !58903, !nonnull !53, !noundef !53 ; 2 uses
  %i.bgj = getelementptr i8, ptr %i.bgh, i64 16
  %.val13.i.i173.i = load i64, ptr %i.bgj, align 8, !noalias !58903, !noundef !53 ; 4 uses
  switch i64 %.val13.i.i173.i, label %.lr.ph.i.i.i.i.i179.i [
    i64 0, label %.thread370.i
    i64 1, label %._crit_edge.i.i.i.i.i174.i
  ]

._crit_edge.i.i.i.i.i174.i:                       ; preds = %.lr.ph.i.i.i.i.i179.i, %bb.aco
  %.sroa.05.0.lcssa.i.i.i.i.i175.i = phi i64 [ 0, %bb.aco ], [ %i.bgy, %.lr.ph.i.i.i.i.i179.i ] ; 2 uses
  %i.bgk = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i175.i, %.val13.i.i173.i
  call void @llvm.assume(i1 %i.bgk)
  %i.bgl = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i172.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i175.i ; 3 uses
  %i.bgm = getelementptr i8, ptr %i.bgl, i64 8
  %.val20.i.i.i.i.i176.i = load i32, ptr %i.bgm, align 8, !alias.scope !58904, !noalias !58903
  %i.bgn = getelementptr i8, ptr %i.bgl, i64 12
  %.val21.i.i.i.i.i177.i = load i32, ptr %i.bgn, align 4, !alias.scope !58904, !noalias !58903, !noundef !53
  %.not.i.i.i.i.i.i178.i = icmp ugt i32 %.val21.i.i.i.i.i177.i, %i.bfd
  %i.bgo = icmp ule i32 %.val20.i.i.i.i.i176.i, %i.bfd
  %i.bgp = select i1 %.not.i.i.i.i.i.i178.i, i1 %i.bgo, i1 false
  br i1 %i.bgp, label %bb.acq, label %.thread370.i

.lr.ph.i.i.i.i.i179.i:                            ; preds = %bb.aco, %.lr.ph.i.i.i.i.i179.i
  %.sroa.01.029.i.i.i.i.i180.i = phi i64 [ %i.bgz, %.lr.ph.i.i.i.i.i179.i ], [ %.val13.i.i173.i, %bb.aco ] ; 2 uses
  %.sroa.05.028.i.i.i.i.i181.i = phi i64 [ %i.bgy, %.lr.ph.i.i.i.i.i179.i ], [ 0, %bb.aco ] ; 2 uses
  %i.bgq = lshr i64 %.sroa.01.029.i.i.i.i.i180.i, 1 ; 2 uses
  %i.bgr = add i64 %i.bgq, %.sroa.05.028.i.i.i.i.i181.i ; 3 uses
  %i.bgs = icmp ult i64 %i.bgr, %.val13.i.i173.i
  call void @llvm.assume(i1 %i.bgs)
  %i.bgt = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i172.i, i64 %i.bgr ; 2 uses
  %i.bgu = getelementptr i8, ptr %i.bgt, i64 8
  %.val23.i.i.i.i.i182.i = load i32, ptr %i.bgu, align 8, !alias.scope !58904, !noalias !58903
  %i.bgv = getelementptr i8, ptr %i.bgt, i64 12
  %.val24.i.i.i.i.i183.i = load i32, ptr %i.bgv, align 4, !alias.scope !58904, !noalias !58903, !noundef !53
  %.not.i25.i.i.i.i.i184.i = icmp ugt i32 %.val24.i.i.i.i.i183.i, %i.bfd
  %i.bgw = icmp ugt i32 %.val23.i.i.i.i.i182.i, %i.bfd
  %i.bgx = select i1 %.not.i25.i.i.i.i.i184.i, i1 %i.bgw, i1 false
  %i.bgy = select i1 %i.bgx, i64 %.sroa.05.028.i.i.i.i.i181.i, i64 %i.bgr, !unpredictable !53 ; 2 uses
  %i.bgz = sub nuw i64 %.sroa.01.029.i.i.i.i.i180.i, %i.bgq ; 2 uses
  %i.bha = icmp ugt i64 %i.bgz, 1
  br i1 %i.bha, label %.lr.ph.i.i.i.i.i179.i, label %._crit_edge.i.i.i.i.i174.i

bb.acp:                                           ; preds = %.noexc185.i
  %.sroa.69.0..sroa_idx.i.i169.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.383.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69.0..sroa_idx.i.i169.i, i64 48, i1 false), !noalias !58900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !58901
  store i64 %i.bgf, ptr %i.jj, align 8, !alias.scope !58890
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.bgh, ptr %.sroa.282.0..sroa_idx.i, align 8, !alias.scope !58890
  br label %bb.agd

.thread370.i:                                     ; preds = %._crit_edge.i.i.i.i.i174.i, %bb.aco
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !58892
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.i)
  br label %bb.act

bb.acq:                                           ; preds = %._crit_edge.i.i.i.i.i174.i
  %i.bhb = load ptr, ptr %i.bgl, align 8, !noalias !58903, !nonnull !53, !align !59, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !58892
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !58892
  %.not139.i = icmp eq i32 %.sroa.6.0.i.i.i589, 3
  %..i624 = select i1 %.not139.i, ptr null, ptr %i.bw
  invoke fastcc void @_ZN3nls5world5World8get_defs17h186704ee848114feE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.bex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bhb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %..i624)
          to label %bb.acr unwind label %.thread.i569, !noalias !58893

bb.acr:                                           ; preds = %bb.acq
  %.sroa.033.0.copyload.i = load i64, ptr %i.bl, align 8, !noalias !58892 ; 3 uses
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.0..sroa_idx.i, i64 16, i1 false), !noalias !58892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !58892
  %.not140.i = icmp eq i64 %.sroa.033.0.copyload.i, -9223372036854775808
  br i1 %.not140.i, label %bb.act, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.485.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.i, i64 16, i1 false), !noalias !58892
  store i64 %.sroa.033.0.copyload.i, ptr %i.bv, align 8, !noalias !58892
  br label %bb.acu

bb.act:                                           ; preds = %bb.acr, %.thread370.i
  store i64 0, ptr %i.bv, align 8, !noalias !58892
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bhc, align 8, !noalias !58892
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %i.bhd, align 8, !noalias !58892
  br label %bb.acu

bb.acu:                                           ; preds = %bb.act, %bb.acs
  %i.bhe = phi i64 [ 0, %bb.act ], [ %.sroa.033.0.copyload.i, %bb.acs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.i)
  %i.bhf = and i32 %.sroa.6.0.i.i.i589, -2
  %switch.i595 = icmp eq i32 %i.bhf, 2
  br i1 %switch.i595, label %bb.acv, label %bb.acx

bb.acv:                                           ; preds = %bb.acx, %bb.acu
  %.sroa.037.0.i = phi i32 [ 1, %bb.acx ], [ 0, %bb.acu ] ; 2 uses
  %i.bhg = zext nneg i32 %.sroa.037.0.i to i64    ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.bhi = load i64, ptr %i.bhh, align 8, !alias.scope !58905, !noalias !58892, !noundef !53 ; 3 uses
  %i.bhj = sub i64 %i.bhe, %i.bhi
  %i.bhk = icmp ult i64 %i.bhj, %i.bhg
  br i1 %i.bhk, label %bb.acw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i", !prof !58

bb.acw:                                           ; preds = %bb.acv
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.bhi, i64 noundef %i.bhg, i64 noundef 4, i64 noundef 12)
          to label %.noexc186.i unwind label %bb.acz, !noalias !58906

.noexc186.i:                                      ; preds = %bb.acw
  %.pre.i.i623 = load i64, ptr %i.bhh, align 8, !alias.scope !58907, !noalias !58892
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i": ; preds = %.noexc186.i, %bb.acv
  %i.bhl = phi i64 [ %i.bhi, %bb.acv ], [ %.pre.i.i623, %.noexc186.i ] ; 3 uses
  %i.bhm = trunc nuw i32 %.sroa.037.0.i to i1
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bho = load ptr, ptr %i.bhn, align 8, !noalias !58892 ; 5 uses
  br i1 %i.bhm, label %.lr.ph.split.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i._crit_edge.i"

.lr.ph.split.i.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i"
  %i.bhp = getelementptr inbounds nuw [12 x i8], ptr %i.bho, i64 %i.bhl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bhp, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.638.i, i64 12, i1 false), !noalias !58893
  %i.bhq = add i64 %i.bhl, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i._crit_edge.i"

bb.acx:                                           ; preds = %bb.acu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.638.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false), !noalias !58892
  br label %bb.acv

.body.i596:                                       ; preds = %bb.agc, %bb.agb, %.thread401.i, %bb.aen, %.body.i.i599, %bb.aef, %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i", %bb.ads, %"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E.exit.sin", %.body.i.i.i.i.i, %bb.acz
  %.sroa.047.2.i = phi i1 [ true, %.body.i.i.i.i.i ], [ true, %bb.agc ], [ true, %bb.acz ], [ true, %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i" ], [ true, %bb.ads ], [ true, %"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E.exit.sin" ], [ true, %bb.agb ], [ true, %.thread401.i ], [ false, %bb.aef ], [ false, %bb.aen ], [ false, %.body.i.i599 ]
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bjo, %.body.i.i.i.i.i ], [ %i.bqy, %bb.agc ], [ %i.bhu, %bb.acz ], [ %i.bjr, %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i" ], [ %i.bjr, %bb.ads ], [ %.pn3.i.ph.i.i.i.i, %"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E.exit.sin" ], [ %i.bqy, %bb.agb ], [ %.pn.i597, %.thread401.i ], [ %i.blu, %bb.aef ], [ %eh.lpad-body.i.i600, %bb.aen ], [ %eh.lpad-body.i.i600, %.body.i.i599 ] ; 2 uses
  %.val158.i = load i64, ptr %i.bv, align 8, !noalias !58892 ; 2 uses
  %i.bhr = icmp eq i64 %.val158.i, 0
  br i1 %i.bhr, label %bb.acf, label %bb.acy

bb.acy:                                           ; preds = %.body.i596
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.val159.i = load ptr, ptr %i.bhs, align 8, !noalias !58892, !nonnull !53, !noundef !53
  %i.bht = mul nuw i64 %.val158.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val159.i, i64 noundef %i.bht, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58893
  br label %bb.acf

bb.acz:                                           ; preds = %bb.acw
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i596

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i._crit_edge.i": ; preds = %.lr.ph.split.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i"
  %.val3.i.i.i.i = phi i64 [ %i.bhq, %.lr.ph.split.i.i.i.i ], [ %i.bhl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i" ] ; 2 uses
  store i64 %.val3.i.i.i.i, ptr %i.bhh, align 8, !alias.scope !58907, !noalias !58908
  %i.bhv = getelementptr inbounds nuw [12 x i8], ptr %i.bho, i64 %.val3.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !58909
  store i64 1, ptr %i.bi, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.4255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  store ptr null, ptr %.sroa.4255.0..sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 3 uses
  store ptr null, ptr %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.4255.sroa.7.0..sroa.4255.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr %i.bho, ptr %.sroa.4255.sroa.7.0..sroa.4255.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.4255.sroa.8.0..sroa.4255.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store ptr %i.bhv, ptr %.sroa.4255.sroa.8.0..sroa.4255.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.4255.sroa.9.0..sroa.4255.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  store ptr %i.bex, ptr %.sroa.4255.sroa.9.0..sroa.4255.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store i64 3, ptr %.sroa.5256.0..sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.0.sroa.5.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 264
  store i64 3, ptr %.sroa.5256.sroa.0.sroa.5.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.0.sroa.7.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 432
  store ptr %i.bho, ptr %.sroa.5256.sroa.0.sroa.7.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.0.sroa.8.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 440
  store ptr %i.bhv, ptr %.sroa.5256.sroa.0.sroa.8.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.0.sroa.9.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  store ptr %i.bfe, ptr %.sroa.5256.sroa.0.sroa.9.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.4.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 456
  store ptr %i.bho, ptr %.sroa.5256.sroa.4.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  %.sroa.5256.sroa.5.0..sroa.5256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 464
  store ptr %i.bhv, ptr %.sroa.5256.sroa.5.0..sroa.5256.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58910, !noalias !58911
  call void @llvm.experimental.noalias.scope.decl(metadata !58912)
  call void @llvm.experimental.noalias.scope.decl(metadata !58913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !58914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !58915
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he5dfe84852c02825E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(472) %i.bi)
          to label %bb.ada unwind label %bb.ads, !noalias !58916

bb.ada:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i._crit_edge.i"
  %i.bhw = load i32, ptr %i.bg, align 4, !range !89, !noalias !58915, !noundef !53
  %i.bhx = trunc nuw i32 %i.bhw to i1
  br i1 %i.bhx, label %bb.adb, label %bb.adc

bb.adb:                                           ; preds = %bb.ada
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !58915
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h8b491d7733d8d7c7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bi), !noalias !58916
  %i.bhz = load i64, ptr %i.bf, align 8, !noalias !58915, !noundef !53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !58915
  %i.bia = call i64 @llvm.uadd.sat.i64(i64 %i.bhz, i64 1)
  %.sroa.0.0.i.i.i.i.i.i619 = call noundef i64 @llvm.umax.i64(i64 %i.bia, i64 4) ; 3 uses
  %i.bib = mul i64 %.sroa.0.0.i.i.i.i.i.i619, 12  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bhz, 768614336404564649
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.adh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !78

bb.adc:                                           ; preds = %bb.ada
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !58915
  call void @llvm.experimental.noalias.scope.decl(metadata !58917)
  call void @llvm.experimental.noalias.scope.decl(metadata !58918)
  %i.bic = load i64, ptr %i.bi, align 8, !range !69, !alias.scope !58919, !noalias !58909, !noundef !53
  %i.bid = icmp eq i64 %i.bic, 0
  br i1 %i.bid, label %.thread374.i, label %bb.add

bb.add:                                           ; preds = %bb.adc
  call void @llvm.experimental.noalias.scope.decl(metadata !58920)
  call void @llvm.experimental.noalias.scope.decl(metadata !58921)
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4255.0..sroa_idx.i, align 8, !alias.scope !58922, !noalias !58909, !noundef !53 ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bie, align 8, !alias.scope !58922, !noalias !58909 ; 2 uses
  %i.bif = icmp eq ptr %.val4.i.i.i.i.i.i.i.i.i, null
  %i.big = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.bif, i1 true, i1 %i.big
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i", label %bb.ade

bb.ade:                                           ; preds = %bb.add
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i.i.i.i) ]
  %i.bih = mul nuw i64 %.val5.i.i.i.i.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %i.bih, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58923
  br label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.ade, %bb.add
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !58922, !noalias !58909, !noundef !53 ; 3 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bii, align 8, !alias.scope !58922, !noalias !58909 ; 2 uses
  %i.bij = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  %i.bik = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i8.i.i.i.i.i.i.i.i.i = select i1 %i.bij, i1 true, i1 %i.bik
  br i1 %or.cond.i8.i.i.i.i.i.i.i.i.i, label %.thread374.i, label %bb.adf

bb.adf:                                           ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  %i.bil = mul nuw i64 %.val1.i.i.i.i.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bil, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58924
  br label %.thread374.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.adb
  %i.bim = icmp eq i64 %i.bib, 0
  br i1 %i.bim, label %bb.adi, label %bb.adg

bb.adg:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !58925
  %i.bin = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bib, i64 noundef range(i64 1, 9) 4) #66, !noalias !58925 ; 2 uses
  %i.bio = icmp eq ptr %i.bin, null
  br i1 %i.bio, label %bb.adh, label %bb.adi

bb.adh:                                           ; preds = %bb.adg, %bb.adb
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.adg ], [ 0, %bb.adb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.bib, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ads, !noalias !58926

.noexc.i.i.i.i.i:                                 ; preds = %bb.adh
  unreachable

bb.adi:                                           ; preds = %bb.adg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.bin, %bb.adg ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i619, %bb.adg ] ; 2 uses
  %i.bip = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i619, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bip)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.bhy, i64 12, i1 false), !noalias !58926
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !58915
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !58915
  %.sroa.6.0..sroa_idx.i.i.i.i.i620 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i620, align 8, !noalias !58915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !58915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.be, ptr noundef nonnull align 8 dereferenceable(472) %i.bi, i64 472, i1 false), !noalias !58927
  call void @llvm.experimental.noalias.scope.decl(metadata !58928)
  call void @llvm.experimental.noalias.scope.decl(metadata !58929)
  call void @llvm.experimental.noalias.scope.decl(metadata !58930)
  call void @llvm.experimental.noalias.scope.decl(metadata !58931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !58932
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  br label %bb.adj

bb.adj:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i", %bb.adi
  %i.bir = phi ptr [ %i.bjl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.adi ]
  %.sroa.10250.0.copyload252.i = phi i64 [ %i.bjn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.adi ] ; 14 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he5dfe84852c02825E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(472) %i.be)
          to label %bb.adk unwind label %.body.i.i.i.i.i, !noalias !58933

bb.adk:                                           ; preds = %bb.adj
  %i.bis = load i32, ptr %i.bd, align 4, !range !89, !noalias !58934, !noundef !53
  %i.bit = trunc nuw i32 %i.bis to i1
  br i1 %i.bit, label %bb.adl, label %bb.adm

bb.adl:                                           ; preds = %bb.adk
  %i.biu = icmp samesign ult i64 %.sroa.10250.0.copyload252.i, 768614336404564651
  call void @llvm.assume(i1 %i.biu)
  %i.biv = load i64, ptr %i.bh, align 8, !range !83, !alias.scope !58935, !noalias !58915, !noundef !53
  %i.biw = icmp eq i64 %.sroa.10250.0.copyload252.i, %i.biv
  br i1 %i.biw, label %bb.adq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

bb.adm:                                           ; preds = %bb.adk
  call void @llvm.experimental.noalias.scope.decl(metadata !58936)
  call void @llvm.experimental.noalias.scope.decl(metadata !58937)
  %i.bix = load i64, ptr %i.be, align 8, !range !69, !alias.scope !58938, !noalias !58915, !noundef !53
  %i.biy = icmp eq i64 %i.bix, 0
  br i1 %i.biy, label %bb.adw, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.biz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !58939)
  call void @llvm.experimental.noalias.scope.decl(metadata !58940)
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.biz, align 8, !alias.scope !58941, !noalias !58915, !noundef !53 ; 3 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bja, align 8, !alias.scope !58941, !noalias !58915 ; 2 uses
  %i.bjb = icmp eq ptr %.val4.i.i.i.i.i.i.i.i.i.i.i, null
  %i.bjc = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bjb, i1 true, i1 %i.bjc
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bjd = mul nuw i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bjd, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58942
  br label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ado, %bb.adn
  %i.bje = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bje, align 8, !alias.scope !58941, !noalias !58915, !noundef !53 ; 3 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %.val1.i.i.i.i.i.i.i.i.i.i.i621 = load i64, ptr %i.bjf, align 8, !alias.scope !58941, !noalias !58915 ; 2 uses
  %i.bjg = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  %i.bjh = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i621, 0
  %or.cond.i8.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bjg, i1 true, i1 %i.bjh
  br i1 %or.cond.i8.i.i.i.i.i.i.i.i.i.i.i, label %bb.adw, label %bb.adp

bb.adp:                                           ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bji = mul nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.i621, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bji, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58943
  br label %bb.adw

bb.adq:                                           ; preds = %bb.adl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !58934
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h8b491d7733d8d7c7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.be), !noalias !58933
  %i.bjj = load i64, ptr %i.bc, align 8, !noalias !58934, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !58934
  %i.bjk = call i64 @llvm.uadd.sat.i64(i64 %i.bjj, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.sroa.10250.0.copyload252.i, i64 noundef %i.bjk, i64 noundef 4, i64 noundef 12)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %.body.i.i.i.i.i, !noalias !58944

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.adq
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !58935, !noalias !58915
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i", %bb.adl
  %i.bjl = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bir, %bb.adl ] ; 2 uses
  %i.bjm = getelementptr inbounds nuw [12 x i8], ptr %i.bjl, i64 %.sroa.10250.0.copyload252.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bjm, ptr noundef nonnull align 4 dereferenceable(12) %i.biq, i64 12, i1 false), !noalias !58945
  %i.bjn = add nuw nsw i64 %.sroa.10250.0.copyload252.i, 1 ; 2 uses
  store i64 %i.bjn, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i620, align 8, !alias.scope !58935, !noalias !58915
  br label %bb.adj

.body.i.i.i.i.i:                                  ; preds = %bb.adq, %bb.adj
  %i.bjo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E"(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.be) #77, !noalias !58933
  %.val.i.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !58915 ; 2 uses
  %i.bjp = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bjp, label %.body.i596, label %bb.adr

bb.adr:                                           ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !58915, !nonnull !53, !noundef !53
  br label %"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E.exit.sin"

"_ZN4core3ptr980drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..slice..iter..Iter$LT$nls..identifier..LocIdent$GT$$GT$$GT$$GT$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$$C$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..position..RawSpan$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$C$nls..requests..rename..handle_rename..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h656aebdad9ab13d3E.exit.sin": ; preds = %bb.adv, %bb.adr
  %.val1.i.i.i.i.sink.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i.i.i.i, %bb.adv ], [ %.val.i.i.i.i.i, %bb.adr ]
  %.val.i.i.i.i.sink.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.adv ], [ %.val5.i.i.i.i.i, %bb.adr ]
  %.pn3.i.ph.i.i.i.i = phi { ptr, i32 } [ %i.bjr, %bb.adv ], [ %i.bjo, %bb.adr ]
  %i.bjq = mul nuw i64 %.val1.i.i.i.i.sink.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.sink.i.i.i.i, i64 noundef %i.bjq, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !58946
  br label %.body.i596

bb.ads:                                           ; preds = %bb.adh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i._crit_edge.i"
  %i.bjr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58947)
  call void @llvm.experimental.noalias.scope.decl(metadata !58948), !noalias !58949
  %i.bjs = load i64, ptr %i.bi, align 8, !range !69, !alias.scope !58950, !noalias !58951, !noundef !53
  %i.bjt = icmp eq i64 %i.bjs, 0
  br i1 %i.bjt, label %.body.i596, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  call void @llvm.experimental.noalias.scope.decl(metadata !58952), !noalias !58949
  call void @llvm.experimental.noalias.scope.decl(metadata !58953), !noalias !58949
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4255.0..sroa_idx.i, align 8, !alias.scope !58954, !noalias !58951, !noundef !53 ; 3 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.bju, align 8, !alias.scope !58954, !noalias !58951 ; 2 uses
  %i.bjv = icmp eq ptr %.val4.i.i.i.i.i.i.i.i, null
  %i.bjw = icmp eq i64 %.val5.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.bjv, i1 true, i1 %i.bjw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$$GT$17h4a85c5e6766829d8E.exit.i.i.i.i.i.i.i.i", label %bb.adu
end_hunk_1
begin_hunk_2_@_ZN3nls8requests10completion14env_completion17h1ef48831f01bdb05E:bb.a

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.i.i.i.i": ; preds = %bb.k
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %i.cc = load i32, ptr %i.cb, align 4, !alias.scope !63991, !noalias !63992, !noundef !53
  %i.cd = icmp eq i32 %i.bl, %i.cc
  br i1 %i.cd, label %bb.n, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.thread.i.i.i.i", !prof !116

._crit_edge.i.i.i.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.thread.i.i.i.i", %bb.j
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.l, label %select.unfold, !prof !58

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.i.i.i.i", %bb.k, %.lr.ph.i.i.i.i
  %i.ch = add i16 %.sroa.06.0.i34.i.i.i.i, -1
  %i.ci = and i16 %i.ch, %.sroa.06.0.i34.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cj = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ck = add i64 %.sroa.01.0.i.i.i.i.i, %i.cj
  br label %bb.j

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h08ec72b2c499620cE", ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !63993
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 3, ptr %i.cl, align 8, !noalias !63993
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @1115, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !63993
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 25, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !63993
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr @1113, ptr %i.cm, align 8, !noalias !63993
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !63993
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr %i.j, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !63993
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !63993
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !63993
  store i64 0, ptr %i.h, align 8, !noalias !63993
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @1115, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !63993
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 25, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !63993
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.cn, align 8, !noalias !63993
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @1114, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !63993
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 34, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !63993
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 1, ptr %i.co, align 8, !noalias !63993
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  store i32 293, ptr %i.cp, align 4, !noalias !63993
  call void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.h), !noalias !63993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !63993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.b

bb.n:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h348272f36a884aadE.exit.i.i.i.i"
  %i.cq = getelementptr inbounds i8, ptr %i.bu, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63970
  %.val = load ptr, ptr %i.cq, align 8, !alias.scope !63994, !noalias !63995, !nonnull !53, !noundef !53
  %i.cr = getelementptr i8, ptr %i.bu, i64 -8
  %.val6 = load ptr, ptr %i.cr, align 8, !alias.scope !63994, !noalias !63995, !noundef !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !63996
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !63997
  %i.cs = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #66, !noalias !63997 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75, !noalias !63996
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i": ; preds = %bb.n
  %.not4.i.i.i.i.i.i = icmp eq ptr %.val6, null
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %i.cu, ptr %i.cs, align 8, !noalias !63996
  store i64 4, ptr %i.g, align 8, !noalias !63996
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !63996
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !63996
  call void @llvm.experimental.noalias.scope.decl(metadata !63998)
  call void @llvm.experimental.noalias.scope.decl(metadata !63999)
  br i1 %.not4.i.i.i.i.i.i, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$10iter_elems17h8e81befa9cd4b47aE.exit", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i", %bb.p
  %i.cv = phi ptr [ %i.de, %bb.p ], [ %i.cs, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ]
  %i.cw = phi i64 [ %i.df, %bb.p ], [ 4, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ] ; 3 uses
  %i.cx = phi i64 [ %i.dh, %bb.p ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ] ; 4 uses
  %.pn.i.i.i.i.i = phi ptr [ %i.db, %bb.p ], [ %.val6, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.0.06.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 16
  %i.cy = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !noalias !64000, !nonnull !53, !noundef !53
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !noalias !64000, !noundef !53 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.db, null
  %i.dc = icmp samesign ult i64 %i.cx, 1152921504606846976
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp eq i64 %i.cx, %i.cw
  br i1 %i.dd, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5369753f2ecdee66E.exit.i.i.i.i.i.i.i", label %bb.p

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5369753f2ecdee66E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cw, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i.i.i.i unwind label %bb.q, !noalias !64001

.noexc.i.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5369753f2ecdee66E.exit.i.i.i.i.i.i.i"
  %.pre7.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !83, !alias.scope !64002, !noalias !63996
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !64002, !noalias !63996
  br label %bb.p

bb.p:                                             ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.de = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc.i.i.i.i.i ] ; 2 uses
  %i.df = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre7.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cx
  store ptr %i.cz, ptr %i.dg, align 8, !noalias !64003
  %i.dh = add nuw nsw i64 %i.cx, 1                ; 3 uses
  store i64 %i.dh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !64002, !noalias !63996
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5369753f2ecdee66E.exit.i.i.i.i.i.i.i"
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !63996 ; 2 uses
  %i.dj = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dj, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val7.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !63996, !nonnull !53, !noundef !53
  %i.dk = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !63996
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i.i.i, %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i", %bb.ao, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.di, %bb.q ], [ %i.di, %bb.r ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i ], [ %.pn.ph.i.i.i.i, %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i: ; preds = %bb.p
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.g, align 8, !noalias !64004
  %.sroa.2.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !64004
  br label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$10iter_elems17h8e81befa9cd4b47aE.exit"

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$10iter_elems17h8e81befa9cd4b47aE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i
  %.sroa.3.0.copyload.i = phi i64 [ %i.dh, %_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.pre.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i ], [ %i.cs, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.pre.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h60e22a8192e96736E.exit.loopexit.i ], [ 4, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63996
  %i.dl = icmp samesign ult i64 %.sroa.3.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload.i, i64 %.sroa.3.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64005
  store ptr %.sroa.2.0.copyload.i, ptr %i.f, align 8, !alias.scope !64006, !noalias !64007
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.431.0..sroa_idx, align 8, !alias.scope !64006, !noalias !64007
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !64006, !noalias !64007
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dm, ptr %.sroa.633.0..sroa_idx, align 8, !alias.scope !64006, !noalias !64007
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.734.0..sroa_idx, align 8, !alias.scope !64006, !noalias !64007
  %.sroa.936.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  store ptr null, ptr %.sroa.936.0..sroa_idx, align 8, !alias.scope !64006, !noalias !64007
  call void @llvm.experimental.noalias.scope.decl(metadata !64008)
  call void @llvm.experimental.noalias.scope.decl(metadata !64009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64011
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha928e51eaca7fbd7E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f)
          to label %bb.t unwind label %bb.s, !noalias !64012

bb.s:                                             ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$10iter_elems17h8e81befa9cd4b47aE.exit"
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i"

bb.t:                                             ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$10iter_elems17h8e81befa9cd4b47aE.exit"
  %i.do = load i64, ptr %i.d, align 8, !range !79, !noalias !64011, !noundef !53 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.do, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %.sroa.734.0..sroa_idx, align 8, !alias.scope !64013, !noalias !64005, !noundef !53
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !64013, !noalias !64005
  %i.dr = load ptr, ptr %.sroa.936.0..sroa_idx, align 8, !alias.scope !64013, !noalias !64005, !noundef !53
  %.not51.i.i.i.i.i.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.val.i59.i.i.i.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !64013, !noalias !64005
  %.sroa.8.0.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i, i64 0, i64 %.val.i59.i.i.i.i.i.i.i ; 2 uses
  %i.dt = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i)
  %i.du = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i, i64 %i.dt ; 2 uses
  %i.dv = call i64 @llvm.uadd.sat.i64(i64 %i.du, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dv, i64 4) ; 3 uses
  %i.dw = shl i64 %.sroa.0.0.i.i.i.i.i, 6         ; 4 uses
  %i.dx = icmp ugt i64 %i.du, 288230376151711742
  %i.dy = icmp ugt i64 %i.dw, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.dx, %i.dy
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !78

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64011
  %.val6.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !64014, !noalias !64005, !noundef !53 ; 3 uses
  %.val7.i.i.i.i = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !64014, !noalias !64005 ; 2 uses
  %i.dz = icmp eq ptr %.val6.i.i.i.i, null
  %i.ea = icmp eq i64 %.val7.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i) ]
  %i.eb = shl nuw i64 %.val7.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !64015
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit

bb.x:                                             ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64016)
  call void @llvm.experimental.noalias.scope.decl(metadata !64017), !noalias !64018
  call void @llvm.experimental.noalias.scope.decl(metadata !64019), !noalias !64018
  %i.ed = icmp eq i64 %i.do, 0
  br i1 %i.ed, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !64020, !noalias !64011, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !64021
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i": ; preds = %bb.y, %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !64022), !noalias !64018
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i.i.i7 = load ptr, ptr %i.eg, align 8, !alias.scope !64023, !noalias !64011, !nonnull !53, !noundef !53 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !64023, !noalias !64011, !noundef !53 ; 2 uses
  %i.ei = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ei, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i.i8:                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i", %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i.i.i = phi i64 [ %i.ek, %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i" ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [200 x i8], ptr %.val.i.i.i.i.i7, i64 %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %i.ek = add nuw i64 %.sroa.0.08.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.el = load i64, ptr %i.ej, align 8, !range !60, !alias.scope !64024, !noalias !64025, !noundef !53
  %i.em = icmp eq i64 %i.el, 19
  br i1 %i.em, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i8
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(200) %i.ej), !noalias !64025
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i": ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i8
  %i.en = icmp eq i64 %i.ek, %.val1.i.i.i.i.i
  br i1 %i.en, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.ef, align 8, !range !83, !alias.scope !64023, !noalias !64011, !noundef !53 ; 2 uses
  %i.eo = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.eo, label %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i"
  %i.ep = mul nuw i64 %.val2.i.i.i.i.i, 200
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i7, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !64025
  br label %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.u
  %3 = icmp eq i64 %i.dw, 0
  br i1 %3, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !64026
  %i.eq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dw, i64 noundef range(i64 1, 9) 8) #66, !noalias !64026 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, %bb.u
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ], [ 0, %bb.u ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i unwind label %bb.x, !noalias !64011

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.eq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ] ; 2 uses
  %4 = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !64011
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !64011
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !64011
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !64011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false), !noalias !64012
  call void @llvm.experimental.noalias.scope.decl(metadata !64027)
  call void @llvm.experimental.noalias.scope.decl(metadata !64028)
  call void @llvm.experimental.noalias.scope.decl(metadata !64029)
  call void @llvm.experimental.noalias.scope.decl(metadata !64030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64031
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i", %bb.ac
  %.sroa.5.0.copyload17 = phi ptr [ %i.fo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.ac ] ; 2 uses
  %.sroa.618.0.copyload20 = phi i64 [ %i.fq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i" ], [ 1, %bb.ac ] ; 6 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha928e51eaca7fbd7E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.ah unwind label %bb.ag, !noalias !64032

bb.ae:                                            ; preds = %bb.am, %bb.ag
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fr, %bb.am ], [ %i.fa, %bb.ag ]
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !64033, !noalias !64011, !noundef !53 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val6.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !64033, !noalias !64011 ; 2 uses
  %i.ex = icmp eq ptr %.val5.i.i.i.i.i.i, null
  %i.ey = icmp eq i64 %.val6.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i.i) ]
  %i.ez = shl nuw i64 %.val6.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !64034
  br label %.body.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ad
  %i.fb = load i64, ptr %i.b, align 8, !range !79, !noalias !64035, !noundef !53
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fb, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = icmp samesign ult i64 %.sroa.618.0.copyload20, 144115188075855872
  call void @llvm.assume(i1 %i.fc)
  %i.fd = load i64, ptr %i.e, align 8, !range !83, !alias.scope !64036, !noalias !64011, !noundef !53
  %i.fe = icmp eq i64 %.sroa.618.0.copyload20, %i.fd
  br i1 %i.fe, label %bb.al, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ah
  %.val.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !64033, !noalias !64011, !noundef !53 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !alias.scope !64033, !noalias !64011 ; 2 uses
  %i.fg = icmp eq ptr %.val.i.i.i.i.i.i, null
  %i.fh = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i7.i.i.i.i.i.i = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %or.cond.i.i.i.i.i7.i.i.i.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  %i.fi = shl nuw i64 %.val4.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !64037
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.fj = load ptr, ptr %i.es, align 8, !alias.scope !64038, !noalias !64011, !noundef !53
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !alias.scope !64038, !noalias !64011
  %i.fk = load ptr, ptr %i.eu, align 8, !alias.scope !64038, !noalias !64011, !noundef !53
  %.not51.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  %.val.i59.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !64038, !noalias !64011
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i.i, i64 0, i64 %.val.i59.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fl = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i)
  %i.fm = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i, i64 %i.fl
  %i.fn = call i64 @llvm.uadd.sat.i64(i64 %i.fm, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.618.0.copyload20, i64 noundef range(i64 1, 0) %i.fn, i64 noundef 8, i64 noundef 64)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.am, !noalias !64039

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.al
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !64036, !noalias !64011
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i_crit_edge.i.i.i.i", %bb.ai
  %i.fo = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52f8edafcbf1bb66E.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload17, %bb.ai ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [64 x i8], ptr %i.fo, i64 %.sroa.618.0.copyload20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fp, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !64035
  %i.fq = add nuw nsw i64 %.sroa.618.0.copyload20, 1 ; 2 uses
  store i64 %i.fq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !64036, !noalias !64011
  br label %bb.ad

bb.am:                                            ; preds = %bb.al
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #77, !noalias !64035
  br label %bb.ae

.body.i.i.i.i:                                    ; preds = %bb.af, %bb.ae
  call fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nls..requests..completion..CompletionItem$GT$$GT$17h6f66dfedcb569c18E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77, !noalias !64011
  br label %common.resume

bb.an:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64011
  %.sroa.014.0.copyload15 = load i64, ptr %i.e, align 8, !noalias !64040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64011
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit

"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i": ; preds = %bb.aa, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i", %bb.s
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.s ], [ %i.ec, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i" ], [ %i.ec, %bb.aa ] ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !64014, !noalias !64005, !noundef !53 ; 3 uses
  %.val5.i.i.i.i = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !64014, !noalias !64005 ; 2 uses
  %i.fs = icmp eq ptr %.val.i.i.i.i, null
  %i.ft = icmp eq i64 %.val5.i.i.i.i, 0
  %or.cond.i.i.i.i.i8.i.i.i.i = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond.i.i.i.i.i8.i.i.i.i, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.fu = shl nuw i64 %.val5.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !64041
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit: ; preds = %bb.v, %bb.w, %bb.an
  %.sroa.618.0 = phi i64 [ 0, %bb.v ], [ 0, %bb.w ], [ %.sroa.618.0.copyload20, %bb.an ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ inttoptr (i64 8 to ptr), %bb.w ], [ %.sroa.5.0.copyload17, %bb.an ]
  %.sroa.014.0 = phi i64 [ 0, %bb.v ], [ 0, %bb.w ], [ %.sroa.014.0.copyload15, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !64010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64005
  br label %bb.ap

select.unfold:                                    ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.i.i, %bb.h, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63970
  br label %bb.ap

bb.ap:                                            ; preds = %select.unfold, %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit
  %.sink81 = phi i64 [ 0, %select.unfold ], [ %.sroa.014.0, %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit ]
  %.sink79 = phi ptr [ inttoptr (i64 8 to ptr), %select.unfold ], [ %.sroa.5.0, %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit ]
  %.sink = phi i64 [ 0, %select.unfold ], [ %.sroa.618.0, %_ZN4core4iter6traits8iterator8Iterator7collect17h0f4a43fecb92c044E.exit ]
  store i64 %.sink81, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink79, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.fw, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls8requests10completion15to_short_string17h5355e92d2bf4a9ceE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !64196 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 15 uses
  %i.c = alloca [96 x i8], align 8                ; 30 uses
  %i.d = alloca [56 x i8], align 8                ; 16 uses
  %i.e = alloca [24 x i8], align 8                ; 19 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 32, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @"_ZN18nickel_lang_parser3ast6pretty133_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..typ..Type$GT$6pretty17he57e6ed83d22ac09E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 8 %i.h)
  %i.i = load i8, ptr %i.g, align 8, !range !169, !noundef !53
  %.not = icmp eq i8 %i.i, 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !53
  %.sroa.01.0 = select i1 %.not, ptr %i.k, ptr %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64197
  store i64 0, ptr %i.f, align 8, !noalias !64197
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !64197
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !64197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64197
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 -536870880, ptr %i.l, align 8, !noalias !64197
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !64197
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !64197
  store ptr %i.f, ptr %i.e, align 8, !noalias !64197
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @1248, ptr %i.m, align 8, !noalias !64197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64198
  call void @llvm.experimental.noalias.scope.decl(metadata !64199)
  call void @llvm.experimental.noalias.scope.decl(metadata !64200)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !64201
  %i.n = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, 9) 8) #66, !noalias !64201 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 1024, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #75
          to label %.noexc.i unwind label %bb.dj, !noalias !64202

.noexc.i:                                         ; preds = %bb.b
  unreachable

"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17h9cab83468ed943faE.exit": ; preds = %bb.cp, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h7ec1cd95c7d6fa99E.exit11.i", %bb.k
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %eh.lpad-body.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h7ec1cd95c7d6fa99E.exit11.i" ], [ %eh.lpad-body.i.i.i, %bb.cp ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17ha8b93423801a95ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i.i.i.i)
          to label %"_ZN4core3ptr92drop_in_place$LT$core..cell..RefCell$LT$typed_arena..ChunkList$LT$pretty..BoxDoc$GT$$GT$$GT$17h44c2f2760b21b74cE.exit.i" unwind label %bb.c, !noalias !64197

bb.c:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17h9cab83468ed943faE.exit"
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h65e908efc9cdf48eE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.q) #77
          to label %.body16 unwind label %bb.d, !noalias !64197
end_hunk_2
begin_hunk_3_@_ZN3nls8requests10completion17handle_completion17hb33052dd8f6bdca6E:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, %i.dz
  br i1 %.not.i.i.i.i.i, label %.loopexit212.i.i, label %bb.q

.body.i.i:                                        ; preds = %bb.ci, %bb.bn, %bb.bm, %bb.bk, %bb.s
  %.sink.i.i = phi ptr [ %i.k, %bb.s ], [ %i.m, %bb.bm ], [ %i.m, %bb.bn ], [ %i.m, %bb.ci ], [ %i.m, %bb.bk ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ey, %bb.s ], [ %i.lq, %bb.bm ], [ %i.lq, %bb.bn ], [ %.pn.i.i19.i.i, %bb.ci ], [ %i.lj, %bb.bk ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E"(ptr noalias noundef align 8 dereferenceable(64) %.sink.i.i) #77, !noalias !65069
  call fastcc void @"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E"(ptr noalias noundef align 8 dereferenceable(40) %i.n) #77, !noalias !65069
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$nls..requests..completion..CompletionItem$GT$$GT$17h405d5ac5d6027c9cE"(ptr noalias noundef align 8 dereferenceable(48) %i.o) #77, !noalias !65069
  br label %.body

bb.af:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i"
  store ptr %i.eu, ptr %i.dy, align 8, !alias.scope !65074, !noalias !65069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !65069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i.i.i.i, i64 16, i1 false), !noalias !65069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.m, align 8, !noalias !65069
  store ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !65069
  store ptr %.sroa.6.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !65069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !65069
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1122)
          to label %bb.bl unwind label %bb.bk, !noalias !65069

.loopexit212.i.i:                                 ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i", %bb.ae, %bb.p
  %i.gs = phi ptr [ %i.eu, %bb.ae ], [ %.promoted.i.i, %bb.p ], [ %i.eu, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ] ; 2 uses
  %i.gt = phi ptr [ %i.dz, %bb.ae ], [ %.promoted.i.i, %bb.p ], [ %i.dz, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65111)
  call void @llvm.experimental.noalias.scope.decl(metadata !65112)
  call void @llvm.experimental.noalias.scope.decl(metadata !65113)
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub nuw i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 6
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$$u5b$nls..requests..completion..CompletionItem$u5d$$GT$17h20c0569be5037711E"(ptr noalias noundef nonnull align 8 %i.gs, i64 noundef %i.gx), !noalias !65114
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !65115, !noalias !65069, !noundef !53 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %.loopexit212.i.i
  %i.hb = load ptr, ptr %i.n, align 8, !alias.scope !65115, !noalias !65069, !nonnull !53, !noundef !53
  %i.hc = shl nuw i64 %i.gz, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65114
  br label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"

"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i": ; preds = %bb.ag, %.loopexit212.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !65069
  %.sroa.0162.0.copyload.i.i = load ptr, ptr %i.o, align 8, !noalias !65069, !nonnull !53, !noundef !53 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !65069 ; 4 uses
  %.sroa.3163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.3163.0.copyload.i.i = load i64, ptr %.sroa.3163.0..sroa_idx.i.i, align 8, !noalias !65069
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0162.0.copyload.i.i, align 16, !noalias !65116
  %i.hd = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %i.hd, label %bb.ah, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %i.he = mul i64 %.sroa.2.0.copyload.i.i, 88     ; 2 uses
  %i.hf = add i64 %i.he, 88
  %i.hg = icmp ult i64 %i.hf, -15
  call void @llvm.assume(i1 %i.hg)
  %i.hh = and i64 %i.he, -16                      ; 2 uses
  %i.hi = add i64 %i.hh, 96                       ; 2 uses
  %i.hj = add i64 %.sroa.2.0.copyload.i.i, 17
  %i.hk = add i64 %i.hj, %i.hi                    ; 3 uses
  %i.hl = icmp uge i64 %i.hk, %i.hi
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp ult i64 %i.hk, 9223372036854775793
  call void @llvm.assume(i1 %i.hm)
  %i.hn = sub i64 -96, %i.hh
  %i.ho = getelementptr inbounds i8, ptr %.sroa.0162.0.copyload.i.i, i64 %i.hn
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.hk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.ho, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0162.0.copyload.i.i, i64 16
  %i.hq = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.hr = getelementptr i8, ptr %.sroa.0162.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i
  %i.hs = getelementptr i8, ptr %i.hr, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !65117
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.4154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.5155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.6156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %.sroa.0162.0.copyload.i.i, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.7157.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.hp, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.8158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.hs, ptr %.sroa.8158.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.9159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store <16 x i1> %i.hq, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.11161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  store i64 %.sroa.3163.0.copyload.i.i, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  call void @llvm.experimental.noalias.scope.decl(metadata !65120)
  call void @llvm.experimental.noalias.scope.decl(metadata !65121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !65122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !65123
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(464) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.aj unwind label %bb.ai, !noalias !65124

bb.ai:                                            ; preds = %bb.ah
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65125, !noalias !65126
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah
  %i.hu = load i64, ptr %i.g, align 8, !range !79, !noalias !65123, !noundef !53
  %.not.i.i.i.i9.i.i = icmp eq i64 %i.hu, -9223372036854775808
  br i1 %.not.i.i.i.i9.i.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.aa, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.hw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !65123
  call void @llvm.experimental.noalias.scope.decl(metadata !65127)
  call void @llvm.experimental.noalias.scope.decl(metadata !65128)
  call void @llvm.experimental.noalias.scope.decl(metadata !65129)
  call void @llvm.experimental.noalias.scope.decl(metadata !65130)
  call void @llvm.experimental.noalias.scope.decl(metadata !65131)
  call void @llvm.experimental.noalias.scope.decl(metadata !65132)
  call void @llvm.experimental.noalias.scope.decl(metadata !65133)
  %i.hx = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117, !noundef !53 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ak
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !65135, !noalias !65117
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117
  br label %bb.al

bb.al:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hz = phi i64 [ %i.hx, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.im, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ia = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ij, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65136)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ia, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.ic = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ib, align 16, !noalias !65137
  %i.id = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -1408 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.id to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ia, %bb.al ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ig = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ih = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ii = zext nneg i16 %i.ih to i64
  %i.ij = and i16 %i.ig, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = sub nsw i64 0, %i.ii
  %i.il = getelementptr inbounds [88 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ik
  %i.im = add i64 %i.hz, -1                       ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -88
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$$LP$alloc..string..String$C$nls..requests..completion..CompletionItem$RP$$GT$17hb5671f75511c6d3dE"(ptr noalias noundef align 8 dereferenceable(88) %i.in), !noalias !65138
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.al

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ak
  %i.io = load i64, ptr %i.i, align 8, !range !79, !alias.scope !65139, !noalias !65117, !noundef !53 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk, label %bb.am

bb.am:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ip = load i64, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !65139, !noalias !65117, !noundef !53 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.fk, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = load ptr, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !65139, !noalias !65117, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef %i.ip, i64 noundef range(i64 1, -9223372036854775807) %i.io) #66, !noalias !65140
  br label %bb.fk

bb.ao:                                            ; preds = %bb.ar
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h3f5a837b53a6f7a5E"(ptr noalias noundef align 8 dereferenceable(464) %i.g) #77
          to label %bb.bg unwind label %bb.bf, !noalias !65123

bb.ap:                                            ; preds = %bb.aj
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65141, !noalias !65117, !noundef !53 ; 3 uses
  %i.it = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.it, i64 4) ; 3 uses
  %i.iu = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 464   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, 19877956975980119
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !78

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !65142
  %i.iw = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iu, i64 noundef range(i64 1, 9) 8) #66, !noalias !65142 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.aq ], [ 0, %bb.ap ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ao, !noalias !65123

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.iw, %bb.aq ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.iy = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.iy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(464) %i.g, i64 464, i1 false), !noalias !65123
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !65123
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !65123
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !65123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !65123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !65124
  call void @llvm.experimental.noalias.scope.decl(metadata !65143)
  call void @llvm.experimental.noalias.scope.decl(metadata !65144)
  call void @llvm.experimental.noalias.scope.decl(metadata !65145)
  call void @llvm.experimental.noalias.scope.decl(metadata !65146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !65147
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i", %bb.as
  %i.ja = phi ptr [ %i.kh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.as ]
  %i.jb = phi i64 [ %i.kj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.as ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(464) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.av unwind label %bb.au, !noalias !65148

.body.i.i.i.i.i.i:                                ; preds = %bb.bb, %bb.au
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kk, %bb.bb ], [ %i.jc, %bb.au ]
  call fastcc void @"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoValues$LT$alloc..string..String$C$nls..requests..completion..CompletionItem$GT$$C$$LT$lsp_types..completion..CompletionItem$u20$as$u20$core..convert..From$LT$nls..requests..completion..CompletionItem$GT$$GT$..from$GT$$GT$17ha352928b048bf9d1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #77, !noalias !65148
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..completion..CompletionItem$GT$$GT$17hc711c1f0936cbd65E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #77
          to label %.body unwind label %bb.bf, !noalias !65123

bb.au:                                            ; preds = %bb.at
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.jd = load i64, ptr %i.e, align 8, !range !79, !noalias !65149, !noundef !53
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.je = icmp samesign ult i64 %i.jb, 19877956975980121
  call void @llvm.assume(i1 %i.je)
  %i.jf = load i64, ptr %i.h, align 8, !range !83, !alias.scope !65150, !noalias !65123, !noundef !53
  %i.jg = icmp eq i64 %i.jb, %i.jf
  br i1 %i.jg, label %bb.bc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !65151)
  call void @llvm.experimental.noalias.scope.decl(metadata !65152)
  call void @llvm.experimental.noalias.scope.decl(metadata !65153)
  call void @llvm.experimental.noalias.scope.decl(metadata !65154)
  call void @llvm.experimental.noalias.scope.decl(metadata !65155)
  call void @llvm.experimental.noalias.scope.decl(metadata !65156)
  call void @llvm.experimental.noalias.scope.decl(metadata !65157)
  %i.jh = load i64, ptr %i.iz, align 8, !alias.scope !65158, !noalias !65123, !noundef !53 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.ax
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.jk, align 8, !alias.scope !65159, !noalias !65123
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !65158, !noalias !65123
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jl, align 8, !alias.scope !65158, !noalias !65123
  br label %bb.ay

bb.ay:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.jm = phi i64 [ %i.jh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.jn = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65160)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.jn, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jo = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.jp = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jo, align 16, !noalias !65161
  %i.jq = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -1408 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jn, %bb.ay ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jt = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ju = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jv = zext nneg i16 %i.ju to i64
  %i.jw = and i16 %i.jt, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = sub nsw i64 0, %i.jv
  %i.jy = getelementptr inbounds [88 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jx
  %i.jz = add i64 %i.jm, -1                       ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -88
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$$LP$alloc..string..String$C$nls..requests..completion..CompletionItem$RP$$GT$17hb5671f75511c6d3dE"(ptr noalias noundef align 8 dereferenceable(88) %i.ka), !noalias !65162
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jz, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ay

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ax
  %i.kb = load i64, ptr %i.f, align 8, !range !79, !alias.scope !65163, !noalias !65123, !noundef !53 ; 2 uses
  %.not.i.i.i.i.i.i.i.i5.i.i.i.i.i.i = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i.i5.i.i.i.i.i.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !65163, !noalias !65123, !noundef !53 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !alias.scope !65163, !noalias !65123, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kg, i64 noundef %i.kd, i64 noundef range(i64 1, -9223372036854775807) %i.kb) #66, !noalias !65164
  br label %bb.be

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.aw
  %i.kh = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ja, %bb.aw ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [464 x i8], ptr %i.kh, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.ki, ptr noundef nonnull align 8 dereferenceable(464) %i.e, i64 464, i1 false), !noalias !65149
  %i.kj = add nuw nsw i64 %i.jb, 1                ; 2 uses
  store i64 %i.kj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !65150, !noalias !65123
  br label %bb.at

bb.bb:                                            ; preds = %bb.bc
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h3f5a837b53a6f7a5E"(ptr noalias noundef align 8 dereferenceable(464) %i.e) #77
          to label %.body.i.i.i.i.i.i unwind label %bb.bd, !noalias !65149

bb.bc:                                            ; preds = %bb.aw
  %.val.i.i.i.i.i.i10.i.i = load i64, ptr %i.iz, align 8, !alias.scope !65165, !noalias !65123, !noundef !53
  %i.kl = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i10.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.jb, i64 noundef range(i64 1, 0) %i.kl, i64 noundef 8, i64 noundef 464)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.bb, !noalias !65166

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.bc
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !65150, !noalias !65123
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i"

bb.bd:                                            ; preds = %bb.bb
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !65149
  unreachable

bb.be:                                            ; preds = %bb.ba, %bb.az, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !65147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !65123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !65123
  br label %bb.fk

bb.bf:                                            ; preds = %.body.i.i.i.i.i.i, %bb.ao
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !65123
  unreachable

bb.bg:                                            ; preds = %bb.ao, %bb.ai
  %i.ko = phi i64 [ %.pre.i.i.i.i.i, %bb.ai ], [ %.val.i.i.i.i.i.i, %bb.ao ] ; 2 uses
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ht, %bb.ai ], [ %i.is, %bb.ao ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65167)
  call void @llvm.experimental.noalias.scope.decl(metadata !65168), !noalias !65169
  call void @llvm.experimental.noalias.scope.decl(metadata !65170), !noalias !65169
  call void @llvm.experimental.noalias.scope.decl(metadata !65171), !noalias !65169
  call void @llvm.experimental.noalias.scope.decl(metadata !65172), !noalias !65169
  call void @llvm.experimental.noalias.scope.decl(metadata !65173), !noalias !65169
  call void @llvm.experimental.noalias.scope.decl(metadata !65174), !noalias !65169
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN3nls8requests5hover6handle17hb7bacddc18e0a090E:bb.a
  %i.adz = shl i64 %i.adn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ady, ptr nonnull readonly align 8 %i.adl, i64 %i.adz, i1 false), !noalias !68436
  %i.aea = add i64 %i.adu, %i.adn
  store i64 %i.aea, ptr %i.ado, align 8, !noalias !68434
  store i64 0, ptr %i.adm, align 8, !alias.scope !68433, !noalias !68434
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !68437)
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aee = load ptr, ptr %i.aed, align 8, !alias.scope !68438, !noalias !68434, !nonnull !53, !noundef !53 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aeg = load i64, ptr %i.aef, align 8, !alias.scope !68438, !noalias !68434, !noundef !53 ; 4 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 3 uses
  %i.aei = load i64, ptr %i.aeh, align 8, !noalias !68434, !noundef !53 ; 3 uses
  %i.aej = load i64, ptr %i.aeb, align 8, !range !83, !noalias !68434, !noundef !53
  %i.aek = sub i64 %i.aej, %i.aei
  %i.ael = icmp ugt i64 %i.aeg, %i.aek
  br i1 %i.ael, label %bb.ge, label %bb.gf, !prof !58

bb.ge:                                            ; preds = %bb.gd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeb, i64 noundef %i.aei, i64 noundef %i.aeg, i64 noundef 8, i64 noundef 200)
          to label %.noexc12.i.i unwind label %.thread627, !noalias !68434

.noexc12.i.i:                                     ; preds = %bb.ge
  %.pre.i.i11.i.i = load i64, ptr %i.aeh, align 8, !noalias !68434
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc12.i.i, %bb.gd
  %i.aem = phi i64 [ %i.aei, %bb.gd ], [ %.pre.i.i11.i.i, %.noexc12.i.i ] ; 3 uses
  %i.aen = icmp ult i64 %i.aem, 46116860184273880
  call void @llvm.assume(i1 %i.aen)
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aep = load ptr, ptr %i.aeo, align 8, !noalias !68434, !nonnull !53, !noundef !53 ; 2 uses
  %i.aeq = getelementptr inbounds nuw [200 x i8], ptr %i.aep, i64 %i.aem
  %i.aer = mul i64 %i.aeg, 200
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aeq, ptr nonnull readonly align 8 %i.aee, i64 %i.aer, i1 false), !noalias !68439
  %i.aes = add i64 %i.aem, %i.aeg                 ; 2 uses
  store i64 %i.aes, ptr %i.aeh, align 8, !noalias !68434
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.aeu = load ptr, ptr %i.aet, align 8, !noalias !68434, !align !59, !noundef !53 ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.aeu, null
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aew = load ptr, ptr %i.aev, align 8, !alias.scope !68431, !noalias !68434, !align !59
  %.sroa.0.0.i.i = select i1 %.not.i.i172, ptr %i.aew, ptr %i.aeu ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.aet, align 8, !noalias !68434
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.aex, align 8, !noalias !68434 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 52 ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.aey, align 8, !alias.scope !68431, !noalias !68434
  %.sroa.4.0..sroa_idx.i.i173 = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.aez = trunc i32 %.sroa.01.0.copyload.i.i to i1 ; 2 uses
  %.sroa.3.0..sroa_idx..sroa.4.0..sroa_idx.i.i = select i1 %i.aez, ptr %.sroa.3.0..sroa_idx.i.i, ptr %.sroa.4.0..sroa_idx.i.i173
  %.sroa.01.0.copyload..sroa.07.0.copyload.i.i = select i1 %i.aez, i32 %.sroa.01.0.copyload.i.i, i32 %.sroa.07.0.copyload.i.i ; 2 uses
  store i32 %.sroa.01.0.copyload..sroa.07.0.copyload.i.i, ptr %i.aex, align 8, !noalias !68434
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx..sroa.4.0..sroa_idx.i.i, i64 12, i1 false), !noalias !68434
  call void @llvm.experimental.noalias.scope.decl(metadata !68440)
  %.val.i.i.i174 = load i64, ptr %i.ac, align 8, !alias.scope !68441, !noalias !68434 ; 2 uses
  %i.afa = icmp eq i64 %.val.i.i.i174, 0
  br i1 %i.afa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i175", label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.afb = shl nuw i64 %.val.i.i.i174, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adl, i64 noundef %i.afb, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !68442
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i175"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i175": ; preds = %bb.gg, %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !68443)
  %.val2.i.i.i.i176 = load i64, ptr %i.aec, align 8, !range !83, !alias.scope !68444, !noalias !68434, !noundef !53 ; 2 uses
  %i.afc = icmp eq i64 %.val2.i.i.i.i176, 0
  br i1 %i.afc, label %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i", label %bb.gh

bb.gh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i175"
  %i.afd = mul nuw i64 %.val2.i.i.i.i176, 200
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aee, i64 noundef %i.afd, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !68445
  br label %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i"

"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i": ; preds = %bb.gh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i175"
  %.sroa.0368.0.copyload371 = load i64, ptr %i.ab, align 8, !noalias !68446
  %.sroa.10373.sroa.0.0.copyload388 = load ptr, ptr %i.adw, align 8, !noalias !68446
  %.sroa.10373.sroa.8.0.copyload391 = load i64, ptr %i.ado, align 8, !noalias !68446
  %.sroa.10373.sroa.9.0.copyload394 = load i64, ptr %i.aeb, align 8, !noalias !68446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10373.sroa.13, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.i.i, i64 12, i1 false), !noalias !68446
  br label %bb.gi

.thread630:                                       ; preds = %bb.gj, %bb.lm
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit327"

bb.gi:                                            ; preds = %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i", %._crit_edge, %bb.ga
  %.sroa.10373.sroa.14.3 = phi ptr [ %.sroa.0.0.i.i, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.11484.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.12.3 = phi i32 [ %.sroa.01.0.copyload..sroa.07.0.copyload.i.i, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.9482.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.11.3 = phi i64 [ %i.aes, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.8481.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.10.3 = phi ptr [ %i.aep, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.7480.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.9.3 = phi i64 [ %.sroa.10373.sroa.9.0.copyload394, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.6479.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.8.3 = phi i64 [ %.sroa.10373.sroa.8.0.copyload391, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.5478.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.10373.sroa.0.3 = phi ptr [ %.sroa.10373.sroa.0.0.copyload388, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.4477.0.copyload, %._crit_edge ], [ undef, %bb.ga ]
  %.sroa.0368.2 = phi i64 [ %.sroa.0368.0.copyload371, %"_ZN88_$LT$nls..requests..hover..HoverData$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hb5d1f0daa0fb1845E.exit.i" ], [ %.sroa.0476.0.copyload, %._crit_edge ], [ -9223372036854775808, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %"_ZN4core6option15Option$LT$T$GT$2or17hc95f2745b28f3cceE.exit"

"_ZN4core6option15Option$LT$T$GT$2or17hc95f2745b28f3cceE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i", %bb.fw, %bb.fx, %bb.ft, %bb.gi
  %.sroa.10373.sroa.14.1 = phi ptr [ %.sroa.10373.sroa.14.3, %bb.gi ], [ %.sroa.16.0554580, %bb.fx ], [ %.sroa.5379.sroa.10.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.10.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.10.0.copyload, %bb.fw ] ; 3 uses
  %.sroa.10373.sroa.12.1 = phi i32 [ %.sroa.10373.sroa.12.3, %bb.gi ], [ %.sroa.12361.0555579, %bb.fx ], [ %.sroa.5379.sroa.8.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.8.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.8.0.copyload, %bb.fw ] ; 2 uses
  %.sroa.10373.sroa.11.1 = phi i64 [ %.sroa.10373.sroa.11.3, %bb.gi ], [ %.sroa.11357.0556578, %bb.fx ], [ %.sroa.5379.sroa.7.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.7.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.7.0.copyload, %bb.fw ] ; 5 uses
  %.sroa.10373.sroa.10.1 = phi ptr [ %.sroa.10373.sroa.10.3, %bb.gi ], [ %.sroa.10.0557577, %bb.fx ], [ %.sroa.5379.sroa.6.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.6.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.6.0.copyload, %bb.fw ] ; 7 uses
  %.sroa.10373.sroa.9.1 = phi i64 [ %.sroa.10373.sroa.9.3, %bb.gi ], [ %.sroa.9350.0558576, %bb.fx ], [ %.sroa.5379.sroa.5.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.5.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.5.0.copyload, %bb.fw ] ; 3 uses
  %.sroa.10373.sroa.8.1 = phi i64 [ %.sroa.10373.sroa.8.3, %bb.gi ], [ %.sroa.8.0559575, %bb.fx ], [ %.sroa.5379.sroa.4.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.4.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.4.0.copyload, %bb.fw ] ; 2 uses
  %.sroa.10373.sroa.0.1 = phi ptr [ %.sroa.10373.sroa.0.3, %bb.gi ], [ %.sroa.7.0486560574, %bb.fx ], [ %.sroa.5379.sroa.0.0.copyload, %bb.ft ], [ %.sroa.5379.sroa.0.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.5379.sroa.0.0.copyload, %bb.fw ] ; 4 uses
  %.sroa.0368.0 = phi i64 [ %.sroa.0368.2, %bb.gi ], [ %.sroa.0341.0561573, %bb.fx ], [ %.sroa.0378.0.copyload, %bb.ft ], [ %.sroa.0378.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i" ], [ %.sroa.0378.0.copyload, %bb.fw ] ; 4 uses
  %.not124 = icmp eq i64 %.sroa.0368.0, -9223372036854775808
  br i1 %.not124, label %bb.gj, label %bb.gl

bb.gj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$2or17hc95f2745b28f3cceE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i8 0, ptr %i.bs, align 8
  invoke fastcc void @_ZN10lsp_server3msg8Response6new_ok17h9e83ab290cf51507E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.bt, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bs)
          to label %bb.lm unwind label %.thread630

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit312": ; preds = %.body235
  br i1 %.sroa.054.3, label %bb.ll, label %.thread963

bb.gk:                                            ; preds = %bb.gl
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.gl:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$2or17hc95f2745b28f3cceE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store i64 %.sroa.0368.0, ptr %i.cc, align 8
  %.sroa.10373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.10373.sroa.0.1, ptr %.sroa.10373.0..sroa_idx, align 8
  %.sroa.10373.sroa.8.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %.sroa.10373.sroa.8.1, ptr %.sroa.10373.sroa.8.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  %.sroa.10373.sroa.9.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 %.sroa.10373.sroa.9.1, ptr %.sroa.10373.sroa.9.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  %.sroa.10373.sroa.10.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr %.sroa.10373.sroa.10.1, ptr %.sroa.10373.sroa.10.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  %.sroa.10373.sroa.11.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i64 %.sroa.10373.sroa.11.1, ptr %.sroa.10373.sroa.11.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  %.sroa.10373.sroa.12.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store i32 %.sroa.10373.sroa.12.1, ptr %.sroa.10373.sroa.12.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  %.sroa.10373.sroa.13.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 52 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10373.sroa.13.0..sroa.10373.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10373.sroa.13, i64 12, i1 false)
  %.sroa.10373.sroa.14.0..sroa.10373.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store ptr %.sroa.10373.sroa.14.1, ptr %.sroa.10373.sroa.14.0..sroa.10373.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i64 0, ptr %i.cb, align 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.afg, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 8 uses
  store i64 0, ptr %i.afh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %.idx1165 = mul nuw nsw i64 %.sroa.10373.sroa.11.1, 200
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.10373.sroa.10.1, i64 %.idx1165 ; 2 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10373.sroa.0.1, i64 %.sroa.10373.sroa.8.1
  call void @llvm.experimental.noalias.scope.decl(metadata !68447)
  call void @llvm.experimental.noalias.scope.decl(metadata !68448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !68449
  store i64 1, ptr %i.aa, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.4410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.10373.sroa.0.1, ptr %.sroa.4410.0..sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.4410.sroa.4.0..sroa.4410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.afj, ptr %.sroa.4410.sroa.4.0..sroa.4410.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.4410.sroa.5.0..sroa.4410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr null, ptr %.sroa.4410.sroa.5.0..sroa.4410.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.4410.sroa.7.0..sroa.4410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr null, ptr %.sroa.4410.sroa.7.0..sroa.4410.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.5411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 2, ptr %.sroa.5411.0..sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.5411.sroa.5.0..sroa.5411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store i64 2, ptr %.sroa.5411.sroa.5.0..sroa.5411.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.5411.sroa.7.0..sroa.5411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store ptr %.sroa.10373.sroa.10.1, ptr %.sroa.5411.sroa.7.0..sroa.5411.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  %.sroa.5411.sroa.8.0..sroa.5411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store ptr %i.afi, ptr %.sroa.5411.sroa.8.0..sroa.5411.0..sroa_idx.sroa_idx, align 8, !alias.scope !68450, !noalias !68451
  call void @llvm.experimental.noalias.scope.decl(metadata !68452)
  call void @llvm.experimental.noalias.scope.decl(metadata !68453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !68454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !68454
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6f01c5e8fb8d37b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aa)
          to label %.noexc194 unwind label %bb.gk, !noalias !68455

.noexc194:                                        ; preds = %bb.gl
  %i.afk = load i64, ptr %i.y, align 8, !range !79, !noalias !68454, !noundef !53 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.afk, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.noexc194
  %.sroa.5.0..sroa_idx.i.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.copyload.i.i.i.i183 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i182, align 8, !noalias !68454 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !68454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !68454
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hedec3e508c600fffE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.aa), !noalias !68455
  %i.afl = load i64, ptr %i.x, align 8, !noalias !68454, !noundef !53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !68454
  %i.afm = call i64 @llvm.uadd.sat.i64(i64 %i.afl, i64 1)
  %.sroa.0.0.i.i.i.i.i184 = call noundef i64 @llvm.umax.i64(i64 %i.afm, i64 4) ; 3 uses
  %i.afn = mul i64 %.sroa.0.0.i.i.i.i.i184, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.afl, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gr, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !78

bb.gn:                                            ; preds = %.noexc194
  store i64 0, ptr %i.ca, align 8, !alias.scope !68456
  %i.afo = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.afo, align 8, !alias.scope !68456
  %i.afp = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %i.afp, align 8, !alias.scope !68456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !68454
  br label %bb.gx

bb.go:                                            ; preds = %bb.gr
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afr = icmp eq i64 %i.afk, 0
  br i1 %i.afr, label %bb.ll, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i183) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i183, i64 noundef %i.afk, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !68457
  br label %bb.ll

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.gm
  %i.afs = icmp eq i64 %i.afn, 0
  br i1 %i.afs, label %bb.gs, label %bb.gq

bb.gq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !68458
  %i.aft = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.afn, i64 noundef range(i64 1, 9) 8) #66, !noalias !68458 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq, %bb.gm
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.gq ], [ 0, %bb.gm ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.afn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i193 unwind label %bb.go, !noalias !68454

.noexc.i.i.i.i193:                                ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.gq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i185 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.aft, %bb.gq ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i184, %bb.gq ] ; 2 uses
  %i.afv = icmp ule i64 %.sroa.0.0.i.i.i.i.i184, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.afv)
  store i64 %i.afk, ptr %.sroa.10.0.i.i.i.i.i185, align 8, !noalias !68454
  %.sroa.4.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i185, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i183, ptr %.sroa.4.0..sroa_idx8.i.i.i.i, align 8, !noalias !68454
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i185, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 8, !noalias !68454
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.z, align 8, !noalias !68454
  %.sroa.4.0..sroa_idx.i.i.i.i186 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i185, ptr %.sroa.4.0..sroa_idx.i.i.i.i186, align 8, !noalias !68454
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !68454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !68454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !68454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.w, ptr noundef nonnull align 8 dereferenceable(136) %i.aa, i64 136, i1 false), !noalias !68455
  call void @llvm.experimental.noalias.scope.decl(metadata !68459)
  call void @llvm.experimental.noalias.scope.decl(metadata !68460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !68461
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6f01c5e8fb8d37b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68462

.noexc5.i.i.i.i:                                  ; preds = %bb.gs
  %i.afw = load i64, ptr %i.v, align 8, !range !79, !noalias !68461, !noundef !53 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.afw, -9223372036854775808
  br i1 %.not9.i.i.i.i.i.i, label %.loopexit10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i188

.lr.ph.i.i.i.i.i.i188:                            ; preds = %.noexc5.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i189 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.gt

bb.gt:                                            ; preds = %.noexc6.i.i.i.i, %.lr.ph.i.i.i.i.i.i188
  %i.afx = phi ptr [ %.sroa.10.0.i.i.i.i.i185, %.lr.ph.i.i.i.i.i.i188 ], [ %i.agf, %.noexc6.i.i.i.i ]
  %i.afy = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i188 ], [ %i.agh, %.noexc6.i.i.i.i ] ; 5 uses
  %i.afz = phi i64 [ %i.afw, %.lr.ph.i.i.i.i.i.i188 ], [ %i.agi, %.noexc6.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i189, align 8, !noalias !68461 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !68461
  %i.aga = icmp samesign ult i64 %i.afy, 384307168202282326
  call void @llvm.assume(i1 %i.aga)
  %i.agb = load i64, ptr %i.z, align 8, !range !83, !alias.scope !68463, !noalias !68454, !noundef !53
  %i.agc = icmp eq i64 %i.afy, %i.agb
  br i1 %i.agc, label %bb.gu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i"

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !68461
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hedec3e508c600fffE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.w), !noalias !68462
  %i.agd = load i64, ptr %i.u, align 8, !noalias !68461, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !68461
  %i.age = call i64 @llvm.uadd.sat.i64(i64 %i.agd, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.afy, i64 noundef %i.age, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.gv, !noalias !68464

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.gu
  %.pre.i.i.i.i192 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i186, align 8, !alias.scope !68463, !noalias !68454
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i", %bb.gt
  %i.agf = phi ptr [ %.pre.i.i.i.i192, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.afx, %bb.gt ] ; 2 uses
  %i.agg = getelementptr inbounds nuw [24 x i8], ptr %i.agf, i64 %i.afy ; 3 uses
  store i64 %i.afz, ptr %i.agg, align 8, !noalias !68461
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i190 = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i190, align 8, !noalias !68461
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !68461
  %i.agh = add nuw nsw i64 %i.afy, 1              ; 2 uses
  store i64 %i.agh, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !68463, !noalias !68454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !68461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !68461
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6f01c5e8fb8d37b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68462

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i"
  %i.agi = load i64, ptr %i.v, align 8, !range !79, !noalias !68461, !noundef !53 ; 2 uses
  %.not.i.i.i.i.i.i191 = icmp eq i64 %i.agi, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i191, label %.loopexit10.i.i.i.i, label %bb.gt

bb.gv:                                            ; preds = %bb.gu
  %i.agj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agk = icmp eq i64 %i.afz, 0
  br i1 %i.agk, label %.body.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.afz, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !68465
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i", %bb.gs
  %lpad.loopexit.split-lp1186 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gw, %bb.gv
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.agj, %bb.gv ], [ %i.agj, %bb.gw ], [ %lpad.loopexit.split-lp1186, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7f234fa731c4181cE"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #77, !noalias !68454
  br label %bb.ll

.loopexit10.i.i.i.i:                              ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !68461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !68454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !68466
  br label %bb.gx

bb.gx:                                            ; preds = %.loopexit10.i.i.i.i, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !68454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !68449
  call void @llvm.experimental.noalias.scope.decl(metadata !68467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !68467
  %i.agl = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 16 ; 2 uses
  %i.agn = load i8, ptr %i.agm, align 8, !range !54, !noalias !68468, !noundef !53
  %i.ago = trunc nuw i8 %i.agn to i1
  br i1 %i.ago, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i", !prof !55

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.gx
  %.pre.i.i.i.i.i204 = load i64, ptr %i.agl, align 8, !noalias !68469
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !68469
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h2b4a7a2a37089ec2E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i": ; preds = %bb.gx
  %i.agp = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc205 unwind label %bb.hm, !noalias !68470 ; 2 uses

.noexc205:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.agq = extractvalue { i64, i64 } %i.agp, 0
  %i.agr = extractvalue { i64, i64 } %i.agp, 1    ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  store i64 %i.agr, ptr %i.ags, align 8, !noalias !68470
  store i8 1, ptr %i.agm, align 8, !noalias !68470
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h2b4a7a2a37089ec2E.exit.i"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h2b4a7a2a37089ec2E.exit.i": ; preds = %.noexc205, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ], [ %i.agr, %.noexc205 ]
  %i.agt = phi i64 [ %.pre.i.i.i.i.i204, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ], [ %i.agq, %.noexc205 ] ; 2 uses
  %i.agu = add i64 %i.agt, 1
  store i64 %i.agu, ptr %i.agl, align 8, !noalias !68469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !68467
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %i.agt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !68467
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %.pre-phi.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !68467
  call void @llvm.experimental.noalias.scope.decl(metadata !68471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !68467
  store ptr %i.t, ptr %i.s, align 8, !noalias !68472
  call void @llvm.experimental.noalias.scope.decl(metadata !68473)
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  %i.agw = load i64, ptr %i.agv, align 8, !alias.scope !68474, !noundef !53 ; 10 uses
  %i.agx = icmp ult i64 %i.agw, 384307168202282326
  call void @llvm.assume(i1 %i.agx)
  %i.agy = icmp eq i64 %i.agw, 0
  br i1 %i.agy, label %.thread.i203, label %.lr.ph.i.i.i.i197

.thread.i203:                                     ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h2b4a7a2a37089ec2E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !68467
  br label %bb.hn

end_hunk_4
begin_hunk_5_@_ZN4core4iter6traits8iterator8Iterator7collect17hbd2690d02df7ca57E:bb.a

bb.t:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92486
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92492)
  call void @llvm.experimental.noalias.scope.decl(metadata !92493)
  %i.aq = load ptr, ptr %i.c, align 16, !alias.scope !92494, !noalias !92477, !noundef !53 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %.body.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !noalias !92495, !noundef !53
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8, !noalias !92495
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.v, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i"

bb.v:                                             ; preds = %bb.u
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i" unwind label %bb.w, !noalias !92477

bb.w:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92477
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i": ; preds = %bb.v, %bb.u, %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc9cfab36263ec733E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92479
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !92496
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !92496
  %i.aw = load <2 x i64>, ptr %i.c, align 16, !noalias !92496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92477
  store <2 x i64> %i.aw, ptr %0, align 8, !alias.scope !92476
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !92476
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ax, align 8, !alias.scope !92476
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.ay, align 8, !alias.scope !92476
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he5a8df70234f3863E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !92636 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.71.0.copyload = load <16 x i1>, ptr %.sroa.71.0..sroa_idx, align 8 ; 5 uses
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.82.0.copyload = load i64, ptr %.sroa.82.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.113.0.copyload = load i16, ptr %.sroa.113.0..sroa_idx, align 8 ; 3 uses
  %.sroa.124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.124.0.copyload = load i64, ptr %.sroa.124.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92637)
  %.fr54.i.i.i.i = freeze i64 %.sroa.0.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92640
  %i.b = trunc i64 %.fr54.i.i.i.i to i1           ; 3 uses
  %.not.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i, label %.split.i.i.i.i

.split.us.preheader.i.i.i.i:                      ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.82.0.copyload, 0
  %or.cond.i = select i1 %.not.i.us.peel.i.i.i.i, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.b, label %.split49.us.i.i.i.i

bb.b:                                             ; preds = %.split.us.preheader.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.us.peel.i.i.i.i, label %.split53.us.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92641), !noalias !92642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92643), !noalias !92642
  %i.d = load ptr, ptr %.sroa.4.0.copyload, align 8, !alias.scope !92644, !noalias !92645, !nonnull !53, !noundef !53 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !92646
  %i.e = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !92644, !noalias !92645, !noundef !53 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split53.us.i.i.i.i, label %.split49.us.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.a
  br i1 %.not.i.us.peel.i.i.i.i, label %.split53.us.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.i.i.i.i
  %i.j = icmp eq i64 %.sroa.82.0.copyload, 0
  br i1 %i.j, label %.split53.us.i.i.i.i, label %.split49.us.i.i.i.i

.split49.us.i.i.i.i:                              ; preds = %bb.d, %bb.c, %.split.us.preheader.i.i.i.i
  %.sroa.5.0.i = phi ptr [ null, %bb.c ], [ %.sroa.4.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.9.1.i = phi ptr [ %i.d, %bb.c ], [ %.sroa.5.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.5.0.copyload, %bb.d ] ; 2 uses
  %.sroa.20.0.i = phi <16 x i1> [ %i.e, %bb.c ], [ %.sroa.71.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.71.0.copyload, %bb.d ]
  %.sroa.15.0.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.6.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.6.0.copyload, %bb.d ] ; 2 uses
  %.us-phi51.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.82.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.82.0.copyload, %bb.d ]
  %i.k = bitcast <16 x i1> %.sroa.20.0.i to i16   ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.split49.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i, %.split49.us.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i, %.split49.us.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !92647
  %i.n = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0.i, %.split49.us.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.q = phi ptr [ %.sroa.9.1.i, %.split49.us.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %.split49.us.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.v = bitcast i16 %i.u to <16 x i1>
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.w
  %i.y = add i64 %.us-phi51.i.i.i.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"

.split53.us.i.i.i.i:                              ; preds = %bb.d, %.split.i.i.i.i, %bb.c, %bb.b
  %.sroa.5.1.i = phi ptr [ null, %bb.b ], [ %.sroa.4.0.copyload, %bb.d ], [ %.sroa.4.0.copyload, %.split.i.i.i.i ], [ null, %bb.c ]
  %.sroa.244.0.i = phi i64 [ %.sroa.82.0.copyload, %bb.b ], [ 0, %bb.d ], [ %.sroa.82.0.copyload, %.split.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.20.1.i = phi <16 x i1> [ %.sroa.71.0.copyload, %bb.b ], [ %.sroa.71.0.copyload, %bb.d ], [ %.sroa.71.0.copyload, %.split.i.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.15.2.i = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.6.0.copyload, %.split.i.i.i.i ], [ %i.f, %bb.c ]
  %.not.i2.i.i.i.i = icmp eq ptr %.sroa.9.0.copyload, null
  %i.z = icmp eq i64 %.sroa.124.0.copyload, 0
  %or.cond20.i = select i1 %.not.i2.i.i.i.i, i1 true, i1 %i.z
  br i1 %or.cond20.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.split53.us.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i = icmp eq i16 %.sroa.113.0.copyload, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i:                        ; preds = %bb.e, %.lr.ph.i.i.i.i.i7.i.i.i.i
  %i.aa = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i7.i.i.i.i ], [ %.sroa.10.0.copyload, %bb.e ] ; 2 uses
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i7.i.i.i.i ], [ %.sroa.9.0.copyload, %bb.e ]
  %.val11.i.i.i.i.i9.i.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !92648
  %i.ac = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i = bitcast <16 x i1> %i.ac to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i, %bb.e
  %.sroa.32.0.i = phi ptr [ %.sroa.10.0.copyload, %bb.e ], [ %i.ae, %.lr.ph.i.i.i.i.i7.i.i.i.i ]
  %.sroa.28.0.i = phi ptr [ %.sroa.9.0.copyload, %bb.e ], [ %i.ad, %.lr.ph.i.i.i.i.i7.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i = phi i16 [ %.sroa.113.0.copyload, %bb.e ], [ %.cast.i.i.i.i.i10.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i ] ; 3 uses
  %i.af = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i, -1
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = and i16 %i.af, %.lcssa.i.i.i.i.i5.i.i.i.i
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sroa.28.0.i, i64 %i.aj
  %i.al = add i64 %.sroa.124.0.copyload, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i
  %.sroa.5.2.i = phi ptr [ %.sroa.5.1.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.5.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 7 uses
  %.sroa.9.4.i = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.q, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.387.0.i = phi i64 [ %i.al, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.124.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 4 uses
  %.sroa.356.0.i = phi i16 [ %i.ai, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.113.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.32.1.i = phi ptr [ %.sroa.32.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.10.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.28.1.i = phi ptr [ %.sroa.28.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.9.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 4 uses
  %.sroa.244.1.i = phi i64 [ %.sroa.244.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.y, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 7 uses
  %.sroa.20.2.i = phi <16 x i1> [ %.sroa.20.1.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.v, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 5 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.2.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.15.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.ak, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.x, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i1.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8
  %.val.i.i = load i32, ptr %.sroa.0.0.i.i.i1.i, align 4, !noalias !92649, !noundef !53
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9.4.i, null ; 3 uses
  %.not51.i.i.i.i.i.i = icmp eq ptr %.sroa.28.1.i, null ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i, i64 0, i64 %.sroa.387.0.i ; 2 uses
  %i.am = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.244.1.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.an = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i, i64 %i.am ; 2 uses
  %i.ao = tail call i64 @llvm.uadd.sat.i64(i64 %i.an, i64 1)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ao, i64 4) ; 3 uses
  %i.ap = shl i64 %.sroa.0.0.i.i.i.i, 2           ; 4 uses
  %i.aq = icmp ugt i64 %i.an, 4611686018427387902
  %i.ar = icmp ugt i64 %i.ap, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !78

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"
  %2 = icmp eq i64 %i.ap, 0
  br i1 %2, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !92650
  %i.as = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, 9) 4) #66, !noalias !92650 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75, !noalias !92640
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 3 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 3 uses
  %3 = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  store i32 %.val.i.i, ptr %.sroa.10.0.i.i.i.i, align 4, !noalias !92640
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.a, align 8, !noalias !92640
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !92640
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !92640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92652)
  br i1 %i.b, label %.split.us.preheader.i.i.i47.i.i.i, label %.split.i.i.i16.i.i.i

.split.us.preheader.i.i.i47.i.i.i:                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"
  %i.au = icmp eq i64 %.sroa.244.1.i, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i, label %bb.g, label %.split49.us.i.i.i18.i.i.i

bb.g:                                             ; preds = %.split.us.preheader.i.i.i47.i.i.i
  %.not.i.i.us.peel.i.i.i49.i.i.i = icmp eq ptr %.sroa.5.2.i, null
  br i1 %.not.i.i.us.peel.i.i.i49.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92653), !noalias !92654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92655), !noalias !92654
  %i.av = load ptr, ptr %.sroa.5.2.i, align 8, !alias.scope !92656, !noalias !92657, !nonnull !53, !noundef !53 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !92658
  %i.aw = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i, splat (i8 -1) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !92656, !noalias !92657, !noundef !53 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split.i.i.i16.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"
  br i1 %.not.i.i.i.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.i

bb.i:                                             ; preds = %.split.i.i.i16.i.i.i
  %i.bb = icmp eq i64 %.sroa.244.1.i, 0
  br i1 %i.bb, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split49.us.i.i.i18.i.i.i:                        ; preds = %bb.i, %bb.h, %.split.us.preheader.i.i.i47.i.i.i
  %.sroa.53.0.i.i.i = phi ptr [ null, %bb.h ], [ %.sroa.5.2.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.5.2.i, %bb.i ]
  %.sroa.11.1.i.i.i = phi ptr [ %i.av, %bb.h ], [ %.sroa.9.4.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.9.4.i, %bb.i ] ; 2 uses
  %.sroa.30.0.i.i.i = phi <16 x i1> [ %i.aw, %bb.h ], [ %.sroa.20.2.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.20.2.i, %bb.i ]
  %.sroa.22.0.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.sroa.15.3.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.15.3.i, %bb.i ] ; 2 uses
  %.us-phi51.i.i.i20.i.i.i = phi i64 [ %i.az, %bb.h ], [ %.sroa.244.1.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.244.1.i, %bb.i ]
  %i.bc = bitcast <16 x i1> %.sroa.30.0.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i21.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not13.i.i.i.i.i.i.i.i21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i

.lr.ph.i.i.i.i.i.i.i.i30.i.i.i:                   ; preds = %.split49.us.i.i.i18.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i32.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !92659
  %i.bf = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i32.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i33.i.i.i = bitcast <16 x i1> %i.bf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i34.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i33.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, %.split49.us.i.i.i18.i.i.i
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ]
  %i.bi = phi ptr [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i23.i.i.i = phi i16 [ %i.bc, %.split49.us.i.i.i18.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i33.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 3 uses
  %i.bj = add i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, -1
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = and i16 %i.bj, %.lcssa.i.i.i.i.i.i.i.i23.i.i.i
  %i.bn = bitcast i16 %i.bm to <16 x i1>
  %i.bo = sub nsw i64 0, %i.bl
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bo
  %i.bq = add i64 %.us-phi51.i.i.i20.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.split53.us.i.i.i36.i.i.i:                        ; preds = %bb.i, %.split.i.i.i16.i.i.i, %bb.h, %bb.g
  %.sroa.53.1.i.i.i = phi ptr [ null, %bb.g ], [ %.sroa.5.2.i, %bb.i ], [ %.sroa.5.2.i, %.split.i.i.i16.i.i.i ], [ null, %bb.h ]
  %.sroa.367.0.i.i.i = phi i64 [ %.sroa.244.1.i, %bb.g ], [ 0, %bb.i ], [ %.sroa.244.1.i, %.split.i.i.i16.i.i.i ], [ 0, %bb.h ]
  %.sroa.30.1.i.i.i = phi <16 x i1> [ %.sroa.20.2.i, %bb.g ], [ %.sroa.20.2.i, %bb.i ], [ %.sroa.20.2.i, %.split.i.i.i16.i.i.i ], [ %i.aw, %bb.h ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.15.3.i, %bb.g ], [ %.sroa.15.3.i, %bb.i ], [ %.sroa.15.3.i, %.split.i.i.i16.i.i.i ], [ %i.ax, %bb.h ]
  %i.br = icmp eq i64 %.sroa.387.0.i, 0
  %or.cond38.i.i.i = select i1 %.not51.i.i.i.i.i.i, i1 true, i1 %i.br
  br i1 %or.cond38.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %.split53.us.i.i.i36.i.i.i
  %.not13.i.i.i.i.i3.i.i.i38.i.i.i = icmp eq i16 %.sroa.356.0.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i38.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i:                  ; preds = %bb.j, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i
  %i.bs = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %.sroa.32.1.i, %bb.j ] ; 2 uses
  %i.bt = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %.sroa.28.1.i, %bb.j ]
  %.val11.i.i.i.i.i9.i.i.i43.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !92660
  %i.bu = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i43.i.i.i, splat (i8 -1)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -128 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i44.i.i.i = bitcast <16 x i1> %i.bu to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i45.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i44.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i45.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, %bb.j
  %.sroa.50.0.i.i.i = phi ptr [ %.sroa.32.1.i, %bb.j ], [ %i.bw, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ]
  %.sroa.43.0.i.i.i = phi ptr [ %.sroa.28.1.i, %bb.j ], [ %i.bv, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i = phi i16 [ %.sroa.356.0.i, %bb.j ], [ %.cast.i.i.i.i.i10.i.i.i44.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 3 uses
  %i.bx = add i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, -1
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i
  %i.cb = sub nsw i64 0, %i.bz
  %i.cc = getelementptr inbounds [8 x i8], ptr %.sroa.43.0.i.i.i, i64 %i.cb
  %i.cd = add i64 %.sroa.387.0.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i
  %.sroa.53.4.i.i.i.ph = phi ptr [ %.sroa.53.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.53.0.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.11.6.i.i.i.ph = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bi, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.5812.2.i.i.i.ph = phi i64 [ %i.cd, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.387.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.5410.2.i.i.i.ph = phi i16 [ %i.ca, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.356.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.50.3.i.i.i.ph = phi ptr [ %.sroa.50.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.32.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.43.3.i.i.i.ph = phi ptr [ %.sroa.43.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.28.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.367.3.i.i.i.ph = phi i64 [ %.sroa.367.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bq, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.30.4.i.i.i.ph = phi <16 x i1> [ %.sroa.30.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.22.5.i.i.i.ph = phi ptr [ %.sroa.22.2.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.22.1.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.pn.i25.pn.i.i.i.ph = phi ptr [ %i.cc, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bp, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i
  %.ph = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.53.4.i.i.i.ph57 = phi ptr [ %.sroa.53.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.53.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.11.6.i.i.i.ph58 = phi ptr [ %.sroa.11.6.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.5812.2.i.i.i.ph59 = phi i64 [ %.sroa.5812.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dz, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5410.2.i.i.i.ph60 = phi i16 [ %.sroa.5410.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dw, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.50.3.i.i.i.ph61 = phi ptr [ %.sroa.50.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.50.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.43.3.i.i.i.ph62 = phi ptr [ %.sroa.43.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.43.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 4 uses
  %.sroa.367.3.i.i.i.ph63 = phi i64 [ %.sroa.367.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.367.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.30.4.i.i.i.ph64 = phi <16 x i1> [ %.sroa.30.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.30.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.22.5.i.i.i.ph65 = phi ptr [ %.sroa.22.5.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.22.8.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.ph66 = phi i64 [ %.sroa.4.0.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.ph67 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.pn.i25.pn.i.i.i.ph68 = phi ptr [ %.pn.i25.pn.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dy, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.not51.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph62, null
  %.sroa.8.0.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.5812.2.i.i.i.ph59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.outer, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i
  %i.ce = phi ptr [ %i.cm, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.outer ]
  %.sroa.53.4.i.i.i = phi ptr [ %.sroa.53.5.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.ph57, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.11.6.i.i.i = phi ptr [ %i.de, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.ph58, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.sroa.367.3.i.i.i = phi i64 [ %i.dm, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i.ph63, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.30.4.i.i.i = phi <16 x i1> [ %i.dj, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.ph64, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %.sroa.22.5.i.i.i = phi ptr [ %.sroa.22.7.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.ph65, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %i.cf = phi i64 [ %i.cn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph66, %.lr.ph.i.i.i.i.i.outer ] ; 3 uses
  %i.cg = phi i64 [ %i.cp, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph67, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.pn.i25.pn.i.i.i = phi ptr [ %i.dl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.pn.i25.pn.i.i.i.ph68, %.lr.ph.i.i.i.i.i.outer ]
  %.val.i27.pn.in.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i, i64 -8
  %.val.i27.pn.i.i.i = load i32, ptr %.val.i27.pn.in.i.i.i, align 4, !noalias !92661, !noundef !53
  %i.ch = icmp samesign ult i64 %i.cg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %i.cg, %i.cf
  br i1 %i.ci, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null
  %i.cj = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.367.3.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i)
  %i.ck = select i1 %.not.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i, i64 %i.cj
  %i.cl = tail call i64 @llvm.uadd.sat.i64(i64 %i.ck, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !92662

.noexc.i.i.i:                                     ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i"
  %.pre1.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !83, !alias.scope !92654, !noalias !92640
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !92654, !noalias !92640
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cm = phi ptr [ %.pre.i.i.i, %.noexc.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cn = phi i64 [ %.pre1.i.i.i.i.i, %.noexc.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cg
  store i32 %.val.i27.pn.i.i.i, ptr %i.co, align 4, !noalias !92663
  %i.cp = add nuw nsw i64 %i.cg, 1                ; 3 uses
  store i64 %i.cp, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !92654, !noalias !92640
  %.not.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"
  %i.cq = icmp eq i64 %.sroa.367.3.i.i.i, 0
  %or.cond37.i.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i, i1 true, i1 %i.cq
  br i1 %or.cond37.i.i.i, label %bb.k, label %.split49.us.i.i.i.i.i.i

bb.k:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.53.4.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92664), !noalias !92654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92665), !noalias !92654
  %i.cr = load ptr, ptr %.sroa.53.4.i.i.i, align 8, !alias.scope !92666, !noalias !92667, !nonnull !53, !noundef !53 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i = load <16 x i8>, ptr %i.cr, align 16, !noalias !92668
  %i.cs = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.53.4.i.i.i, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !92666, !noalias !92667, !noundef !53 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"
  br i1 %.not.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i.i.i
  %i.cx = icmp eq i64 %.sroa.367.3.i.i.i, 0
  br i1 %i.cx, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l, %.split.us.preheader.i.i.i.i.i.i
  %.sroa.53.5.i.i.i = phi ptr [ null, %bb.l ], [ %.sroa.53.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i, %bb.m ]
  %.sroa.11.8.i.i.i = phi ptr [ %i.cr, %bb.l ], [ %.sroa.11.6.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i, %bb.m ] ; 2 uses
  %.sroa.30.5.i.i.i = phi <16 x i1> [ %i.cs, %bb.l ], [ %.sroa.30.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i, %bb.m ]
  %.sroa.22.6.i.i.i = phi ptr [ %i.ct, %bb.l ], [ %.sroa.22.5.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i, %bb.m ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.l ], [ %.sroa.367.3.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i, %bb.m ]
  %i.cy = bitcast <16 x i1> %.sroa.30.5.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split49.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ] ; 2 uses
  %i.da = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 16, !noalias !92669
  %i.db = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -128 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.db to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i
  %.sroa.22.7.i.i.i = phi ptr [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.de = phi ptr [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cy, %.split49.us.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.df = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = and i16 %i.df, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.dj = bitcast i16 %i.di to <16 x i1>
  %i.dk = sub nsw i64 0, %i.dh
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dk
  %i.dm = add i64 %.us-phi51.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i

.split53.us.i.i.i.i.i.i:                          ; preds = %bb.m, %.split.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.53.6.i.i.i = phi ptr [ null, %bb.k ], [ %.sroa.53.4.i.i.i, %bb.m ], [ %.sroa.53.4.i.i.i, %.split.i.i.i.i.i.i ], [ null, %bb.l ]
  %.sroa.367.4.i.i.i = phi i64 [ %.sroa.367.3.i.i.i, %bb.k ], [ 0, %bb.m ], [ %.sroa.367.3.i.i.i, %.split.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.sroa.30.6.i.i.i = phi <16 x i1> [ %.sroa.30.4.i.i.i, %bb.k ], [ %.sroa.30.4.i.i.i, %bb.m ], [ %.sroa.30.4.i.i.i, %.split.i.i.i.i.i.i ], [ %i.cs, %bb.l ]
  %.sroa.22.8.i.i.i = phi ptr [ %.sroa.22.5.i.i.i, %bb.k ], [ %.sroa.22.5.i.i.i, %bb.m ], [ %.sroa.22.5.i.i.i, %.split.i.i.i.i.i.i ], [ %i.ct, %bb.l ]
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph62, null
  %i.dn = icmp eq i64 %.sroa.5812.2.i.i.i.ph59, 0
  %or.cond39.i.i.i = select i1 %.not.i2.i.i.i.i.i.i, i1 true, i1 %i.dn
  br i1 %or.cond39.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %.split53.us.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i16 %.sroa.5410.2.i.i.i.ph60, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i
  %i.do = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.50.3.i.i.i.ph61, %bb.n ] ; 2 uses
  %i.dp = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.43.3.i.i.i.ph62, %bb.n ]
  %.val11.i.i.i.i.i9.i.i.i.i.i.i = load <16 x i8>, ptr %i.do, align 16, !noalias !92670
  %i.dq = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i.i.i, splat (i8 -1)
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -128 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i = bitcast <16 x i1> %i.dq to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, %bb.n
  %.sroa.50.4.i.i.i = phi ptr [ %.sroa.50.3.i.i.i.ph61, %bb.n ], [ %i.ds, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ]
  %.sroa.43.4.i.i.i = phi ptr [ %.sroa.43.3.i.i.i.ph62, %bb.n ], [ %i.dr, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i = phi i16 [ %.sroa.5410.2.i.i.i.ph60, %bb.n ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 3 uses
  %i.dt = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, -1
  %i.du = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, i1 true)
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = and i16 %i.dt, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i
  %i.dx = sub nsw i64 0, %i.dv
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.43.4.i.i.i, i64 %i.dx
  %i.dz = add i64 %.sroa.5812.2.i.i.i.ph59, -1
  br label %.lr.ph.i.i.i.i.i.outer

bb.o:                                             ; preds = %.split53.us.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !92671
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ea, align 8, !alias.scope !92671
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.eb, align 8, !alias.scope !92671
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit"

bb.p:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i"
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !92640 ; 2 uses
  %i.ed = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ed, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !92640, !nonnull !53, !noundef !53
  %i.ee = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !92640
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i": ; preds = %.split53.us.i.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !92672
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i": ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.ec

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit": ; preds = %bb.o, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92640
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he67dfd50ceb62d95E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !92704 {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [184 x i8], align 8               ; 12 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92706
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92707)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !92706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92709)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(168) %1, i64 168, i1 false), !alias.scope !92710, !noalias !92711
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 6 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !92712, !noalias !92708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92713)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76a1eab95653f9caE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
end_hunk_5
