Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN12malachite_nz7natural10conversion6string11from_string116_$LT$impl$u20$malachite_base..num..conversion..traits..FromStringBase$u20$for$u20$malachite_nz..natural..Natural$GT$16from_string_base17h6ace1dbdc0411f65E":bb.a
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit22.i" unwind label %bb.s, !noalias !2417

bb.u:                                             ; preds = %._crit_edge191
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !2417
  %i.bi = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.bi, label %bb.l, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = shl nuw i64 %.sroa.4.0.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !2417
  br label %bb.l

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit22.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2417
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !2417
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.w:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.bl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = shl nuw i64 %.sroa.4.0.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !2417
  br label %bb.y

common.resume:                                    ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i", %bb.ba, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit23.i", %bb.bg, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.y ], [ %.pn.i.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i" ], [ %.pn.i.i, %bb.ba ], [ %.pn.i45, %bb.bg ], [ %.pn.i45, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit23.i" ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.s, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.bg, %bb.s ], [ %i.bk, %bb.w ], [ %i.bk, %bb.x ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !2417
  br label %common.resume

bb.z:                                             ; preds = %bb.j
  %i.bn = icmp eq i64 %3, 1
  %i.bo = load i8, ptr %2, align 1, !alias.scope !2423, !noalias !2424 ; 2 uses
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.bo, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.preheader:                               ; preds = %bb.ac, %bb.ae, %bb.aa
  %.sroa.01.162.i.ph = phi ptr [ %i.bp, %bb.ac ], [ %2, %bb.ae ], [ %2, %bb.aa ]
  %.sroa.16.161.i.ph = phi i64 [ %i.bq, %bb.ac ], [ %3, %bb.ae ], [ 1, %bb.aa ]
  br label %.lr.ph.i

bb.ab:                                            ; preds = %bb.z
  %cond.i = icmp eq i8 %i.bo, 43
  br i1 %cond.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.bq = add nsw i64 %3, -1                      ; 2 uses
  %i.br = icmp samesign ult i64 %3, 18
  br i1 %i.br, label %.lr.ph.i.preheader, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.ae, %bb.ac
  %.sroa.16.0.ph.i = phi i64 [ %3, %bb.ae ], [ %i.bq, %bb.ac ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %2, %bb.ae ], [ %i.bp, %bb.ac ]
  %.not.i228 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i228, label %.loopexit66, label %.lr.ph

bb.ad:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i231, i64 1
  %i.bt = add nsw i64 %.sroa.16.0.i230, -1        ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %.loopexit66, label %.lr.ph

bb.ae:                                            ; preds = %bb.ab
  %i.bu = icmp samesign ult i64 %3, 17
  br i1 %i.bu, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph:                                           ; preds = %.preheader53.i, %bb.ad
  %.sroa.01.0.i231 = phi ptr [ %i.bs, %bb.ad ], [ %.sroa.01.0.ph.i, %.preheader53.i ] ; 2 uses
  %.sroa.16.0.i230 = phi i64 [ %i.bt, %bb.ad ], [ %.sroa.16.0.ph.i, %.preheader53.i ]
  %.sroa.017.0.i229 = phi i64 [ %i.cd, %bb.ad ], [ 0, %.preheader53.i ]
  %i.bv = load i8, ptr %.sroa.01.0.i231, align 1, !alias.scope !2423, !noalias !2424, !noundef !19
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 10
  br i1 %i.by, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.lr.ph
  %i.bz = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i229, i64 10) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 0       ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.bz, 1
  %i.cc = zext nneg i32 %i.bx to i64
  %i.cd = add i64 %i.ca, %i.cc                    ; 3 uses
  %.not50.i = icmp ult i64 %i.cd, %i.ca
  %or.cond61 = select i1 %i.cb, i1 true, i1 %.not50.i
  br i1 %or.cond61, label %.loopexit, label %bb.ad

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ag
  %.sroa.01.162.i = phi ptr [ %i.ck, %bb.ag ], [ %.sroa.01.162.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.161.i = phi i64 [ %i.cj, %bb.ag ], [ %.sroa.16.161.i.ph, %.lr.ph.i.preheader ]
  %.sroa.017.160.i = phi i64 [ %i.cm, %bb.ag ], [ 0, %.lr.ph.i.preheader ]
  %i.ce = load i8, ptr %.sroa.01.162.i, align 1, !alias.scope !2423, !noalias !2424, !noundef !19
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 10
  br i1 %i.ch, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ci = mul i64 %.sroa.017.160.i, 10
  %i.cj = add nsw i64 %.sroa.16.161.i, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i, i64 1
  %i.cl = zext nneg i32 %i.cg to i64
  %i.cm = add i64 %i.ci, %i.cl                    ; 2 uses
  %.not51.i = icmp eq i64 %i.cj, 0
  br i1 %.not51.i, label %.loopexit66, label %.lr.ph.i

.loopexit66:                                      ; preds = %bb.ad, %bb.ag, %.preheader53.i
  %.sroa.955.0 = phi i64 [ %i.cm, %bb.ag ], [ 0, %.preheader53.i ], [ %i.cd, %bb.ad ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.955.0, ptr %.sroa.434.0..sroa_idx, align 8
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

.loopexit:                                        ; preds = %bb.af, %.lr.ph, %.lr.ph.i, %bb.aa, %bb.aa
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.ah:                                            ; preds = %_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit, %bb.f
  %.sroa.038.0 = phi ptr [ %2, %bb.f ], [ %.sroa.038.1, %_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit ] ; 3 uses
  %i.cn = icmp ne ptr %.sroa.038.0, %i.s          ; 2 uses
  %.sroa.038.1.idx = zext i1 %i.cn to i64
  %.sroa.038.1 = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 %.sroa.038.1.idx
  br i1 %i.cn, label %bb.ai, label %_ZN14malachite_base3num10arithmetic10log_base_218checked_log_base_217hf3e92669e613822dE.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.co = load i8, ptr %.sroa.038.0, align 1, !noundef !19 ; 5 uses
  %i.cp = add i8 %i.co, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.cp, 10
  br i1 %or.cond.i, label %_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cq = add i8 %i.co, -97
  %or.cond1.i = icmp ult i8 %i.cq, 26
  br i1 %or.cond1.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = add i8 %i.co, -65
  %or.cond2.i = icmp ult i8 %i.cr, 26             ; 2 uses
  %i.cs = add nsw i8 %i.co, -55
  %spec.select.i43 = select i1 %or.cond2.i, i8 %i.cs, i8 undef
  br label %_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit

bb.al:                                            ; preds = %bb.aj
  %i.ct = add nsw i8 %i.co, -87
  br label %_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit

_ZN14malachite_base3num10conversion6string11from_string23digit_from_display_byte17he46379e8c51b73d7E.exit: ; preds = %bb.ai, %bb.ak, %bb.al
  %.sroa.5.0.i = phi i8 [ %spec.select.i43, %bb.ak ], [ %i.ct, %bb.al ], [ %i.cp, %bb.ai ]
  %.sroa.0.0.i = phi i1 [ %or.cond2.i, %bb.ak ], [ true, %bb.al ], [ true, %bb.ai ]
  %.not40 = icmp ult i8 %.sroa.5.0.i, %1
  %or.cond = select i1 %.sroa.0.0.i, i1 %.not40, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.bv

_ZN14malachite_base3num10arithmetic10log_base_218checked_log_base_217hf3e92669e613822dE.exit.i: ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.cu = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %1, i1 true)
  %i.cv = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %1, i1 true) ; 5 uses
  %i.cw = zext nneg i8 %i.cv to i64               ; 7 uses
  %narrow.i.i = add nuw nsw i8 %i.cu, %i.cv
  %i.cx = icmp eq i8 %narrow.i.i, 7
  br i1 %i.cx, label %bb.am, label %bb.bc

