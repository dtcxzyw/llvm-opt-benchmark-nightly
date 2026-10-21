Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN98_$LT$toml_edit..value..Value$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToNickelValue$GT$8to_value17h2d83a8753103d8d7E":bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) %i.mh) #83, !noalias !123133, !inline_history !122959
  br label %.body24.thread

bb.cv:                                            ; preds = %.body46
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !123133, !inline_history !122959
  unreachable

.body24.thread:                                   ; preds = %.body46, %bb.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.cw
  %eh.lpad-body25147 = phi { ptr, i32 } [ %i.ml, %bb.cw ], [ %i.md, %bb.cu ], [ %i.md, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %eh.lpad-body47, %.body46 ]
  invoke void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h365c4ed716c759f8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ac) #86
          to label %common.resume unwind label %bb.cy, !noalias !123115, !inline_history !122929

bb.cw:                                            ; preds = %bb.ce, %bb.cf, %bb.ci, %bb.ch
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr338drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$$RF$str$C$$RF$toml_edit..value..Value$RP$$GT$$C$$LT$toml_edit..value..Value$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToNickelValue$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha5711727830c09ccE"(ptr nonnull %i.ir, ptr nonnull %i.is) #86
          to label %.body24.thread unwind label %bb.cx, !noalias !123129, !inline_history !122990

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !123129, !inline_history !122990
  unreachable

bb.cy:                                            ; preds = %.body24.thread
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.db, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.cy
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !123115, !inline_history !122929
  unreachable

.thread:                                          ; preds = %bb.cd, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %bb.ca
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ja, %bb.ca ], [ %i.jn, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i ], [ %i.jn, %bb.cd ] ; 2 uses
  %i.mo = load ptr, ptr %i.is, align 8, !invariant.load !145, !noalias !123115 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i16, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.thread
  invoke void %i.mo(ptr noundef nonnull %i.ir)
          to label %bb.da unwind label %bb.db, !noalias !123115

bb.da:                                            ; preds = %bb.cz, %.thread
  %i.mp = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !range !146, !invariant.load !145, !noalias !123115 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !range !181, !invariant.load !145, !noalias !123115 ; 2 uses
  %i.mt = icmp ult i64 %i.ms, -9223372036854775807
  call void @llvm.assume(i1 %i.mt), !noalias !123115
  %i.mu = icmp eq i64 %i.mq, 0
  br i1 %i.mu, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.da
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) %i.ms) #83, !noalias !123115
  br label %common.resume

bb.db:                                            ; preds = %bb.cz
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !range !146, !invariant.load !145, !noalias !123115 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !range !181, !invariant.load !145, !noalias !123115 ; 2 uses
  %i.na = icmp ult i64 %i.mz, -9223372036854775807
  call void @llvm.assume(i1 %i.na), !noalias !123115
  %i.nb = icmp eq i64 %i.mx, 0
  br i1 %i.nb, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.db
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef %i.mx, i64 noundef range(i64 1, -9223372036854775807) %i.mz) #83, !noalias !123115
  br label %.body

"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h693ea887972239deE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !123152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !123115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 -9223372036854775808, ptr %i.am, align 8
  call void @_ZN16nickel_lang_core4term6record10RecordData3new17h36f8e1134e0105ceE(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.an, i1 noundef zeroext false, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(192) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.nc = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue14record_posless17heca82e0fedb09f30E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hacc6870df5fcf3d7E.exit, %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h693ea887972239deE.exit", %"_ZN118_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h277221847ffd5238E.exit", %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h31f94958b4782f5aE.exit10, %bb.q, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hacc6870df5fcf3d7E.exit6, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h31f94958b4782f5aE.exit
  %.sroa.0.0 = phi ptr [ %i.ay, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h31f94958b4782f5aE.exit ], [ %i.bo, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hacc6870df5fcf3d7E.exit ], [ %i.cb, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hacc6870df5fcf3d7E.exit6 ], [ %.sroa.0.0.i, %bb.q ], [ %i.co, %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h31f94958b4782f5aE.exit10 ], [ %i.ip, %"_ZN118_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h277221847ffd5238E.exit" ], [ %i.nc, %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h693ea887972239deE.exit" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hff918bde1a674e16E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hda4fbecce3106276E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !145 ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hebd68d37e5756f9aE.exit"
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hebd68d37e5756f9aE.exit" ] ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.sroa.22.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.22.0.copyload
  %.val.i = load i64, ptr %i.f, align 8, !range !168, !alias.scope !123165, !noalias !123166, !noundef !145 ; 2 uses
  %switch = icmp sgt i64 %.val.i, 0
  br i1 %switch, label %bb.c, label %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hb0113d4bd324f3f4E.exit"

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val5.i = load ptr, ptr %i.i, align 8, !noalias !123166, !nonnull !145, !noundef !145
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123167
  br label %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hb0113d4bd324f3f4E.exit"

"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hb0113d4bd324f3f4E.exit": ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17hfecd0030c345ea98E"(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hebd68d37e5756f9aE.exit" unwind label %.body, !inline_history !123163

._crit_edge:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hebd68d37e5756f9aE.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hb0113d4bd324f3f4E.exit"
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN174_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4f70ccbcb0144e2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr311drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h68b8ae8ebb6f8f54E.exit" unwind label %bb.d, !inline_history !123164

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hebd68d37e5756f9aE.exit": ; preds = %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hb0113d4bd324f3f4E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hda4fbecce3106276E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !145 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

"_ZN4core3ptr311drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h68b8ae8ebb6f8f54E.exit": ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve17h8ecf2857de87bb99E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 13 uses
  %i.d = alloca [120 x i8], align 8               ; 11 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.415.i328 = alloca [36 x i8], align 4     ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.415.i = alloca [36 x i8], align 4        ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0589 = alloca i64, align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0586 = alloca i64, align 8               ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9468 = alloca [24 x i8], align 8         ; 2 uses
  %i.r = alloca [4 x i8], align 4                 ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [4 x i8], align 4                 ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 8 uses
  %i.ad = alloca [64 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = load i32, ptr %3, align 4, !range !186, !noundef !145
  %.not = icmp eq i32 %i.ag, 2                    ; 4 uses
  %.sroa.0112.0 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %.sroa.0112.0, align 4    ; 4 uses
  %.sroa.8.0 = select i1 %.not, i32 undef, i32 %i.ah ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ai = load i8, ptr %2, align 8, !range !153, !noundef !145
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 16 uses
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 200 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noundef !145
  %.not224 = icmp eq ptr %i.an, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  store i64 -9223372036854775806, ptr %i.ad, align 8
  br i1 %.not224, label %bb.y, label %bb.z

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %.thread607, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 %i.ah, ptr %i.t, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123479)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !123479, !noundef !145
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.val.i = load i64, ptr %i.at, align 8, !alias.scope !123479, !noundef !145
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.val5.i = load i64, ptr %i.au, align 8, !alias.scope !123479, !noundef !145
  %i.av = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t), !noalias !123479 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123481)
  %i.aw = lshr i64 %i.av, 57
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !123482, !noundef !145 ; 2 uses
  %i.ba = load ptr, ptr %i.as, align 8, !alias.scope !123482, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.br, %bb.h ]
  %.pn.i.i = phi i64 [ %i.av, %bb.e ], [ %i.bs, %bb.h ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.az     ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bb, align 1, !noalias !123483 ; 2 uses
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i = phi i16 [ %i.bq, %bb.g ], [ %i.bd, %bb.f ] ; 3 uses
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = add i64 %.sroa.01.0.i.i.i, %i.bf
  %i.bh = and i64 %i.bg, %i.az
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [40 x i8], ptr %i.ba, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -40
  %.val3.i.i.i = load i32, ptr %i.bk, align 4, !noalias !123484, !noundef !145
  %i.bl = icmp eq i32 %.sroa.8.0, %.val3.i.i.i
  br i1 %i.bl, label %bb.i, label %bb.g, !prof !154

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %select.unfold, !prof !147

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bp = add i16 %.sroa.06.0.i33.i.i, -1
  %i.bq = and i16 %i.bp, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.br = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bs = add i64 %.sroa.01.0.i.i.i, %i.br
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.thread607

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bu = load i64, ptr %i.bt, align 8, !range !287, !noundef !145 ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  %i.bw = add i64 %i.bu, -9223372036854775807
  %i.bx = select i1 %i.bv, i64 %i.bw, i64 0
  switch i64 %i.bx, label %.thread607 [
    i64 0, label %bb.k
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds i8, ptr %i.bj, i64 -24
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0118.0 = phi ptr [ %i.by, %bb.j ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !145, !noundef !145
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !145 ; 7 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.k
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !123485
  %i.cf = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cc, i64 noundef range(i64 1, 9) 1) #83, !noalias !123485 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82, !noalias !123486
  unreachable

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.l
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.cf, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ca, i64 %i.cc, i1 false), !noalias !123487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.cc, ptr %i.s, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.4126.sroa.4.0..sroa.4126.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 %i.cc, ptr %.sroa.4126.sroa.4.0..sroa.4126.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123488)
  %i.ch = invoke noundef zeroext i1 @_ZN3std4path7PathBuf3pop17h0bff1ff2ad4a3f00E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit" unwind label %bb.o, !noalias !123488 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i256 = load i64, ptr %i.s, align 8, !range !146, !alias.scope !123489, !noundef !145 ; 2 uses
  %i.cj = icmp eq i64 %.val.i256, 0
  br i1 %i.cj, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !alias.scope !123490, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i256, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123491
  br label %common.resume

