Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6pretty12DocAllocator9as_string17hc27b96594ba60bdfE:bb.a
          to label %.noexc20 unwind label %bb.b, !inline_history !1

.noexc20:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !555989
  br i1 %i.i, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h789d1fad39d9514bE.exit", !prof !20

bb.b:                                             ; preds = %bb.a, %bb.c, %bb.f
  %.sroa.012.0 = phi i1 [ %.sroa.012.1, %bb.f ], [ true, %bb.a ], [ true, %bb.c ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i8, ptr %i.f, align 8, !range !21, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = and i1 %.sroa.012.0, %i.l
  br i1 %or.cond, label %bb.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.c:                                             ; preds = %.noexc20
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10210, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10245) #52
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h789d1fad39d9514bE.exit": ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = load i8, ptr %i.f, align 8, !range !21, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h789d1fad39d9514bE.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = call { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17hb136f3cbea972320E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  br label %bb.f

bb.e:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h789d1fad39d9514bE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %i.h, i64 7, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.7.0 = phi i64 [ %i.r, %bb.d ], [ %.sroa.3.0.copyload, %bb.e ]
  %.sroa.6.0 = phi ptr [ %i.q, %bb.d ], [ %.sroa.2.0.copyload, %bb.e ]
  %.sroa.02.0 = phi i8 [ 7, %bb.d ], [ 9, %bb.e ]
  %.sroa.012.1 = xor i1 %i.n, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.s, align 8
  store i8 %.sroa.02.0, ptr %i.c, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.611.0..sroa_idx, align 8
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.i, %bb.h, %bb.b
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !555991)
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !555991 ; 2 uses
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !555991, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !555991
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i8, ptr %1, align 8, !range !67, !noundef !19 ; 3 uses
  %.not = icmp eq i8 %i.b, 15                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %.pr = load i8, ptr %.val, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i8 [ %.pr, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.010.0 = phi ptr [ %.val, %bb.b ], [ %1, %bb.a ] ; 6 uses
  switch i8 %i.d, label %bb.d [
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.cp

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !18, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !19
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !align !18, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !19
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 23
  %i.o = load i8, ptr %i.n, align 1, !noundef !19
  %i.p = zext i8 %i.o to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.8.0 = phi i64 [ %i.h, %bb.e ], [ %i.l, %bb.f ], [ %i.p, %bb.g ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ %i.j, %bb.f ], [ %i.m, %bb.g ] ; 9 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.h
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.q, %._crit_edge.i ], [ 0, %bb.h ] ; 9 uses
  %i.q = add i64 %.sroa.01.0.i, 32                ; 2 uses
  %.not.i = icmp ugt i64 %i.q, %.sroa.8.0
  br i1 %.not.i, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.i
  %.not36.i = icmp eq i64 %.sroa.01.0.i, -32
  br i1 %.not36.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.i
  %i.r = icmp ult i64 %.sroa.01.0.i, %.sroa.8.0
  br i1 %i.r, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread33

iter.check:                                       ; preds = %.preheader.i
  %i.s = shl i64 %indvar, 5
  %i.t = sub i64 %.sroa.8.0, %i.s                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.t, 32
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %.sroa.8.0, 31                   ; 3 uses
  %n.vec = sub nuw i64 %i.t, %i.u                 ; 3 uses
  %i.v = add i64 %.sroa.01.0.i, %n.vec
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi56 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !alias.scope !556011
  %wide.load57 = load <16 x i8>, ptr %i.y, align 1, !alias.scope !556011
  %i.z = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.aa = icmp slt <16 x i8> %wide.load57, zeroinitializer
  %i.ab = or <16 x i1> %vec.phi, %i.z             ; 2 uses
  %i.ac = or <16 x i1> %vec.phi56, %i.aa          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !555994

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.ac, %i.ab
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ae = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not66 = icmp eq i16 %i.ae, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.u, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.u, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not66, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.af = and i64 %.sroa.8.0, 3                   ; 2 uses
  %n.vec58 = sub i64 %i.t, %i.af                  ; 2 uses
  %2 = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %2, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %3 = add i64 %.sroa.01.0.i, %n.vec58
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi60 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr67, %vec.epilog.vector.body ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index59
  %wide.load61 = load <4 x i8>, ptr %i.ah, align 1, !alias.scope !556011
  %i.ai = icmp slt <4 x i8> %wide.load61, zeroinitializer
  %i.aj = or <4 x i1> %vec.phi60, %i.ai
  %.fr67 = freeze <4 x i1> %i.aj                  ; 2 uses
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !555995

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = bitcast <4 x i1> %.fr67 to i4
  %.not68 = icmp eq i4 %i.al, 0                   ; 2 uses
  %cmp.n63 = icmp eq i64 %i.af, 0
  br i1 %cmp.n63, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.ph = phi i64 [ %.sroa.01.0.i, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  %.sroa.011.023.i.ph = phi i1 [ true, %iter.check ], [ %.not66, %vec.epilog.iter.check ], [ %.not68, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.sroa.01.124.i = phi i64 [ %i.ap, %.lr.ph25.i ], [ %.sroa.01.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.sroa.011.023.i = phi i1 [ %i.ao, %.lr.ph25.i ], [ %.sroa.011.023.i.ph, %.lr.ph25.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.124.i
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !556011, !noundef !19
  %.inv.i = icmp sgt i8 %i.an, -1
  %i.ao = select i1 %.inv.i, i1 %.sroa.011.023.i, i1 false ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.124.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %.sroa.8.0
  br i1 %exitcond.not.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i, !llvm.loop !555996

._crit_edge.i:                                    ; preds = %.preheader14.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i
  %i.ar = load <32 x i8>, ptr %i.aq, align 1, !alias.scope !556011
  %i.as = icmp slt <32 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <32 x i1> %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.au, label %bb.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit: ; preds = %.lr.ph25.i, %vec.epilog.middle.block, %middle.block
  %.lcssa53 = phi i1 [ %.not68, %vec.epilog.middle.block ], [ %.not66, %middle.block ], [ %i.ao, %.lr.ph25.i ]
  br i1 %.lcssa53, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread33, label %.lr.ph.i.preheader

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread: ; preds = %.preheader14.i, %._crit_edge.i
  %.not.i34.i = icmp samesign eq i64 %.sroa.8.0, 0
  br i1 %.not.i34.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.8.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i"
  %.sroa.0.037.i = phi i64 [ %i.fz, %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i" ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.6.036.i = phi i16 [ %.sroa.44.0.i.i.i, %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i" ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.2.035.i = phi ptr [ %.sroa.2.324.i, %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i" ], [ %i.av, %.lr.ph.i.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.2.035.i, i64 -1 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !556012, !noundef !19 ; 3 uses
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread20.i", label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i": ; preds = %.lr.ph.i
  %i.az = icmp ne ptr %.sroa.0.0, %i.aw
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds i8, ptr %.sroa.2.035.i, i64 -2 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !556012, !noundef !19 ; 3 uses
  %i.bc = and i8 %i.bb, 31
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = icmp slt i8 %i.bb, -64
  br i1 %i.be, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i", label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread20.i": ; preds = %.lr.ph.i
  %i.bf = zext nneg i8 %i.ax to i32
  br label %bb.k

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i"
  %i.bg = icmp ne ptr %.sroa.0.0, %i.ba
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds i8, ptr %.sroa.2.035.i, i64 -3 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !556012, !noundef !19 ; 3 uses
  %i.bj = and i8 %i.bi, 15
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = icmp slt i8 %i.bi, -64
  br i1 %i.bl, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit21.i.i.i", label %bb.j

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit21.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i"
  %i.bm = icmp ne ptr %.sroa.0.0, %i.bh
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.2.035.i, i64 -4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !556012, !noundef !19
  %i.bp = and i8 %i.bo, 7
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 6
  %i.bs = and i8 %i.bi, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  br label %bb.j

bb.j:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit21.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i"
  %.sroa.2.2.i = phi ptr [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit21.i.i.i" ], [ %i.bh, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i" ]
  %.sroa.04.1.i.i.i = phi i32 [ %i.bu, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit21.i.i.i" ], [ %i.bk, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit19.i.i.i" ]
  %i.bv = shl nuw nsw i32 %.sroa.04.1.i.i.i, 6
  %i.bw = and i8 %i.bb, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i": ; preds = %bb.j, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i"
  %.sroa.2.1.i = phi ptr [ %.sroa.2.2.i, %bb.j ], [ %i.ba, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i" ]
  %.sroa.04.0.i.i.i = phi i32 [ %i.by, %bb.j ], [ %i.bd, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9a9765bdc7a59633E.exit17.i.i.i" ]
  %i.bz = shl nuw nsw i32 %.sroa.04.0.i.i.i, 6
  %i.ca = and i8 %i.ax, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %.not.i25 = icmp eq i32 %i.cc, 1114112
  br i1 %.not.i25, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i", %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread20.i"
  %spec.select.i25.i = phi i32 [ %i.bf, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread20.i" ], [ %i.cc, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i" ] ; 60 uses
  %.sroa.2.324.i = phi ptr [ %i.aw, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread20.i" ], [ %.sroa.2.1.i, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.i" ] ; 2 uses
  %.not.i.i.i = icmp sgt i16 %.sroa.6.036.i, -1
  br i1 %.not.i.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = lshr i32 %spec.select.i25.i, 10
  switch i32 %i.cd, label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.thread.i.i.i [
    i32 0, label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 12, label %bb.p
    i32 124, label %bb.q
    i32 125, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

bb.p:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

bb.q:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

bb.r:                                             ; preds = %bb.l
  br label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i

_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.01.0.i.i.i.i = phi i64 [ 6, %bb.r ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ 4, %bb.p ], [ 5, %bb.q ], [ 0, %bb.l ]
  %i.ce = lshr i32 %spec.select.i25.i, 3
  %i.cf = and i32 %i.ce, 127
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr @_ZN13unicode_width6tables25EMOJI_PRESENTATION_LEAVES17h05c586bbe18c5a41E, i64 %.sroa.01.0.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !19
  %i.ck = trunc i32 %spec.select.i25.i to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.s, label %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.thread.i.i.i

_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.thread.i.i.i: ; preds = %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i, %bb.l
  %i.co = and i16 %.sroa.6.036.i, 8192
  %.not37.i.i.i = icmp eq i16 %i.co, 0
  br i1 %.not37.i.i.i, label %bb.u, label %bb.t

bb.s:                                             ; preds = %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.i.i.i
  %i.cp = and i16 %.sroa.6.036.i, -20480
  %i.cq = icmp eq i16 %i.cp, -28672
  %..i.i.i = select i1 %i.cq, i8 0, i8 2
  br label %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i"

bb.t:                                             ; preds = %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.thread.i.i.i
  %i.cr = and i16 %.sroa.6.036.i, 32767
  br label %bb.v

bb.u:                                             ; preds = %_ZN13unicode_width6tables29starts_emoji_presentation_seq17h666dd8132501b5ceE.exit.thread.i.i.i
  %i.cs = icmp samesign ult i32 %spec.select.i25.i, 161
  br i1 %i.cs, label %bb.w, label %.thread98.thread.i.i.i

bb.v:                                             ; preds = %bb.t, %bb.k
  %.sroa.0.0.i.i.i = phi i16 [ %i.cr, %bb.t ], [ %.sroa.6.036.i, %bb.k ] ; 9 uses
  %i.ct = icmp samesign ult i32 %spec.select.i25.i, 161
  br i1 %i.ct, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.u
  %cond.i.i.i = icmp eq i32 %spec.select.i25.i, 10
  br i1 %cond.i.i.i, label %bb.x, label %"_ZN13unicode_width6tables9str_width28_$u7b$$u7b$closure$u7d$$u7d$17ha5189e3bf8201a90E.exit.i"
end_hunk_0