bb.am:                                            ; preds = %_ZN14malachite_base3num10arithmetic10log_base_218checked_log_base_217hf3e92669e613822dE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2425
  store i64 %i.cw, ptr %i.f, align 8, !noalias !2427
  %i.cy = icmp eq i8 %i.cv, 0
  br i1 %i.cy, label %bb.an, label %bb.ao, !prof !20

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2427
  store ptr null, ptr %i.e, align 8, !noalias !2427
  call void @_ZN4core9panicking13assert_failed17ha67440f6d43154c4E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #52, !noalias !2427
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2427
  call fastcc void @_ZN9itertools9Itertools11collect_vec17hcc4835b6dabd540aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %2, ptr noundef nonnull %i.s), !noalias !2427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2427
  store i64 0, ptr %i.c, align 8, !noalias !2427
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !noalias !2427
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.da, align 8, !noalias !2427
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !2427, !nonnull !19, !noundef !19 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !2427, !noundef !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 2 uses
  %i.dg = urem i8 64, %i.cv
  %i.dh = icmp eq i8 %i.dg, 0
  %i.di = ptrtoaddr ptr %i.dc to i64              ; 3 uses
  %invariant.op34.i = sub nuw nsw i8 8, %i.cv     ; 3 uses
  br i1 %i.dh, label %.lr.ph.i.i.us.i.i, label %.peel.begin.i.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i"
  %i.dj = phi i64 [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i" ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.1040.0.us191.i.i = phi ptr [ %.sroa.1040.7103.us.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i" ], [ %i.df, %bb.ao ] ; 3 uses
  %.promoted29.i.i.us.i.i = ptrtoaddr ptr %.sroa.1040.0.us191.i.i to i64 ; 2 uses
  %i.dk = sub i64 %.promoted29.i.i.us.i.i, %i.di
  %i.dl = mul i64 %i.dk, %i.cw
  %scevgep225.i.i = getelementptr i8, ptr %.sroa.1040.0.us191.i.i, i64 %i.di
  %i.dm = sub i64 0, %.promoted29.i.i.us.i.i
  %scevgep226.i.i = getelementptr i8, ptr %scevgep225.i.i, i64 %i.dm
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i.us.i.i
  %.sroa.1040.4.us.i.i = phi ptr [ %.sroa.1040.0.us191.i.i, %.lr.ph.i.i.us.i.i ], [ %i.dn, %bb.aq ] ; 2 uses
  %.sroa.01.021.i.i.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i ], [ %i.du, %bb.aq ] ; 2 uses
  %.sroa.0.01020.i.i.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i ], [ %i.dt, %bb.aq ] ; 2 uses
  %.not.i5.i.us.i.i = icmp eq ptr %i.dc, %.sroa.1040.4.us.i.i ; 2 uses
  br i1 %.not.i5.i.us.i.i, label %.loopexit.i.i.us.i.i, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ap
  %i.dn = getelementptr inbounds i8, ptr %.sroa.1040.4.us.i.i, i64 -1 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !noalias !2428, !noundef !19 ; 2 uses
  %i.dp = call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.do, i1 false)
  %i.dq = icmp samesign ult i8 %i.dp, %invariant.op34.i
  br i1 %i.dq, label %.thread132.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph237
  %i.dr = zext i8 %i.do to i64
  %i.ds = shl i64 %i.dr, %.sroa.01.021.i.i.us.i.i
  %i.dt = or i64 %i.ds, %.sroa.0.01020.i.i.us.i.i ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.01.021.i.i.us.i.i, %i.cw ; 2 uses
  %i.dv = icmp samesign ult i64 %i.du, 64
  br i1 %i.dv, label %bb.ap, label %.thread92.us.i.i