common.resume:                                    ; preds = %bb.ak, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit429", %bb.am, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.o ], [ %i.ci, %bb.p ], [ %eh.lpad-body, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit429" ], [ %i.fp, %bb.am ], [ %i.fm, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit": ; preds = %bb.n
  %.sroa.0463.0.copyload = load i64, ptr %i.s, align 8, !alias.scope !123492
  %.sroa.4464.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !alias.scope !123492
  %.sroa.5465.0.copyload = load i64, ptr %.sroa.4126.sroa.4.0..sroa.4126.0..sroa_idx.sroa_idx, align 8, !alias.scope !123492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread607

.thread607:                                       ; preds = %bb.i, %bb.c, %select.unfold, %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit"
  %.sroa.6.sroa.0.0 = phi ptr [ %.sroa.4464.0.copyload, %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit" ], [ undef, %select.unfold ], [ undef, %bb.c ], [ undef, %bb.i ]
  %.sroa.6.sroa.4.0 = phi i64 [ %.sroa.5465.0.copyload, %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit" ], [ undef, %select.unfold ], [ undef, %bb.c ], [ undef, %bb.i ]
  %.sroa.09.0 = phi i64 [ %.sroa.0463.0.copyload, %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc8bec8a50e5e60cbE.exit" ], [ -9223372036854775808, %select.unfold ], [ -9223372036854775808, %bb.c ], [ -9223372036854775808, %bb.i ] ; 2 uses
  %.not223 = icmp eq i64 %.sroa.09.0, -9223372036854775808 ; 3 uses
  %..sroa.6.sroa.0.0 = select i1 %.not223, ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.0.0
  %..sroa.6.sroa.4.0 = select i1 %.not223, i64 0, i64 %.sroa.6.sroa.4.0
  %..sroa.09.0 = select i1 %.not223, i64 0, i64 %.sroa.09.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !145
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cn
  store i64 %..sroa.09.0, ptr %i.ae, align 8, !alias.scope !123493
  %.sroa.4.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %..sroa.6.sroa.0.0, ptr %.sroa.4.0..sroa_idx.i258, align 8, !alias.scope !123493
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %..sroa.6.sroa.4.0, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !123493
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.cl, ptr %i.cp, align 8, !alias.scope !123493
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.co, ptr %i.cq, align 8, !alias.scope !123493
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h98b99c2e44591718E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !145, !align !163, !noundef !145
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !145
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !range !167, !noundef !145
  br label %bb.q

bb.q:                                             ; preds = %bb.an, %.thread607
  %.sroa.6213.sroa.0.0 = phi ptr [ %.sroa.4216.sroa.0.0.copyload, %bb.an ], [ undef, %.thread607 ] ; 5 uses
  %.sroa.6213.sroa.5.0 = phi i64 [ %.sroa.4216.sroa.4.0.copyload, %bb.an ], [ undef, %.thread607 ]
  %.sroa.0209.0 = phi ptr [ @2977, %bb.an ], [ %i.cs, %.thread607 ] ; 2 uses
  %.sroa.6210.0 = phi i64 [ 8, %bb.an ], [ %i.cu, %.thread607 ] ; 2 uses
  %.sroa.0211.0 = phi i64 [ %.sroa.0215.0.copyload, %bb.an ], [ -9223372036854775808, %.thread607 ] ; 6 uses
  %.sroa.0217.0 = phi i8 [ 0, %bb.an ], [ %i.cw, %.thread607 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !145, !noundef !145 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !145 ; 17 uses
  %.idx = mul nuw nsw i64 %i.da, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.dd = icmp eq i64 %i.da, 0
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17h1dae703f63faf35bE.exit.i"
  %i.de = icmp eq ptr %i.dg, %i.db
  br i1 %i.de, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %i.df = phi ptr [ %i.dg, %bb.r ], [ %i.cy, %bb.q ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  %.val.i259 = load ptr, ptr %i.dh, align 8, !noalias !123494, !nonnull !145, !noundef !145
  %i.di = getelementptr i8, ptr %i.df, i64 16
  %.val11.i = load i64, ptr %i.di, align 8, !noalias !123494, !noundef !145 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !123495
  %i.dj = icmp slt i64 %.val11.i, 0
  br i1 %i.dj, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.dk = icmp eq i64 %.val11.i, 0
  br i1 %i.dk, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit.i.i", label %bb.s

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !123496
  %i.dl = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val11.i, i64 noundef range(i64 1, 9) 1) #83, !noalias !123496 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.invoke, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit.i.i"

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit.i.i": ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i259, i64 %.val11.i, i1 false), !noalias !123497
  store i64 %.val11.i, ptr %i.p, align 8, !noalias !123495
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !123495
  store i64 %.val11.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !123495
  invoke void @_ZN3std4path7PathBuf5_push17h178afc062798cae0E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0209.0, i64 noundef %.sroa.6210.0)
          to label %_ZN3std4path7PathBuf4push17h7f1b259615779548E.exit.i.i unwind label %bb.t, !noalias !123495

bb.t:                                             ; preds = %bb.w, %_ZN3std4path7PathBuf4push17h7f1b259615779548E.exit.i.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit.i.i"
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val5.i.i = load i64, ptr %i.p, align 8, !range !146, !alias.scope !123498, !noalias !123495, !noundef !145 ; 2 uses
  %i.do = icmp eq i64 %.val5.i.i, 0
  br i1 %i.do, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val6.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !123495, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef %.val5.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123499
  br label %.body

_ZN3std4path7PathBuf4push17h7f1b259615779548E.exit.i.i: ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !123495
  %.val7.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !123500, !noalias !123501, !nonnull !145, !noundef !145
  %.val8.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !123500, !noalias !123501, !noundef !145
  invoke fastcc void @_ZN16nickel_lang_core5cache11SourceCache15get_or_add_file17h7d51c355a9c6f94eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(296) %i.al, ptr nonnull %.val7.i.i, i64 %.val8.i.i, i8 noundef %.sroa.0217.0)
          to label %bb.v unwind label %bb.t, !noalias !123495

bb.v:                                             ; preds = %_ZN3std4path7PathBuf4push17h7f1b259615779548E.exit.i.i
  %i.dp = load i32, ptr %i.o, align 8, !range !197, !noalias !123495, !noundef !145
  %i.dq = trunc nuw i32 %i.dp to i1               ; 2 uses
  %i.dr = load i32, ptr %i.dc, align 8, !noalias !123495 ; 10 uses
  br i1 %i.dq, label %bb.w, label %"_ZN4core3ptr146drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..CacheOp$LT$nickel_lang_parser..files..FileId$GT$$C$std..io..error..Error$GT$$GT$17h0061bf4e615d3b5eE.exit.i.i"

bb.w:                                             ; preds = %bb.v
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dc)
          to label %"_ZN4core3ptr146drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..CacheOp$LT$nickel_lang_parser..files..FileId$GT$$C$std..io..error..Error$GT$$GT$17h0061bf4e615d3b5eE.exit.i.i" unwind label %bb.t, !noalias !123495

"_ZN4core3ptr146drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..CacheOp$LT$nickel_lang_parser..files..FileId$GT$$C$std..io..error..Error$GT$$GT$17h0061bf4e615d3b5eE.exit.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !123495
  %.val3.i.i = load i64, ptr %i.p, align 8, !range !146, !alias.scope !123498, !noalias !123495, !noundef !145 ; 2 uses
  %i.ds = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ds, label %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17h1dae703f63faf35bE.exit.i", label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr146drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..CacheOp$LT$nickel_lang_parser..files..FileId$GT$$C$std..io..error..Error$GT$$GT$17h0061bf4e615d3b5eE.exit.i.i"
  %.val4.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !123495, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123502
  br label %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17h1dae703f63faf35bE.exit.i"

"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17h1dae703f63faf35bE.exit.i": ; preds = %bb.x, %"_ZN4core3ptr146drop_in_place$LT$core..result..Result$LT$nickel_lang_core..cache..CacheOp$LT$nickel_lang_parser..files..FileId$GT$$C$std..io..error..Error$GT$$GT$17h0061bf4e615d3b5eE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !123495
  br i1 %i.dq, label %bb.r, label %.thread639

bb.y:                                             ; preds = %bb.b
  %.sroa.4154.0.copyload = load ptr, ptr %i.ao, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i64, ptr %i.dt, align 4
  store i64 %i.du, ptr %.sroa.3165.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4154.0.copyload, ptr %.sroa.2164.0..sroa_idx, align 8
  br label %bb.dp

bb.z:                                             ; preds = %bb.b
  call void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..error..ImportErrorKind$GT$17h290896098ea8df6bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %.not, label %.thread625, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.ah, ptr %i.r, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123503)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !123503, !noundef !145
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %select.unfold623, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %.val.i262 = load i64, ptr %i.dz, align 8, !alias.scope !123503, !noundef !145
  %i.ea = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %.val5.i263 = load i64, ptr %i.ea, align 8, !alias.scope !123503, !noundef !145
  %i.eb = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i262, i64 %.val5.i263, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r), !noalias !123503 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123505)
  %i.ec = lshr i64 %i.eb, 57
  %i.ed = trunc nuw nsw i64 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !123506, !noundef !145 ; 2 uses
  %i.eg = load ptr, ptr %i.dy, align 8, !alias.scope !123506, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i264 = insertelement <16 x i8> poison, i8 %i.ed, i64 0
  %.sroa.0.15.vec.insert.i.i.i265 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i264, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.9.0.i.i.i267 = phi i64 [ 0, %bb.ab ], [ %i.ex, %bb.ae ]
  %.pn.i.i268 = phi i64 [ %i.eb, %bb.ab ], [ %i.ey, %bb.ae ]
  %.sroa.01.0.i.i.i269 = and i64 %.pn.i.i268, %i.ef ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.01.0.i.i.i269
  %.sroa.0.0.copyload.i26.i.i270 = load <16 x i8>, ptr %i.eh, align 1, !noalias !123507 ; 2 uses
  %i.ei = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i270, %.sroa.0.15.vec.insert.i.i.i265
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.not32.i.i271 = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not32.i.i271, label %._crit_edge.i.i276, label %.lr.ph.i.i272

.lr.ph.i.i272:                                    ; preds = %bb.ac, %bb.ad
  %.sroa.06.0.i33.i.i273 = phi i16 [ %i.ew, %bb.ad ], [ %i.ej, %bb.ac ] ; 3 uses
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i273, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.01.0.i.i.i269, %i.el
  %i.en = and i64 %i.em, %i.ef
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.eg, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %.val3.i.i.i274 = load i32, ptr %i.eq, align 4, !noalias !123508, !noundef !145
  %i.er = icmp eq i32 %.sroa.8.0, %.val3.i.i.i274
  br i1 %i.er, label %bb.af, label %bb.ad, !prof !154

._crit_edge.i.i276:                               ; preds = %bb.ad, %bb.ac
  %i.es = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i270, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %bb.ae, label %select.unfold623, !prof !147

bb.ad:                                            ; preds = %.lr.ph.i.i272
  %i.ev = add i16 %.sroa.06.0.i33.i.i273, -1
  %i.ew = and i16 %i.ev, %.sroa.06.0.i33.i.i273   ; 2 uses
  %.not.i.not.i.i275 = icmp eq i16 %i.ew, 0
  br i1 %.not.i.not.i.i275, label %._crit_edge.i.i276, label %.lr.ph.i.i272

bb.ae:                                            ; preds = %._crit_edge.i.i276
  %i.ex = add i64 %.sroa.9.0.i.i.i267, 16         ; 2 uses
  %i.ey = add i64 %.sroa.01.0.i.i.i269, %i.ex
  br label %bb.ac

select.unfold623:                                 ; preds = %._crit_edge.i.i276, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread625

bb.af:                                            ; preds = %.lr.ph.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 -16
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !145, !noundef !145
  %i.fb = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %i.fc = load i64, ptr %i.fb, align 8, !noundef !145
  br label %.thread625

.thread625:                                       ; preds = %select.unfold623, %bb.z, %bb.af
  %.sroa.642.0 = phi i64 [ %i.fc, %bb.af ], [ undef, %bb.z ], [ undef, %select.unfold623 ]
  %.sroa.041.0 = phi ptr [ %i.fa, %bb.af ], [ null, %bb.z ], [ null, %select.unfold623 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !noundef !145
  call void @_ZN16nickel_lang_core7package10PackageMap3get17h57d911239cd61edaE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.am, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.041.0, i64 %.sroa.642.0, i32 noundef %i.fe, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %3)
  %i.ff = load i64, ptr %i.ac, align 8, !range !205, !noundef !145 ; 2 uses
  %.not230 = icmp eq i64 %i.ff, -9223372036854775805
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8            ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread625
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4181.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6173.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 %i.ff, ptr %0, align 8
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fh, ptr %.sroa.2179.0..sroa_idx, align 8
  %.sroa.3180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fj, ptr %.sroa.3180.0..sroa_idx, align 8
  br label %bb.dp

bb.ah:                                            ; preds = %.thread625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.fk = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #83 ; 4 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ai, label %bb.aj, !prof !147

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #82
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fj)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef 24, i64 noundef 8) #83
  br label %common.resume

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 1, ptr %i.ab, align 8, !alias.scope !123509
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.fk, ptr %i.fn, align 8, !alias.scope !123509
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 1, ptr %i.fo, align 8, !alias.scope !123509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fj)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h580373f31a4f6a90E"(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #86
  br label %common.resume

bb.an:                                            ; preds = %bb.al
  %.sroa.0215.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4216.sroa.0.0.copyload = load ptr, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.4216.sroa.4.0..sroa.4216.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4216.sroa.4.0.copyload = load i64, ptr %.sroa.4216.sroa.4.0..sroa.4216.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.q

bb.ao:                                            ; preds = %bb.bu, %.invoke, %bb.cz, %bb.cy, %bb.ci, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i", %bb.ca, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i", %bb.br, %bb.dg, %bb.df, %bb.dh, %select.unfold700, %bb.cm
  %.sroa.0110.0 = phi i8 [ %.sroa.0110.1, %bb.dh ], [ %.sroa.0110.1, %bb.cy ], [ %.sroa.0110.1, %bb.cz ], [ %.sroa.0110.1, %select.unfold700 ], [ 1, %.invoke ], [ %.sroa.0110.1, %bb.dg ], [ 0, %bb.cm ], [ %.sroa.0110.1, %bb.df ], [ 1, %bb.ci ], [ 1, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i" ], [ 1, %bb.ca ], [ 1, %bb.bu ], [ 1, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i" ], [ 1, %bb.br ]
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = trunc nuw i8 %.sroa.0110.0 to i1
  br label %.body

