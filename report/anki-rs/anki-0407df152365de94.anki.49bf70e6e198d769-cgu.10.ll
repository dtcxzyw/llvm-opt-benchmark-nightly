Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h2f33350fb87dce09E":bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !10504, !noalias !10507, !noundef !13
  %.not.i50 = icmp eq i8 %i.cb, %i.cd
  br i1 %.not.i50, label %.preheader80, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add i64 %i.bd, %i.bb
  br label %.sink.split.i

bb.r:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.02.0.i45405
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !10505, !noalias !10508, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bs
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !10504, !noalias !10507, !noundef !13
  %.not21.i48 = icmp eq i8 %i.cg, %i.ci
  br i1 %.not21.i48, label %bb.n, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.cj = add i64 %i.bd, %.sroa.0.0.i.i43
  %umax.i47 = call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.cj)
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %.lr.ph407, %bb.y, %.lr.ph414, %bb.ac, %bb.s
  %i.ck = phi i64 [ %umax.i47, %bb.s ], [ %umax.i, %bb.ac ], [ %i.dl, %.lr.ph414 ], [ %i.dm, %bb.y ], [ %i.bw, %.lr.ph407 ], [ %i.by, %bb.o ]
  %i.cl = phi i64 [ %i.aq, %bb.s ], [ %i.aq, %bb.ac ], [ %i.as, %.lr.ph414 ], [ %i.aq, %bb.y ], [ %i.as, %.lr.ph407 ], [ %i.aq, %bb.o ]
  %i.cm = phi ptr [ @824, %bb.s ], [ @824, %bb.ac ], [ @822, %.lr.ph414 ], [ @823, %bb.y ], [ @822, %.lr.ph407 ], [ @823, %bb.o ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ck, i64 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #44
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.r
  %.reass.reass = add i64 %i.bd, %invariant.op
  %i.cn = add i64 %.reass.reass, %.sroa.02.0.i45405
  br label %.sink.split.i

bb.u:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !10509)
  call void @llvm.experimental.noalias.scope.decl(metadata !10510)
  call void @llvm.experimental.noalias.scope.decl(metadata !10511)
  %.promoted.i = load i64, ptr %i.ah, align 8, !alias.scope !10509, !noalias !10512 ; 2 uses
  %i.co = add i64 %.promoted.i, %i.at             ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.aq
  br i1 %i.cp, label %.lr.ph.i, label %.critedge25

.lr.ph.i:                                         ; preds = %bb.u
  %i.cq = load i64, ptr %i.ai, align 8, !alias.scope !10509, !noalias !10512, !noundef !13
  %i.cr = load i64, ptr %i.ab, align 8, !alias.scope !10509, !noalias !10512 ; 8 uses
  %i.cs = load i64, ptr %i.aj, align 8, !alias.scope !10509, !noalias !10512
  %umax49.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.as)
  %i.ct = add i64 %i.cr, -1
  %.first_iter = icmp ult i64 %i.ct, %i.as
  %exitcond.not.i409.not = icmp ult i64 %i.cr, %i.as
  %invariant.op501 = sub i64 1, %i.cr
  %.not412 = icmp eq i64 %i.cr, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph.i
  %i.cu = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.de, %bb.x ] ; 8 uses
  %i.cv = phi i64 [ %i.co, %.lr.ph.i ], [ %i.df, %bb.x ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !10510, !noalias !10513, !noundef !13
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.da, %i.cq
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.w, label %.preheader190.preheader

.preheader190.preheader:                          ; preds = %bb.v
  br i1 %exitcond.not.i409.not, label %.lr.ph411, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %i.cu, %i.as
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.aa, %bb.w
  %i.de = phi i64 [ %i.dy, %bb.ad ], [ %i.dd, %bb.w ], [ %i.ds, %bb.aa ] ; 2 uses
  %i.df = add i64 %i.de, %i.at                    ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.aq
  br i1 %i.dg, label %bb.v, label %.critedge25

.preheader190:                                    ; preds = %bb.ab
  %i.dh = add i64 %.sroa.02.0.i410, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %umax49.i
  br i1 %exitcond.not.i, label %.preheader.preheader, label %.lr.ph411

.preheader.preheader:                             ; preds = %.preheader190, %.preheader190.preheader
  br i1 %.not412, label %.preheader.preheader._crit_edge, label %.lr.ph414

.lr.ph411:                                        ; preds = %.preheader190.preheader, %.preheader190
  %.sroa.02.0.i410 = phi i64 [ %i.dh, %.preheader190 ], [ %i.cr, %.preheader190.preheader ] ; 4 uses
  %i.di = add i64 %.sroa.02.0.i410, %i.cu         ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.aq
  br i1 %i.dj, label %bb.ab, label %bb.ac

.preheader:                                       ; preds = %bb.z
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %.preheader.preheader._crit_edge, label %.lr.ph414

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader, %.preheader
  %i.dk = add i64 %i.cu, %i.as                    ; 2 uses
  store i64 %i.dk, ptr %i.ah, align 8, !alias.scope !10509, !noalias !10512
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread"

.lr.ph414:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i413 = phi i64 [ %i.dl, %.preheader ], [ %i.cr, %.preheader.preheader ]
  %i.dl = add i64 %.sroa.2.0.i413, -1             ; 5 uses
  br i1 %.first_iter, label %bb.y, label %.invoke

bb.y:                                             ; preds = %.lr.ph414
  %i.dm = add i64 %i.dl, %i.cu                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.aq
  br i1 %i.dn, label %bb.z, label %.invoke

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dl
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !10511, !noalias !10514, !noundef !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !10510, !noalias !10513, !noundef !13
  %.not.i = icmp eq i8 %i.dp, %i.dr
  br i1 %.not.i, label %.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = add i64 %i.cu, %i.cs
  br label %bb.x

bb.ab:                                            ; preds = %.lr.ph411
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.02.0.i410
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !10511, !noalias !10514, !noundef !13
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.di
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !10510, !noalias !10513, !noundef !13
  %.not21.i = icmp eq i8 %i.du, %i.dw
  br i1 %.not21.i, label %.preheader190, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph411
  %i.dx = add i64 %i.cu, %i.cr
  %umax.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.dx)
  br label %.invoke