.loopexit.i.i.us.i.i:                             ; preds = %bb.ap
  %i.dw = icmp eq i64 %i.dl, 0
  br i1 %i.dw, label %.thread116.i.i, label %.thread92.us.i.i

.thread92.us.i.i:                                 ; preds = %bb.aq, %.loopexit.i.i.us.i.i
  %.sroa.3.0.i.pn.i109.us.i.i = phi i64 [ %.sroa.0.01020.i.i.us.i.i, %.loopexit.i.i.us.i.i ], [ %i.dt, %bb.aq ]
  %.sroa.1040.7103.us.i.i = phi ptr [ %scevgep226.i.i, %.loopexit.i.i.us.i.i ], [ %i.dn, %bb.aq ]
  %i.dx = load i64, ptr %i.c, align 8, !range !38, !alias.scope !2429, !noalias !2430, !noundef !19
  %i.dy = icmp eq i64 %i.dj, %i.dx
  br i1 %i.dy, label %bb.ar, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i"

bb.ar:                                            ; preds = %.thread92.us.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdea3b916d5486521E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i" unwind label %.loopexit.split.us.i.i, !noalias !2427

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i": ; preds = %bb.ar, %.thread92.us.i.i
  %i.dz = load ptr, ptr %i.cz, align 8, !alias.scope !2429, !noalias !2430, !nonnull !19, !noundef !19
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dj
  store i64 %.sroa.3.0.i.pn.i109.us.i.i, ptr %i.ea, align 8, !noalias !2427
  %i.eb = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.eb, ptr %i.da, align 8, !alias.scope !2429, !noalias !2430
  br i1 %.not.i5.i.us.i.i, label %.thread116.i.i, label %.lr.ph.i.i.us.i.i