.body:                                            ; preds = %bb.at, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i", %bb.ao, %bb.t, %bb.u
  %.sroa.0110.0.lpad-body = phi i1 [ true, %bb.t ], [ true, %bb.u ], [ %i.fr, %bb.ao ], [ true, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i" ], [ true, %bb.at ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.dn, %bb.t ], [ %i.dn, %bb.u ], [ %i.fq, %bb.ao ], [ %common.resume.op.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i" ], [ %common.resume.op.i, %bb.at ]
  %i.fs = and i64 %.sroa.0211.0, 9223372036854775807
  %i.ft = icmp ne i64 %i.fs, 0
  %or.cond774.not = select i1 %i.ft, i1 %.sroa.0110.0.lpad-body, i1 false
  br i1 %or.cond774.not, label %bb.do, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit429"

.thread639:                                       ; preds = %"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve28_$u7b$$u7b$closure$u7d$$u7d$17h1dae703f63faf35bE.exit.i"
  store i32 %i.dr, ptr %i.y, align 4
  br i1 %.not, label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit", label %bb.bm

._crit_edge:                                      ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0586)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0589)
  %i.fu = icmp eq i64 %i.da, 0                    ; 2 uses
  br i1 %i.fu, label %_ZN4core4iter6traits8iterator8Iterator7collect17h7fa0dfa971a8deb4E.exit.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %.idx.i = mul nuw nsw i64 %i.da, 24             ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !123510
  %i.fv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, 9) 8) #83, !noalias !123510 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.invoke, label %.preheader.i.i.preheader.i.i.i.i.i

.invoke:                                          ; preds = %.lr.ph, %bb.s, %bb.ap
  %i.fx = phi i64 [ 8, %bb.ap ], [ 1, %bb.s ], [ 0, %.lr.ph ]
  %i.fy = phi i64 [ %.idx.i, %bb.ap ], [ %.val11.i, %bb.s ], [ %.val11.i, %.lr.ph ]
  %i.fz = phi ptr [ @1687, %bb.ap ], [ @2913, %bb.s ], [ @2913, %.lr.ph ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.fx, i64 %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #82
          to label %.cont unwind label %bb.ao

.cont:                                            ; preds = %.invoke
  unreachable

.preheader.i.i.preheader.i.i.i.i.i:               ; preds = %bb.ap
  store i64 %i.da, ptr %.sroa.0589, align 8, !noalias !123511
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.aq, %.preheader.i.i.preheader.i.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ge, %bb.aq ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %.val20.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !123512, !nonnull !145, !noundef !145
  %i.gc = getelementptr i8, ptr %i.ga, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !123512, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !123513
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val21.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i)
          to label %bb.aq unwind label %.body.i.i.i.i.i, !noalias !123512

bb.aq:                                            ; preds = %.preheader.i.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %.val20.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !123514
  %i.ge = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !123513
  %i.gf = icmp eq i64 %i.ge, %i.da
  br i1 %i.gf, label %_ZN4core4iter6traits8iterator8Iterator7collect17h7fa0dfa971a8deb4E.exit.i, label %.preheader.i.i.i.i.i.i.i

common.resume.i:                                  ; preds = %bb.bb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i", %bb.au, %.body.i.i.i.i.i
  %.val.i430 = phi ptr [ %i.fv, %.body.i.i.i.i.i ], [ %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, %bb.au ], [ %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i" ], [ %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, %bb.bb ] ; 2 uses
  %.val1.i431 = phi i64 [ %.val20.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.da, %bb.au ], [ %i.da, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i" ], [ %i.da, %bb.bb ] ; 2 uses
  %.sink.i = phi ptr [ %.sroa.0589, %.body.i.i.i.i.i ], [ %.sroa.0586, %bb.au ], [ %.sroa.0586, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i" ], [ %.sroa.0586, %bb.bb ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.gq, %.body.i.i.i.i.i ], [ %i.gr, %bb.au ], [ %.pn.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i" ], [ %.pn.i, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123515)
  call void @llvm.experimental.noalias.scope.decl(metadata !123516), !noalias !123517
  %i.gg = icmp eq i64 %.val1.i431, 0
  br i1 %i.gg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i", label %.lr.ph.i.i.i432

.lr.ph.i.i.i432:                                  ; preds = %common.resume.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i"
  %.sroa.0.09.i.i.i = phi i64 [ %i.gi, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i" ], [ 0, %common.resume.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %.val.i430, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.gi = add nuw i64 %.sroa.0.09.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123518), !noalias !123517
  %i.gj = load i64, ptr %i.gh, align 8, !range !168, !alias.scope !123519, !noalias !123520, !noundef !145 ; 3 uses
  %i.gk = icmp eq i64 %i.gj, -9223372036854775808
  br i1 %i.gk, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i432
  call void @llvm.experimental.noalias.scope.decl(metadata !123521), !noalias !123517
  call void @llvm.experimental.noalias.scope.decl(metadata !123522), !noalias !123517
  %i.gl = icmp eq i64 %i.gj, 0
  br i1 %i.gl, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i", label %bb.as
end_hunk_0
begin_hunk_1_@"_ZN99_$LT$nickel_lang_core..cache..AstResolver$u20$as$u20$nickel_lang_core..cache..AstImportResolver$GT$7resolve17h8ecf2857de87bb99E":bb.a

bb.aw:                                            ; preds = %bb.av
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %bb.ay, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.aw
  %i.gy = icmp eq i64 %i.gw, 0
  br i1 %i.gy, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !123525
  %i.gz = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gw, i64 noundef range(i64 1, 9) 1) #83, !noalias !123525 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.ax ], [ 0, %bb.aw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.gw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82
          to label %.noexc.i unwind label %bb.au, !noalias !123517

.noexc.i:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.gz, %bb.ax ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.gu, i64 %i.gw, i1 false), !noalias !123526
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.sroa.6.0.i = phi ptr [ %.sroa.10.0.i.i.i, %bb.az ], [ %i.gu, %bb.av ] ; 3 uses
  %.sroa.0.0.i281 = phi i64 [ %i.gw, %bb.az ], [ %i.gs, %bb.av ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !123517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !123517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !123517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !123517
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h1da2cd65779e358aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, i64 noundef %i.da)
          to label %bb.bd unwind label %bb.bc

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i": ; preds = %bb.bf, %bb.be, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.hc, %bb.bc ], [ %i.hd, %bb.be ], [ %i.hd, %bb.bf ] ; 2 uses
  %i.hb = icmp eq i64 %.sroa.0.0.i281, 0
  br i1 %i.hb, label %common.resume.i, label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i281, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123527
  br label %common.resume.i

bb.bc:                                            ; preds = %bb.ba
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i"

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !123517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !123517
  store ptr %i.k, ptr %i.l, align 8, !noalias !123517
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !123517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !123528
  store ptr @2980, ptr %i.h, align 8, !noalias !123529
  %.sroa.4.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i282, align 8, !noalias !123529
  %.sroa.5.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i283, align 8, !noalias !123529
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.624.0..sroa_idx.i, align 8, !noalias !123529
  %.sroa.725.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.725.0..sroa_idx.i, align 8, !noalias !123529
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.bg unwind label %bb.be, !noalias !123517

bb.be:                                            ; preds = %bb.bd
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123530)
  call void @llvm.experimental.noalias.scope.decl(metadata !123531)
  %.val.i.i7.i = load i64, ptr %i.k, align 8, !range !146, !alias.scope !123532, !noalias !123517, !noundef !145 ; 2 uses
  %i.he = icmp eq i64 %.val.i.i7.i, 0
  br i1 %i.he, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i8.i = load ptr, ptr %i.hf, align 8, !alias.scope !123532, !noalias !123517, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8.i, i64 noundef %.val.i.i7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123533
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit9.i"

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123528
  call void @llvm.experimental.noalias.scope.decl(metadata !123534)
  call void @llvm.experimental.noalias.scope.decl(metadata !123535)
  %.val.i.i10.i = load i64, ptr %i.k, align 8, !range !146, !alias.scope !123536, !noalias !123517, !noundef !145 ; 2 uses
  %i.hg = icmp eq i64 %.val.i.i10.i, 0
  br i1 %i.hg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i11.i = load ptr, ptr %i.hh, align 8, !alias.scope !123536, !noalias !123517, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123537
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i": ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !123517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !123517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9468, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !123538)
  br i1 %i.fu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i"
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.hj, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i" ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.hj = add nuw i64 %.sroa.0.09.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123539)
  %i.hk = load i64, ptr %i.hi, align 8, !range !168, !alias.scope !123540, !noalias !123541, !noundef !145 ; 3 uses
  %i.hl = icmp eq i64 %i.hk, -9223372036854775808
  br i1 %i.hl, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i", label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !123542)
  call void @llvm.experimental.noalias.scope.decl(metadata !123543)
  %i.hm = icmp eq i64 %i.hk, 0
  br i1 %i.hm, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !123544, !noalias !123541, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123545
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i": ; preds = %bb.bj, %bb.bi, %.lr.ph.i.i.i.i
  %i.ho = icmp eq i64 %i.hj, %i.da
  br i1 %i.ho, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit12.i"
  %i.hp = icmp eq i64 %i.da, 0
  br i1 %i.hp, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i.i"
  %i.hq = mul nuw i64 %i.da, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6590.0..sroa.6590.0..sroa.6590.8..sroa.7587.0.copyload, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !123541
  br label %bb.bl

bb.bl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9833162732a805bE.exit.i.i", %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0586)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.4194.sroa.3.0..sroa.4194.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4194.sroa.3.0..sroa.4194.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.hr = ptrtoint ptr %.sroa.6.0.i to i64
  store i64 %.sroa.0.0.i281, ptr %0, align 8
  %.sroa.2192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hr, ptr %.sroa.2192.0..sroa_idx, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gw, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.4194.sroa.2.0..sroa.4194.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4194.sroa.2.0..sroa.4194.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9468, i64 24, i1 false)
  br label %bb.dj

bb.bm:                                            ; preds = %.thread639
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !145, !align !149, !noundef !145 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.ah, ptr %i.g, align 4, !noalias !123547
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 2 uses
  %.val.i288 = load i64, ptr %i.hu, align 8, !alias.scope !123546, !noundef !145
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %.val6.i = load i64, ptr %i.hv, align 8, !alias.scope !123546, !noundef !145
  %i.hw = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i288, i64 %.val6.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !123547 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123548)
  call void @llvm.experimental.noalias.scope.decl(metadata !123549)
  %i.hx = lshr i64 %i.hw, 57
  %i.hy = trunc nuw nsw i64 %i.hx to i8           ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !123550, !noundef !145 ; 2 uses
  %i.ib = load ptr, ptr %i.ht, align 8, !alias.scope !123550, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i289 = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %.sroa.0.15.vec.insert.i.i.i290 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i289, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %.sroa.9.0.i.i.i291 = phi i64 [ 0, %bb.bm ], [ %i.is, %bb.bp ]
  %.pn.i.i292 = phi i64 [ %i.hw, %bb.bm ], [ %i.it, %bb.bp ]
  %.sroa.01.0.i.i.i293 = and i64 %.pn.i.i292, %i.ia ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sroa.01.0.i.i.i293
  %.sroa.0.0.copyload.i26.i.i294 = load <16 x i8>, ptr %i.ic, align 1, !noalias !123551 ; 2 uses
  %i.id = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i294, %.sroa.0.15.vec.insert.i.i.i290
  %i.ie = bitcast <16 x i1> %i.id to i16          ; 2 uses
  %.not.i.not32.i.i295 = icmp eq i16 %i.ie, 0
  br i1 %.not.i.not32.i.i295, label %._crit_edge.i.i300, label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %bb.bn, %bb.bo
  %.sroa.06.0.i33.i.i297 = phi i16 [ %i.ir, %bb.bo ], [ %i.ie, %bb.bn ] ; 3 uses
  %i.if = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i297, i1 true)
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = add i64 %.sroa.01.0.i.i.i293, %i.ig
  %i.ii = and i64 %i.ih, %i.ia
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds [56 x i8], ptr %i.ib, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -56
  %.val3.i.i.i298 = load i32, ptr %i.il, align 4, !noalias !123552, !noundef !145
  %i.im = icmp eq i32 %.val3.i.i.i298, %.sroa.8.0
  br i1 %i.im, label %bb.bt, label %bb.bo, !prof !154