bb.ad:                                            ; preds = %bb.ab
  %.reass360.reass = add i64 %i.cu, %invariant.op501
  %i.dy = add i64 %.reass360.reass, %.sroa.02.0.i410
  br label %bb.x

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread"
  %lpad.loopexit83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10502
  br label %.critedge25

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread": ; preds = %.preheader.preheader._crit_edge, %.preheader80.preheader._crit_edge, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread75"
  %.sroa.7.169 = phi i64 [ %i.av, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread75" ], [ %i.cu, %.preheader.preheader._crit_edge ], [ %i.bd, %.preheader80.preheader._crit_edge ]
  %.sroa.11.168 = phi i64 [ %i.aw, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread75" ], [ %i.dk, %.preheader.preheader._crit_edge ], [ %i.bv, %.preheader80.preheader._crit_edge ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7.169
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit

.critedge25:                                      ; preds = %bb.u, %bb.j, %.sink.split.i, %bb.x, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ec)
          to label %bb.ae unwind label %bb.f

bb.ae:                                            ; preds = %.critedge25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.af:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.thread"
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %.loopexit.split-lp
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.ah:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h29759506bc374699E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(248) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 248, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 248) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h2b433d6d94641426E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10517
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 40, i64 noundef 8) #45, !noalias !10517 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h33a6fec7ce303a90E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 32, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h46eafb8372174f4eE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 728, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 728) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h549e7a41859852ddE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 80, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 80) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h62c6dc6e7c4efc61E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 56, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 56) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h6b6626b46148407fE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 88, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 88) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h96a21efa859bcbe7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10520
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 40, i64 noundef 8) #45, !noalias !10520 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17ha149226c3342ac32E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 32, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb176de478848c470E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10523
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 40, i64 noundef 8) #45, !noalias !10523 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb18fa237a9570807E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 72, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 72) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hdcc17ba042896645E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 632, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 632) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_zeroed_in17h555a8c133f98e836E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(4224) ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef 4224, i64 noundef 8) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 4224) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed22Box$LT$$u5b$T$u5d$$GT$16new_uninit_slice17h02fb6268cc4ab30fE"(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !12, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = call { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.e, ptr noundef nonnull %i.h, i64 noundef %0)
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @"_ZN5alloc5boxed4iter110_$LT$impl$u20$core..iter..traits..exact_size..ExactSizeIterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$3len17h715838e042a254bbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 1 %i.a)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h1aedac092aa18217E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17he3cbc5b31d41210eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6ece919b5794c9adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h2038b50160d5a76aE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h8d5d5164891732bdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h814bf0944917be9fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h3d1b5321bcc92e0fE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17he97383ac5d57c745E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17haf163a9e22fc313eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h3eee645987ee931fE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hea6e5a3febbb66dfE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h0db7b4f6317b0588E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h51febc81f69415a4E"(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hc302d613c343214bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h85bc334d75d176bfE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h5e49232eb0e77b12E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h0ebf8c9fa94ebd23E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17ha2cbb86329c4a736E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !10534, !noalias !10535
  call void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hee2fd16440dbe98fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !10536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10533
  %i.c = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h87402915916583fcE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h103a3818baff2451E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  tail call void %i.e(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17ha9ec4c4ae07e78c7E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN5alloc5boxed7convert110_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$4from17ha511defe4357c0bbE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10539
  %i.a = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 88, i64 noundef range(i64 1, 9) 8) #45, !noalias !10539 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0114144b26e10cc9E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 88) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr36drop_in_place$LT$snafu..Whatever$GT$17hb1875ddacd7c0850E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) #42
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0114144b26e10cc9E.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
end_hunk_0