.loopexit.split.us.i.i:                           ; preds = %bb.ar
  %lpad.loopexit.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

bb.as:                                            ; preds = %.thread116.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i"

.peel.begin.i.i.i:                                ; preds = %bb.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i"
  %i.ec = phi i64 [ %i.fk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.1040.0.i.i = phi ptr [ %.sroa.1040.7103.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" ], [ %i.df, %bb.ao ] ; 3 uses
  %.sroa.29.0.i.i = phi i64 [ %.sroa.29.7104.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" ], [ 0, %bb.ao ]
  %.sroa.40.sroa.0.0.i.i = phi i8 [ %.sroa.40.sroa.0.4106.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" ], [ 0, %bb.ao ]
  %.sroa.40.sroa.10.0.i.i = phi i1 [ %.sroa.40.sroa.10.3107.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" ], [ false, %bb.ao ]
  br i1 %.sroa.40.sroa.10.0.i.i, label %.peel.begin.i.peel.i.i.i, label %bb.at

bb.at:                                            ; preds = %.peel.begin.i.i.i
  %.not25.i.peel.i.i.i = icmp eq ptr %i.dc, %.sroa.1040.0.i.i
  br i1 %.not25.i.peel.i.i.i, label %.thread116.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr inbounds i8, ptr %.sroa.1040.0.i.i, i64 -1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !2431, !noundef !19 ; 2 uses
  %i.ef = call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.ee, i1 false)
  %i.eg = icmp samesign ult i8 %i.ef, %invariant.op34.i
  br i1 %i.eg, label %.thread132.i.i, label %.peel.begin.i.peel.i.i.i

.peel.begin.i.peel.i.i.i:                         ; preds = %bb.au, %.peel.begin.i.i.i
  %.sroa.1040.1.i.i = phi ptr [ %.sroa.1040.0.i.i, %.peel.begin.i.i.i ], [ %i.ed, %bb.au ] ; 4 uses
  %.sroa.29.1.i.i = phi i64 [ %.sroa.29.0.i.i, %.peel.begin.i.i.i ], [ %i.cw, %bb.au ] ; 2 uses
  %.sroa.40.sroa.0.1.i.i = phi i8 [ %.sroa.40.sroa.0.0.i.i, %.peel.begin.i.i.i ], [ %i.ee, %bb.au ]
  %.sroa.40.sroa.0.1.fr.i.i = freeze i8 %.sroa.40.sroa.0.1.i.i ; 2 uses
  %i.eh = zext i8 %.sroa.40.sroa.0.1.fr.i.i to i64
  %i.ei = icmp eq i64 %.sroa.29.1.i.i, 0
  %spec.select.i.i = select i1 %i.ei, i64 0, i64 %i.eh ; 2 uses
  %.not25.i.i184.i.i = icmp eq ptr %i.dc, %.sroa.1040.1.i.i
  br i1 %.not25.i.i184.i.i, label %.loopexit.i.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.peel.begin.i.peel.i.i.i
  %i.ej = sub nuw nsw i64 64, %.sroa.29.1.i.i
  %.sroa.1040.1223.i.i = ptrtoaddr ptr %.sroa.1040.1.i.i to i64
  %scevgep.i.i = getelementptr i8, ptr %.sroa.1040.1.i.i, i64 %i.di
  %i.ek = sub i64 0, %.sroa.1040.1223.i.i
  %scevgep224.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.ek
  br label %.lr.ph.i.i

.loopexit62.i.i.i.i:                              ; preds = %bb.aw
  %.not25.i.i.i.i = icmp eq ptr %i.dc, %i.es
  br i1 %.not25.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i, !llvm.loop !2409

bb.av:                                            ; preds = %.lr.ph.i.i
  %i.el = zext i8 %i.et to i64                    ; 2 uses
  %i.em = sub i64 0, %.sroa.01.0.i.i186.i.i
  %.not.peel.i.i.i.i = icmp ult i64 %.sroa.01.0.i.i186.i.i, %i.cw
  %i.en = and i64 %i.em, 63                       ; 2 uses
  br i1 %.not.peel.i.i.i.i, label %.loopexit64.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = shl i64 %i.el, %i.en
  %.fr.i.i = freeze i64 %i.eo
  %i.ep = or i64 %.fr.i.i, %.sroa.0.019.i.fr.i187.i.i ; 3 uses
  %i.eq = sub nuw i64 %.sroa.01.0.i.i186.i.i, %i.cw ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.thread92.i.i, label %.loopexit62.i.i.i.i, !llvm.loop !2409

.lr.ph.i.i:                                       ; preds = %.loopexit62.i.i.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.019.i.fr.i187.i.i = phi i64 [ %i.ep, %.loopexit62.i.i.i.i ], [ %spec.select.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.01.0.i.i186.i.i = phi i64 [ %i.eq, %.loopexit62.i.i.i.i ], [ %i.ej, %.lr.ph.preheader.i.i ] ; 6 uses
  %.sroa.1040.2185.i.i = phi ptr [ %i.es, %.loopexit62.i.i.i.i ], [ %.sroa.1040.1.i.i, %.lr.ph.preheader.i.i ]
  %i.es = getelementptr inbounds i8, ptr %.sroa.1040.2185.i.i, i64 -1 ; 5 uses
  %i.et = load i8, ptr %i.es, align 1, !noalias !2432, !noundef !19 ; 6 uses
  %i.eu = call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.et, i1 false)
  %i.ev = icmp samesign ult i8 %i.eu, %invariant.op34.i
  br i1 %i.ev, label %.thread132.i.i, label %bb.av

.loopexit.i.i.i:                                  ; preds = %.loopexit62.i.i.i.i, %.peel.begin.i.peel.i.i.i
  %.sroa.1040.2.lcssa.i.i = phi ptr [ %i.dc, %.peel.begin.i.peel.i.i.i ], [ %scevgep224.i.i, %.loopexit62.i.i.i.i ]
  %.sroa.40.sroa.0.2.lcssa.i.i = phi i8 [ %.sroa.40.sroa.0.1.fr.i.i, %.peel.begin.i.peel.i.i.i ], [ %i.et, %.loopexit62.i.i.i.i ]
  %.sroa.0.019.i.fr.i.lcssa.i.i = phi i64 [ %spec.select.i.i, %.peel.begin.i.peel.i.i.i ], [ %i.ep, %.loopexit62.i.i.i.i ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.0.019.i.fr.i.lcssa.i.i, 0
  br i1 %i.ew, label %.thread116.i.i, label %.thread92.i.i

.loopexit64.i.i.i.i:                              ; preds = %bb.av
  %i.ex = icmp eq i8 %i.et, 0
  %notmask.i.i.i.i.i10.i.i.i = shl nsw i64 -1, %.sroa.01.0.i.i186.i.i
  %i.ey = xor i64 %notmask.i.i.i.i.i10.i.i.i, -1
  %i.ez = and i64 %i.el, %i.ey
  %.sroa.0.0.i.i.i11.i.i.i = select i1 %i.ex, i64 0, i64 %i.ez
  %i.fa = shl i64 %.sroa.0.0.i.i.i11.i.i.i, %i.en
  %i.fb = or i64 %i.fa, %.sroa.0.019.i.fr.i187.i.i
  %i.fc = trunc nuw nsw i64 %.sroa.01.0.i.i186.i.i to i8
  %i.fd = lshr i8 %i.et, %i.fc
  %i.fe = sub nuw nsw i64 %i.cw, %.sroa.01.0.i.i186.i.i
  br label %.thread92.i.i

.thread116.i.i:                                   ; preds = %.loopexit.i.i.i, %bb.at, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.us.i.i", %.loopexit.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2427
  invoke void @"_ZN12malachite_nz7natural10conversion10from_limbs48_$LT$impl$u20$malachite_nz..natural..Natural$GT$20from_owned_limbs_asc17he0a178d1730e0898E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ax unwind label %bb.as, !noalias !2427

bb.ax:                                            ; preds = %.thread116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2427
  %.val24.i.i = load i64, ptr %i.d, align 8, !noalias !2427 ; 2 uses
  %i.ff = icmp eq i64 %.val24.i.i, 0
  br i1 %i.ff, label %_ZN12malachite_nz7natural10conversion6digits17power_of_2_digits30from_power_of_2_digits_desc_nz17h06bf8f067e0074c5E.exit.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit33.sink.split.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit33.sink.split.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i", %bb.ax
  %.val24.sink.i.i = phi i64 [ %.val26.i.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i" ], [ %.val24.i.i, %bb.ax ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %.val24.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !2427
  br label %_ZN12malachite_nz7natural10conversion6digits17power_of_2_digits30from_power_of_2_digits_desc_nz17h06bf8f067e0074c5E.exit.i

.thread92.i.i:                                    ; preds = %bb.aw, %.loopexit64.i.i.i.i, %.loopexit.i.i.i
  %.sroa.3.0.i.pn.i109.i.i = phi i64 [ %.sroa.0.019.i.fr.i.lcssa.i.i, %.loopexit.i.i.i ], [ %i.fb, %.loopexit64.i.i.i.i ], [ %i.ep, %bb.aw ]
  %.sroa.40.sroa.10.3107.i.i = phi i1 [ false, %.loopexit.i.i.i ], [ true, %.loopexit64.i.i.i.i ], [ true, %bb.aw ]
  %.sroa.40.sroa.0.4106.i.i = phi i8 [ %.sroa.40.sroa.0.2.lcssa.i.i, %.loopexit.i.i.i ], [ %i.fd, %.loopexit64.i.i.i.i ], [ %i.et, %bb.aw ]
  %.sroa.29.7104.i.i = phi i64 [ 0, %.loopexit.i.i.i ], [ %i.fe, %.loopexit64.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.1040.7103.i.i = phi ptr [ %.sroa.1040.2.lcssa.i.i, %.loopexit.i.i.i ], [ %i.es, %.loopexit64.i.i.i.i ], [ %i.es, %bb.aw ]
  %i.fg = load i64, ptr %i.c, align 8, !range !38, !alias.scope !2429, !noalias !2430, !noundef !19
  %i.fh = icmp eq i64 %i.ec, %i.fg
  br i1 %i.fh, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i"

bb.ay:                                            ; preds = %.thread92.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdea3b916d5486521E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i" unwind label %.loopexit.split.i.i, !noalias !2427

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i": ; preds = %bb.ay, %.thread92.i.i
  %i.fi = load ptr, ptr %i.cz, align 8, !alias.scope !2429, !noalias !2430, !nonnull !19, !noundef !19
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.ec
  store i64 %.sroa.3.0.i.pn.i109.i.i, ptr %i.fj, align 8, !noalias !2427
  %i.fk = add i64 %i.ec, 1                        ; 2 uses
  store i64 %i.fk, ptr %i.da, align 8, !alias.scope !2429, !noalias !2430
  br label %.peel.begin.i.i.i

.thread132.i.i:                                   ; preds = %bb.au, %.lr.ph.i.i, %.lr.ph237
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !2427
  %.val22.i.i = load i64, ptr %i.c, align 8, !noalias !2427 ; 2 uses
  %i.fl = icmp eq i64 %.val22.i.i, 0
  br i1 %i.fl, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i", label %bb.az

bb.az:                                            ; preds = %.thread132.i.i
  %.val23.i.i = load ptr, ptr %i.cz, align 8, !noalias !2427, !nonnull !19, !noundef !19
  %i.fm = shl nuw i64 %.val22.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !2427
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i": ; preds = %bb.bb, %.loopexit.i.i, %bb.as
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.bb ], [ %lpad.thr_comm.split-lp.i.i, %bb.as ], [ %lpad.phi.i.i, %.loopexit.i.i ] ; 2 uses
  %.val28.i.i = load i64, ptr %i.d, align 8, !noalias !2427 ; 2 uses
  %i.fn = icmp eq i64 %.val28.i.i, 0
  br i1 %i.fn, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %.val28.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !2427
  br label %common.resume

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i": ; preds = %bb.az, %.thread132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2427
  %.val26.i.i = load i64, ptr %i.d, align 8, !noalias !2427 ; 2 uses
  %i.fo = icmp eq i64 %.val26.i.i, 0
  br i1 %i.fo, label %_ZN12malachite_nz7natural10conversion6digits17power_of_2_digits30from_power_of_2_digits_desc_nz17h06bf8f067e0074c5E.exit.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit33.sink.split.i.i"

.loopexit.split.i.i:                              ; preds = %bb.ay
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.split.i.i, %.loopexit.split.us.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.us.i.i, %.loopexit.split.us.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split.i.i ] ; 2 uses
  %.val.i.i = load i64, ptr %i.c, align 8, !noalias !2427 ; 2 uses
  %i.fp = icmp eq i64 %.val.i.i, 0
  br i1 %i.fp, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i", label %bb.bb

bb.bb:                                            ; preds = %.loopexit.i.i
  %.val21.i.i = load ptr, ptr %i.cz, align 8, !noalias !2427, !nonnull !19, !noundef !19
  %i.fq = shl nuw i64 %.val.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !2427
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit34.i.i"

_ZN12malachite_nz7natural10conversion6digits17power_of_2_digits30from_power_of_2_digits_desc_nz17h06bf8f067e0074c5E.exit.i: ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17h5527b14664669bafE.exit.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit33.sink.split.i.i", %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2425
  br label %"_ZN12malachite_nz7natural10conversion6digits14general_digits118_$LT$impl$u20$malachite_base..num..conversion..traits..Digits$LT$u8$GT$$u20$for$u20$malachite_nz..natural..Natural$GT$16from_digits_desc17hbd964f96c1547e78E.exit"

bb.bc:                                            ; preds = %_ZN14malachite_base3num10arithmetic10log_base_218checked_log_base_217hf3e92669e613822dE.exit.i
  %i.fr = zext nneg i8 %1 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2425
  call fastcc void @_ZN9itertools9Itertools11collect_vec17hcc4835b6dabd540aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %2, ptr noundef nonnull %i.s), !noalias !2425
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !2425, !noundef !19 ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i64 %i.ft, 0
end_hunk_0