._crit_edge.i.i300:                               ; preds = %bb.bo, %bb.bn
  %i.in = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i294, splat (i8 -1)
  %i.io = bitcast <16 x i1> %i.in to i16
  %i.ip = icmp eq i16 %i.io, 0
  br i1 %i.ip, label %bb.bp, label %bb.bq, !prof !147

bb.bo:                                            ; preds = %.lr.ph.i.i296
  %i.iq = add i16 %.sroa.06.0.i33.i.i297, -1
  %i.ir = and i16 %i.iq, %.sroa.06.0.i33.i.i297   ; 2 uses
  %.not.i.not.i.i299 = icmp eq i16 %i.ir, 0
  br i1 %.not.i.not.i.i299, label %._crit_edge.i.i300, label %.lr.ph.i.i296

bb.bp:                                            ; preds = %._crit_edge.i.i300
  %i.is = add i64 %.sroa.9.0.i.i.i291, 16         ; 2 uses
  %i.it = add i64 %.sroa.01.0.i.i.i293, %i.is
  br label %bb.bn

bb.bq:                                            ; preds = %._crit_edge.i.i300
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !123553, !noundef !145
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.br, label %.noexc303, !prof !147

bb.br:                                            ; preds = %bb.bq
  %i.ix = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha3010023ad16f018E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ht, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hu, i1 noundef zeroext true)
          to label %.noexc303 unwind label %bb.ao ; 0 uses

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hb41473f080eb7046E.exit.i", %bb.cl, %.thread639
  %.not238 = icmp eq i64 %.sroa.0211.0, -9223372036854775808
  br i1 %.not238, label %bb.cn, label %bb.cm

.noexc303:                                        ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.iy = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 8, !range !153, !noalias !123554, !noundef !145
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i.i: ; preds = %.noexc303
  %.pre.i.i.i.i.i.i = load i64, ptr %i.iy, align 8, !noalias !123555
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !123555
  br label %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i": ; preds = %.noexc303
  %i.jc = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc310 unwind label %bb.ao ; 2 uses

.noexc310:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i"
  %i.jd = extractvalue { i64, i64 } %i.jc, 0
  %i.je = extractvalue { i64, i64 } %i.jc, 1      ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !noalias !123556
  store i8 1, ptr %i.iz, align 8, !noalias !123556
  br label %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i"

"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i": ; preds = %.noexc310, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i.i ], [ %i.je, %.noexc310 ]
  %i.jg = phi i64 [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i.i ], [ %i.jd, %.noexc310 ] ; 2 uses
  %i.jh = add i64 %i.jg, 1
  store i64 %i.jh, ptr %i.iy, align 8, !noalias !123555
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i)
  %.sroa.415.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.415.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.415.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !123557
  call void @llvm.experimental.noalias.scope.decl(metadata !123558)
  %.val.i.i = load ptr, ptr %i.ht, align 8, !alias.scope !123558, !noalias !123557, !nonnull !145, !noundef !145 ; 8 uses
  %.val4.i.i305 = load i64, ptr %i.hz, align 8, !alias.scope !123558, !noalias !123557, !noundef !145 ; 4 uses
  %.sroa.0.04.i.i.i.i = and i64 %.val4.i.i305, %i.hw ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.ji, align 1, !noalias !123559
  %i.jj = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.jk = bitcast <16 x i1> %i.jj to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.jk, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i.i309, label %._crit_edge.i.i.i.i, !prof !194

.lr.ph.i.i.i.i309:                                ; preds = %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i", %.lr.ph.i.i.i.i309
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i309 ], [ %.sroa.0.04.i.i.i.i, %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i" ]
  %i.jl = phi i64 [ %i.jm, %.lr.ph.i.i.i.i309 ], [ 0, %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i" ]
  %i.jm = add i64 %i.jl, 16                       ; 2 uses
  %i.jn = add i64 %i.jm, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.jn, %.val4.i.i305 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.jo, align 1, !noalias !123559
  %i.jp = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.jq = bitcast <16 x i1> %i.jp to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.jq, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i309, label %._crit_edge.i.i.i.i, !prof !195

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i309, %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i"
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i" ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i309 ]
  %.lcssa.i.i.i.i = phi i16 [ %i.jk, %"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h1fa47918b46fc347E.exit.i" ], [ %i.jq, %.lr.ph.i.i.i.i309 ]
  %i.jr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.js = zext nneg i16 %i.jr to i64
  %i.jt = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.js
  %i.ju = and i64 %i.jt, %.val4.i.i305            ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !noalias !123560, !noundef !145 ; 2 uses
  %i.jx = icmp sgt i8 %i.jw, -1
  br i1 %i.jx, label %bb.bs, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h86cbbe73ffbe26e6E.exit.i", !prof !147

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !123560
  %i.jy = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.jz = bitcast <16 x i1> %i.jy to i16          ; 2 uses
  %i.ka = icmp ne i16 %i.jz, 0
  call void @llvm.assume(i1 %i.ka)
  %i.kb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jz, i1 true)
  %i.kc = zext nneg i16 %i.kb to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.kc
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !123560
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h86cbbe73ffbe26e6E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h86cbbe73ffbe26e6E.exit.i": ; preds = %bb.bs, %._crit_edge.i.i.i.i
  %i.kd = phi i8 [ %.pre.i.i.i, %bb.bs ], [ %i.jw, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.kc, %bb.bs ], [ %i.ju, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.kf = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.kg = and i64 %i.kf, %.val4.i.i305
  store i8 %i.hy, ptr %i.ke, align 1, !noalias !123560
  %i.kh = getelementptr i8, ptr %.val.i.i, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 16
  store i8 %i.hy, ptr %i.ki, align 1, !noalias !123560
  %i.kj = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.kk = getelementptr inbounds [56 x i8], ptr %.val.i.i, i64 %i.kj ; 5 uses
  %i.kl = and i8 %i.kd, 1
  %i.km = zext nneg i8 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kk, i64 -56
  store i32 %.sroa.8.0, ptr %i.kn, align 8, !noalias !123561
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kk, i64 -52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.415.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.415.i, i64 36, i1 false), !noalias !123561
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kk, i64 -16
  store i64 %i.jg, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !123561
  %.sroa.6.0..sroa_idx.i306 = getelementptr inbounds i8, ptr %i.kk, i64 -8
  store i64 %.pre-phi.i.i.i, ptr %.sroa.6.0..sroa_idx.i306, align 8, !noalias !123561
  %i.ko = load <2 x i64>, ptr %i.iu, align 8, !alias.scope !123558, !noalias !123557
  %i.kp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.km, i64 0
  %i.kq = sub <2 x i64> %i.ko, %i.kp
  store <2 x i64> %i.kq, ptr %i.iu, align 8, !alias.scope !123558, !noalias !123557
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i)
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h86cbbe73ffbe26e6E.exit.i"
  %.pn.i307 = phi ptr [ %i.kk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h86cbbe73ffbe26e6E.exit.i" ], [ %i.ik, %bb.bt ]
  %.sroa.0.0.i308 = getelementptr inbounds i8, ptr %.pn.i307, i64 -48
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h662e82c5ac66754eE"(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i308, i32 noundef %i.dr, i8 noundef %.sroa.0217.0)
          to label %bb.bv unwind label %bb.ao

bb.bv:                                            ; preds = %bb.bu
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ht, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.dr, ptr %i.f, align 4, !noalias !123563
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ht, i64 80 ; 2 uses
  %.val.i311 = load i64, ptr %i.ks, align 8, !alias.scope !123562, !noundef !145
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %.val6.i312 = load i64, ptr %i.kt, align 8, !alias.scope !123562, !noundef !145
  %i.ku = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i311, i64 %.val6.i312, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f), !noalias !123563 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123564)
  call void @llvm.experimental.noalias.scope.decl(metadata !123565)
  %i.kv = lshr i64 %i.ku, 57
  %i.kw = trunc nuw nsw i64 %i.kv to i8           ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ht, i64 56 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !123566, !noundef !145 ; 2 uses
  %i.kz = load ptr, ptr %i.kr, align 8, !alias.scope !123566, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i313 = insertelement <16 x i8> poison, i8 %i.kw, i64 0
  %.sroa.0.15.vec.insert.i.i.i314 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i313, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %bb.bv
  %.sroa.9.0.i.i.i315 = phi i64 [ 0, %bb.bv ], [ %i.lq, %bb.by ]
  %.pn.i.i316 = phi i64 [ %i.ku, %bb.bv ], [ %i.lr, %bb.by ]
  %.sroa.01.0.i.i.i317 = and i64 %.pn.i.i316, %i.ky ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.sroa.01.0.i.i.i317
  %.sroa.0.0.copyload.i26.i.i318 = load <16 x i8>, ptr %i.la, align 1, !noalias !123567 ; 2 uses
  %i.lb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i318, %.sroa.0.15.vec.insert.i.i.i314
  %i.lc = bitcast <16 x i1> %i.lb to i16          ; 2 uses
  %.not.i.not32.i.i319 = icmp eq i16 %i.lc, 0
  br i1 %.not.i.not32.i.i319, label %._crit_edge.i.i324, label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %bb.bw, %bb.bx
  %.sroa.06.0.i33.i.i321 = phi i16 [ %i.lp, %bb.bx ], [ %i.lc, %bb.bw ] ; 3 uses
  %i.ld = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i321, i1 true)
  %i.le = zext nneg i16 %i.ld to i64
  %i.lf = add i64 %.sroa.01.0.i.i.i317, %i.le
  %i.lg = and i64 %i.lf, %i.ky
  %i.lh = sub nsw i64 0, %i.lg
  %i.li = getelementptr inbounds [56 x i8], ptr %i.kz, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -56
  %.val3.i.i.i322 = load i32, ptr %i.lj, align 4, !noalias !123568, !noundef !145
  %i.lk = icmp eq i32 %.val3.i.i.i322, %i.dr
  br i1 %i.lk, label %bb.cc, label %bb.bx, !prof !154

._crit_edge.i.i324:                               ; preds = %bb.bx, %bb.bw
  %i.ll = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i318, splat (i8 -1)
  %i.lm = bitcast <16 x i1> %i.ll to i16
  %i.ln = icmp eq i16 %i.lm, 0
  br i1 %i.ln, label %bb.by, label %bb.bz, !prof !147

bb.bx:                                            ; preds = %.lr.ph.i.i320
  %i.lo = add i16 %.sroa.06.0.i33.i.i321, -1
  %i.lp = and i16 %i.lo, %.sroa.06.0.i33.i.i321   ; 2 uses
  %.not.i.not.i.i323 = icmp eq i16 %i.lp, 0
  br i1 %.not.i.not.i.i323, label %._crit_edge.i.i324, label %.lr.ph.i.i320

bb.by:                                            ; preds = %._crit_edge.i.i324
  %i.lq = add i64 %.sroa.9.0.i.i.i315, 16         ; 2 uses
  %i.lr = add i64 %.sroa.01.0.i.i.i317, %i.lq
  br label %bb.bw

bb.bz:                                            ; preds = %._crit_edge.i.i324
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ht, i64 64 ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 8, !alias.scope !123569, !noundef !145
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %bb.ca, label %.noexc327, !prof !147

bb.ca:                                            ; preds = %bb.bz
  %i.lv = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h76e818320bfd3261E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.kr, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ks, i1 noundef zeroext true)
          to label %.noexc327 unwind label %bb.ao ; 0 uses

.noexc327:                                        ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 8, !range !153, !noalias !123570, !noundef !145
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i: ; preds = %.noexc327
  %.pre.i.i.i.i.i = load i64, ptr %i.lw, align 8, !noalias !123571
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !123571
  br label %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i": ; preds = %.noexc327
  %i.ma = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc356 unwind label %bb.ao ; 2 uses

.noexc356:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i"
  %i.mb = extractvalue { i64, i64 } %i.ma, 0
  %i.mc = extractvalue { i64, i64 } %i.ma, 1      ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.mc, ptr %i.md, align 8, !noalias !123572
  store i8 1, ptr %i.lx, align 8, !noalias !123572
  br label %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i"

"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i": ; preds = %.noexc356, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i ], [ %i.mc, %.noexc356 ]
  %i.me = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i.i ], [ %i.mb, %.noexc356 ] ; 2 uses
  %i.mf = add i64 %i.me, 1
  store i64 %i.mf, ptr %i.lw, align 8, !noalias !123571
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i328)
  %.sroa.415.8..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %.sroa.415.i328, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.415.8..sroa_idx.i333, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !123573
  call void @llvm.experimental.noalias.scope.decl(metadata !123574)
  %.val.i.i334 = load ptr, ptr %i.kr, align 8, !alias.scope !123574, !noalias !123573, !nonnull !145, !noundef !145 ; 8 uses
  %.val4.i.i335 = load i64, ptr %i.kx, align 8, !alias.scope !123574, !noalias !123573, !noundef !145 ; 4 uses
  %.sroa.0.04.i.i.i.i336 = and i64 %.val4.i.i335, %i.ku ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i334, i64 %.sroa.0.04.i.i.i.i336
  %.sroa.0.0.copyload.i35.i.i.i.i337 = load <16 x i8>, ptr %i.mg, align 1, !noalias !123575
  %i.mh = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i337, zeroinitializer
  %i.mi = bitcast <16 x i1> %i.mh to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i338 = icmp eq i16 %i.mi, 0
  br i1 %.not.not.i.not6.i.i.i.i338, label %.lr.ph.i.i.i.i351, label %._crit_edge.i.i.i.i339, !prof !194

.lr.ph.i.i.i.i351:                                ; preds = %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i", %.lr.ph.i.i.i.i351
  %.sroa.0.07.i.i.i.i352 = phi i64 [ %.sroa.0.0.i.i.i.i353, %.lr.ph.i.i.i.i351 ], [ %.sroa.0.04.i.i.i.i336, %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i" ]
  %i.mj = phi i64 [ %i.mk, %.lr.ph.i.i.i.i351 ], [ 0, %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i" ]
  %i.mk = add i64 %i.mj, 16                       ; 2 uses
  %i.ml = add i64 %i.mk, %.sroa.0.07.i.i.i.i352
  %.sroa.0.0.i.i.i.i353 = and i64 %i.ml, %.val4.i.i335 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i.i334, i64 %.sroa.0.0.i.i.i.i353
  %.sroa.0.0.copyload.i3.i.i.i.i354 = load <16 x i8>, ptr %i.mm, align 1, !noalias !123575
  %i.mn = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i354, zeroinitializer
  %i.mo = bitcast <16 x i1> %i.mn to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i355 = icmp eq i16 %i.mo, 0
  br i1 %.not.not.i.not.i.i.i.i355, label %.lr.ph.i.i.i.i351, label %._crit_edge.i.i.i.i339, !prof !195

._crit_edge.i.i.i.i339:                           ; preds = %.lr.ph.i.i.i.i351, %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i"
  %.sroa.0.0.lcssa.i.i.i.i340 = phi i64 [ %.sroa.0.04.i.i.i.i336, %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i" ], [ %.sroa.0.0.i.i.i.i353, %.lr.ph.i.i.i.i351 ]
  %.lcssa.i.i.i.i341 = phi i16 [ %i.mi, %"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17hc7ab0fe1fabe0a3aE.exit.i" ], [ %i.mo, %.lr.ph.i.i.i.i351 ]
  %i.mp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i341, i1 true)
  %i.mq = zext nneg i16 %i.mp to i64
  %i.mr = add i64 %.sroa.0.0.lcssa.i.i.i.i340, %i.mq
  %i.ms = and i64 %i.mr, %.val4.i.i335            ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val.i.i334, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !noalias !123576, !noundef !145 ; 2 uses
  %i.mv = icmp sgt i8 %i.mu, -1
  br i1 %i.mv, label %bb.cb, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63fe4728c27499f2E.exit.i", !prof !147

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i339
  %.val2.i.i.i.i.i348 = load <16 x i8>, ptr %.val.i.i334, align 16, !noalias !123576
  %i.mw = icmp slt <16 x i8> %.val2.i.i.i.i.i348, zeroinitializer
  %i.mx = bitcast <16 x i1> %i.mw to i16          ; 2 uses
  %i.my = icmp ne i16 %i.mx, 0
  call void @llvm.assume(i1 %i.my)
  %i.mz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.mx, i1 true)
  %i.na = zext nneg i16 %i.mz to i64              ; 2 uses
  %.phi.trans.insert.i.i.i349 = getelementptr inbounds nuw i8, ptr %.val.i.i334, i64 %i.na
  %.pre.i.i.i350 = load i8, ptr %.phi.trans.insert.i.i.i349, align 1, !noalias !123576
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63fe4728c27499f2E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63fe4728c27499f2E.exit.i": ; preds = %bb.cb, %._crit_edge.i.i.i.i339
  %i.nb = phi i8 [ %.pre.i.i.i350, %bb.cb ], [ %i.mu, %._crit_edge.i.i.i.i339 ]
  %.sroa.0.0.i5.i.i.i.i342 = phi i64 [ %i.na, %bb.cb ], [ %i.ms, %._crit_edge.i.i.i.i339 ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i334, i64 %.sroa.0.0.i5.i.i.i.i342
  %i.nd = add i64 %.sroa.0.0.i5.i.i.i.i342, -16
  %i.ne = and i64 %i.nd, %.val4.i.i335
  store i8 %i.kw, ptr %i.nc, align 1, !noalias !123576
  %i.nf = getelementptr i8, ptr %.val.i.i334, i64 %i.ne
  %i.ng = getelementptr i8, ptr %i.nf, i64 16
  store i8 %i.kw, ptr %i.ng, align 1, !noalias !123576
  %i.nh = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i342
  %i.ni = getelementptr inbounds [56 x i8], ptr %.val.i.i334, i64 %i.nh ; 5 uses
  %i.nj = and i8 %i.nb, 1
  %i.nk = zext nneg i8 %i.nj to i64
  %i.nl = getelementptr inbounds i8, ptr %i.ni, i64 -56
  store i32 %i.dr, ptr %i.nl, align 8, !noalias !123577
  %.sroa.415.0..sroa_idx.i343 = getelementptr inbounds i8, ptr %i.ni, i64 -52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.415.0..sroa_idx.i343, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.415.i328, i64 36, i1 false), !noalias !123577
  %.sroa.516.0..sroa_idx.i344 = getelementptr inbounds i8, ptr %i.ni, i64 -16
  store i64 %i.me, ptr %.sroa.516.0..sroa_idx.i344, align 8, !noalias !123577
  %.sroa.6.0..sroa_idx.i345 = getelementptr inbounds i8, ptr %i.ni, i64 -8
  store i64 %.pre-phi2.i.i, ptr %.sroa.6.0..sroa_idx.i345, align 8, !noalias !123577
  %i.nm = load <2 x i64>, ptr %i.ls, align 8, !alias.scope !123574, !noalias !123573
  %i.nn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.nk, i64 0
  %i.no = sub <2 x i64> %i.nm, %i.nn
  store <2 x i64> %i.no, ptr %i.ls, align 8, !alias.scope !123574, !noalias !123573
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i328)
  br label %bb.cd

bb.cc:                                            ; preds = %.lr.ph.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63fe4728c27499f2E.exit.i"
  %.pn.i346 = phi ptr [ %i.ni, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63fe4728c27499f2E.exit.i" ], [ %i.li, %bb.cc ] ; 6 uses
  %.sroa.0.0.i347 = getelementptr inbounds i8, ptr %.pn.i346, i64 -48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.8.0, ptr %i.e, align 4, !noalias !123579
  %i.np = getelementptr inbounds i8, ptr %.pn.i346, i64 -16 ; 2 uses
  %.val.i357 = load i64, ptr %i.np, align 8, !alias.scope !123578, !noundef !145
  %i.nq = getelementptr inbounds i8, ptr %.pn.i346, i64 -8
  %.val6.i358 = load i64, ptr %i.nq, align 8, !alias.scope !123578, !noundef !145
  %i.nr = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i357, i64 %.val6.i358, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !123579 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123580)
  call void @llvm.experimental.noalias.scope.decl(metadata !123581)
  %i.ns = lshr i64 %i.nr, 57
  %i.nt = trunc nuw nsw i64 %i.ns to i8           ; 3 uses
  %i.nu = getelementptr inbounds i8, ptr %.pn.i346, i64 -40 ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !alias.scope !123582, !noundef !145 ; 3 uses
  %i.nw = load ptr, ptr %.sroa.0.0.i347, align 8, !alias.scope !123582, !nonnull !145, !noundef !145 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i359 = insertelement <16 x i8> poison, i8 %i.nt, i64 0
  %.sroa.0.15.vec.insert.i.i.i360 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i359, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %bb.cd
  %.sroa.9.0.i.i.i361 = phi i64 [ 0, %bb.cd ], [ %i.on, %bb.cg ]
  %.pn.i.i362 = phi i64 [ %i.nr, %bb.cd ], [ %i.oo, %bb.cg ]
  %.sroa.01.0.i.i.i363 = and i64 %.pn.i.i362, %i.nv ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.sroa.01.0.i.i.i363
  %.sroa.0.0.copyload.i26.i.i364 = load <16 x i8>, ptr %i.nx, align 1, !noalias !123583 ; 2 uses
  %i.ny = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i364, %.sroa.0.15.vec.insert.i.i.i360
  %i.nz = bitcast <16 x i1> %i.ny to i16          ; 2 uses
  %.not.i.not32.i.i365 = icmp eq i16 %i.nz, 0
  br i1 %.not.i.not32.i.i365, label %._crit_edge.i.i370, label %.lr.ph.i.i366

.lr.ph.i.i366:                                    ; preds = %bb.ce, %bb.cf
  %.sroa.06.0.i33.i.i367 = phi i16 [ %i.om, %bb.cf ], [ %i.nz, %bb.ce ] ; 3 uses
  %i.oa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i367, i1 true)
  %i.ob = zext nneg i16 %i.oa to i64
  %i.oc = add i64 %.sroa.01.0.i.i.i363, %i.ob
  %i.od = and i64 %i.oc, %i.nv
  %i.oe = sub nsw i64 0, %i.od
  %i.of = getelementptr inbounds [20 x i8], ptr %i.nw, i64 %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -20
  %.val3.i.i.i368 = load i32, ptr %i.og, align 4, !noalias !123584, !noundef !145
  %i.oh = icmp eq i32 %.val3.i.i.i368, %.sroa.8.0
  br i1 %i.oh, label %bb.cl, label %bb.cf, !prof !154

._crit_edge.i.i370:                               ; preds = %bb.cf, %bb.ce
  %i.oi = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i364, splat (i8 -1)
  %i.oj = bitcast <16 x i1> %i.oi to i16
  %i.ok = icmp eq i16 %i.oj, 0
  br i1 %i.ok, label %bb.cg, label %bb.ch, !prof !147

bb.cf:                                            ; preds = %.lr.ph.i.i366
  %i.ol = add i16 %.sroa.06.0.i33.i.i367, -1
  %i.om = and i16 %i.ol, %.sroa.06.0.i33.i.i367   ; 2 uses
  %.not.i.not.i.i369 = icmp eq i16 %i.om, 0
  br i1 %.not.i.not.i.i369, label %._crit_edge.i.i370, label %.lr.ph.i.i366

bb.cg:                                            ; preds = %._crit_edge.i.i370
  %i.on = add i64 %.sroa.9.0.i.i.i361, 16         ; 2 uses
  %i.oo = add i64 %.sroa.01.0.i.i.i363, %i.on
  br label %bb.ce

bb.ch:                                            ; preds = %._crit_edge.i.i370
  %i.op = getelementptr inbounds i8, ptr %.pn.i346, i64 -32 ; 3 uses
  %i.oq = load i64, ptr %i.op, align 8, !alias.scope !123585, !noundef !145
  %i.or = icmp eq i64 %i.oq, 0
  br i1 %i.or, label %bb.ci, label %bb.cj, !prof !147

bb.ci:                                            ; preds = %bb.ch
  %i.os = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7a39b0c23e370255E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i347, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.np, i1 noundef zeroext true)
          to label %.noexc373 unwind label %bb.ao ; 0 uses

.noexc373:                                        ; preds = %bb.ci
  %.val.i.i375.pre = load ptr, ptr %.sroa.0.0.i347, align 8, !alias.scope !123586, !noalias !123587
  %.val4.i.i376.pre = load i64, ptr %i.nu, align 8, !alias.scope !123586, !noalias !123587
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc373, %bb.ch
  %.val4.i.i376 = phi i64 [ %.val4.i.i376.pre, %.noexc373 ], [ %i.nv, %bb.ch ] ; 4 uses
  %.val.i.i375 = phi ptr [ %.val.i.i375.pre, %.noexc373 ], [ %i.nw, %bb.ch ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !123586)
  %.sroa.0.04.i.i.i.i377 = and i64 %.val4.i.i376, %i.nr ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.val.i.i375, i64 %.sroa.0.04.i.i.i.i377
  %.sroa.0.0.copyload.i35.i.i.i.i378 = load <16 x i8>, ptr %i.ot, align 1, !noalias !123588
  %i.ou = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i378, zeroinitializer
  %i.ov = bitcast <16 x i1> %i.ou to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i379 = icmp eq i16 %i.ov, 0
  br i1 %.not.not.i.not6.i.i.i.i379, label %.lr.ph.i.i.i.i389, label %._crit_edge.i.i.i.i380, !prof !194

.lr.ph.i.i.i.i389:                                ; preds = %bb.cj, %.lr.ph.i.i.i.i389
  %.sroa.0.07.i.i.i.i390 = phi i64 [ %.sroa.0.0.i.i.i.i391, %.lr.ph.i.i.i.i389 ], [ %.sroa.0.04.i.i.i.i377, %bb.cj ]
  %i.ow = phi i64 [ %i.ox, %.lr.ph.i.i.i.i389 ], [ 0, %bb.cj ]
  %i.ox = add i64 %i.ow, 16                       ; 2 uses
  %i.oy = add i64 %i.ox, %.sroa.0.07.i.i.i.i390
  %.sroa.0.0.i.i.i.i391 = and i64 %i.oy, %.val4.i.i376 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val.i.i375, i64 %.sroa.0.0.i.i.i.i391
  %.sroa.0.0.copyload.i3.i.i.i.i392 = load <16 x i8>, ptr %i.oz, align 1, !noalias !123588
  %i.pa = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i392, zeroinitializer
  %i.pb = bitcast <16 x i1> %i.pa to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i393 = icmp eq i16 %i.pb, 0
  br i1 %.not.not.i.not.i.i.i.i393, label %.lr.ph.i.i.i.i389, label %._crit_edge.i.i.i.i380, !prof !195

._crit_edge.i.i.i.i380:                           ; preds = %.lr.ph.i.i.i.i389, %bb.cj
  %.sroa.0.0.lcssa.i.i.i.i381 = phi i64 [ %.sroa.0.04.i.i.i.i377, %bb.cj ], [ %.sroa.0.0.i.i.i.i391, %.lr.ph.i.i.i.i389 ]
  %.lcssa.i.i.i.i382 = phi i16 [ %i.ov, %bb.cj ], [ %i.pb, %.lr.ph.i.i.i.i389 ]
  %i.pc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i382, i1 true)
  %i.pd = zext nneg i16 %i.pc to i64
  %i.pe = add i64 %.sroa.0.0.lcssa.i.i.i.i381, %i.pd
  %i.pf = and i64 %i.pe, %.val4.i.i376            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.val.i.i375, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !123589, !noundef !145 ; 2 uses
  %i.pi = icmp sgt i8 %i.ph, -1
  br i1 %i.pi, label %bb.ck, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hb41473f080eb7046E.exit.i", !prof !147

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i380
  %.val2.i.i.i.i.i386 = load <16 x i8>, ptr %.val.i.i375, align 16, !noalias !123589
  %i.pj = icmp slt <16 x i8> %.val2.i.i.i.i.i386, zeroinitializer
  %i.pk = bitcast <16 x i1> %i.pj to i16          ; 2 uses
  %i.pl = icmp ne i16 %i.pk, 0
  call void @llvm.assume(i1 %i.pl)
  %i.pm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pk, i1 true)
  %i.pn = zext nneg i16 %i.pm to i64              ; 2 uses
  %.phi.trans.insert.i.i.i387 = getelementptr inbounds nuw i8, ptr %.val.i.i375, i64 %i.pn
  %.pre.i.i.i388 = load i8, ptr %.phi.trans.insert.i.i.i387, align 1, !noalias !123589
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hb41473f080eb7046E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hb41473f080eb7046E.exit.i": ; preds = %bb.ck, %._crit_edge.i.i.i.i380
  %i.po = phi i8 [ %.pre.i.i.i388, %bb.ck ], [ %i.ph, %._crit_edge.i.i.i.i380 ]
  %.sroa.0.0.i5.i.i.i.i383 = phi i64 [ %i.pn, %bb.ck ], [ %i.pf, %._crit_edge.i.i.i.i380 ] ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.val.i.i375, i64 %.sroa.0.0.i5.i.i.i.i383
  %i.pq = add i64 %.sroa.0.0.i5.i.i.i.i383, -16
  %i.pr = and i64 %i.pq, %.val4.i.i376
  store i8 %i.nt, ptr %i.pp, align 1, !noalias !123589
  %i.ps = getelementptr i8, ptr %.val.i.i375, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 16
  store i8 %i.nt, ptr %i.pt, align 1, !noalias !123589
  %i.pu = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i383
  %i.pv = getelementptr inbounds [20 x i8], ptr %.val.i.i375, i64 %i.pu ; 2 uses
  %i.pw = and i8 %i.po, 1
  %i.px = zext nneg i8 %i.pw to i64
  %i.py = load i64, ptr %i.op, align 8, !alias.scope !123586, !noalias !123587, !noundef !145
  %i.pz = sub i64 %i.py, %i.px
  store i64 %i.pz, ptr %i.op, align 8, !alias.scope !123586, !noalias !123587
  %i.qa = getelementptr inbounds i8, ptr %i.pv, i64 -20
  store i32 %.sroa.8.0, ptr %i.qa, align 4, !noalias !123590
  %.sroa.4.0..sroa_idx.i384 = getelementptr inbounds i8, ptr %i.pv, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i384, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.qb = getelementptr inbounds i8, ptr %.pn.i346, i64 -24 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !123586, !noalias !123587, !noundef !145
  %i.qd = add i64 %i.qc, 1
  store i64 %i.qd, ptr %i.qb, align 8, !alias.scope !123586, !noalias !123587
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit"

bb.cl:                                            ; preds = %.lr.ph.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit"

bb.cm:                                            ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit"
  store i64 %.sroa.0211.0, ptr %i.x, align 8
  %.sroa.10436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.6213.sroa.0.0, ptr %.sroa.10436.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6213.sroa.5.0, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hcde625ebb2780afbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef align 8 dereferenceable(48) %i.qe, i32 noundef %i.dr, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.co unwind label %bb.ao

bb.cn:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit", %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit"
  %.sroa.0110.1 = phi i8 [ 0, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit" ], [ 1, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h82916216a6ec66cdE.exit" ] ; 7 uses
  %i.qf = icmp eq i8 %.sroa.0217.0, 0
  br i1 %i.qf, label %bb.cq, label %.lr.ph.i.i.i.preheader

bb.co:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !123591)
  %i.qg = load i64, ptr %i.w, align 8, !range !168, !alias.scope !123591, !noundef !145 ; 2 uses
  %switch.i = icmp sgt i64 %i.qg, 0
  br i1 %switch.i, label %bb.cp, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit"

bb.cp:                                            ; preds = %bb.co
  %i.qh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i395 = load ptr, ptr %i.qh, align 8, !alias.scope !123591, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i395, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123592
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit": ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.cn

bb.cq:                                            ; preds = %bb.cn
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !nonnull !145, !align !149, !noundef !145 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123593)
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !123593, !noundef !145
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %select.unfold700, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %.val.i396 = load i64, ptr %i.qn, align 8, !alias.scope !123593, !noundef !145
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %.val5.i397 = load i64, ptr %i.qo, align 8, !alias.scope !123593, !noundef !145
  %i.qp = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i396, i64 %.val5.i397, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.y), !noalias !123593 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123594)
  call void @llvm.experimental.noalias.scope.decl(metadata !123595)
  %i.qq = lshr i64 %i.qp, 57
  %i.qr = trunc nuw nsw i64 %i.qq to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !123596, !noundef !145 ; 2 uses
  %i.qu = load ptr, ptr %i.qj, align 8, !alias.scope !123596, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i398 = insertelement <16 x i8> poison, i8 %i.qr, i64 0
  %.sroa.0.15.vec.insert.i.i.i399 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i398, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %.sroa.9.0.i.i.i401 = phi i64 [ 0, %bb.cr ], [ %i.rl, %bb.cu ]
  %.pn.i.i402 = phi i64 [ %i.qp, %bb.cr ], [ %i.rm, %bb.cu ]
  %.sroa.01.0.i.i.i403 = and i64 %.pn.i.i402, %i.qt ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.sroa.01.0.i.i.i403
  %.sroa.0.0.copyload.i26.i.i404 = load <16 x i8>, ptr %i.qv, align 1, !noalias !123597 ; 2 uses
  %i.qw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i404, %.sroa.0.15.vec.insert.i.i.i399
  %i.qx = bitcast <16 x i1> %i.qw to i16          ; 2 uses
  %.not.i.not32.i.i405 = icmp eq i16 %i.qx, 0
  br i1 %.not.i.not32.i.i405, label %._crit_edge.i.i410, label %.lr.ph.i.i406

.lr.ph.i.i406:                                    ; preds = %bb.cs, %bb.ct
  %.sroa.06.0.i33.i.i407 = phi i16 [ %i.rk, %bb.ct ], [ %i.qx, %bb.cs ] ; 3 uses
  %i.qy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i407, i1 true)
  %i.qz = zext nneg i16 %i.qy to i64
  %i.ra = add i64 %.sroa.01.0.i.i.i403, %i.qz
  %i.rb = and i64 %i.ra, %i.qt
  %i.rc = sub nsw i64 0, %i.rb
  %i.rd = getelementptr inbounds [24 x i8], ptr %i.qu, i64 %i.rc ; 2 uses
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 -24
  %.val3.i.i.i408 = load i32, ptr %i.re, align 4, !noalias !123598, !noundef !145
  %i.rf = icmp eq i32 %i.dr, %.val3.i.i.i408
  br i1 %i.rf, label %bb.cv, label %bb.ct, !prof !154

._crit_edge.i.i410:                               ; preds = %bb.ct, %bb.cs
  %i.rg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i404, splat (i8 -1)
  %i.rh = bitcast <16 x i1> %i.rg to i16
  %i.ri = icmp eq i16 %i.rh, 0
  br i1 %i.ri, label %bb.cu, label %select.unfold700, !prof !147

bb.ct:                                            ; preds = %.lr.ph.i.i406
  %i.rj = add i16 %.sroa.06.0.i33.i.i407, -1
  %i.rk = and i16 %i.rj, %.sroa.06.0.i33.i.i407   ; 2 uses
  %.not.i.not.i.i409 = icmp eq i16 %i.rk, 0
  br i1 %.not.i.not.i.i409, label %._crit_edge.i.i410, label %.lr.ph.i.i406

bb.cu:                                            ; preds = %._crit_edge.i.i410
  %i.rl = add i64 %.sroa.9.0.i.i.i401, 16         ; 2 uses
  %i.rm = add i64 %.sroa.01.0.i.i.i403, %i.rl
  br label %bb.cs

bb.cv:                                            ; preds = %.lr.ph.i.i406
  %i.rn = getelementptr inbounds i8, ptr %i.rd, i64 -16
  %i.ro = load ptr, ptr %i.rn, align 8, !nonnull !145, !align !149, !noundef !145
  br label %.lr.ph.i.i.i.preheader

select.unfold700:                                 ; preds = %._crit_edge.i.i410, %bb.cq
  %i.rp = load ptr, ptr %1, align 8, !nonnull !145, !align !149, !noundef !145 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.rr = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files6source17h9b34b2be1e64ff4fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.rq, i32 noundef %i.dr)
          to label %bb.cy unwind label %bb.ao     ; 2 uses

.lr.ph.i.i.i.preheader:                           ; preds = %bb.cn, %bb.di, %bb.cv
  %.sroa.0.0.i.sink = phi ptr [ %.sroa.0.0.i, %bb.di ], [ %i.ro, %bb.cv ], [ null, %bb.cn ]
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.sink, ptr %i.rs, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !123599)
  call void @llvm.experimental.noalias.scope.decl(metadata !123600)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.ru, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ru = add nuw i64 %.sroa.0.011.i.i.i, 1       ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.rt, align 8, !range !146, !alias.scope !123601, !noalias !123599, !noundef !145 ; 2 uses
  %i.rv = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.rv, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i
  %i.rw = getelementptr i8, ptr %i.rt, i64 8
  %.val9.i.i.i = load ptr, ptr %i.rw, align 8, !alias.scope !123600, !noalias !123599, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !123602
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i": ; preds = %bb.cw, %.lr.ph.i.i.i
  %i.rx = icmp eq i64 %i.ru, %i.da
  br i1 %i.rx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he16a54c7bfc14836E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he16a54c7bfc14836E.exit.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h5855e04aa3d25ebcE.exit.i.i.i"
  %.val2.i = load i64, ptr %i.af, align 8, !range !146, !alias.scope !123599, !noundef !145 ; 2 uses
  %i.ry = icmp eq i64 %.val2.i, 0
  br i1 %i.ry, label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h580373f31a4f6a90E.exit", label %bb.cx

bb.cx:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he16a54c7bfc14836E.exit.i"
  %i.rz = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cy, i64 noundef %i.rz, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !123599
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h580373f31a4f6a90E.exit"

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h580373f31a4f6a90E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he16a54c7bfc14836E.exit.i", %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.dk

bb.cy:                                            ; preds = %select.unfold700
  %i.sa = extractvalue { ptr, i64 } %i.rr, 0
  %i.sb = extractvalue { ptr, i64 } %i.rr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !123603
  %i.sc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -9223372036854775800, ptr %i.sc, align 8, !noalias !123603
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.sa, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !123603
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.sb, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !123603
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.d, align 8, !noalias !123603
  %.sroa.4.0..sroa_idx.i416 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !noalias !123603
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i416, align 8, !noalias !123603
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !123603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123604
  invoke fastcc void @"_ZN70_$LT$P$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$T$GT$$GT$14parse_tolerant17hbd46d4915b8b1ab7E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.rp, i32 noundef %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %i.d)
          to label %.noexc417 unwind label %bb.ao

.noexc417:                                        ; preds = %bb.cy
  %i.sd = load i64, ptr %i.b, align 8, !range !164, !noalias !123604, !noundef !145
  %i.se = trunc nuw i64 %i.sd to i1
  br i1 %i.se, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.noexc417
  %i.sf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.sf, i64 72, i1 false), !noalias !123604
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @"_ZN123_$LT$nickel_lang_parser..error..ParseErrors$u20$as$u20$core..convert..From$LT$nickel_lang_parser..error..ParseError$GT$$GT$4from17h91ce2c3a0b76d100E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.sg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %"_ZN70_$LT$P$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$T$GT$$GT$12parse_strict17he93f5b175751fe2eE.exit.thread.i" unwind label %bb.ao

bb.da:                                            ; preds = %.noexc417
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN9rustyline11line_buffer10LineBuffer6delete17hbfe919f9bbf2aa26E:bb.a
  store i64 %i.e, ptr %i.al, align 8, !alias.scope !128591
  store ptr %i.ah, ptr %i.a, align 8, !alias.scope !128591
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !alias.scope !128591
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h7d31566f248b6806E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5alloc6string6String5drain17h5a3f5089d255f1a3E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_ZN9rustyline11line_buffer10LineBuffer6insert17hfbb240c3992a9b25E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 0, 1114112) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 17 uses
  %i.b = icmp samesign ult i32 %1, 128            ; 4 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i32 %1, 65536
  %. = select i1 %i.d, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ]
  %i.e = mul i64 %.sroa.01.0, %2                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !145 ; 8 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !153, !noundef !145
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %i.g, %i.e
  %i.m = load i64, ptr %0, align 8, !range !146, !noundef !145
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !145 ; 7 uses
  %i.q = icmp eq i64 %i.p, %i.g                   ; 2 uses
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.h, label %bb.w

bb.g:                                             ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6"
  %.sroa.0.0 = phi i8 [ %i.eh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6" ], [ 2, %bb.e ]
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128628)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !128628, !nonnull !145, !noundef !145 ; 2 uses
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp ult i64 %i.p, %i.g
  br i1 %.not.i, label %bb.k, label %.split.i

bb.j:                                             ; preds = %bb.k, %.split.i, %bb.h
  br i1 %i.b, label %bb.o, label %bb.m

.split.i:                                         ; preds = %bb.i
  br i1 %i.q, label %bb.j, label %bb.l, !prof !154

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !noalias !128629, !noundef !145
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.j, label %bb.l, !prof !154

bb.l:                                             ; preds = %bb.k, %.split.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1770, i64 noundef 44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3266) #82, !noalias !128628
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.y = icmp samesign ult i32 %1, 2048
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.z, i64 3, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j
  %.sroa.01.0.i = phi i64 [ 2, %bb.m ], [ %..i, %bb.n ], [ 1, %bb.j ] ; 4 uses
  %i.aa = load i64, ptr %0, align 8, !range !146, !alias.scope !128630, !noundef !145
  %i.ab = sub nsw i64 %i.aa, %i.g
  %i.ac = icmp ugt i64 %.sroa.01.0.i, %i.ab
  br i1 %i.ac, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i", !prof !147

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %.sroa.01.0.i, i64 noundef 1, i64 noundef 1), !noalias !128631
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !128628
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i": ; preds = %bb.p, %bb.o
  %i.ad = phi ptr [ %i.t, %bb.o ], [ %.pre.i, %bb.p ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.p   ; 12 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %.sroa.01.0.i
  %i.ag = sub nsw i64 %i.g, %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.ae, i64 %i.ag, i1 false), !noalias !128629
  br i1 %i.b, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i"
  %i.ah = icmp samesign ult i32 %1, 2048
  %i.ai = trunc i32 %1 to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128              ; 3 uses
  %i.al = lshr i32 %1, 6
  %i.am = trunc i32 %i.al to i8                   ; 2 uses
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128              ; 2 uses
  %i.ap = lshr i32 %1, 12
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128
  %i.at = lshr i32 %1, 18
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = or disjoint i8 %i.au, -16
  br i1 %i.ah, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i"
  %i.aw = trunc nuw nsw i32 %1 to i8
  store i8 %i.aw, ptr %i.ae, align 1, !noalias !128629
  br label %_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = or disjoint i8 %i.am, -64
  store i8 %i.ax, ptr %i.ae, align 1, !noalias !128629
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ak, ptr %i.ay, align 1, !noalias !128629
  br label %_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit

bb.t:                                             ; preds = %bb.q
  %i.az = icmp samesign ult i32 %1, 65536
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = or disjoint i8 %i.aq, -32
  store i8 %i.ba, ptr %i.ae, align 1, !noalias !128629
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ao, ptr %i.bb, align 1, !noalias !128629
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ak, ptr %i.bc, align 1, !noalias !128629
  br label %_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit

bb.v:                                             ; preds = %bb.t
  store i8 %i.av, ptr %i.ae, align 1, !noalias !128629
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.as, ptr %i.bd, align 1, !noalias !128629
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ao, ptr %i.be, align 1, !noalias !128629
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %i.ak, ptr %i.bf, align 1, !noalias !128629
  br label %_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit

_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit: ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %i.bg = add nuw i64 %.sroa.01.0.i, %i.g
  store i64 %i.bg, ptr %i.f, align 8, !alias.scope !128628
  %i.bh = load i64, ptr %i.o, align 8, !noundef !145
  tail call void @"_ZN85_$LT$rustyline..undo..Changeset$u20$as$u20$rustyline..line_buffer..ChangeListener$GT$11insert_char17h8d94dbbe390a6e89E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %i.bh, i32 noundef %1)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6"

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128632
  store i64 0, ptr %i.a, align 8, !noalias !128632
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !128632
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !128632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128633)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.thread.i.i.i", !prof !154

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.thread.i.i.i": ; preds = %bb.w
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef range(i64 2, 1) %2, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !128632

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i": ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128635)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit

.noexc.i.i:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.thread.i.i.i"
  %i.bi = add i64 %2, -1                          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128636)
  %i.bj = icmp samesign ult i32 %1, 65536         ; 2 uses
  %..i.i.i.i.i.i.i.i.i = select i1 %i.bj, i64 3, i64 4 ; 6 uses
  %i.bk = trunc i32 %1 to i8                      ; 2 uses
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128              ; 3 uses
  %i.bn = lshr i32 %1, 6
  %i.bo = trunc i32 %i.bn to i8                   ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = or disjoint i8 %i.bp, -128              ; 2 uses
  %i.br = lshr i32 %1, 12
  %i.bs = trunc i32 %i.br to i8                   ; 2 uses
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = lshr i32 %1, 18
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, -16
  %i.by = or disjoint i8 %i.bs, -32
  %i.bz = or disjoint i8 %i.bo, -64
  br i1 %i.b, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %.noexc.i.i
  %.pre22.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %.pre13.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632
  br label %.split.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i", %.split.us.preheader.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.ce, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ %.pre13.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.cb = phi i64 [ %i.cj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ %.pre22.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.01.0.us.i.i.i.i.i.i = phi i64 [ %i.cl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ %i.bi, %.split.us.preheader.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128639)
  %i.cc = icmp sgt i64 %i.cb, -1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cd, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i", !prof !147

bb.x:                                             ; preds = %.split.us.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ca, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !128632

.noexc3.i.i:                                      ; preds = %bb.x
  %.pre.i.i.i.us.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %.pre12.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i": ; preds = %.noexc3.i.i, %.split.us.i.i.i.i.i.i
  %i.ce = phi i64 [ %i.ca, %.split.us.i.i.i.i.i.i ], [ %.pre12.i.i.i.i.i, %.noexc3.i.i ] ; 2 uses
  %i.cf = phi i64 [ %i.cb, %.split.us.i.i.i.i.i.i ], [ %.pre.i.i.i.us.i.i.i.i.i.i, %.noexc3.i.i ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632, !nonnull !145, !noundef !145 ; 2 uses
  %i.ch = icmp sgt i64 %i.cf, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bk, ptr %i.ci, align 1, !noalias !128640
  %i.cj = add nuw i64 %i.cb, 1                    ; 3 uses
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %i.ck = icmp eq i64 %.sroa.01.0.us.i.i.i.i.i.i, 0
  %i.cl = add i64 %.sroa.01.0.us.i.i.i.i.i.i, -1
  br i1 %i.ck, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit, label %.split.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.noexc.i.i
  %i.cm = icmp samesign ult i32 %1, 2048
  %.pre21.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632 ; 3 uses
  %.pre11.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632 ; 3 uses
  br i1 %i.cm, label %.split.split.us.split.us.i.i.i.i.i.i, label %.split.split.i.i.i.i.i.i

.split.split.us.split.us.i.i.i.i.i.i:             ; preds = %.split.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i"
  %i.cn = phi i64 [ %i.cs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %.pre11.i.i.i.i.i, %.split.i.i.i.i.i.i ] ; 2 uses
  %i.co = phi i64 [ %i.cy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %.pre21.i.i.i.i.i.i, %.split.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.us3.us.i.i.i.i.i.i = phi i64 [ %i.da, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %i.bi, %.split.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128639)
  %i.cp = icmp sgt i64 %i.co, -1
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = sub nsw i64 %i.cn, %i.co
  %i.cr = icmp ult i64 %i.cq, 2
  br i1 %i.cr, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i", !prof !147

bb.y:                                             ; preds = %.split.split.us.split.us.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.co, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !128632

.noexc4.i.i:                                      ; preds = %bb.y
  %.pre.i.i.i.us5.us.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %.pre10.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i": ; preds = %.noexc4.i.i, %.split.split.us.split.us.i.i.i.i.i.i
  %i.cs = phi i64 [ %i.cn, %.split.split.us.split.us.i.i.i.i.i.i ], [ %.pre10.i.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.ct = phi i64 [ %i.co, %.split.split.us.split.us.i.i.i.i.i.i ], [ %.pre.i.i.i.us5.us.i.i.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632, !nonnull !145, !noundef !145 ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, -1
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct ; 2 uses
  store i8 %i.bz, ptr %i.cw, align 1, !noalias !128640
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.bm, ptr %i.cx, align 1, !noalias !128640
  %i.cy = add nuw i64 %i.co, 2                    ; 3 uses
  store i64 %i.cy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %i.cz = icmp eq i64 %.sroa.01.0.us3.us.i.i.i.i.i.i, 0
  %i.da = add i64 %.sroa.01.0.us3.us.i.i.i.i.i.i, -1
  br i1 %i.cz, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit, label %.split.split.us.split.us.i.i.i.i.i.i

.split.split.i.i.i.i.i.i:                         ; preds = %.split.i.i.i.i.i.i
  br i1 %i.bj, label %.split.split.split.us.split.i.i.i.i.i.i, label %.split.split.split.i.i.i.i.i.i

.split.split.split.us.split.i.i.i.i.i.i:          ; preds = %.split.split.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i"
  %i.db = phi i64 [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %.pre11.i.i.i.i.i, %.split.split.i.i.i.i.i.i ] ; 2 uses
  %i.dc = phi i64 [ %i.dm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %.pre21.i.i.i.i.i.i, %.split.split.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.us9.i.i.i.i.i.i = phi i64 [ %i.do, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %i.bi, %.split.split.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128639)
  %i.dd = icmp sgt i64 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = sub nsw i64 %i.db, %i.dc
  %4 = icmp ugt i64 %..i.i.i.i.i.i.i.i.i, %i.de
  br i1 %4, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i", !prof !147

bb.z:                                             ; preds = %.split.split.split.us.split.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.dc, i64 noundef %..i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !128632

.noexc5.i.i:                                      ; preds = %bb.z
  %.pre.i.i.i.us11.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %.pre8.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i": ; preds = %.noexc5.i.i, %.split.split.split.us.split.i.i.i.i.i.i
  %i.df = phi i64 [ %i.db, %.split.split.split.us.split.i.i.i.i.i.i ], [ %.pre8.i.i.i.i.i, %.noexc5.i.i ] ; 2 uses
  %i.dg = phi i64 [ %i.dc, %.split.split.split.us.split.i.i.i.i.i.i ], [ %.pre.i.i.i.us11.i.i.i.i.i.i, %.noexc5.i.i ] ; 2 uses
  %i.dh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632, !nonnull !145, !noundef !145 ; 2 uses
  %i.di = icmp sgt i64 %i.dg, -1
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 3 uses
  store i8 %i.by, ptr %i.dj, align 1, !noalias !128640
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.bq, ptr %i.dk, align 1, !noalias !128640
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.bm, ptr %i.dl, align 1, !noalias !128640
  %i.dm = add nuw i64 %i.dc, %..i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %i.dm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %i.dn = icmp eq i64 %.sroa.01.0.us9.i.i.i.i.i.i, 0
  %i.do = add i64 %.sroa.01.0.us9.i.i.i.i.i.i, -1
  br i1 %i.dn, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit, label %.split.split.split.us.split.i.i.i.i.i.i

.split.split.split.i.i.i.i.i.i:                   ; preds = %.split.split.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i"
  %i.dp = phi i64 [ %i.dt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ], [ %.pre11.i.i.i.i.i, %.split.split.i.i.i.i.i.i ] ; 2 uses
  %i.dq = phi i64 [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ], [ %.pre21.i.i.i.i.i.i, %.split.split.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ed, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bi, %.split.split.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128639)
  %i.dr = icmp sgt i64 %i.dq, -1
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = sub nsw i64 %i.dp, %i.dq
  %5 = icmp ugt i64 %..i.i.i.i.i.i.i.i.i, %i.ds
  br i1 %5, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i", !prof !147

bb.aa:                                            ; preds = %.split.split.split.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.dq, i64 noundef %..i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !128632

.noexc6.i.i:                                      ; preds = %bb.aa
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %.pre.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !128638, !noalias !128632
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc6.i.i, %.split.split.split.i.i.i.i.i.i
  %i.dt = phi i64 [ %i.dp, %.split.split.split.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc6.i.i ] ; 2 uses
  %i.du = phi i64 [ %i.dq, %.split.split.split.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc6.i.i ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632, !nonnull !145, !noundef !145 ; 2 uses
  %i.dw = icmp sgt i64 %i.du, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du ; 4 uses
  store i8 %i.bx, ptr %i.dx, align 1, !noalias !128640
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 %i.bu, ptr %i.dy, align 1, !noalias !128640
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.bq, ptr %i.dz, align 1, !noalias !128640
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  store i8 %i.bm, ptr %i.ea, align 1, !noalias !128640
  %i.eb = add nuw i64 %i.dq, %..i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %i.eb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !128637, !noalias !128632
  %i.ec = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i, 0
  %i.ed = add i64 %.sroa.01.0.i.i.i.i.i.i, -1
  br i1 %i.ec, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit, label %.split.split.split.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.y, %bb.x, %bb.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.thread.i.i.i"
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128642)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !range !146, !alias.scope !128643, !noalias !128632, !noundef !145 ; 2 uses
  %i.ee = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ee, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !128643, !noalias !128632, !nonnull !145, !noundef !145
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !128644
  br label %common.resume

common.resume:                                    ; preds = %bb.ac, %bb.ad, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp89, %bb.ab ], [ %i.ei, %bb.ad ], [ %i.ei, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i"
  %.sroa.8.0.copyload = phi i64 [ %i.dm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %i.cy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %i.cj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i" ], [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ]
  %.sroa.5.0.copyload = phi ptr [ %i.dh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %i.cu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %i.cg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ inttoptr (i64 1 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i" ], [ %i.dv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.copyload = phi i64 [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us12.i.i.i.i.i.i" ], [ %i.cs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us6.us.i.i.i.i.i.i" ], [ %i.ce, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.us.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i" ], [ %i.dt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128632
  invoke fastcc void @_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias noundef align 8 dereferenceable(56) %3)
          to label %bb.ae unwind label %bb.ac

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6": ; preds = %bb.af, %bb.ae, %_ZN5alloc6string6String6insert17he2f3718abbcd26c3E.exit
  %i.ef = load i64, ptr %i.o, align 8, !noundef !145
  %i.eg = add i64 %i.ef, %i.e
  store i64 %i.eg, ptr %i.o, align 8
  %i.eh = zext i1 %i.q to i8
  br label %bb.g

bb.ac:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ej, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !128645
  br label %common.resume

bb.ae:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2fc7d48087d6a3a6E.exit
  %i.ek = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ek, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !128646
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit6"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN9rustyline11line_buffer10LineBuffer6update17h29efd27d2e849aa1E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %_ZN9rustyline11line_buffer10LineBuffer5drain17h0ce0cee40f285782E.exit, !prof !147

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3267, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3268) #82
  unreachable

_ZN9rustyline11line_buffer10LineBuffer5drain17h0ce0cee40f285782E.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !145 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128677)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !128677, !nonnull !145, !noundef !145 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.h, align 8, !alias.scope !128678
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8, !alias.scope !128678
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %i.j, align 8, !alias.scope !128678
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !128678
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.k, align 8, !alias.scope !128678
  call void @"_ZN62_$LT$alloc..string..Drain$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81d3dbaea7dbeafbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %0, align 8, !range !146, !noundef !145 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %i.m, align 8, !range !153, !noundef !145
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = icmp ule i64 %2, %i.l                    ; 2 uses
  %or.cond.not = or i1 %i.p, %i.o
  br i1 %or.cond.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN9rustyline11line_buffer10LineBuffer5drain17h0ce0cee40f285782E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !128679)
  %i.q = load i64, ptr %i.b, align 8, !alias.scope !128679, !noundef !145 ; 6 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !128680)
  %i.t = sub nsw i64 %i.l, %i.q
  %i.u = icmp ugt i64 %2, %i.t
  br i1 %i.u, label %bb.e, label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i, !prof !147

bb.e:                                             ; preds = %bb.d
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.q, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !128681
  br label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i

_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i: ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !alias.scope !128682 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %2
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.v, i64 %i.q, i1 false), !noalias !128683
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit

bb.f:                                             ; preds = %bb.c
  br i1 %i.p, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i", label %bb.g, !prof !154

bb.g:                                             ; preds = %bb.f
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !128684
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !128685
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i": ; preds = %bb.g, %bb.f
  %i.x = phi i64 [ 0, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.e, align 8, !alias.scope !128685, !nonnull !145, !noundef !145
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit

_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit: ; preds = %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i"
  %.sink.i = phi ptr [ %i.aa, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i" ], [ %i.v, %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i ]
  %.pn.i = phi i64 [ %i.x, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i" ], [ %i.q, %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !128679
  %storemerge.i = add i64 %.pn.i, %2
  store i64 %storemerge.i, ptr %i.b, align 8, !alias.scope !128679
  br label %bb.n

bb.h:                                             ; preds = %_ZN9rustyline11line_buffer10LineBuffer5drain17h0ce0cee40f285782E.exit
  %i.ab = icmp eq i64 %i.l, 0
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !128686, !noundef !145
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !128687)
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !128687, !noundef !145 ; 6 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i11", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !128688)
  %.not4 = icmp samesign ult i64 %i.l, %i.af
  br i1 %.not4, label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i7, label %bb.l, !prof !154

bb.l:                                             ; preds = %bb.k
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.af, i64 noundef %i.l, i64 noundef 1, i64 noundef 1), !noalias !128689
  br label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i7

_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i7: ; preds = %bb.l, %bb.k
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !128690 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.l
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ai, i64 %i.af, i1 false), !noalias !128691
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit13

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i11": ; preds = %bb.j
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !128692, !nonnull !145, !noundef !145
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit13

_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit13: ; preds = %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i7, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i11"
  %.sink.i8 = phi ptr [ %i.ak, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i11" ], [ %i.ai, %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i7 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i8, ptr nonnull readonly align 1 %1, i64 %i.l, i1 false), !noalias !128687
  %storemerge.i10 = add nuw i64 %i.af, %i.l
  store i64 %storemerge.i10, ptr %i.b, align 8, !alias.scope !128687
  %.sroa.0.0.i14 = call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.l)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3269) #82
  unreachable

bb.n:                                             ; preds = %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit13, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit
  %.sroa.0.0.i14.sink = phi i64 [ %.sroa.0.0.i14, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit13 ], [ %3, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h6a5792c45654b415E.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i14.sink, ptr %i.al, align 8
  ret void
end_hunk_2
